; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $083", ROMX[$4000], BANK[$83]

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
	jr   nz, jr_083_4033                             ; $4010: $20 $21

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
	jr   nc, jr_083_4057                             ; $4024: $30 $31

	ld   [hl-], a                                    ; $4026: $32
	inc  sp                                          ; $4027: $33
	jr   nz, @+$23                                   ; $4028: $20 $21

	ld   [hl+], a                                    ; $402a: $22
	inc  hl                                          ; $402b: $23
	inc  h                                           ; $402c: $24
	dec  h                                           ; $402d: $25
	ld   h, $27                                      ; $402e: $26 $27
	jr   z, jr_083_405b                              ; $4030: $28 $29

	ld   a, [hl+]                                    ; $4032: $2a

jr_083_4033:
	dec  hl                                          ; $4033: $2b
	inc  l                                           ; $4034: $2c
	dec  l                                           ; $4035: $2d
	ld   l, $2f                                      ; $4036: $2e $2f
	inc  h                                           ; $4038: $24
	dec  h                                           ; $4039: $25
	ld   h, $27                                      ; $403a: $26 $27
	jr   nc, jr_083_406f                             ; $403c: $30 $31

	ld   [hl-], a                                    ; $403e: $32
	inc  sp                                          ; $403f: $33
	inc  [hl]                                        ; $4040: $34
	dec  [hl]                                        ; $4041: $35
	ld   [hl], $37                                   ; $4042: $36 $37
	jr   c, jr_083_407f                              ; $4044: $38 $39

	ld   a, [hl-]                                    ; $4046: $3a
	dec  sp                                          ; $4047: $3b
	inc  a                                           ; $4048: $3c
	dec  a                                           ; $4049: $3d
	ld   a, $3f                                      ; $404a: $3e $3f
	inc  [hl]                                        ; $404c: $34
	dec  [hl]                                        ; $404d: $35
	ld   [hl], $37                                   ; $404e: $36 $37
	ld   b, b                                        ; $4050: $40
	ld   b, c                                        ; $4051: $41
	ld   b, d                                        ; $4052: $42
	ld   b, e                                        ; $4053: $43
	ld   b, h                                        ; $4054: $44
	ld   b, l                                        ; $4055: $45
	ld   b, [hl]                                     ; $4056: $46

jr_083_4057:
	ld   b, a                                        ; $4057: $47
	ld   c, b                                        ; $4058: $48
	ld   c, c                                        ; $4059: $49
	ld   c, d                                        ; $405a: $4a

jr_083_405b:
	ld   c, e                                        ; $405b: $4b
	ld   c, h                                        ; $405c: $4c
	ld   c, l                                        ; $405d: $4d
	ld   c, [hl]                                     ; $405e: $4e
	ld   c, a                                        ; $405f: $4f
	jr   z, @+$2b                                    ; $4060: $28 $29

	ld   a, [hl+]                                    ; $4062: $2a
	dec  hl                                          ; $4063: $2b
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

jr_083_406f:
	ld   e, e                                        ; $406f: $5b
	ld   e, h                                        ; $4070: $5c
	ld   e, l                                        ; $4071: $5d
	ld   e, [hl]                                     ; $4072: $5e
	ld   e, a                                        ; $4073: $5f
	jr   c, @+$3b                                    ; $4074: $38 $39

	ld   a, [hl-]                                    ; $4076: $3a
	dec  sp                                          ; $4077: $3b
	ld   h, b                                        ; $4078: $60
	ld   h, c                                        ; $4079: $61
	ld   h, d                                        ; $407a: $62
	ld   h, e                                        ; $407b: $63
	ld   h, h                                        ; $407c: $64
	ld   h, l                                        ; $407d: $65
	ld   h, [hl]                                     ; $407e: $66

jr_083_407f:
	ld   h, a                                        ; $407f: $67
	ld   l, b                                        ; $4080: $68
	ld   l, c                                        ; $4081: $69
	ld   l, d                                        ; $4082: $6a
	ld   l, e                                        ; $4083: $6b
	ld   l, h                                        ; $4084: $6c
	ld   l, l                                        ; $4085: $6d
	ld   l, [hl]                                     ; $4086: $6e
	ld   l, a                                        ; $4087: $6f
	inc  l                                           ; $4088: $2c
	dec  l                                           ; $4089: $2d
	ld   l, $2f                                      ; $408a: $2e $2f
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
	inc  a                                           ; $409c: $3c
	dec  a                                           ; $409d: $3d
	ld   a, $3f                                      ; $409e: $3e $3f
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
	ld   b, b                                        ; $40b0: $40
	ld   b, c                                        ; $40b1: $41
	ld   b, d                                        ; $40b2: $42
	ld   b, e                                        ; $40b3: $43
	db   $10                                         ; $40b4: $10
	ld   de, $1312                                   ; $40b5: $11 $12 $13
	inc  d                                           ; $40b8: $14
	dec  d                                           ; $40b9: $15
	ld   d, $17                                      ; $40ba: $16 $17
	jr   jr_083_40d7                                 ; $40bc: $18 $19

	ld   a, [de]                                     ; $40be: $1a
	dec  de                                          ; $40bf: $1b
	inc  e                                           ; $40c0: $1c
	dec  e                                           ; $40c1: $1d
	ld   e, $1f                                      ; $40c2: $1e $1f
	ld   b, h                                        ; $40c4: $44
	ld   b, l                                        ; $40c5: $45
	ld   b, [hl]                                     ; $40c6: $46
	ld   b, a                                        ; $40c7: $47
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

jr_083_40d7:
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
	dec  b                                           ; $40e5: $05
	dec  b                                           ; $40e6: $05
	dec  b                                           ; $40e7: $05
	dec  b                                           ; $40e8: $05
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
	dec  b                                           ; $40f9: $05
	dec  b                                           ; $40fa: $05
	dec  b                                           ; $40fb: $05
	dec  b                                           ; $40fc: $05
	inc  bc                                          ; $40fd: $03
	inc  bc                                          ; $40fe: $03
	inc  bc                                          ; $40ff: $03
	dec  bc                                          ; $4100: $0b
	dec  bc                                          ; $4101: $0b
	dec  bc                                          ; $4102: $0b
	dec  bc                                          ; $4103: $0b
	inc  bc                                          ; $4104: $03
	dec  b                                           ; $4105: $05
	dec  b                                           ; $4106: $05
	dec  b                                           ; $4107: $05
	dec  b                                           ; $4108: $05
	dec  b                                           ; $4109: $05
	dec  b                                           ; $410a: $05
	dec  b                                           ; $410b: $05
	dec  b                                           ; $410c: $05
	dec  b                                           ; $410d: $05
	dec  b                                           ; $410e: $05
	dec  b                                           ; $410f: $05
	dec  b                                           ; $4110: $05
	inc  bc                                          ; $4111: $03
	inc  bc                                          ; $4112: $03
	inc  bc                                          ; $4113: $03
	dec  bc                                          ; $4114: $0b
	dec  bc                                          ; $4115: $0b
	dec  bc                                          ; $4116: $0b
	dec  bc                                          ; $4117: $0b
	inc  bc                                          ; $4118: $03
	inc  bc                                          ; $4119: $03
	inc  bc                                          ; $411a: $03
	inc  bc                                          ; $411b: $03
	dec  b                                           ; $411c: $05
	dec  b                                           ; $411d: $05
	dec  b                                           ; $411e: $05
	dec  b                                           ; $411f: $05
	dec  b                                           ; $4120: $05
	dec  b                                           ; $4121: $05
	dec  b                                           ; $4122: $05
	dec  b                                           ; $4123: $05
	dec  b                                           ; $4124: $05
	inc  bc                                          ; $4125: $03
	inc  bc                                          ; $4126: $03
	inc  bc                                          ; $4127: $03
	dec  bc                                          ; $4128: $0b
	dec  bc                                          ; $4129: $0b
	dec  bc                                          ; $412a: $0b
	dec  bc                                          ; $412b: $0b
	inc  bc                                          ; $412c: $03
	inc  bc                                          ; $412d: $03
	inc  bc                                          ; $412e: $03
	inc  bc                                          ; $412f: $03
	inc  bc                                          ; $4130: $03
	dec  b                                           ; $4131: $05
	dec  b                                           ; $4132: $05
	dec  b                                           ; $4133: $05
	dec  b                                           ; $4134: $05
	inc  bc                                          ; $4135: $03
	dec  b                                           ; $4136: $05
	dec  b                                           ; $4137: $05
	dec  b                                           ; $4138: $05
	inc  bc                                          ; $4139: $03
	inc  b                                           ; $413a: $04
	inc  b                                           ; $413b: $04
	inc  c                                           ; $413c: $0c
	inc  c                                           ; $413d: $0c
	dec  bc                                          ; $413e: $0b
	dec  bc                                          ; $413f: $0b
	inc  bc                                          ; $4140: $03
	inc  bc                                          ; $4141: $03
	inc  bc                                          ; $4142: $03
	inc  bc                                          ; $4143: $03
	dec  b                                           ; $4144: $05
	dec  b                                           ; $4145: $05
	dec  b                                           ; $4146: $05
	dec  b                                           ; $4147: $05
	dec  b                                           ; $4148: $05
	inc  bc                                          ; $4149: $03
	inc  bc                                          ; $414a: $03
	inc  bc                                          ; $414b: $03
	inc  bc                                          ; $414c: $03
	inc  b                                           ; $414d: $04
	inc  b                                           ; $414e: $04
	inc  b                                           ; $414f: $04
	inc  c                                           ; $4150: $0c
	inc  c                                           ; $4151: $0c
	dec  bc                                          ; $4152: $0b
	dec  bc                                          ; $4153: $0b
	inc  bc                                          ; $4154: $03
	dec  b                                           ; $4155: $05
	dec  b                                           ; $4156: $05
	dec  b                                           ; $4157: $05
	dec  b                                           ; $4158: $05
	dec  b                                           ; $4159: $05
	dec  b                                           ; $415a: $05
	dec  b                                           ; $415b: $05
	dec  b                                           ; $415c: $05
	inc  bc                                          ; $415d: $03
	inc  bc                                          ; $415e: $03
	inc  bc                                          ; $415f: $03
	inc  bc                                          ; $4160: $03
	inc  b                                           ; $4161: $04
	inc  b                                           ; $4162: $04
	inc  b                                           ; $4163: $04
	inc  c                                           ; $4164: $0c
	inc  c                                           ; $4165: $0c
	dec  bc                                          ; $4166: $0b
	dec  bc                                          ; $4167: $0b
	dec  c                                           ; $4168: $0d
	dec  c                                           ; $4169: $0d
	dec  c                                           ; $416a: $0d
	dec  c                                           ; $416b: $0d
	dec  c                                           ; $416c: $0d
	dec  c                                           ; $416d: $0d
	dec  c                                           ; $416e: $0d
	dec  c                                           ; $416f: $0d
	dec  c                                           ; $4170: $0d
	dec  bc                                          ; $4171: $0b
	dec  bc                                          ; $4172: $0b
	dec  bc                                          ; $4173: $0b
	dec  bc                                          ; $4174: $0b
	dec  bc                                          ; $4175: $0b
	inc  c                                           ; $4176: $0c
	inc  c                                           ; $4177: $0c
	inc  c                                           ; $4178: $0c
	inc  c                                           ; $4179: $0c
	dec  bc                                          ; $417a: $0b
	dec  bc                                          ; $417b: $0b
	dec  c                                           ; $417c: $0d
	dec  c                                           ; $417d: $0d
	dec  c                                           ; $417e: $0d
	dec  c                                           ; $417f: $0d
	dec  c                                           ; $4180: $0d
	dec  c                                           ; $4181: $0d
	dec  c                                           ; $4182: $0d
	dec  c                                           ; $4183: $0d
	dec  bc                                          ; $4184: $0b
	dec  bc                                          ; $4185: $0b
	dec  bc                                          ; $4186: $0b
	dec  bc                                          ; $4187: $0b
	dec  bc                                          ; $4188: $0b
	dec  bc                                          ; $4189: $0b
	dec  bc                                          ; $418a: $0b
	dec  bc                                          ; $418b: $0b
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
	jr   nz, jr_083_41c3                             ; $41a0: $20 $21

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
	jr   nc, jr_083_41e7                             ; $41b4: $30 $31

	ld   [hl-], a                                    ; $41b6: $32
	inc  sp                                          ; $41b7: $33
	jr   nz, @+$23                                   ; $41b8: $20 $21

	ld   [hl+], a                                    ; $41ba: $22
	inc  hl                                          ; $41bb: $23
	inc  h                                           ; $41bc: $24
	dec  h                                           ; $41bd: $25
	ld   h, $27                                      ; $41be: $26 $27
	jr   z, jr_083_41eb                              ; $41c0: $28 $29

	ld   a, [hl+]                                    ; $41c2: $2a

jr_083_41c3:
	dec  hl                                          ; $41c3: $2b
	inc  l                                           ; $41c4: $2c
	dec  l                                           ; $41c5: $2d
	ld   l, $2f                                      ; $41c6: $2e $2f
	inc  h                                           ; $41c8: $24
	dec  h                                           ; $41c9: $25
	ld   h, $27                                      ; $41ca: $26 $27
	jr   nc, jr_083_41ff                             ; $41cc: $30 $31

	ld   [hl-], a                                    ; $41ce: $32
	inc  sp                                          ; $41cf: $33
	inc  [hl]                                        ; $41d0: $34
	dec  [hl]                                        ; $41d1: $35
	ld   [hl], $37                                   ; $41d2: $36 $37
	jr   c, jr_083_420f                              ; $41d4: $38 $39

	ld   a, [hl-]                                    ; $41d6: $3a
	dec  sp                                          ; $41d7: $3b
	inc  a                                           ; $41d8: $3c
	dec  a                                           ; $41d9: $3d
	ld   a, $3f                                      ; $41da: $3e $3f
	inc  [hl]                                        ; $41dc: $34
	dec  [hl]                                        ; $41dd: $35
	ld   [hl], $37                                   ; $41de: $36 $37
	ld   b, b                                        ; $41e0: $40
	ld   b, c                                        ; $41e1: $41
	ld   b, d                                        ; $41e2: $42
	ld   b, e                                        ; $41e3: $43
	ld   b, h                                        ; $41e4: $44
	ld   b, l                                        ; $41e5: $45
	ld   b, [hl]                                     ; $41e6: $46

jr_083_41e7:
	ld   b, a                                        ; $41e7: $47
	ld   c, b                                        ; $41e8: $48
	ld   c, c                                        ; $41e9: $49
	ld   c, d                                        ; $41ea: $4a

jr_083_41eb:
	ld   c, e                                        ; $41eb: $4b
	ld   c, h                                        ; $41ec: $4c
	ld   c, l                                        ; $41ed: $4d
	ld   c, [hl]                                     ; $41ee: $4e
	ld   c, a                                        ; $41ef: $4f
	jr   z, @+$2b                                    ; $41f0: $28 $29

	ld   a, [hl+]                                    ; $41f2: $2a
	dec  hl                                          ; $41f3: $2b
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

jr_083_41ff:
	ld   e, e                                        ; $41ff: $5b
	ld   e, h                                        ; $4200: $5c
	ld   e, l                                        ; $4201: $5d
	ld   e, [hl]                                     ; $4202: $5e
	ld   e, a                                        ; $4203: $5f
	jr   c, @+$3b                                    ; $4204: $38 $39

	ld   a, [hl-]                                    ; $4206: $3a
	dec  sp                                          ; $4207: $3b
	ld   h, b                                        ; $4208: $60
	ld   h, c                                        ; $4209: $61
	ld   h, d                                        ; $420a: $62
	ld   h, e                                        ; $420b: $63
	ld   h, h                                        ; $420c: $64
	ld   h, l                                        ; $420d: $65
	ld   h, [hl]                                     ; $420e: $66

jr_083_420f:
	ld   h, a                                        ; $420f: $67
	ld   l, b                                        ; $4210: $68
	ld   l, c                                        ; $4211: $69
	ld   l, d                                        ; $4212: $6a
	ld   l, e                                        ; $4213: $6b
	ld   l, h                                        ; $4214: $6c
	ld   l, l                                        ; $4215: $6d
	ld   l, [hl]                                     ; $4216: $6e
	ld   l, a                                        ; $4217: $6f
	inc  l                                           ; $4218: $2c
	dec  l                                           ; $4219: $2d
	ld   l, $2f                                      ; $421a: $2e $2f
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
	inc  a                                           ; $422c: $3c
	dec  a                                           ; $422d: $3d
	ld   a, $3f                                      ; $422e: $3e $3f
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
	ld   b, b                                        ; $4240: $40
	ld   b, c                                        ; $4241: $41
	ld   b, d                                        ; $4242: $42
	ld   b, e                                        ; $4243: $43
	db   $10                                         ; $4244: $10
	ld   de, $1312                                   ; $4245: $11 $12 $13
	inc  d                                           ; $4248: $14
	dec  d                                           ; $4249: $15
	ld   d, $17                                      ; $424a: $16 $17
	jr   jr_083_4267                                 ; $424c: $18 $19

	ld   a, [de]                                     ; $424e: $1a
	dec  de                                          ; $424f: $1b
	inc  e                                           ; $4250: $1c
	dec  e                                           ; $4251: $1d
	ld   e, $1f                                      ; $4252: $1e $1f
	ld   b, h                                        ; $4254: $44
	ld   b, l                                        ; $4255: $45
	ld   b, [hl]                                     ; $4256: $46
	ld   b, a                                        ; $4257: $47
	inc  b                                           ; $4258: $04
	inc  b                                           ; $4259: $04
	inc  b                                           ; $425a: $04
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

jr_083_4267:
	inc  bc                                          ; $4267: $03
	inc  c                                           ; $4268: $0c
	inc  c                                           ; $4269: $0c
	inc  c                                           ; $426a: $0c
	inc  c                                           ; $426b: $0c
	inc  b                                           ; $426c: $04
	inc  b                                           ; $426d: $04
	inc  b                                           ; $426e: $04
	inc  b                                           ; $426f: $04
	inc  b                                           ; $4270: $04
	inc  b                                           ; $4271: $04
	inc  b                                           ; $4272: $04
	inc  b                                           ; $4273: $04
	inc  b                                           ; $4274: $04
	dec  b                                           ; $4275: $05
	dec  b                                           ; $4276: $05
	inc  b                                           ; $4277: $04
	inc  b                                           ; $4278: $04
	inc  b                                           ; $4279: $04
	inc  b                                           ; $427a: $04
	inc  b                                           ; $427b: $04
	inc  c                                           ; $427c: $0c
	inc  c                                           ; $427d: $0c
	inc  c                                           ; $427e: $0c
	inc  c                                           ; $427f: $0c
	inc  b                                           ; $4280: $04
	inc  b                                           ; $4281: $04
	inc  b                                           ; $4282: $04
	inc  b                                           ; $4283: $04
	inc  b                                           ; $4284: $04
	inc  b                                           ; $4285: $04
	inc  b                                           ; $4286: $04
	inc  b                                           ; $4287: $04
	inc  b                                           ; $4288: $04
	inc  b                                           ; $4289: $04
	inc  b                                           ; $428a: $04
	inc  b                                           ; $428b: $04
	inc  b                                           ; $428c: $04
	inc  b                                           ; $428d: $04
	inc  b                                           ; $428e: $04
	inc  b                                           ; $428f: $04
	inc  c                                           ; $4290: $0c
	inc  c                                           ; $4291: $0c
	inc  c                                           ; $4292: $0c
	inc  c                                           ; $4293: $0c
	inc  b                                           ; $4294: $04
	inc  b                                           ; $4295: $04
	inc  b                                           ; $4296: $04
	dec  b                                           ; $4297: $05
	inc  b                                           ; $4298: $04
	inc  b                                           ; $4299: $04
	inc  b                                           ; $429a: $04
	inc  b                                           ; $429b: $04
	inc  b                                           ; $429c: $04
	inc  b                                           ; $429d: $04
	inc  b                                           ; $429e: $04
	inc  b                                           ; $429f: $04
	inc  b                                           ; $42a0: $04
	inc  b                                           ; $42a1: $04
	inc  b                                           ; $42a2: $04
	inc  b                                           ; $42a3: $04
	inc  c                                           ; $42a4: $0c
	inc  c                                           ; $42a5: $0c
	inc  c                                           ; $42a6: $0c
	inc  c                                           ; $42a7: $0c
	inc  b                                           ; $42a8: $04
	inc  b                                           ; $42a9: $04
	dec  b                                           ; $42aa: $05
	inc  b                                           ; $42ab: $04
	inc  b                                           ; $42ac: $04
	inc  b                                           ; $42ad: $04
	inc  b                                           ; $42ae: $04
	inc  b                                           ; $42af: $04
	inc  b                                           ; $42b0: $04
	inc  b                                           ; $42b1: $04
	inc  b                                           ; $42b2: $04
	inc  b                                           ; $42b3: $04
	inc  b                                           ; $42b4: $04
	inc  b                                           ; $42b5: $04
	inc  b                                           ; $42b6: $04
	inc  b                                           ; $42b7: $04
	inc  c                                           ; $42b8: $0c
	inc  c                                           ; $42b9: $0c
	inc  c                                           ; $42ba: $0c
	inc  c                                           ; $42bb: $0c
	inc  b                                           ; $42bc: $04
	inc  b                                           ; $42bd: $04
	inc  bc                                          ; $42be: $03
	inc  bc                                          ; $42bf: $03
	inc  bc                                          ; $42c0: $03
	inc  b                                           ; $42c1: $04
	inc  b                                           ; $42c2: $04
	inc  b                                           ; $42c3: $04
	inc  b                                           ; $42c4: $04
	inc  bc                                          ; $42c5: $03
	inc  bc                                          ; $42c6: $03
	inc  b                                           ; $42c7: $04
	dec  b                                           ; $42c8: $05
	dec  b                                           ; $42c9: $05
	dec  b                                           ; $42ca: $05
	inc  b                                           ; $42cb: $04
	inc  c                                           ; $42cc: $0c
	inc  c                                           ; $42cd: $0c
	inc  c                                           ; $42ce: $0c
	inc  c                                           ; $42cf: $0c
	inc  b                                           ; $42d0: $04
	inc  b                                           ; $42d1: $04
	inc  bc                                          ; $42d2: $03
	inc  bc                                          ; $42d3: $03
	inc  bc                                          ; $42d4: $03
	inc  bc                                          ; $42d5: $03
	inc  bc                                          ; $42d6: $03
	dec  b                                           ; $42d7: $05
	inc  bc                                          ; $42d8: $03
	inc  bc                                          ; $42d9: $03
	inc  bc                                          ; $42da: $03
	inc  bc                                          ; $42db: $03
	dec  b                                           ; $42dc: $05
	dec  b                                           ; $42dd: $05
	dec  b                                           ; $42de: $05
	dec  b                                           ; $42df: $05
	dec  c                                           ; $42e0: $0d
	dec  bc                                          ; $42e1: $0b
	dec  bc                                          ; $42e2: $0b
	inc  c                                           ; $42e3: $0c
	inc  bc                                          ; $42e4: $03
	inc  bc                                          ; $42e5: $03
	inc  bc                                          ; $42e6: $03
	inc  bc                                          ; $42e7: $03
	inc  bc                                          ; $42e8: $03
	inc  bc                                          ; $42e9: $03
	dec  b                                           ; $42ea: $05
	dec  b                                           ; $42eb: $05
	inc  bc                                          ; $42ec: $03
	inc  bc                                          ; $42ed: $03
	inc  bc                                          ; $42ee: $03
	inc  bc                                          ; $42ef: $03
	dec  b                                           ; $42f0: $05
	dec  b                                           ; $42f1: $05
	dec  b                                           ; $42f2: $05
	dec  b                                           ; $42f3: $05
	dec  c                                           ; $42f4: $0d
	dec  c                                           ; $42f5: $0d
	dec  bc                                          ; $42f6: $0b
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
	dec  c                                           ; $4304: $0d
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
	jr   nz, jr_083_4353                             ; $4330: $20 $21

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
	jr   nc, jr_083_4377                             ; $4344: $30 $31

	ld   [hl-], a                                    ; $4346: $32
	inc  sp                                          ; $4347: $33
	jr   nz, @+$23                                   ; $4348: $20 $21

	ld   [hl+], a                                    ; $434a: $22
	inc  hl                                          ; $434b: $23
	inc  h                                           ; $434c: $24
	dec  h                                           ; $434d: $25
	ld   h, $27                                      ; $434e: $26 $27
	jr   z, jr_083_437b                              ; $4350: $28 $29

	ld   a, [hl+]                                    ; $4352: $2a

jr_083_4353:
	dec  hl                                          ; $4353: $2b
	inc  l                                           ; $4354: $2c
	dec  l                                           ; $4355: $2d
	ld   l, $2f                                      ; $4356: $2e $2f
	inc  h                                           ; $4358: $24
	dec  h                                           ; $4359: $25
	ld   h, $27                                      ; $435a: $26 $27
	jr   nc, jr_083_438f                             ; $435c: $30 $31

	ld   [hl-], a                                    ; $435e: $32
	inc  sp                                          ; $435f: $33
	inc  [hl]                                        ; $4360: $34
	dec  [hl]                                        ; $4361: $35
	ld   [hl], $37                                   ; $4362: $36 $37
	jr   c, jr_083_439f                              ; $4364: $38 $39

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

jr_083_4377:
	ld   b, a                                        ; $4377: $47
	ld   c, b                                        ; $4378: $48
	ld   c, c                                        ; $4379: $49
	ld   c, d                                        ; $437a: $4a

jr_083_437b:
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

jr_083_438f:
	ld   e, e                                        ; $438f: $5b
	ld   e, h                                        ; $4390: $5c
	ld   e, l                                        ; $4391: $5d
	ld   e, [hl]                                     ; $4392: $5e
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

jr_083_439f:
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
	jr   jr_083_43f7                                 ; $43dc: $18 $19

	ld   a, [de]                                     ; $43de: $1a
	dec  de                                          ; $43df: $1b
	inc  e                                           ; $43e0: $1c
	dec  e                                           ; $43e1: $1d
	ld   e, $1f                                      ; $43e2: $1e $1f
	ld   b, h                                        ; $43e4: $44
	ld   b, l                                        ; $43e5: $45
	ld   b, [hl]                                     ; $43e6: $46
	ld   b, a                                        ; $43e7: $47
	inc  b                                           ; $43e8: $04
	inc  b                                           ; $43e9: $04
	inc  b                                           ; $43ea: $04
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

jr_083_43f7:
	inc  bc                                          ; $43f7: $03
	inc  c                                           ; $43f8: $0c
	inc  c                                           ; $43f9: $0c
	inc  c                                           ; $43fa: $0c
	inc  c                                           ; $43fb: $0c
	inc  b                                           ; $43fc: $04
	inc  b                                           ; $43fd: $04
	inc  b                                           ; $43fe: $04
	inc  b                                           ; $43ff: $04
	inc  b                                           ; $4400: $04
	inc  b                                           ; $4401: $04
	inc  b                                           ; $4402: $04
	inc  b                                           ; $4403: $04
	inc  b                                           ; $4404: $04
	inc  b                                           ; $4405: $04
	inc  b                                           ; $4406: $04
	inc  b                                           ; $4407: $04
	inc  b                                           ; $4408: $04
	inc  b                                           ; $4409: $04
	inc  b                                           ; $440a: $04
	inc  b                                           ; $440b: $04
	inc  c                                           ; $440c: $0c
	inc  c                                           ; $440d: $0c
	inc  c                                           ; $440e: $0c
	inc  c                                           ; $440f: $0c
	inc  b                                           ; $4410: $04
	inc  b                                           ; $4411: $04
	inc  b                                           ; $4412: $04
	inc  b                                           ; $4413: $04
	inc  b                                           ; $4414: $04
	inc  b                                           ; $4415: $04
	inc  b                                           ; $4416: $04
	inc  b                                           ; $4417: $04
	inc  b                                           ; $4418: $04
	inc  b                                           ; $4419: $04
	inc  b                                           ; $441a: $04
	inc  b                                           ; $441b: $04
	inc  b                                           ; $441c: $04
	inc  b                                           ; $441d: $04
	inc  b                                           ; $441e: $04
	inc  b                                           ; $441f: $04
	inc  c                                           ; $4420: $0c
	inc  c                                           ; $4421: $0c
	inc  c                                           ; $4422: $0c
	inc  c                                           ; $4423: $0c
	inc  b                                           ; $4424: $04
	inc  b                                           ; $4425: $04
	inc  b                                           ; $4426: $04
	dec  b                                           ; $4427: $05
	inc  b                                           ; $4428: $04
	inc  b                                           ; $4429: $04
	inc  b                                           ; $442a: $04
	inc  b                                           ; $442b: $04
	inc  b                                           ; $442c: $04
	inc  b                                           ; $442d: $04
	inc  b                                           ; $442e: $04
	inc  b                                           ; $442f: $04
	inc  b                                           ; $4430: $04
	inc  b                                           ; $4431: $04
	inc  b                                           ; $4432: $04
	inc  b                                           ; $4433: $04
	inc  c                                           ; $4434: $0c
	inc  c                                           ; $4435: $0c
	inc  c                                           ; $4436: $0c
	inc  c                                           ; $4437: $0c
	inc  b                                           ; $4438: $04
	inc  b                                           ; $4439: $04
	dec  b                                           ; $443a: $05
	inc  b                                           ; $443b: $04
	inc  b                                           ; $443c: $04
	inc  b                                           ; $443d: $04
	inc  b                                           ; $443e: $04
	inc  b                                           ; $443f: $04
	inc  b                                           ; $4440: $04
	inc  b                                           ; $4441: $04
	inc  b                                           ; $4442: $04
	inc  b                                           ; $4443: $04
	inc  b                                           ; $4444: $04
	inc  b                                           ; $4445: $04
	inc  b                                           ; $4446: $04
	inc  b                                           ; $4447: $04
	inc  c                                           ; $4448: $0c
	inc  c                                           ; $4449: $0c
	inc  c                                           ; $444a: $0c
	inc  c                                           ; $444b: $0c
	inc  b                                           ; $444c: $04
	inc  b                                           ; $444d: $04
	inc  bc                                          ; $444e: $03
	inc  bc                                          ; $444f: $03
	inc  bc                                          ; $4450: $03
	inc  b                                           ; $4451: $04
	inc  b                                           ; $4452: $04
	inc  b                                           ; $4453: $04
	inc  b                                           ; $4454: $04
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
	inc  c                                           ; $445f: $0c
	inc  b                                           ; $4460: $04
	inc  b                                           ; $4461: $04
	inc  bc                                          ; $4462: $03
	inc  bc                                          ; $4463: $03
	inc  bc                                          ; $4464: $03
	inc  bc                                          ; $4465: $03
	inc  bc                                          ; $4466: $03
	inc  bc                                          ; $4467: $03
	inc  bc                                          ; $4468: $03
	inc  b                                           ; $4469: $04
	inc  b                                           ; $446a: $04
	inc  b                                           ; $446b: $04
	dec  b                                           ; $446c: $05
	dec  b                                           ; $446d: $05
	dec  b                                           ; $446e: $05
	dec  b                                           ; $446f: $05
	dec  c                                           ; $4470: $0d
	dec  c                                           ; $4471: $0d
	dec  c                                           ; $4472: $0d
	inc  c                                           ; $4473: $0c
	inc  bc                                          ; $4474: $03
	inc  bc                                          ; $4475: $03
	inc  bc                                          ; $4476: $03
	inc  bc                                          ; $4477: $03
	inc  bc                                          ; $4478: $03
	inc  bc                                          ; $4479: $03
	inc  bc                                          ; $447a: $03
	dec  b                                           ; $447b: $05
	inc  bc                                          ; $447c: $03
	inc  b                                           ; $447d: $04
	inc  b                                           ; $447e: $04
	inc  bc                                          ; $447f: $03
	dec  b                                           ; $4480: $05
	dec  b                                           ; $4481: $05
	dec  b                                           ; $4482: $05
	dec  b                                           ; $4483: $05
	dec  c                                           ; $4484: $0d
	dec  c                                           ; $4485: $0d
	dec  bc                                          ; $4486: $0b
	dec  bc                                          ; $4487: $0b
	dec  bc                                          ; $4488: $0b
	dec  bc                                          ; $4489: $0b
	dec  bc                                          ; $448a: $0b
	dec  bc                                          ; $448b: $0b
	dec  bc                                          ; $448c: $0b
	dec  bc                                          ; $448d: $0b
	dec  bc                                          ; $448e: $0b
	dec  bc                                          ; $448f: $0b
	dec  bc                                          ; $4490: $0b
	dec  bc                                          ; $4491: $0b
	dec  bc                                          ; $4492: $0b
	dec  c                                           ; $4493: $0d
	dec  c                                           ; $4494: $0d
	dec  c                                           ; $4495: $0d
	dec  c                                           ; $4496: $0d
	dec  c                                           ; $4497: $0d
	dec  c                                           ; $4498: $0d
	dec  c                                           ; $4499: $0d
	dec  c                                           ; $449a: $0d
	dec  bc                                          ; $449b: $0b
	dec  bc                                          ; $449c: $0b
	dec  bc                                          ; $449d: $0b
	dec  bc                                          ; $449e: $0b
	dec  bc                                          ; $449f: $0b
	dec  bc                                          ; $44a0: $0b
	dec  bc                                          ; $44a1: $0b
	dec  bc                                          ; $44a2: $0b
	dec  bc                                          ; $44a3: $0b
	dec  bc                                          ; $44a4: $0b
	dec  bc                                          ; $44a5: $0b
	dec  bc                                          ; $44a6: $0b
	dec  c                                           ; $44a7: $0d
	dec  c                                           ; $44a8: $0d
	dec  c                                           ; $44a9: $0d
	dec  c                                           ; $44aa: $0d
	dec  c                                           ; $44ab: $0d
	dec  c                                           ; $44ac: $0d
	dec  c                                           ; $44ad: $0d
	dec  c                                           ; $44ae: $0d
	dec  bc                                          ; $44af: $0b
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
	jr   nz, jr_083_44e3                             ; $44c0: $20 $21

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
	jr   nc, jr_083_4507                             ; $44d4: $30 $31

	ld   [hl-], a                                    ; $44d6: $32
	inc  sp                                          ; $44d7: $33
	jr   nz, @+$23                                   ; $44d8: $20 $21

	ld   [hl+], a                                    ; $44da: $22
	inc  hl                                          ; $44db: $23
	inc  h                                           ; $44dc: $24
	dec  h                                           ; $44dd: $25
	ld   h, $27                                      ; $44de: $26 $27
	jr   z, jr_083_450b                              ; $44e0: $28 $29

	ld   a, [hl+]                                    ; $44e2: $2a

jr_083_44e3:
	dec  hl                                          ; $44e3: $2b
	inc  l                                           ; $44e4: $2c
	dec  l                                           ; $44e5: $2d
	ld   l, $2f                                      ; $44e6: $2e $2f
	inc  h                                           ; $44e8: $24
	dec  h                                           ; $44e9: $25
	ld   h, $27                                      ; $44ea: $26 $27
	jr   nc, jr_083_451f                             ; $44ec: $30 $31

	ld   [hl-], a                                    ; $44ee: $32
	inc  sp                                          ; $44ef: $33
	inc  [hl]                                        ; $44f0: $34
	dec  [hl]                                        ; $44f1: $35
	ld   [hl], $37                                   ; $44f2: $36 $37
	jr   c, jr_083_452f                              ; $44f4: $38 $39

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

jr_083_4507:
	ld   b, a                                        ; $4507: $47
	ld   c, b                                        ; $4508: $48
	ld   c, c                                        ; $4509: $49
	ld   c, d                                        ; $450a: $4a

jr_083_450b:
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

jr_083_451f:
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

jr_083_452f:
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
	jr   jr_083_4587                                 ; $456c: $18 $19

	ld   a, [de]                                     ; $456e: $1a
	dec  de                                          ; $456f: $1b
	inc  e                                           ; $4570: $1c
	dec  e                                           ; $4571: $1d
	ld   e, $1f                                      ; $4572: $1e $1f
	ld   b, h                                        ; $4574: $44
	ld   b, l                                        ; $4575: $45
	ld   b, [hl]                                     ; $4576: $46
	ld   b, a                                        ; $4577: $47
	inc  bc                                          ; $4578: $03
	inc  bc                                          ; $4579: $03
	inc  bc                                          ; $457a: $03
	inc  bc                                          ; $457b: $03
	inc  bc                                          ; $457c: $03
	inc  bc                                          ; $457d: $03
	inc  bc                                          ; $457e: $03
	inc  bc                                          ; $457f: $03
	inc  bc                                          ; $4580: $03
	inc  bc                                          ; $4581: $03
	inc  bc                                          ; $4582: $03
	inc  bc                                          ; $4583: $03
	inc  bc                                          ; $4584: $03
	inc  bc                                          ; $4585: $03
	inc  bc                                          ; $4586: $03

jr_083_4587:
	inc  bc                                          ; $4587: $03
	dec  bc                                          ; $4588: $0b
	dec  bc                                          ; $4589: $0b
	dec  bc                                          ; $458a: $0b
	dec  bc                                          ; $458b: $0b
	inc  bc                                          ; $458c: $03
	inc  bc                                          ; $458d: $03
	inc  bc                                          ; $458e: $03
	inc  bc                                          ; $458f: $03
	inc  bc                                          ; $4590: $03
	inc  bc                                          ; $4591: $03
	inc  bc                                          ; $4592: $03
	inc  bc                                          ; $4593: $03
	inc  bc                                          ; $4594: $03
	inc  bc                                          ; $4595: $03
	inc  bc                                          ; $4596: $03
	inc  bc                                          ; $4597: $03
	inc  bc                                          ; $4598: $03
	inc  bc                                          ; $4599: $03
	inc  bc                                          ; $459a: $03
	inc  bc                                          ; $459b: $03
	dec  bc                                          ; $459c: $0b
	dec  bc                                          ; $459d: $0b
	dec  bc                                          ; $459e: $0b
	dec  bc                                          ; $459f: $0b
	inc  bc                                          ; $45a0: $03
	inc  bc                                          ; $45a1: $03
	inc  bc                                          ; $45a2: $03
	inc  bc                                          ; $45a3: $03
	inc  bc                                          ; $45a4: $03
	inc  bc                                          ; $45a5: $03
	inc  bc                                          ; $45a6: $03
	inc  bc                                          ; $45a7: $03
	inc  bc                                          ; $45a8: $03
	inc  bc                                          ; $45a9: $03
	inc  bc                                          ; $45aa: $03
	inc  bc                                          ; $45ab: $03
	inc  bc                                          ; $45ac: $03
	inc  bc                                          ; $45ad: $03
	inc  bc                                          ; $45ae: $03
	inc  bc                                          ; $45af: $03
	dec  bc                                          ; $45b0: $0b
	dec  bc                                          ; $45b1: $0b
	dec  bc                                          ; $45b2: $0b
	dec  bc                                          ; $45b3: $0b
	inc  bc                                          ; $45b4: $03
	inc  bc                                          ; $45b5: $03
	inc  bc                                          ; $45b6: $03
	inc  bc                                          ; $45b7: $03
	inc  bc                                          ; $45b8: $03
	inc  bc                                          ; $45b9: $03
	inc  bc                                          ; $45ba: $03
	inc  bc                                          ; $45bb: $03
	inc  bc                                          ; $45bc: $03
	inc  bc                                          ; $45bd: $03
	inc  bc                                          ; $45be: $03
	inc  bc                                          ; $45bf: $03
	inc  bc                                          ; $45c0: $03
	inc  bc                                          ; $45c1: $03
	inc  bc                                          ; $45c2: $03
	inc  bc                                          ; $45c3: $03
	dec  bc                                          ; $45c4: $0b
	dec  bc                                          ; $45c5: $0b
	dec  bc                                          ; $45c6: $0b
	dec  bc                                          ; $45c7: $0b
	inc  bc                                          ; $45c8: $03
	inc  bc                                          ; $45c9: $03
	inc  bc                                          ; $45ca: $03
	inc  bc                                          ; $45cb: $03
	inc  bc                                          ; $45cc: $03
	inc  bc                                          ; $45cd: $03
	inc  bc                                          ; $45ce: $03
	inc  bc                                          ; $45cf: $03
	inc  bc                                          ; $45d0: $03
	inc  bc                                          ; $45d1: $03
	inc  bc                                          ; $45d2: $03
	inc  bc                                          ; $45d3: $03
	inc  bc                                          ; $45d4: $03
	inc  bc                                          ; $45d5: $03
	inc  bc                                          ; $45d6: $03
	inc  bc                                          ; $45d7: $03
	dec  bc                                          ; $45d8: $0b
	dec  bc                                          ; $45d9: $0b
	dec  bc                                          ; $45da: $0b
	dec  bc                                          ; $45db: $0b
	inc  bc                                          ; $45dc: $03
	inc  bc                                          ; $45dd: $03
	inc  bc                                          ; $45de: $03
	inc  bc                                          ; $45df: $03
	inc  bc                                          ; $45e0: $03
	inc  bc                                          ; $45e1: $03
	inc  bc                                          ; $45e2: $03
	inc  bc                                          ; $45e3: $03
	inc  bc                                          ; $45e4: $03
	inc  bc                                          ; $45e5: $03
	inc  bc                                          ; $45e6: $03
	inc  bc                                          ; $45e7: $03
	dec  b                                           ; $45e8: $05
	inc  bc                                          ; $45e9: $03
	inc  bc                                          ; $45ea: $03
	inc  bc                                          ; $45eb: $03
	dec  bc                                          ; $45ec: $0b
	dec  bc                                          ; $45ed: $0b
	dec  bc                                          ; $45ee: $0b
	dec  bc                                          ; $45ef: $0b
	inc  bc                                          ; $45f0: $03
	inc  bc                                          ; $45f1: $03
	inc  b                                           ; $45f2: $04
	inc  b                                           ; $45f3: $04
	inc  b                                           ; $45f4: $04
	inc  b                                           ; $45f5: $04
	inc  b                                           ; $45f6: $04
	inc  b                                           ; $45f7: $04
	inc  bc                                          ; $45f8: $03
	inc  bc                                          ; $45f9: $03
	inc  bc                                          ; $45fa: $03
	inc  bc                                          ; $45fb: $03
	dec  b                                           ; $45fc: $05
	inc  bc                                          ; $45fd: $03
	inc  bc                                          ; $45fe: $03
	inc  bc                                          ; $45ff: $03
	dec  bc                                          ; $4600: $0b
	dec  bc                                          ; $4601: $0b
	dec  bc                                          ; $4602: $0b
	dec  bc                                          ; $4603: $0b
	inc  b                                           ; $4604: $04
	inc  b                                           ; $4605: $04
	inc  b                                           ; $4606: $04
	inc  b                                           ; $4607: $04
	inc  b                                           ; $4608: $04
	inc  b                                           ; $4609: $04
	inc  b                                           ; $460a: $04
	inc  b                                           ; $460b: $04
	inc  b                                           ; $460c: $04
	inc  bc                                          ; $460d: $03
	inc  bc                                          ; $460e: $03
	inc  bc                                          ; $460f: $03
	inc  bc                                          ; $4610: $03
	inc  bc                                          ; $4611: $03
	inc  bc                                          ; $4612: $03
	inc  bc                                          ; $4613: $03
	dec  bc                                          ; $4614: $0b
	dec  bc                                          ; $4615: $0b
	dec  bc                                          ; $4616: $0b
	dec  bc                                          ; $4617: $0b
	inc  c                                           ; $4618: $0c
	inc  c                                           ; $4619: $0c
	inc  c                                           ; $461a: $0c
	inc  c                                           ; $461b: $0c
	inc  c                                           ; $461c: $0c
	inc  c                                           ; $461d: $0c
	inc  c                                           ; $461e: $0c
	dec  bc                                          ; $461f: $0b
	dec  bc                                          ; $4620: $0b
	dec  bc                                          ; $4621: $0b
	dec  bc                                          ; $4622: $0b
	dec  bc                                          ; $4623: $0b
	dec  bc                                          ; $4624: $0b
	dec  bc                                          ; $4625: $0b
	dec  bc                                          ; $4626: $0b
	dec  bc                                          ; $4627: $0b
	dec  bc                                          ; $4628: $0b
	dec  bc                                          ; $4629: $0b
	dec  bc                                          ; $462a: $0b
	dec  bc                                          ; $462b: $0b
	inc  c                                           ; $462c: $0c
	inc  c                                           ; $462d: $0c
	inc  c                                           ; $462e: $0c
	inc  c                                           ; $462f: $0c
	inc  c                                           ; $4630: $0c
	inc  c                                           ; $4631: $0c
	inc  c                                           ; $4632: $0c
	dec  bc                                          ; $4633: $0b
	dec  bc                                          ; $4634: $0b
	dec  bc                                          ; $4635: $0b
	dec  bc                                          ; $4636: $0b
	dec  bc                                          ; $4637: $0b
	dec  bc                                          ; $4638: $0b
	dec  bc                                          ; $4639: $0b
	dec  bc                                          ; $463a: $0b
	dec  bc                                          ; $463b: $0b
	dec  bc                                          ; $463c: $0b
	dec  bc                                          ; $463d: $0b
	dec  bc                                          ; $463e: $0b
	dec  bc                                          ; $463f: $0b
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
	jr   nz, jr_083_4673                             ; $4650: $20 $21

	ld   [hl+], a                                    ; $4652: $22
	inc  hl                                          ; $4653: $23
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
	jr   nc, jr_083_4697                             ; $4664: $30 $31

	ld   [hl-], a                                    ; $4666: $32
	inc  sp                                          ; $4667: $33
	jr   nz, @+$23                                   ; $4668: $20 $21

	ld   [hl+], a                                    ; $466a: $22
	inc  hl                                          ; $466b: $23
	inc  h                                           ; $466c: $24
	dec  h                                           ; $466d: $25
	ld   h, $27                                      ; $466e: $26 $27
	jr   z, jr_083_469b                              ; $4670: $28 $29

	ld   a, [hl+]                                    ; $4672: $2a

jr_083_4673:
	dec  hl                                          ; $4673: $2b
	inc  l                                           ; $4674: $2c
	dec  l                                           ; $4675: $2d
	ld   l, $2f                                      ; $4676: $2e $2f
	inc  h                                           ; $4678: $24
	dec  h                                           ; $4679: $25
	ld   h, $27                                      ; $467a: $26 $27
	jr   nc, jr_083_46af                             ; $467c: $30 $31

	ld   [hl-], a                                    ; $467e: $32
	inc  sp                                          ; $467f: $33
	inc  [hl]                                        ; $4680: $34
	dec  [hl]                                        ; $4681: $35
	ld   [hl], $37                                   ; $4682: $36 $37
	jr   c, jr_083_46bf                              ; $4684: $38 $39

	ld   a, [hl-]                                    ; $4686: $3a
	dec  sp                                          ; $4687: $3b
	inc  a                                           ; $4688: $3c
	dec  a                                           ; $4689: $3d
	ld   a, $3f                                      ; $468a: $3e $3f
	inc  [hl]                                        ; $468c: $34
	dec  [hl]                                        ; $468d: $35
	ld   [hl], $37                                   ; $468e: $36 $37
	ld   b, b                                        ; $4690: $40
	ld   b, c                                        ; $4691: $41
	ld   b, d                                        ; $4692: $42
	ld   b, e                                        ; $4693: $43
	ld   b, h                                        ; $4694: $44
	ld   b, l                                        ; $4695: $45
	ld   b, [hl]                                     ; $4696: $46

jr_083_4697:
	ld   b, a                                        ; $4697: $47
	ld   c, b                                        ; $4698: $48
	ld   c, c                                        ; $4699: $49
	ld   c, d                                        ; $469a: $4a

jr_083_469b:
	ld   c, e                                        ; $469b: $4b
	ld   c, h                                        ; $469c: $4c
	ld   c, l                                        ; $469d: $4d
	ld   c, [hl]                                     ; $469e: $4e
	ld   c, a                                        ; $469f: $4f
	jr   z, @+$2b                                    ; $46a0: $28 $29

	ld   a, [hl+]                                    ; $46a2: $2a
	dec  hl                                          ; $46a3: $2b
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

jr_083_46af:
	ld   e, e                                        ; $46af: $5b
	ld   e, h                                        ; $46b0: $5c
	ld   e, l                                        ; $46b1: $5d
	ld   e, [hl]                                     ; $46b2: $5e
	ld   e, a                                        ; $46b3: $5f
	jr   c, @+$3b                                    ; $46b4: $38 $39

	ld   a, [hl-]                                    ; $46b6: $3a
	dec  sp                                          ; $46b7: $3b
	ld   h, b                                        ; $46b8: $60
	ld   h, c                                        ; $46b9: $61
	ld   h, d                                        ; $46ba: $62
	ld   h, e                                        ; $46bb: $63
	ld   h, h                                        ; $46bc: $64
	ld   h, l                                        ; $46bd: $65
	ld   h, [hl]                                     ; $46be: $66

jr_083_46bf:
	ld   h, a                                        ; $46bf: $67
	ld   l, b                                        ; $46c0: $68
	ld   l, c                                        ; $46c1: $69
	ld   l, d                                        ; $46c2: $6a
	ld   l, e                                        ; $46c3: $6b
	ld   l, h                                        ; $46c4: $6c
	ld   l, l                                        ; $46c5: $6d
	ld   l, [hl]                                     ; $46c6: $6e
	ld   l, a                                        ; $46c7: $6f
	inc  l                                           ; $46c8: $2c
	dec  l                                           ; $46c9: $2d
	ld   l, $2f                                      ; $46ca: $2e $2f
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
	ld   a, a                                        ; $46db: $7f
	inc  a                                           ; $46dc: $3c
	dec  a                                           ; $46dd: $3d
	ld   a, $3f                                      ; $46de: $3e $3f
	nop                                              ; $46e0: $00
	ld   bc, $0302                                   ; $46e1: $01 $02 $03
	inc  b                                           ; $46e4: $04
	dec  b                                           ; $46e5: $05
	ld   b, $07                                      ; $46e6: $06 $07
	ld   [$0a09], sp                                 ; $46e8: $08 $09 $0a
	dec  bc                                          ; $46eb: $0b
	inc  c                                           ; $46ec: $0c
	dec  c                                           ; $46ed: $0d
	ld   c, $0f                                      ; $46ee: $0e $0f
	ld   b, b                                        ; $46f0: $40
	ld   b, c                                        ; $46f1: $41
	ld   b, d                                        ; $46f2: $42
	ld   b, e                                        ; $46f3: $43
	db   $10                                         ; $46f4: $10
	ld   de, $1312                                   ; $46f5: $11 $12 $13
	inc  d                                           ; $46f8: $14
	dec  d                                           ; $46f9: $15
	ld   d, $17                                      ; $46fa: $16 $17
	jr   jr_083_4717                                 ; $46fc: $18 $19

	ld   a, [de]                                     ; $46fe: $1a
	dec  de                                          ; $46ff: $1b
	inc  e                                           ; $4700: $1c
	dec  e                                           ; $4701: $1d
	ld   e, $1f                                      ; $4702: $1e $1f
	ld   b, h                                        ; $4704: $44
	ld   b, l                                        ; $4705: $45
	ld   b, [hl]                                     ; $4706: $46
	ld   b, a                                        ; $4707: $47
	inc  bc                                          ; $4708: $03
	inc  bc                                          ; $4709: $03
	inc  bc                                          ; $470a: $03
	inc  bc                                          ; $470b: $03
	inc  bc                                          ; $470c: $03
	inc  bc                                          ; $470d: $03
	inc  bc                                          ; $470e: $03
	inc  bc                                          ; $470f: $03
	inc  bc                                          ; $4710: $03
	inc  bc                                          ; $4711: $03
	inc  bc                                          ; $4712: $03
	inc  bc                                          ; $4713: $03
	inc  bc                                          ; $4714: $03
	inc  bc                                          ; $4715: $03
	inc  bc                                          ; $4716: $03

jr_083_4717:
	inc  bc                                          ; $4717: $03
	dec  bc                                          ; $4718: $0b
	dec  bc                                          ; $4719: $0b
	dec  bc                                          ; $471a: $0b
	dec  bc                                          ; $471b: $0b
	inc  bc                                          ; $471c: $03
	inc  bc                                          ; $471d: $03
	inc  bc                                          ; $471e: $03
	inc  bc                                          ; $471f: $03
	inc  bc                                          ; $4720: $03
	inc  bc                                          ; $4721: $03
	inc  bc                                          ; $4722: $03
	inc  bc                                          ; $4723: $03
	inc  bc                                          ; $4724: $03
	inc  bc                                          ; $4725: $03
	inc  bc                                          ; $4726: $03
	inc  bc                                          ; $4727: $03
	inc  bc                                          ; $4728: $03
	inc  bc                                          ; $4729: $03
	inc  bc                                          ; $472a: $03
	inc  bc                                          ; $472b: $03
	dec  bc                                          ; $472c: $0b
	dec  bc                                          ; $472d: $0b
	dec  bc                                          ; $472e: $0b
	dec  bc                                          ; $472f: $0b
	inc  bc                                          ; $4730: $03
	inc  bc                                          ; $4731: $03
	inc  bc                                          ; $4732: $03
	inc  bc                                          ; $4733: $03
	inc  bc                                          ; $4734: $03
	inc  bc                                          ; $4735: $03
	inc  bc                                          ; $4736: $03
	inc  bc                                          ; $4737: $03
	inc  bc                                          ; $4738: $03
	inc  bc                                          ; $4739: $03
	inc  bc                                          ; $473a: $03
	inc  bc                                          ; $473b: $03
	dec  b                                           ; $473c: $05
	dec  b                                           ; $473d: $05
	dec  b                                           ; $473e: $05
	inc  bc                                          ; $473f: $03
	dec  bc                                          ; $4740: $0b
	dec  bc                                          ; $4741: $0b
	dec  bc                                          ; $4742: $0b
	dec  bc                                          ; $4743: $0b
	inc  bc                                          ; $4744: $03
	inc  bc                                          ; $4745: $03
	inc  bc                                          ; $4746: $03
	inc  bc                                          ; $4747: $03
	inc  bc                                          ; $4748: $03
	inc  bc                                          ; $4749: $03
	inc  bc                                          ; $474a: $03
	inc  bc                                          ; $474b: $03
	dec  b                                           ; $474c: $05
	dec  b                                           ; $474d: $05
	dec  b                                           ; $474e: $05
	dec  b                                           ; $474f: $05
	dec  b                                           ; $4750: $05
	dec  b                                           ; $4751: $05
	dec  b                                           ; $4752: $05
	inc  bc                                          ; $4753: $03
	dec  bc                                          ; $4754: $0b
	dec  bc                                          ; $4755: $0b
	dec  bc                                          ; $4756: $0b
	dec  bc                                          ; $4757: $0b
	inc  bc                                          ; $4758: $03
	inc  bc                                          ; $4759: $03
	inc  bc                                          ; $475a: $03
	inc  bc                                          ; $475b: $03
	inc  b                                           ; $475c: $04
	inc  b                                           ; $475d: $04
	inc  b                                           ; $475e: $04
	inc  b                                           ; $475f: $04
	dec  b                                           ; $4760: $05
	dec  b                                           ; $4761: $05
	dec  b                                           ; $4762: $05
	dec  b                                           ; $4763: $05
	dec  b                                           ; $4764: $05
	dec  b                                           ; $4765: $05
	dec  b                                           ; $4766: $05
	inc  bc                                          ; $4767: $03
	dec  bc                                          ; $4768: $0b
	dec  bc                                          ; $4769: $0b
	dec  bc                                          ; $476a: $0b
	dec  bc                                          ; $476b: $0b
	inc  bc                                          ; $476c: $03
	inc  bc                                          ; $476d: $03
	inc  bc                                          ; $476e: $03
	inc  bc                                          ; $476f: $03
	inc  b                                           ; $4770: $04
	inc  b                                           ; $4771: $04
	inc  b                                           ; $4772: $04
	inc  b                                           ; $4773: $04
	inc  bc                                          ; $4774: $03
	inc  bc                                          ; $4775: $03
	dec  b                                           ; $4776: $05
	dec  b                                           ; $4777: $05
	inc  b                                           ; $4778: $04
	inc  b                                           ; $4779: $04
	inc  bc                                          ; $477a: $03
	inc  bc                                          ; $477b: $03
	dec  bc                                          ; $477c: $0b
	dec  bc                                          ; $477d: $0b
	dec  bc                                          ; $477e: $0b
	dec  bc                                          ; $477f: $0b
	inc  bc                                          ; $4780: $03
	inc  bc                                          ; $4781: $03
	inc  bc                                          ; $4782: $03
	inc  b                                           ; $4783: $04
	inc  b                                           ; $4784: $04
	inc  b                                           ; $4785: $04
	inc  b                                           ; $4786: $04
	inc  b                                           ; $4787: $04
	inc  bc                                          ; $4788: $03
	dec  b                                           ; $4789: $05
	dec  b                                           ; $478a: $05
	dec  b                                           ; $478b: $05
	inc  b                                           ; $478c: $04
	inc  b                                           ; $478d: $04
	inc  bc                                          ; $478e: $03
	inc  bc                                          ; $478f: $03
	dec  bc                                          ; $4790: $0b
	dec  bc                                          ; $4791: $0b
	dec  bc                                          ; $4792: $0b
	dec  bc                                          ; $4793: $0b
	inc  b                                           ; $4794: $04
	inc  b                                           ; $4795: $04
	inc  b                                           ; $4796: $04
	inc  b                                           ; $4797: $04
	inc  b                                           ; $4798: $04
	inc  b                                           ; $4799: $04
	inc  b                                           ; $479a: $04
	inc  b                                           ; $479b: $04
	inc  bc                                          ; $479c: $03
	inc  bc                                          ; $479d: $03
	dec  b                                           ; $479e: $05
	dec  b                                           ; $479f: $05
	inc  bc                                          ; $47a0: $03
	inc  bc                                          ; $47a1: $03
	inc  bc                                          ; $47a2: $03
	inc  bc                                          ; $47a3: $03
	dec  bc                                          ; $47a4: $0b
	dec  bc                                          ; $47a5: $0b
	dec  bc                                          ; $47a6: $0b
	dec  bc                                          ; $47a7: $0b
	inc  c                                           ; $47a8: $0c
	inc  c                                           ; $47a9: $0c
	inc  c                                           ; $47aa: $0c
	inc  c                                           ; $47ab: $0c
	inc  c                                           ; $47ac: $0c
	inc  c                                           ; $47ad: $0c
	inc  c                                           ; $47ae: $0c
	dec  bc                                          ; $47af: $0b
	dec  bc                                          ; $47b0: $0b
	dec  bc                                          ; $47b1: $0b
	dec  bc                                          ; $47b2: $0b
	dec  bc                                          ; $47b3: $0b
	dec  bc                                          ; $47b4: $0b
	dec  bc                                          ; $47b5: $0b
	dec  bc                                          ; $47b6: $0b
	dec  bc                                          ; $47b7: $0b
	dec  bc                                          ; $47b8: $0b
	dec  bc                                          ; $47b9: $0b
	dec  bc                                          ; $47ba: $0b
	dec  bc                                          ; $47bb: $0b
	inc  c                                           ; $47bc: $0c
	inc  c                                           ; $47bd: $0c
	inc  c                                           ; $47be: $0c
	inc  c                                           ; $47bf: $0c
	inc  c                                           ; $47c0: $0c
	inc  c                                           ; $47c1: $0c
	inc  c                                           ; $47c2: $0c
	dec  bc                                          ; $47c3: $0b
	dec  bc                                          ; $47c4: $0b
	dec  bc                                          ; $47c5: $0b
	dec  bc                                          ; $47c6: $0b
	dec  bc                                          ; $47c7: $0b
	dec  bc                                          ; $47c8: $0b
	dec  bc                                          ; $47c9: $0b
	dec  bc                                          ; $47ca: $0b
	dec  bc                                          ; $47cb: $0b
	dec  bc                                          ; $47cc: $0b
	dec  bc                                          ; $47cd: $0b
	dec  bc                                          ; $47ce: $0b
	dec  bc                                          ; $47cf: $0b
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
	jr   nz, jr_083_4803                             ; $47e0: $20 $21

	ld   [hl+], a                                    ; $47e2: $22
	inc  hl                                          ; $47e3: $23
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
	jr   nc, jr_083_4827                             ; $47f4: $30 $31

	ld   [hl-], a                                    ; $47f6: $32
	inc  sp                                          ; $47f7: $33
	jr   nz, @+$23                                   ; $47f8: $20 $21

	ld   [hl+], a                                    ; $47fa: $22
	inc  hl                                          ; $47fb: $23
	inc  h                                           ; $47fc: $24
	dec  h                                           ; $47fd: $25
	ld   h, $27                                      ; $47fe: $26 $27
	jr   z, jr_083_482b                              ; $4800: $28 $29

	ld   a, [hl+]                                    ; $4802: $2a

jr_083_4803:
	dec  hl                                          ; $4803: $2b
	inc  l                                           ; $4804: $2c
	dec  l                                           ; $4805: $2d
	ld   l, $2f                                      ; $4806: $2e $2f
	inc  h                                           ; $4808: $24
	dec  h                                           ; $4809: $25
	ld   h, $27                                      ; $480a: $26 $27
	jr   nc, jr_083_483f                             ; $480c: $30 $31

	ld   [hl-], a                                    ; $480e: $32
	inc  sp                                          ; $480f: $33
	inc  [hl]                                        ; $4810: $34
	dec  [hl]                                        ; $4811: $35
	ld   [hl], $37                                   ; $4812: $36 $37
	jr   c, jr_083_484f                              ; $4814: $38 $39

	ld   a, [hl-]                                    ; $4816: $3a
	dec  sp                                          ; $4817: $3b
	inc  a                                           ; $4818: $3c
	dec  a                                           ; $4819: $3d
	ld   a, $3f                                      ; $481a: $3e $3f
	inc  [hl]                                        ; $481c: $34
	dec  [hl]                                        ; $481d: $35
	ld   [hl], $37                                   ; $481e: $36 $37
	ld   b, b                                        ; $4820: $40
	ld   b, c                                        ; $4821: $41
	ld   b, d                                        ; $4822: $42
	ld   b, e                                        ; $4823: $43
	ld   b, h                                        ; $4824: $44
	ld   b, l                                        ; $4825: $45
	ld   b, [hl]                                     ; $4826: $46

jr_083_4827:
	ld   b, a                                        ; $4827: $47
	ld   c, b                                        ; $4828: $48
	ld   c, c                                        ; $4829: $49
	ld   c, d                                        ; $482a: $4a

jr_083_482b:
	ld   c, e                                        ; $482b: $4b
	ld   c, h                                        ; $482c: $4c
	ld   c, l                                        ; $482d: $4d
	ld   c, [hl]                                     ; $482e: $4e
	ld   c, a                                        ; $482f: $4f
	jr   z, @+$2b                                    ; $4830: $28 $29

	ld   a, [hl+]                                    ; $4832: $2a
	dec  hl                                          ; $4833: $2b
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

jr_083_483f:
	ld   e, e                                        ; $483f: $5b
	ld   e, h                                        ; $4840: $5c
	ld   e, l                                        ; $4841: $5d
	ld   e, [hl]                                     ; $4842: $5e
	ld   e, a                                        ; $4843: $5f
	jr   c, @+$3b                                    ; $4844: $38 $39

	ld   a, [hl-]                                    ; $4846: $3a
	dec  sp                                          ; $4847: $3b
	ld   h, b                                        ; $4848: $60
	ld   h, c                                        ; $4849: $61
	ld   h, d                                        ; $484a: $62
	ld   h, e                                        ; $484b: $63
	ld   h, h                                        ; $484c: $64
	ld   h, l                                        ; $484d: $65
	ld   h, [hl]                                     ; $484e: $66

jr_083_484f:
	ld   h, a                                        ; $484f: $67
	ld   l, b                                        ; $4850: $68
	ld   l, c                                        ; $4851: $69
	ld   l, d                                        ; $4852: $6a
	ld   l, e                                        ; $4853: $6b
	ld   l, h                                        ; $4854: $6c
	ld   l, l                                        ; $4855: $6d
	ld   l, [hl]                                     ; $4856: $6e
	ld   l, a                                        ; $4857: $6f
	inc  l                                           ; $4858: $2c
	dec  l                                           ; $4859: $2d
	ld   l, $2f                                      ; $485a: $2e $2f
	ld   [hl], b                                     ; $485c: $70
	ld   [hl], c                                     ; $485d: $71
	ld   [hl], d                                     ; $485e: $72
	ld   [hl], e                                     ; $485f: $73
	ld   [hl], h                                     ; $4860: $74
	ld   [hl], l                                     ; $4861: $75
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
	inc  a                                           ; $486c: $3c
	dec  a                                           ; $486d: $3d
	ld   a, $3f                                      ; $486e: $3e $3f
	nop                                              ; $4870: $00
	ld   bc, $0302                                   ; $4871: $01 $02 $03
	inc  b                                           ; $4874: $04
	dec  b                                           ; $4875: $05
	ld   b, $07                                      ; $4876: $06 $07
	ld   [$0a09], sp                                 ; $4878: $08 $09 $0a
	dec  bc                                          ; $487b: $0b
	inc  c                                           ; $487c: $0c
	dec  c                                           ; $487d: $0d
	ld   c, $0f                                      ; $487e: $0e $0f
	ld   b, b                                        ; $4880: $40
	ld   b, c                                        ; $4881: $41
	ld   b, d                                        ; $4882: $42
	ld   b, e                                        ; $4883: $43
	db   $10                                         ; $4884: $10
	ld   de, $1312                                   ; $4885: $11 $12 $13
	inc  d                                           ; $4888: $14
	dec  d                                           ; $4889: $15
	ld   d, $17                                      ; $488a: $16 $17
	jr   jr_083_48a7                                 ; $488c: $18 $19

	ld   a, [de]                                     ; $488e: $1a
	dec  de                                          ; $488f: $1b
	inc  e                                           ; $4890: $1c
	dec  e                                           ; $4891: $1d
	ld   e, $1f                                      ; $4892: $1e $1f
	ld   b, h                                        ; $4894: $44
	ld   b, l                                        ; $4895: $45
	ld   b, [hl]                                     ; $4896: $46
	ld   b, a                                        ; $4897: $47
	dec  b                                           ; $4898: $05
	dec  b                                           ; $4899: $05
	dec  b                                           ; $489a: $05
	dec  b                                           ; $489b: $05
	inc  bc                                          ; $489c: $03
	inc  bc                                          ; $489d: $03
	inc  bc                                          ; $489e: $03
	inc  bc                                          ; $489f: $03
	dec  b                                           ; $48a0: $05
	dec  b                                           ; $48a1: $05
	dec  b                                           ; $48a2: $05
	dec  b                                           ; $48a3: $05
	dec  b                                           ; $48a4: $05
	dec  b                                           ; $48a5: $05
	dec  b                                           ; $48a6: $05

jr_083_48a7:
	dec  b                                           ; $48a7: $05
	dec  c                                           ; $48a8: $0d
	dec  c                                           ; $48a9: $0d
	dec  c                                           ; $48aa: $0d
	dec  c                                           ; $48ab: $0d
	dec  b                                           ; $48ac: $05
	dec  b                                           ; $48ad: $05
	dec  b                                           ; $48ae: $05
	dec  b                                           ; $48af: $05
	dec  b                                           ; $48b0: $05
	inc  b                                           ; $48b1: $04
	inc  b                                           ; $48b2: $04
	inc  b                                           ; $48b3: $04
	dec  b                                           ; $48b4: $05
	dec  b                                           ; $48b5: $05
	dec  b                                           ; $48b6: $05
	dec  b                                           ; $48b7: $05
	dec  b                                           ; $48b8: $05
	dec  b                                           ; $48b9: $05
	dec  b                                           ; $48ba: $05
	dec  b                                           ; $48bb: $05
	dec  c                                           ; $48bc: $0d
	dec  c                                           ; $48bd: $0d
	dec  c                                           ; $48be: $0d
	dec  c                                           ; $48bf: $0d
	dec  b                                           ; $48c0: $05
	dec  b                                           ; $48c1: $05
	dec  b                                           ; $48c2: $05
	dec  b                                           ; $48c3: $05
	dec  b                                           ; $48c4: $05
	inc  b                                           ; $48c5: $04
	inc  b                                           ; $48c6: $04
	inc  b                                           ; $48c7: $04
	dec  b                                           ; $48c8: $05
	dec  b                                           ; $48c9: $05
	dec  b                                           ; $48ca: $05
	dec  b                                           ; $48cb: $05
	dec  b                                           ; $48cc: $05
	dec  b                                           ; $48cd: $05
	dec  b                                           ; $48ce: $05
	dec  b                                           ; $48cf: $05
	dec  c                                           ; $48d0: $0d
	dec  c                                           ; $48d1: $0d
	dec  c                                           ; $48d2: $0d
	dec  c                                           ; $48d3: $0d
	dec  b                                           ; $48d4: $05
	dec  b                                           ; $48d5: $05
	dec  b                                           ; $48d6: $05
	dec  b                                           ; $48d7: $05
	dec  b                                           ; $48d8: $05
	inc  b                                           ; $48d9: $04
	inc  b                                           ; $48da: $04
	inc  b                                           ; $48db: $04
	dec  b                                           ; $48dc: $05
	dec  b                                           ; $48dd: $05
	dec  b                                           ; $48de: $05
	dec  b                                           ; $48df: $05
	dec  b                                           ; $48e0: $05
	dec  b                                           ; $48e1: $05
	dec  b                                           ; $48e2: $05
	dec  b                                           ; $48e3: $05
	dec  c                                           ; $48e4: $0d
	dec  c                                           ; $48e5: $0d
	dec  c                                           ; $48e6: $0d
	dec  c                                           ; $48e7: $0d
	dec  b                                           ; $48e8: $05
	dec  b                                           ; $48e9: $05
	dec  b                                           ; $48ea: $05
	dec  b                                           ; $48eb: $05
	dec  b                                           ; $48ec: $05
	inc  b                                           ; $48ed: $04
	inc  b                                           ; $48ee: $04
	inc  b                                           ; $48ef: $04
	dec  b                                           ; $48f0: $05
	dec  b                                           ; $48f1: $05
	dec  b                                           ; $48f2: $05
	dec  b                                           ; $48f3: $05
	dec  b                                           ; $48f4: $05
	dec  b                                           ; $48f5: $05
	dec  b                                           ; $48f6: $05
	dec  b                                           ; $48f7: $05
	dec  c                                           ; $48f8: $0d
	dec  c                                           ; $48f9: $0d
	dec  c                                           ; $48fa: $0d
	dec  c                                           ; $48fb: $0d
	dec  b                                           ; $48fc: $05
	dec  b                                           ; $48fd: $05
	dec  b                                           ; $48fe: $05
	dec  b                                           ; $48ff: $05
	inc  b                                           ; $4900: $04
	inc  b                                           ; $4901: $04
	inc  b                                           ; $4902: $04
	inc  b                                           ; $4903: $04
	inc  b                                           ; $4904: $04
	inc  bc                                          ; $4905: $03
	inc  bc                                          ; $4906: $03
	inc  bc                                          ; $4907: $03
	dec  b                                           ; $4908: $05
	dec  b                                           ; $4909: $05
	dec  b                                           ; $490a: $05
	dec  b                                           ; $490b: $05
	dec  bc                                          ; $490c: $0b
	dec  c                                           ; $490d: $0d
	dec  c                                           ; $490e: $0d
	dec  c                                           ; $490f: $0d
	dec  b                                           ; $4910: $05
	inc  b                                           ; $4911: $04
	dec  b                                           ; $4912: $05
	inc  b                                           ; $4913: $04
	inc  b                                           ; $4914: $04
	inc  b                                           ; $4915: $04
	inc  b                                           ; $4916: $04
	inc  b                                           ; $4917: $04
	inc  bc                                          ; $4918: $03
	inc  bc                                          ; $4919: $03
	inc  bc                                          ; $491a: $03
	inc  bc                                          ; $491b: $03
	dec  b                                           ; $491c: $05
	dec  b                                           ; $491d: $05
	dec  b                                           ; $491e: $05
	inc  bc                                          ; $491f: $03
	dec  bc                                          ; $4920: $0b
	dec  bc                                          ; $4921: $0b
	dec  c                                           ; $4922: $0d
	dec  bc                                          ; $4923: $0b
	inc  b                                           ; $4924: $04
	inc  b                                           ; $4925: $04
	inc  b                                           ; $4926: $04
	inc  b                                           ; $4927: $04
	inc  b                                           ; $4928: $04
	inc  b                                           ; $4929: $04
	inc  b                                           ; $492a: $04
	inc  b                                           ; $492b: $04
	inc  bc                                          ; $492c: $03
	inc  bc                                          ; $492d: $03
	inc  bc                                          ; $492e: $03
	inc  bc                                          ; $492f: $03
	inc  bc                                          ; $4930: $03
	inc  bc                                          ; $4931: $03
	inc  bc                                          ; $4932: $03
	inc  bc                                          ; $4933: $03
	dec  bc                                          ; $4934: $0b
	dec  bc                                          ; $4935: $0b
	dec  bc                                          ; $4936: $0b
	dec  bc                                          ; $4937: $0b
	inc  c                                           ; $4938: $0c
	inc  c                                           ; $4939: $0c
	inc  c                                           ; $493a: $0c
	inc  c                                           ; $493b: $0c
	inc  c                                           ; $493c: $0c
	inc  c                                           ; $493d: $0c
	inc  c                                           ; $493e: $0c
	dec  c                                           ; $493f: $0d
	dec  c                                           ; $4940: $0d
	dec  c                                           ; $4941: $0d
	dec  bc                                          ; $4942: $0b
	dec  bc                                          ; $4943: $0b
	dec  bc                                          ; $4944: $0b
	dec  bc                                          ; $4945: $0b
	dec  bc                                          ; $4946: $0b
	dec  bc                                          ; $4947: $0b
	dec  bc                                          ; $4948: $0b
	dec  bc                                          ; $4949: $0b
	dec  bc                                          ; $494a: $0b
	dec  bc                                          ; $494b: $0b
	inc  c                                           ; $494c: $0c
	inc  c                                           ; $494d: $0c
	inc  c                                           ; $494e: $0c
	inc  c                                           ; $494f: $0c
	inc  c                                           ; $4950: $0c
	inc  c                                           ; $4951: $0c
	inc  c                                           ; $4952: $0c
	dec  c                                           ; $4953: $0d
	dec  c                                           ; $4954: $0d
	dec  c                                           ; $4955: $0d
	dec  bc                                          ; $4956: $0b
	dec  bc                                          ; $4957: $0b
	dec  bc                                          ; $4958: $0b
	dec  bc                                          ; $4959: $0b
	dec  bc                                          ; $495a: $0b
	dec  bc                                          ; $495b: $0b
	dec  bc                                          ; $495c: $0b
	dec  bc                                          ; $495d: $0b
	dec  bc                                          ; $495e: $0b
	dec  bc                                          ; $495f: $0b
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
	jr   nz, jr_083_4993                             ; $4970: $20 $21

	ld   [hl+], a                                    ; $4972: $22
	inc  hl                                          ; $4973: $23
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
	jr   nc, jr_083_49b7                             ; $4984: $30 $31

	ld   [hl-], a                                    ; $4986: $32
	inc  sp                                          ; $4987: $33
	jr   nz, @+$23                                   ; $4988: $20 $21

	ld   [hl+], a                                    ; $498a: $22
	inc  hl                                          ; $498b: $23
	inc  h                                           ; $498c: $24
	dec  h                                           ; $498d: $25
	ld   h, $27                                      ; $498e: $26 $27
	jr   z, jr_083_49bb                              ; $4990: $28 $29

	ld   a, [hl+]                                    ; $4992: $2a

jr_083_4993:
	dec  hl                                          ; $4993: $2b
	inc  l                                           ; $4994: $2c
	dec  l                                           ; $4995: $2d
	ld   l, $2f                                      ; $4996: $2e $2f
	inc  h                                           ; $4998: $24
	dec  h                                           ; $4999: $25
	ld   h, $27                                      ; $499a: $26 $27
	jr   nc, jr_083_49cf                             ; $499c: $30 $31

	ld   [hl-], a                                    ; $499e: $32
	inc  sp                                          ; $499f: $33
	inc  [hl]                                        ; $49a0: $34
	dec  [hl]                                        ; $49a1: $35
	ld   [hl], $37                                   ; $49a2: $36 $37
	jr   c, jr_083_49df                              ; $49a4: $38 $39

	ld   a, [hl-]                                    ; $49a6: $3a
	dec  sp                                          ; $49a7: $3b
	inc  a                                           ; $49a8: $3c
	dec  a                                           ; $49a9: $3d
	ld   a, $3f                                      ; $49aa: $3e $3f
	inc  [hl]                                        ; $49ac: $34
	dec  [hl]                                        ; $49ad: $35
	ld   [hl], $37                                   ; $49ae: $36 $37
	ld   b, b                                        ; $49b0: $40
	ld   b, c                                        ; $49b1: $41
	ld   b, d                                        ; $49b2: $42
	ld   b, e                                        ; $49b3: $43
	ld   b, h                                        ; $49b4: $44
	ld   b, l                                        ; $49b5: $45
	ld   b, [hl]                                     ; $49b6: $46

jr_083_49b7:
	ld   b, a                                        ; $49b7: $47
	ld   c, b                                        ; $49b8: $48
	ld   c, c                                        ; $49b9: $49
	ld   c, d                                        ; $49ba: $4a

jr_083_49bb:
	ld   c, e                                        ; $49bb: $4b
	ld   c, h                                        ; $49bc: $4c
	ld   c, l                                        ; $49bd: $4d
	ld   c, [hl]                                     ; $49be: $4e
	ld   c, a                                        ; $49bf: $4f
	jr   z, @+$2b                                    ; $49c0: $28 $29

	ld   a, [hl+]                                    ; $49c2: $2a
	dec  hl                                          ; $49c3: $2b
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

jr_083_49cf:
	ld   e, e                                        ; $49cf: $5b
	ld   e, h                                        ; $49d0: $5c
	ld   e, l                                        ; $49d1: $5d
	ld   e, [hl]                                     ; $49d2: $5e
	ld   e, a                                        ; $49d3: $5f
	jr   c, @+$3b                                    ; $49d4: $38 $39

	ld   a, [hl-]                                    ; $49d6: $3a
	dec  sp                                          ; $49d7: $3b
	ld   h, b                                        ; $49d8: $60
	ld   h, c                                        ; $49d9: $61
	ld   h, d                                        ; $49da: $62
	ld   h, e                                        ; $49db: $63
	ld   h, h                                        ; $49dc: $64
	ld   h, l                                        ; $49dd: $65
	ld   h, [hl]                                     ; $49de: $66

jr_083_49df:
	ld   h, a                                        ; $49df: $67
	ld   l, b                                        ; $49e0: $68
	ld   l, c                                        ; $49e1: $69
	ld   l, d                                        ; $49e2: $6a
	ld   l, e                                        ; $49e3: $6b
	ld   l, h                                        ; $49e4: $6c
	ld   l, l                                        ; $49e5: $6d
	ld   l, [hl]                                     ; $49e6: $6e
	ld   l, a                                        ; $49e7: $6f
	inc  l                                           ; $49e8: $2c
	dec  l                                           ; $49e9: $2d
	ld   l, $2f                                      ; $49ea: $2e $2f
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
	inc  a                                           ; $49fc: $3c
	dec  a                                           ; $49fd: $3d
	ld   a, $3f                                      ; $49fe: $3e $3f
	nop                                              ; $4a00: $00
	ld   bc, $0302                                   ; $4a01: $01 $02 $03
	inc  b                                           ; $4a04: $04
	dec  b                                           ; $4a05: $05
	ld   b, $07                                      ; $4a06: $06 $07
	ld   [$0a09], sp                                 ; $4a08: $08 $09 $0a
	dec  bc                                          ; $4a0b: $0b
	inc  c                                           ; $4a0c: $0c
	dec  c                                           ; $4a0d: $0d
	ld   c, $0f                                      ; $4a0e: $0e $0f
	ld   b, b                                        ; $4a10: $40
	ld   b, c                                        ; $4a11: $41
	ld   b, d                                        ; $4a12: $42
	ld   b, e                                        ; $4a13: $43
	db   $10                                         ; $4a14: $10
	ld   de, $1312                                   ; $4a15: $11 $12 $13
	inc  d                                           ; $4a18: $14
	dec  d                                           ; $4a19: $15
	ld   d, $17                                      ; $4a1a: $16 $17
	jr   jr_083_4a37                                 ; $4a1c: $18 $19

	ld   a, [de]                                     ; $4a1e: $1a
	dec  de                                          ; $4a1f: $1b
	inc  e                                           ; $4a20: $1c
	dec  e                                           ; $4a21: $1d
	ld   e, $1f                                      ; $4a22: $1e $1f
	ld   b, h                                        ; $4a24: $44
	ld   b, l                                        ; $4a25: $45
	ld   b, [hl]                                     ; $4a26: $46
	ld   b, a                                        ; $4a27: $47
	dec  b                                           ; $4a28: $05
	dec  b                                           ; $4a29: $05
	dec  b                                           ; $4a2a: $05
	dec  b                                           ; $4a2b: $05
	inc  bc                                          ; $4a2c: $03
	inc  bc                                          ; $4a2d: $03
	inc  bc                                          ; $4a2e: $03
	inc  bc                                          ; $4a2f: $03
	dec  b                                           ; $4a30: $05
	dec  b                                           ; $4a31: $05
	dec  b                                           ; $4a32: $05
	dec  b                                           ; $4a33: $05
	dec  b                                           ; $4a34: $05
	inc  bc                                          ; $4a35: $03
	inc  bc                                          ; $4a36: $03

jr_083_4a37:
	dec  b                                           ; $4a37: $05
	dec  c                                           ; $4a38: $0d
	dec  c                                           ; $4a39: $0d
	dec  c                                           ; $4a3a: $0d
	dec  c                                           ; $4a3b: $0d
	dec  b                                           ; $4a3c: $05
	dec  b                                           ; $4a3d: $05
	dec  b                                           ; $4a3e: $05
	dec  b                                           ; $4a3f: $05
	dec  b                                           ; $4a40: $05
	inc  b                                           ; $4a41: $04
	inc  b                                           ; $4a42: $04
	inc  b                                           ; $4a43: $04
	dec  b                                           ; $4a44: $05
	dec  b                                           ; $4a45: $05
	dec  b                                           ; $4a46: $05
	dec  b                                           ; $4a47: $05
	dec  b                                           ; $4a48: $05
	dec  b                                           ; $4a49: $05
	dec  b                                           ; $4a4a: $05
	dec  b                                           ; $4a4b: $05
	dec  c                                           ; $4a4c: $0d
	dec  c                                           ; $4a4d: $0d
	dec  c                                           ; $4a4e: $0d
	dec  c                                           ; $4a4f: $0d
	dec  b                                           ; $4a50: $05
	dec  b                                           ; $4a51: $05
	dec  b                                           ; $4a52: $05
	dec  b                                           ; $4a53: $05
	dec  b                                           ; $4a54: $05
	inc  b                                           ; $4a55: $04
	inc  b                                           ; $4a56: $04
	inc  b                                           ; $4a57: $04
	dec  b                                           ; $4a58: $05
	dec  b                                           ; $4a59: $05
	dec  b                                           ; $4a5a: $05
	dec  b                                           ; $4a5b: $05
	dec  b                                           ; $4a5c: $05
	dec  b                                           ; $4a5d: $05
	dec  b                                           ; $4a5e: $05
	dec  b                                           ; $4a5f: $05
	dec  c                                           ; $4a60: $0d
	dec  c                                           ; $4a61: $0d
	dec  c                                           ; $4a62: $0d
	dec  c                                           ; $4a63: $0d
	dec  b                                           ; $4a64: $05
	dec  b                                           ; $4a65: $05
	dec  b                                           ; $4a66: $05
	dec  b                                           ; $4a67: $05
	dec  b                                           ; $4a68: $05
	inc  b                                           ; $4a69: $04
	inc  b                                           ; $4a6a: $04
	inc  b                                           ; $4a6b: $04
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
	dec  c                                           ; $4a77: $0d
	dec  b                                           ; $4a78: $05
	dec  b                                           ; $4a79: $05
	dec  b                                           ; $4a7a: $05
	dec  b                                           ; $4a7b: $05
	dec  b                                           ; $4a7c: $05
	inc  b                                           ; $4a7d: $04
	inc  b                                           ; $4a7e: $04
	inc  b                                           ; $4a7f: $04
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
	inc  b                                           ; $4a90: $04
	inc  b                                           ; $4a91: $04
	inc  b                                           ; $4a92: $04
	inc  b                                           ; $4a93: $04
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
	inc  b                                           ; $4aa3: $04
	inc  b                                           ; $4aa4: $04
	inc  b                                           ; $4aa5: $04
	inc  b                                           ; $4aa6: $04
	inc  b                                           ; $4aa7: $04
	inc  bc                                          ; $4aa8: $03
	dec  b                                           ; $4aa9: $05
	inc  b                                           ; $4aaa: $04
	dec  b                                           ; $4aab: $05
	dec  b                                           ; $4aac: $05
	dec  b                                           ; $4aad: $05
	dec  b                                           ; $4aae: $05
	inc  bc                                          ; $4aaf: $03
	dec  bc                                          ; $4ab0: $0b
	dec  bc                                          ; $4ab1: $0b
	dec  c                                           ; $4ab2: $0d
	dec  c                                           ; $4ab3: $0d
	inc  b                                           ; $4ab4: $04
	inc  b                                           ; $4ab5: $04
	inc  b                                           ; $4ab6: $04
	inc  b                                           ; $4ab7: $04
	inc  b                                           ; $4ab8: $04
	inc  b                                           ; $4ab9: $04
	inc  b                                           ; $4aba: $04
	inc  b                                           ; $4abb: $04
	inc  b                                           ; $4abc: $04
	dec  b                                           ; $4abd: $05
	inc  bc                                          ; $4abe: $03
	inc  bc                                          ; $4abf: $03
	inc  bc                                          ; $4ac0: $03
	inc  bc                                          ; $4ac1: $03
	inc  bc                                          ; $4ac2: $03
	inc  bc                                          ; $4ac3: $03
	dec  bc                                          ; $4ac4: $0b
	dec  bc                                          ; $4ac5: $0b
	dec  bc                                          ; $4ac6: $0b
	dec  bc                                          ; $4ac7: $0b
	inc  c                                           ; $4ac8: $0c
	inc  c                                           ; $4ac9: $0c
	inc  c                                           ; $4aca: $0c
	inc  c                                           ; $4acb: $0c
	inc  c                                           ; $4acc: $0c
	inc  c                                           ; $4acd: $0c
	inc  c                                           ; $4ace: $0c
	dec  c                                           ; $4acf: $0d
	dec  c                                           ; $4ad0: $0d
	dec  c                                           ; $4ad1: $0d
	dec  c                                           ; $4ad2: $0d
	dec  bc                                          ; $4ad3: $0b
	dec  bc                                          ; $4ad4: $0b
	dec  bc                                          ; $4ad5: $0b
	dec  bc                                          ; $4ad6: $0b
	dec  bc                                          ; $4ad7: $0b
	dec  bc                                          ; $4ad8: $0b
	dec  bc                                          ; $4ad9: $0b
	dec  bc                                          ; $4ada: $0b
	dec  bc                                          ; $4adb: $0b
	inc  c                                           ; $4adc: $0c
	inc  c                                           ; $4add: $0c
	inc  c                                           ; $4ade: $0c
	inc  c                                           ; $4adf: $0c
	inc  c                                           ; $4ae0: $0c
	inc  c                                           ; $4ae1: $0c
	inc  c                                           ; $4ae2: $0c
	dec  c                                           ; $4ae3: $0d
	dec  c                                           ; $4ae4: $0d
	dec  c                                           ; $4ae5: $0d
	dec  c                                           ; $4ae6: $0d
	dec  bc                                          ; $4ae7: $0b
	dec  bc                                          ; $4ae8: $0b
	dec  bc                                          ; $4ae9: $0b
	dec  bc                                          ; $4aea: $0b
	dec  bc                                          ; $4aeb: $0b
	dec  bc                                          ; $4aec: $0b
	dec  bc                                          ; $4aed: $0b
	dec  bc                                          ; $4aee: $0b
	dec  bc                                          ; $4aef: $0b
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
	jr   nz, jr_083_4b23                             ; $4b00: $20 $21

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
	jr   nc, jr_083_4b47                             ; $4b14: $30 $31

	ld   [hl-], a                                    ; $4b16: $32
	inc  sp                                          ; $4b17: $33
	jr   nz, @+$23                                   ; $4b18: $20 $21

	ld   [hl+], a                                    ; $4b1a: $22
	inc  hl                                          ; $4b1b: $23
	inc  h                                           ; $4b1c: $24
	dec  h                                           ; $4b1d: $25
	ld   h, $27                                      ; $4b1e: $26 $27
	jr   z, jr_083_4b4b                              ; $4b20: $28 $29

	ld   a, [hl+]                                    ; $4b22: $2a

jr_083_4b23:
	dec  hl                                          ; $4b23: $2b
	inc  l                                           ; $4b24: $2c
	dec  l                                           ; $4b25: $2d
	ld   l, $2f                                      ; $4b26: $2e $2f
	inc  h                                           ; $4b28: $24
	dec  h                                           ; $4b29: $25
	ld   h, $27                                      ; $4b2a: $26 $27
	jr   nc, jr_083_4b5f                             ; $4b2c: $30 $31

	ld   [hl-], a                                    ; $4b2e: $32
	inc  sp                                          ; $4b2f: $33
	inc  [hl]                                        ; $4b30: $34
	dec  [hl]                                        ; $4b31: $35
	ld   [hl], $37                                   ; $4b32: $36 $37
	jr   c, jr_083_4b6f                              ; $4b34: $38 $39

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

jr_083_4b47:
	ld   b, a                                        ; $4b47: $47
	ld   c, b                                        ; $4b48: $48
	ld   c, c                                        ; $4b49: $49
	ld   c, d                                        ; $4b4a: $4a

jr_083_4b4b:
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

jr_083_4b5f:
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

jr_083_4b6f:
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
	jr   jr_083_4bc7                                 ; $4bac: $18 $19

	ld   a, [de]                                     ; $4bae: $1a
	dec  de                                          ; $4baf: $1b
	inc  e                                           ; $4bb0: $1c
	dec  e                                           ; $4bb1: $1d
	ld   e, $1f                                      ; $4bb2: $1e $1f
	ld   b, h                                        ; $4bb4: $44
	ld   b, l                                        ; $4bb5: $45
	ld   b, [hl]                                     ; $4bb6: $46
	ld   b, a                                        ; $4bb7: $47
	dec  b                                           ; $4bb8: $05
	dec  b                                           ; $4bb9: $05
	inc  bc                                          ; $4bba: $03
	dec  b                                           ; $4bbb: $05
	dec  b                                           ; $4bbc: $05
	inc  bc                                          ; $4bbd: $03
	inc  bc                                          ; $4bbe: $03
	inc  bc                                          ; $4bbf: $03
	inc  bc                                          ; $4bc0: $03
	inc  bc                                          ; $4bc1: $03
	inc  bc                                          ; $4bc2: $03
	inc  bc                                          ; $4bc3: $03
	inc  bc                                          ; $4bc4: $03
	inc  bc                                          ; $4bc5: $03
	inc  bc                                          ; $4bc6: $03

jr_083_4bc7:
	dec  b                                           ; $4bc7: $05
	dec  c                                           ; $4bc8: $0d
	dec  c                                           ; $4bc9: $0d
	dec  c                                           ; $4bca: $0d
	dec  c                                           ; $4bcb: $0d
	dec  b                                           ; $4bcc: $05
	dec  b                                           ; $4bcd: $05
	inc  bc                                          ; $4bce: $03
	inc  bc                                          ; $4bcf: $03
	inc  b                                           ; $4bd0: $04
	inc  b                                           ; $4bd1: $04
	inc  b                                           ; $4bd2: $04
	inc  b                                           ; $4bd3: $04
	inc  bc                                          ; $4bd4: $03
	inc  bc                                          ; $4bd5: $03
	inc  bc                                          ; $4bd6: $03
	inc  bc                                          ; $4bd7: $03
	inc  b                                           ; $4bd8: $04
	inc  b                                           ; $4bd9: $04
	inc  b                                           ; $4bda: $04
	dec  b                                           ; $4bdb: $05
	dec  c                                           ; $4bdc: $0d
	dec  c                                           ; $4bdd: $0d
	dec  c                                           ; $4bde: $0d
	dec  c                                           ; $4bdf: $0d
	dec  b                                           ; $4be0: $05
	dec  b                                           ; $4be1: $05
	inc  bc                                          ; $4be2: $03
	inc  bc                                          ; $4be3: $03
	inc  b                                           ; $4be4: $04
	inc  b                                           ; $4be5: $04
	inc  b                                           ; $4be6: $04
	inc  b                                           ; $4be7: $04
	inc  bc                                          ; $4be8: $03
	inc  bc                                          ; $4be9: $03
	inc  bc                                          ; $4bea: $03
	inc  bc                                          ; $4beb: $03
	inc  b                                           ; $4bec: $04
	inc  b                                           ; $4bed: $04
	inc  b                                           ; $4bee: $04
	inc  b                                           ; $4bef: $04
	inc  c                                           ; $4bf0: $0c
	inc  c                                           ; $4bf1: $0c
	inc  c                                           ; $4bf2: $0c
	dec  c                                           ; $4bf3: $0d
	dec  b                                           ; $4bf4: $05
	dec  b                                           ; $4bf5: $05
	inc  bc                                          ; $4bf6: $03
	inc  bc                                          ; $4bf7: $03
	inc  b                                           ; $4bf8: $04
	inc  b                                           ; $4bf9: $04
	inc  b                                           ; $4bfa: $04
	dec  b                                           ; $4bfb: $05
	inc  bc                                          ; $4bfc: $03
	inc  bc                                          ; $4bfd: $03
	inc  bc                                          ; $4bfe: $03
	inc  bc                                          ; $4bff: $03
	inc  b                                           ; $4c00: $04
	inc  b                                           ; $4c01: $04
	inc  b                                           ; $4c02: $04
	inc  b                                           ; $4c03: $04
	inc  c                                           ; $4c04: $0c
	dec  c                                           ; $4c05: $0d
	dec  c                                           ; $4c06: $0d
	dec  c                                           ; $4c07: $0d
	dec  b                                           ; $4c08: $05
	dec  b                                           ; $4c09: $05
	inc  bc                                          ; $4c0a: $03
	inc  bc                                          ; $4c0b: $03
	inc  b                                           ; $4c0c: $04
	inc  b                                           ; $4c0d: $04
	inc  b                                           ; $4c0e: $04
	dec  b                                           ; $4c0f: $05
	inc  bc                                          ; $4c10: $03
	inc  bc                                          ; $4c11: $03
	inc  bc                                          ; $4c12: $03
	inc  bc                                          ; $4c13: $03
	inc  b                                           ; $4c14: $04
	inc  b                                           ; $4c15: $04
	inc  b                                           ; $4c16: $04
	dec  b                                           ; $4c17: $05
	inc  c                                           ; $4c18: $0c
	inc  c                                           ; $4c19: $0c
	inc  c                                           ; $4c1a: $0c
	dec  c                                           ; $4c1b: $0d
	dec  b                                           ; $4c1c: $05
	dec  b                                           ; $4c1d: $05
	inc  bc                                          ; $4c1e: $03
	inc  bc                                          ; $4c1f: $03
	inc  b                                           ; $4c20: $04
	inc  bc                                          ; $4c21: $03
	inc  bc                                          ; $4c22: $03
	inc  b                                           ; $4c23: $04
	inc  bc                                          ; $4c24: $03
	inc  bc                                          ; $4c25: $03
	inc  bc                                          ; $4c26: $03
	inc  bc                                          ; $4c27: $03
	inc  b                                           ; $4c28: $04
	inc  bc                                          ; $4c29: $03
	inc  bc                                          ; $4c2a: $03
	dec  b                                           ; $4c2b: $05
	inc  c                                           ; $4c2c: $0c
	dec  c                                           ; $4c2d: $0d
	dec  c                                           ; $4c2e: $0d
	dec  c                                           ; $4c2f: $0d
	dec  b                                           ; $4c30: $05
	dec  b                                           ; $4c31: $05
	dec  b                                           ; $4c32: $05
	inc  b                                           ; $4c33: $04
	inc  b                                           ; $4c34: $04
	inc  bc                                          ; $4c35: $03
	inc  bc                                          ; $4c36: $03
	inc  bc                                          ; $4c37: $03
	inc  bc                                          ; $4c38: $03
	inc  bc                                          ; $4c39: $03
	inc  bc                                          ; $4c3a: $03
	inc  bc                                          ; $4c3b: $03
	inc  bc                                          ; $4c3c: $03
	inc  bc                                          ; $4c3d: $03
	inc  b                                           ; $4c3e: $04
	inc  b                                           ; $4c3f: $04
	inc  c                                           ; $4c40: $0c
	inc  c                                           ; $4c41: $0c
	dec  c                                           ; $4c42: $0d
	dec  c                                           ; $4c43: $0d
	dec  b                                           ; $4c44: $05
	inc  b                                           ; $4c45: $04
	inc  b                                           ; $4c46: $04
	inc  bc                                          ; $4c47: $03
	inc  bc                                          ; $4c48: $03
	inc  bc                                          ; $4c49: $03
	inc  bc                                          ; $4c4a: $03
	inc  bc                                          ; $4c4b: $03
	inc  bc                                          ; $4c4c: $03
	inc  bc                                          ; $4c4d: $03
	inc  bc                                          ; $4c4e: $03
	inc  bc                                          ; $4c4f: $03
	inc  bc                                          ; $4c50: $03
	inc  bc                                          ; $4c51: $03
	inc  b                                           ; $4c52: $04
	inc  b                                           ; $4c53: $04
	dec  bc                                          ; $4c54: $0b
	dec  c                                           ; $4c55: $0d
	dec  bc                                          ; $4c56: $0b
	dec  bc                                          ; $4c57: $0b
	dec  bc                                          ; $4c58: $0b
	dec  bc                                          ; $4c59: $0b
	dec  bc                                          ; $4c5a: $0b
	dec  bc                                          ; $4c5b: $0b
	dec  bc                                          ; $4c5c: $0b
	dec  bc                                          ; $4c5d: $0b
	dec  bc                                          ; $4c5e: $0b
	dec  bc                                          ; $4c5f: $0b
	dec  bc                                          ; $4c60: $0b
	dec  bc                                          ; $4c61: $0b
	dec  bc                                          ; $4c62: $0b
	dec  bc                                          ; $4c63: $0b
	dec  bc                                          ; $4c64: $0b
	dec  bc                                          ; $4c65: $0b
	dec  bc                                          ; $4c66: $0b
	dec  bc                                          ; $4c67: $0b
	dec  bc                                          ; $4c68: $0b
	dec  bc                                          ; $4c69: $0b
	dec  bc                                          ; $4c6a: $0b
	dec  bc                                          ; $4c6b: $0b
	dec  bc                                          ; $4c6c: $0b
	dec  bc                                          ; $4c6d: $0b
	dec  bc                                          ; $4c6e: $0b
	dec  bc                                          ; $4c6f: $0b
	dec  bc                                          ; $4c70: $0b
	dec  bc                                          ; $4c71: $0b
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
	dec  bc                                          ; $4c7e: $0b
	dec  bc                                          ; $4c7f: $0b
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
	jr   nz, jr_083_4cb3                             ; $4c90: $20 $21

	ld   [hl+], a                                    ; $4c92: $22
	inc  hl                                          ; $4c93: $23
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
	jr   nc, jr_083_4cd7                             ; $4ca4: $30 $31

	ld   [hl-], a                                    ; $4ca6: $32
	inc  sp                                          ; $4ca7: $33
	jr   nz, @+$23                                   ; $4ca8: $20 $21

	ld   [hl+], a                                    ; $4caa: $22
	inc  hl                                          ; $4cab: $23
	inc  h                                           ; $4cac: $24
	dec  h                                           ; $4cad: $25
	ld   h, $27                                      ; $4cae: $26 $27
	jr   z, jr_083_4cdb                              ; $4cb0: $28 $29

	ld   a, [hl+]                                    ; $4cb2: $2a

jr_083_4cb3:
	dec  hl                                          ; $4cb3: $2b
	inc  l                                           ; $4cb4: $2c
	dec  l                                           ; $4cb5: $2d
	ld   l, $2f                                      ; $4cb6: $2e $2f
	inc  h                                           ; $4cb8: $24
	dec  h                                           ; $4cb9: $25
	ld   h, $27                                      ; $4cba: $26 $27
	jr   nc, jr_083_4cef                             ; $4cbc: $30 $31

	ld   [hl-], a                                    ; $4cbe: $32
	inc  sp                                          ; $4cbf: $33
	inc  [hl]                                        ; $4cc0: $34
	dec  [hl]                                        ; $4cc1: $35
	ld   [hl], $37                                   ; $4cc2: $36 $37
	jr   c, jr_083_4cff                              ; $4cc4: $38 $39

	ld   a, [hl-]                                    ; $4cc6: $3a
	dec  sp                                          ; $4cc7: $3b
	inc  a                                           ; $4cc8: $3c
	dec  a                                           ; $4cc9: $3d
	ld   a, $3f                                      ; $4cca: $3e $3f
	inc  [hl]                                        ; $4ccc: $34
	dec  [hl]                                        ; $4ccd: $35
	ld   [hl], $37                                   ; $4cce: $36 $37
	ld   b, b                                        ; $4cd0: $40
	ld   b, c                                        ; $4cd1: $41
	ld   b, d                                        ; $4cd2: $42
	ld   b, e                                        ; $4cd3: $43
	ld   b, h                                        ; $4cd4: $44
	ld   b, l                                        ; $4cd5: $45
	ld   b, [hl]                                     ; $4cd6: $46

jr_083_4cd7:
	ld   b, a                                        ; $4cd7: $47
	ld   c, b                                        ; $4cd8: $48
	ld   c, c                                        ; $4cd9: $49
	ld   c, d                                        ; $4cda: $4a

jr_083_4cdb:
	ld   c, e                                        ; $4cdb: $4b
	ld   c, h                                        ; $4cdc: $4c
	ld   c, l                                        ; $4cdd: $4d
	ld   c, [hl]                                     ; $4cde: $4e
	ld   c, a                                        ; $4cdf: $4f
	jr   z, @+$2b                                    ; $4ce0: $28 $29

	ld   a, [hl+]                                    ; $4ce2: $2a
	dec  hl                                          ; $4ce3: $2b
	ld   d, b                                        ; $4ce4: $50
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

jr_083_4cef:
	ld   e, e                                        ; $4cef: $5b
	ld   e, h                                        ; $4cf0: $5c
	ld   e, l                                        ; $4cf1: $5d
	ld   e, [hl]                                     ; $4cf2: $5e
	ld   e, a                                        ; $4cf3: $5f
	jr   c, @+$3b                                    ; $4cf4: $38 $39

	ld   a, [hl-]                                    ; $4cf6: $3a
	dec  sp                                          ; $4cf7: $3b
	ld   h, b                                        ; $4cf8: $60
	ld   h, c                                        ; $4cf9: $61
	ld   h, d                                        ; $4cfa: $62
	ld   h, e                                        ; $4cfb: $63
	ld   h, h                                        ; $4cfc: $64
	ld   h, l                                        ; $4cfd: $65
	ld   h, [hl]                                     ; $4cfe: $66

jr_083_4cff:
	ld   h, a                                        ; $4cff: $67
	ld   l, b                                        ; $4d00: $68
	ld   l, c                                        ; $4d01: $69
	ld   l, d                                        ; $4d02: $6a
	ld   l, e                                        ; $4d03: $6b
	ld   l, h                                        ; $4d04: $6c
	ld   l, l                                        ; $4d05: $6d
	ld   l, [hl]                                     ; $4d06: $6e
	ld   l, a                                        ; $4d07: $6f
	inc  l                                           ; $4d08: $2c
	dec  l                                           ; $4d09: $2d
	ld   l, $2f                                      ; $4d0a: $2e $2f
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
	inc  a                                           ; $4d1c: $3c
	dec  a                                           ; $4d1d: $3d
	ld   a, $3f                                      ; $4d1e: $3e $3f
	nop                                              ; $4d20: $00
	ld   bc, $0302                                   ; $4d21: $01 $02 $03
	inc  b                                           ; $4d24: $04
	dec  b                                           ; $4d25: $05
	ld   b, $07                                      ; $4d26: $06 $07
	ld   [$0a09], sp                                 ; $4d28: $08 $09 $0a
	dec  bc                                          ; $4d2b: $0b
	inc  c                                           ; $4d2c: $0c
	dec  c                                           ; $4d2d: $0d
	ld   c, $0f                                      ; $4d2e: $0e $0f
	ld   b, b                                        ; $4d30: $40
	ld   b, c                                        ; $4d31: $41
	ld   b, d                                        ; $4d32: $42
	ld   b, e                                        ; $4d33: $43
	db   $10                                         ; $4d34: $10
	ld   de, $1312                                   ; $4d35: $11 $12 $13
	inc  d                                           ; $4d38: $14
	dec  d                                           ; $4d39: $15
	ld   d, $17                                      ; $4d3a: $16 $17
	jr   jr_083_4d57                                 ; $4d3c: $18 $19

	ld   a, [de]                                     ; $4d3e: $1a
	dec  de                                          ; $4d3f: $1b
	inc  e                                           ; $4d40: $1c
	dec  e                                           ; $4d41: $1d
	ld   e, $1f                                      ; $4d42: $1e $1f
	ld   b, h                                        ; $4d44: $44
	ld   b, l                                        ; $4d45: $45
	ld   b, [hl]                                     ; $4d46: $46
	ld   b, a                                        ; $4d47: $47
	dec  b                                           ; $4d48: $05
	dec  b                                           ; $4d49: $05
	inc  bc                                          ; $4d4a: $03
	dec  b                                           ; $4d4b: $05
	dec  b                                           ; $4d4c: $05
	inc  bc                                          ; $4d4d: $03
	inc  bc                                          ; $4d4e: $03
	inc  bc                                          ; $4d4f: $03
	inc  bc                                          ; $4d50: $03
	inc  bc                                          ; $4d51: $03
	inc  bc                                          ; $4d52: $03
	inc  bc                                          ; $4d53: $03
	inc  bc                                          ; $4d54: $03
	inc  bc                                          ; $4d55: $03
	inc  bc                                          ; $4d56: $03

jr_083_4d57:
	inc  bc                                          ; $4d57: $03
	dec  c                                           ; $4d58: $0d
	dec  c                                           ; $4d59: $0d
	dec  c                                           ; $4d5a: $0d
	dec  c                                           ; $4d5b: $0d
	dec  b                                           ; $4d5c: $05
	dec  b                                           ; $4d5d: $05
	inc  bc                                          ; $4d5e: $03
	inc  bc                                          ; $4d5f: $03
	inc  b                                           ; $4d60: $04
	inc  b                                           ; $4d61: $04
	inc  b                                           ; $4d62: $04
	inc  b                                           ; $4d63: $04
	inc  bc                                          ; $4d64: $03
	inc  bc                                          ; $4d65: $03
	inc  bc                                          ; $4d66: $03
	inc  bc                                          ; $4d67: $03
	inc  b                                           ; $4d68: $04
	inc  b                                           ; $4d69: $04
	inc  b                                           ; $4d6a: $04
	dec  b                                           ; $4d6b: $05
	dec  c                                           ; $4d6c: $0d
	dec  c                                           ; $4d6d: $0d
	dec  c                                           ; $4d6e: $0d
	dec  c                                           ; $4d6f: $0d
	dec  b                                           ; $4d70: $05
	dec  b                                           ; $4d71: $05
	inc  bc                                          ; $4d72: $03
	inc  bc                                          ; $4d73: $03
	inc  b                                           ; $4d74: $04
	inc  b                                           ; $4d75: $04
	inc  b                                           ; $4d76: $04
	inc  b                                           ; $4d77: $04
	inc  bc                                          ; $4d78: $03
	inc  bc                                          ; $4d79: $03
	inc  bc                                          ; $4d7a: $03
	inc  bc                                          ; $4d7b: $03
	inc  b                                           ; $4d7c: $04
	inc  bc                                          ; $4d7d: $03
	inc  b                                           ; $4d7e: $04
	dec  b                                           ; $4d7f: $05
	dec  c                                           ; $4d80: $0d
	inc  c                                           ; $4d81: $0c
	inc  c                                           ; $4d82: $0c
	dec  c                                           ; $4d83: $0d
	dec  b                                           ; $4d84: $05
	dec  b                                           ; $4d85: $05
	inc  bc                                          ; $4d86: $03
	inc  bc                                          ; $4d87: $03
	inc  b                                           ; $4d88: $04
	inc  b                                           ; $4d89: $04
	inc  b                                           ; $4d8a: $04
	dec  b                                           ; $4d8b: $05
	inc  bc                                          ; $4d8c: $03
	inc  bc                                          ; $4d8d: $03
	inc  bc                                          ; $4d8e: $03
	inc  bc                                          ; $4d8f: $03
	inc  b                                           ; $4d90: $04
	inc  bc                                          ; $4d91: $03
	inc  b                                           ; $4d92: $04
	dec  b                                           ; $4d93: $05
	dec  c                                           ; $4d94: $0d
	dec  c                                           ; $4d95: $0d
	inc  c                                           ; $4d96: $0c
	dec  c                                           ; $4d97: $0d
	dec  b                                           ; $4d98: $05
	dec  b                                           ; $4d99: $05
	inc  bc                                          ; $4d9a: $03
	inc  bc                                          ; $4d9b: $03
	inc  b                                           ; $4d9c: $04
	inc  b                                           ; $4d9d: $04
	inc  b                                           ; $4d9e: $04
	dec  b                                           ; $4d9f: $05
	inc  bc                                          ; $4da0: $03
	inc  bc                                          ; $4da1: $03
	inc  bc                                          ; $4da2: $03
	inc  bc                                          ; $4da3: $03
	inc  b                                           ; $4da4: $04
	inc  bc                                          ; $4da5: $03
	inc  b                                           ; $4da6: $04
	dec  b                                           ; $4da7: $05
	inc  c                                           ; $4da8: $0c
	inc  c                                           ; $4da9: $0c
	inc  c                                           ; $4daa: $0c
	dec  c                                           ; $4dab: $0d
	dec  b                                           ; $4dac: $05
	dec  b                                           ; $4dad: $05
	inc  bc                                          ; $4dae: $03
	inc  bc                                          ; $4daf: $03
	inc  b                                           ; $4db0: $04
	inc  bc                                          ; $4db1: $03
	inc  bc                                          ; $4db2: $03
	inc  b                                           ; $4db3: $04
	inc  bc                                          ; $4db4: $03
	inc  bc                                          ; $4db5: $03
	inc  bc                                          ; $4db6: $03
	inc  bc                                          ; $4db7: $03
	inc  b                                           ; $4db8: $04
	inc  bc                                          ; $4db9: $03
	inc  bc                                          ; $4dba: $03
	dec  b                                           ; $4dbb: $05
	inc  c                                           ; $4dbc: $0c
	dec  c                                           ; $4dbd: $0d
	dec  c                                           ; $4dbe: $0d
	dec  c                                           ; $4dbf: $0d
	dec  b                                           ; $4dc0: $05
	dec  b                                           ; $4dc1: $05
	dec  b                                           ; $4dc2: $05
	inc  b                                           ; $4dc3: $04
	inc  b                                           ; $4dc4: $04
	inc  bc                                          ; $4dc5: $03
	inc  bc                                          ; $4dc6: $03
	inc  bc                                          ; $4dc7: $03
	inc  bc                                          ; $4dc8: $03
	inc  bc                                          ; $4dc9: $03
	inc  bc                                          ; $4dca: $03
	inc  bc                                          ; $4dcb: $03
	inc  bc                                          ; $4dcc: $03
	inc  bc                                          ; $4dcd: $03
	inc  b                                           ; $4dce: $04
	dec  b                                           ; $4dcf: $05
	dec  c                                           ; $4dd0: $0d
	dec  c                                           ; $4dd1: $0d
	dec  c                                           ; $4dd2: $0d
	dec  c                                           ; $4dd3: $0d
	dec  b                                           ; $4dd4: $05
	inc  b                                           ; $4dd5: $04
	inc  b                                           ; $4dd6: $04
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
	inc  b                                           ; $4de2: $04
	inc  b                                           ; $4de3: $04
	dec  bc                                          ; $4de4: $0b
	dec  c                                           ; $4de5: $0d
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
	dec  bc                                          ; $4dfb: $0b
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
	dec  bc                                          ; $4e08: $0b
	dec  bc                                          ; $4e09: $0b
	dec  bc                                          ; $4e0a: $0b
	dec  bc                                          ; $4e0b: $0b
	dec  bc                                          ; $4e0c: $0b
	dec  bc                                          ; $4e0d: $0b
	dec  bc                                          ; $4e0e: $0b
	dec  bc                                          ; $4e0f: $0b
	nop                                              ; $4e10: $00
	ld   bc, $0302                                   ; $4e11: $01 $02 $03
	inc  b                                           ; $4e14: $04
	inc  b                                           ; $4e15: $04
	inc  b                                           ; $4e16: $04
	inc  b                                           ; $4e17: $04
	inc  b                                           ; $4e18: $04
	inc  b                                           ; $4e19: $04
	inc  b                                           ; $4e1a: $04
	inc  b                                           ; $4e1b: $04
	dec  b                                           ; $4e1c: $05
	ld   b, $06                                      ; $4e1d: $06 $06
	rlca                                             ; $4e1f: $07
	ld   [$0a09], sp                                 ; $4e20: $08 $09 $0a
	dec  bc                                          ; $4e23: $0b
	inc  c                                           ; $4e24: $0c
	dec  c                                           ; $4e25: $0d
	ld   c, $0f                                      ; $4e26: $0e $0f
	db   $10                                         ; $4e28: $10
	ld   de, $1111                                   ; $4e29: $11 $11 $11
	ld   de, $1112                                   ; $4e2c: $11 $12 $11
	inc  de                                          ; $4e2f: $13
	inc  d                                           ; $4e30: $14
	dec  d                                           ; $4e31: $15
	ld   b, $16                                      ; $4e32: $06 $16
	rla                                              ; $4e34: $17
	ld   de, $1918                                   ; $4e35: $11 $18 $19
	ld   a, [de]                                     ; $4e38: $1a
	dec  de                                          ; $4e39: $1b
	inc  e                                           ; $4e3a: $1c
	rrca                                             ; $4e3b: $0f
	dec  e                                           ; $4e3c: $1d
	ld   e, $1f                                      ; $4e3d: $1e $1f
	ld   de, $2011                                   ; $4e3f: $11 $11 $20
	ld   de, $2221                                   ; $4e42: $11 $21 $22
	inc  hl                                          ; $4e45: $23
	ld   b, $16                                      ; $4e46: $06 $16
	rla                                              ; $4e48: $17
	inc  h                                           ; $4e49: $24
	dec  h                                           ; $4e4a: $25
	ld   h, $27                                      ; $4e4b: $26 $27
	jr   z, jr_083_4e78                              ; $4e4d: $28 $29

	rrca                                             ; $4e4f: $0f
	ld   a, [hl+]                                    ; $4e50: $2a
	dec  hl                                          ; $4e51: $2b
	inc  l                                           ; $4e52: $2c
	dec  l                                           ; $4e53: $2d
	ld   l, $2f                                      ; $4e54: $2e $2f
	jr   nc, jr_083_4e89                             ; $4e56: $30 $31

	ld   [hl-], a                                    ; $4e58: $32
	inc  hl                                          ; $4e59: $23
	ld   b, $16                                      ; $4e5a: $06 $16
	inc  sp                                          ; $4e5c: $33
	inc  [hl]                                        ; $4e5d: $34
	dec  [hl]                                        ; $4e5e: $35
	ld   [hl], $37                                   ; $4e5f: $36 $37
	jr   c, jr_083_4e9c                              ; $4e61: $38 $39

	rrca                                             ; $4e63: $0f
	ld   a, [hl-]                                    ; $4e64: $3a
	dec  sp                                          ; $4e65: $3b
	inc  l                                           ; $4e66: $2c
	inc  a                                           ; $4e67: $3c
	dec  a                                           ; $4e68: $3d
	ld   a, $3f                                      ; $4e69: $3e $3f
	ld   b, b                                        ; $4e6b: $40
	ld   b, c                                        ; $4e6c: $41
	inc  hl                                          ; $4e6d: $23
	ld   b, $16                                      ; $4e6e: $06 $16
	ld   b, d                                        ; $4e70: $42
	ld   b, e                                        ; $4e71: $43
	ld   b, h                                        ; $4e72: $44
	ld   b, l                                        ; $4e73: $45
	ld   b, [hl]                                     ; $4e74: $46
	ld   b, a                                        ; $4e75: $47
	ld   c, b                                        ; $4e76: $48
	rrca                                             ; $4e77: $0f

jr_083_4e78:
	ld   c, c                                        ; $4e78: $49
	ld   c, d                                        ; $4e79: $4a
	inc  l                                           ; $4e7a: $2c
	ld   c, e                                        ; $4e7b: $4b
	ld   c, h                                        ; $4e7c: $4c
	ld   c, l                                        ; $4e7d: $4d
	ld   c, [hl]                                     ; $4e7e: $4e
	ld   c, a                                        ; $4e7f: $4f
	ld   d, b                                        ; $4e80: $50
	inc  hl                                          ; $4e81: $23
	ld   b, $16                                      ; $4e82: $06 $16
	ld   d, c                                        ; $4e84: $51
	ld   d, d                                        ; $4e85: $52
	ld   d, e                                        ; $4e86: $53
	ld   d, h                                        ; $4e87: $54
	ld   d, l                                        ; $4e88: $55

jr_083_4e89:
	ld   d, [hl]                                     ; $4e89: $56
	ld   d, a                                        ; $4e8a: $57
	rrca                                             ; $4e8b: $0f
	ld   e, b                                        ; $4e8c: $58
	ld   e, c                                        ; $4e8d: $59
	ld   e, d                                        ; $4e8e: $5a
	ld   e, e                                        ; $4e8f: $5b
	ld   e, h                                        ; $4e90: $5c
	ld   e, l                                        ; $4e91: $5d
	ld   e, [hl]                                     ; $4e92: $5e
	ld   e, a                                        ; $4e93: $5f
	ld   h, b                                        ; $4e94: $60
	inc  hl                                          ; $4e95: $23
	ld   b, $16                                      ; $4e96: $06 $16
	ld   h, c                                        ; $4e98: $61
	ld   h, d                                        ; $4e99: $62
	ld   h, e                                        ; $4e9a: $63
	add  hl, de                                      ; $4e9b: $19

jr_083_4e9c:
	ld   h, h                                        ; $4e9c: $64
	ld   h, l                                        ; $4e9d: $65
	ld   h, [hl]                                     ; $4e9e: $66
	ld   h, a                                        ; $4e9f: $67
	ld   l, b                                        ; $4ea0: $68
	ld   l, c                                        ; $4ea1: $69
	ld   l, d                                        ; $4ea2: $6a
	ld   l, e                                        ; $4ea3: $6b
	ld   l, h                                        ; $4ea4: $6c
	ld   l, l                                        ; $4ea5: $6d
	ld   l, [hl]                                     ; $4ea6: $6e
	ld   l, a                                        ; $4ea7: $6f
	ld   [hl], b                                     ; $4ea8: $70
	ld   [hl], c                                     ; $4ea9: $71
	ld   [hl], d                                     ; $4eaa: $72
	ld   [hl], e                                     ; $4eab: $73
	ld   [hl], h                                     ; $4eac: $74
	ld   [hl], l                                     ; $4ead: $75
	ld   h, e                                        ; $4eae: $63
	add  hl, de                                      ; $4eaf: $19
	halt                                             ; $4eb0: $76
	ld   [hl], a                                     ; $4eb1: $77
	ld   a, b                                        ; $4eb2: $78
	ld   a, c                                        ; $4eb3: $79
	ld   a, d                                        ; $4eb4: $7a
	ld   a, e                                        ; $4eb5: $7b
	ld   a, h                                        ; $4eb6: $7c
	ld   de, $7e7d                                   ; $4eb7: $11 $7d $7e
	rrca                                             ; $4eba: $0f
	ld   a, a                                        ; $4ebb: $7f
	nop                                              ; $4ebc: $00
	ld   bc, $0302                                   ; $4ebd: $01 $02 $03
	inc  b                                           ; $4ec0: $04
	dec  b                                           ; $4ec1: $05
	ld   b, $19                                      ; $4ec2: $06 $19
	rlca                                             ; $4ec4: $07
	ld   [$0a09], sp                                 ; $4ec5: $08 $09 $0a
	dec  bc                                          ; $4ec8: $0b
	inc  c                                           ; $4ec9: $0c
	ld   de, $0e0d                                   ; $4eca: $11 $0d $0e
	rrca                                             ; $4ecd: $0f
	rrca                                             ; $4ece: $0f
	rrca                                             ; $4ecf: $0f
	rrca                                             ; $4ed0: $0f
	db   $10                                         ; $4ed1: $10
	ld   de, $1312                                   ; $4ed2: $11 $12 $13
	inc  d                                           ; $4ed5: $14
	dec  d                                           ; $4ed6: $15
	add  hl, de                                      ; $4ed7: $19
	inc  b                                           ; $4ed8: $04
	inc  b                                           ; $4ed9: $04
	dec  b                                           ; $4eda: $05
	dec  b                                           ; $4edb: $05
	inc  bc                                          ; $4edc: $03
	inc  bc                                          ; $4edd: $03
	inc  bc                                          ; $4ede: $03
	inc  bc                                          ; $4edf: $03
	inc  bc                                          ; $4ee0: $03
	inc  bc                                          ; $4ee1: $03
	inc  bc                                          ; $4ee2: $03
	inc  bc                                          ; $4ee3: $03
	inc  bc                                          ; $4ee4: $03
	inc  bc                                          ; $4ee5: $03
	inc  bc                                          ; $4ee6: $03
	inc  bc                                          ; $4ee7: $03
	inc  bc                                          ; $4ee8: $03
	inc  bc                                          ; $4ee9: $03
	inc  bc                                          ; $4eea: $03
	inc  bc                                          ; $4eeb: $03
	inc  b                                           ; $4eec: $04
	inc  b                                           ; $4eed: $04
	dec  b                                           ; $4eee: $05
	dec  b                                           ; $4eef: $05
	dec  b                                           ; $4ef0: $05
	inc  bc                                          ; $4ef1: $03
	inc  bc                                          ; $4ef2: $03
	inc  bc                                          ; $4ef3: $03
	inc  bc                                          ; $4ef4: $03
	inc  bc                                          ; $4ef5: $03
	inc  bc                                          ; $4ef6: $03
	inc  bc                                          ; $4ef7: $03
	inc  bc                                          ; $4ef8: $03
	inc  bc                                          ; $4ef9: $03
	inc  bc                                          ; $4efa: $03
	inc  bc                                          ; $4efb: $03
	inc  bc                                          ; $4efc: $03
	inc  bc                                          ; $4efd: $03
	inc  bc                                          ; $4efe: $03
	inc  bc                                          ; $4eff: $03
	inc  b                                           ; $4f00: $04
	inc  b                                           ; $4f01: $04
	dec  b                                           ; $4f02: $05
	dec  b                                           ; $4f03: $05
	dec  b                                           ; $4f04: $05
	inc  b                                           ; $4f05: $04
	dec  b                                           ; $4f06: $05
	inc  bc                                          ; $4f07: $03
	inc  bc                                          ; $4f08: $03
	inc  bc                                          ; $4f09: $03
	inc  bc                                          ; $4f0a: $03
	inc  bc                                          ; $4f0b: $03
	inc  bc                                          ; $4f0c: $03
	inc  bc                                          ; $4f0d: $03
	inc  bc                                          ; $4f0e: $03
	inc  bc                                          ; $4f0f: $03
	inc  bc                                          ; $4f10: $03
	inc  bc                                          ; $4f11: $03
	inc  bc                                          ; $4f12: $03
	inc  bc                                          ; $4f13: $03
	inc  b                                           ; $4f14: $04
	inc  b                                           ; $4f15: $04
	dec  b                                           ; $4f16: $05
	dec  b                                           ; $4f17: $05
	dec  b                                           ; $4f18: $05
	inc  b                                           ; $4f19: $04
	dec  b                                           ; $4f1a: $05
	dec  b                                           ; $4f1b: $05
	dec  b                                           ; $4f1c: $05
	inc  bc                                          ; $4f1d: $03
	inc  bc                                          ; $4f1e: $03
	inc  bc                                          ; $4f1f: $03
	inc  bc                                          ; $4f20: $03
	inc  bc                                          ; $4f21: $03
	inc  bc                                          ; $4f22: $03
	inc  bc                                          ; $4f23: $03
	inc  bc                                          ; $4f24: $03
	inc  bc                                          ; $4f25: $03
	inc  bc                                          ; $4f26: $03
	inc  bc                                          ; $4f27: $03
	inc  b                                           ; $4f28: $04
	inc  b                                           ; $4f29: $04
	dec  b                                           ; $4f2a: $05
	dec  b                                           ; $4f2b: $05
	dec  b                                           ; $4f2c: $05
	inc  b                                           ; $4f2d: $04
	dec  b                                           ; $4f2e: $05
	dec  b                                           ; $4f2f: $05
	dec  b                                           ; $4f30: $05
	inc  bc                                          ; $4f31: $03
	inc  bc                                          ; $4f32: $03
	inc  bc                                          ; $4f33: $03
	inc  bc                                          ; $4f34: $03
	inc  bc                                          ; $4f35: $03
	inc  bc                                          ; $4f36: $03
	inc  bc                                          ; $4f37: $03
	inc  bc                                          ; $4f38: $03
	inc  bc                                          ; $4f39: $03
	inc  bc                                          ; $4f3a: $03
	inc  bc                                          ; $4f3b: $03
	inc  b                                           ; $4f3c: $04
	inc  b                                           ; $4f3d: $04
	dec  b                                           ; $4f3e: $05
	dec  b                                           ; $4f3f: $05
	dec  b                                           ; $4f40: $05
	inc  b                                           ; $4f41: $04
	dec  b                                           ; $4f42: $05
	dec  b                                           ; $4f43: $05
	dec  b                                           ; $4f44: $05
	inc  bc                                          ; $4f45: $03
	dec  b                                           ; $4f46: $05
	inc  bc                                          ; $4f47: $03
	inc  bc                                          ; $4f48: $03
	inc  bc                                          ; $4f49: $03
	inc  bc                                          ; $4f4a: $03
	inc  bc                                          ; $4f4b: $03
	inc  bc                                          ; $4f4c: $03
	inc  bc                                          ; $4f4d: $03
	inc  bc                                          ; $4f4e: $03
	inc  bc                                          ; $4f4f: $03
	inc  b                                           ; $4f50: $04
	inc  b                                           ; $4f51: $04
	dec  b                                           ; $4f52: $05
	dec  b                                           ; $4f53: $05
	dec  b                                           ; $4f54: $05
	inc  b                                           ; $4f55: $04
	dec  b                                           ; $4f56: $05
	dec  b                                           ; $4f57: $05
	dec  b                                           ; $4f58: $05
	inc  bc                                          ; $4f59: $03
	inc  bc                                          ; $4f5a: $03
	inc  bc                                          ; $4f5b: $03
	inc  bc                                          ; $4f5c: $03
	inc  bc                                          ; $4f5d: $03
	inc  bc                                          ; $4f5e: $03
	inc  bc                                          ; $4f5f: $03
	inc  bc                                          ; $4f60: $03
	inc  bc                                          ; $4f61: $03
	inc  bc                                          ; $4f62: $03
	inc  bc                                          ; $4f63: $03
	inc  b                                           ; $4f64: $04
	inc  b                                           ; $4f65: $04
	dec  b                                           ; $4f66: $05
	dec  b                                           ; $4f67: $05
	dec  b                                           ; $4f68: $05
	dec  b                                           ; $4f69: $05
	dec  b                                           ; $4f6a: $05
	dec  b                                           ; $4f6b: $05
	dec  b                                           ; $4f6c: $05
	inc  bc                                          ; $4f6d: $03
	inc  bc                                          ; $4f6e: $03
	inc  bc                                          ; $4f6f: $03
	inc  bc                                          ; $4f70: $03
	inc  bc                                          ; $4f71: $03
	inc  bc                                          ; $4f72: $03
	inc  bc                                          ; $4f73: $03
	inc  bc                                          ; $4f74: $03
	inc  bc                                          ; $4f75: $03
	inc  bc                                          ; $4f76: $03
	inc  bc                                          ; $4f77: $03
	inc  bc                                          ; $4f78: $03
	inc  b                                           ; $4f79: $04
	dec  b                                           ; $4f7a: $05
	dec  b                                           ; $4f7b: $05
	dec  b                                           ; $4f7c: $05
	dec  b                                           ; $4f7d: $05
	dec  b                                           ; $4f7e: $05
	inc  bc                                          ; $4f7f: $03
	dec  b                                           ; $4f80: $05
	dec  b                                           ; $4f81: $05
	dec  b                                           ; $4f82: $05
	dec  b                                           ; $4f83: $05
	dec  bc                                          ; $4f84: $0b
	dec  bc                                          ; $4f85: $0b
	dec  bc                                          ; $4f86: $0b
	dec  bc                                          ; $4f87: $0b
	dec  bc                                          ; $4f88: $0b
	dec  bc                                          ; $4f89: $0b
	dec  bc                                          ; $4f8a: $0b
	inc  bc                                          ; $4f8b: $03
	dec  bc                                          ; $4f8c: $0b
	dec  c                                           ; $4f8d: $0d
	dec  c                                           ; $4f8e: $0d
	dec  c                                           ; $4f8f: $0d
	dec  c                                           ; $4f90: $0d
	dec  c                                           ; $4f91: $0d
	inc  bc                                          ; $4f92: $03
	dec  c                                           ; $4f93: $0d
	dec  c                                           ; $4f94: $0d
	dec  b                                           ; $4f95: $05
	dec  b                                           ; $4f96: $05
	dec  b                                           ; $4f97: $05
	dec  c                                           ; $4f98: $0d
	dec  bc                                          ; $4f99: $0b
	dec  bc                                          ; $4f9a: $0b
	dec  bc                                          ; $4f9b: $0b
	dec  bc                                          ; $4f9c: $0b
	dec  bc                                          ; $4f9d: $0b
	dec  bc                                          ; $4f9e: $0b
	inc  bc                                          ; $4f9f: $03
	ld   d, $17                                      ; $4fa0: $16 $17
	jr   jr_083_4fbd                                 ; $4fa2: $18 $19

	inc  b                                           ; $4fa4: $04
	inc  b                                           ; $4fa5: $04
	inc  b                                           ; $4fa6: $04
	inc  b                                           ; $4fa7: $04
	inc  b                                           ; $4fa8: $04
	inc  b                                           ; $4fa9: $04
	inc  b                                           ; $4faa: $04
	inc  b                                           ; $4fab: $04
	dec  b                                           ; $4fac: $05
	ld   b, $06                                      ; $4fad: $06 $06
	rlca                                             ; $4faf: $07
	ld   [$0a09], sp                                 ; $4fb0: $08 $09 $0a
	dec  bc                                          ; $4fb3: $0b
	ld   a, [de]                                     ; $4fb4: $1a
	dec  de                                          ; $4fb5: $1b
	inc  e                                           ; $4fb6: $1c
	dec  e                                           ; $4fb7: $1d
	ld   e, $11                                      ; $4fb8: $1e $11
	ld   de, $1f11                                   ; $4fba: $11 $11 $1f

jr_083_4fbd:
	jr   nz, jr_083_4fd0                             ; $4fbd: $20 $11

	inc  de                                          ; $4fbf: $13
	inc  d                                           ; $4fc0: $14
	dec  d                                           ; $4fc1: $15
	ld   b, $16                                      ; $4fc2: $06 $16
	rla                                              ; $4fc4: $17
	ld   de, $1918                                   ; $4fc5: $11 $18 $19
	ld   hl, $2211                                   ; $4fc8: $21 $11 $22
	inc  hl                                          ; $4fcb: $23
	inc  h                                           ; $4fcc: $24
	dec  h                                           ; $4fcd: $25
	ld   h, $11                                      ; $4fce: $26 $11

jr_083_4fd0:
	ld   de, $1127                                   ; $4fd0: $11 $27 $11
	ld   hl, $2322                                   ; $4fd3: $21 $22 $23
	ld   b, $16                                      ; $4fd6: $06 $16
	rla                                              ; $4fd8: $17
	inc  h                                           ; $4fd9: $24
	dec  h                                           ; $4fda: $25
	ld   h, $28                                      ; $4fdb: $26 $28
	add  hl, hl                                      ; $4fdd: $29
	ld   a, [hl+]                                    ; $4fde: $2a
	dec  hl                                          ; $4fdf: $2b
	inc  l                                           ; $4fe0: $2c
	dec  l                                           ; $4fe1: $2d
	ld   l, $2f                                      ; $4fe2: $2e $2f
	jr   nc, jr_083_5017                             ; $4fe4: $30 $31

	ld   [hl-], a                                    ; $4fe6: $32
	ld   sp, $2332                                   ; $4fe7: $31 $32 $23
	ld   b, $16                                      ; $4fea: $06 $16
	inc  sp                                          ; $4fec: $33
	inc  [hl]                                        ; $4fed: $34
	dec  [hl]                                        ; $4fee: $35
	ld   [hl], $33                                   ; $4fef: $36 $33
	inc  [hl]                                        ; $4ff1: $34
	dec  [hl]                                        ; $4ff2: $35
	ld   b, $36                                      ; $4ff3: $06 $36
	scf                                              ; $4ff5: $37
	jr   c, jr_083_5031                              ; $4ff6: $38 $39

	ld   a, [hl-]                                    ; $4ff8: $3a
	dec  sp                                          ; $4ff9: $3b
	inc  a                                           ; $4ffa: $3c
	ld   b, b                                        ; $4ffb: $40
	ld   b, c                                        ; $4ffc: $41
	inc  hl                                          ; $4ffd: $23
	ld   b, $16                                      ; $4ffe: $06 $16
	ld   b, d                                        ; $5000: $42
	ld   b, e                                        ; $5001: $43
	ld   b, h                                        ; $5002: $44
	ld   b, l                                        ; $5003: $45
	dec  a                                           ; $5004: $3d
	ld   de, $063e                                   ; $5005: $11 $3e $06
	ccf                                              ; $5008: $3f
	ld   b, b                                        ; $5009: $40
	ld   b, c                                        ; $500a: $41
	ld   b, d                                        ; $500b: $42
	ld   b, e                                        ; $500c: $43
	ld   b, h                                        ; $500d: $44
	ld   c, [hl]                                     ; $500e: $4e
	ld   c, a                                        ; $500f: $4f
	ld   d, b                                        ; $5010: $50
	inc  hl                                          ; $5011: $23
	ld   b, $16                                      ; $5012: $06 $16
	ld   d, c                                        ; $5014: $51
	ld   d, d                                        ; $5015: $52
	ld   d, e                                        ; $5016: $53

jr_083_5017:
	ld   d, h                                        ; $5017: $54
	ld   b, l                                        ; $5018: $45
	ld   b, [hl]                                     ; $5019: $46
	ld   b, a                                        ; $501a: $47
	ld   b, $48                                      ; $501b: $06 $48
	ld   c, c                                        ; $501d: $49
	ld   c, d                                        ; $501e: $4a
	ld   c, e                                        ; $501f: $4b
	ld   c, h                                        ; $5020: $4c
	ld   e, l                                        ; $5021: $5d
	ld   c, l                                        ; $5022: $4d
	ld   e, a                                        ; $5023: $5f
	ld   h, b                                        ; $5024: $60
	inc  hl                                          ; $5025: $23
	ld   b, $16                                      ; $5026: $06 $16
	ld   h, c                                        ; $5028: $61
	ld   h, d                                        ; $5029: $62
	ld   h, e                                        ; $502a: $63
	add  hl, de                                      ; $502b: $19
	ld   c, [hl]                                     ; $502c: $4e
	ld   c, a                                        ; $502d: $4f
	ld   d, b                                        ; $502e: $50
	ld   d, c                                        ; $502f: $51
	ld   d, d                                        ; $5030: $52

jr_083_5031:
	ld   d, e                                        ; $5031: $53
	ld   d, h                                        ; $5032: $54
	ld   d, l                                        ; $5033: $55
	ld   d, [hl]                                     ; $5034: $56
	ld   d, a                                        ; $5035: $57
	ld   e, b                                        ; $5036: $58
	ld   e, c                                        ; $5037: $59
	ld   [hl], b                                     ; $5038: $70
	ld   [hl], c                                     ; $5039: $71
	ld   [hl], d                                     ; $503a: $72
	ld   [hl], e                                     ; $503b: $73
	ld   [hl], h                                     ; $503c: $74
	ld   [hl], l                                     ; $503d: $75
	ld   h, e                                        ; $503e: $63
	add  hl, de                                      ; $503f: $19
	ld   e, d                                        ; $5040: $5a
	ld   e, e                                        ; $5041: $5b
	ld   e, h                                        ; $5042: $5c
	ld   e, l                                        ; $5043: $5d
	ld   e, [hl]                                     ; $5044: $5e
	ld   e, a                                        ; $5045: $5f
	ld   h, b                                        ; $5046: $60
	ld   h, c                                        ; $5047: $61
	rrca                                             ; $5048: $0f
	rrca                                             ; $5049: $0f
	rrca                                             ; $504a: $0f
	ld   h, d                                        ; $504b: $62
	nop                                              ; $504c: $00
	ld   bc, $0302                                   ; $504d: $01 $02 $03
	inc  b                                           ; $5050: $04
	dec  b                                           ; $5051: $05
	ld   b, $19                                      ; $5052: $06 $19
	ld   h, e                                        ; $5054: $63
	ld   h, h                                        ; $5055: $64
	ld   h, l                                        ; $5056: $65
	ld   h, [hl]                                     ; $5057: $66
	ld   h, a                                        ; $5058: $67
	ld   l, b                                        ; $5059: $68
	ld   l, c                                        ; $505a: $69
	rrca                                             ; $505b: $0f
	rrca                                             ; $505c: $0f
	rrca                                             ; $505d: $0f
	rrca                                             ; $505e: $0f
	rrca                                             ; $505f: $0f
	rrca                                             ; $5060: $0f
	db   $10                                         ; $5061: $10
	ld   de, $1312                                   ; $5062: $11 $12 $13
	inc  d                                           ; $5065: $14
	dec  d                                           ; $5066: $15
	add  hl, de                                      ; $5067: $19
	dec  c                                           ; $5068: $0d
	dec  c                                           ; $5069: $0d
	dec  c                                           ; $506a: $0d
	dec  c                                           ; $506b: $0d
	inc  bc                                          ; $506c: $03
	inc  bc                                          ; $506d: $03
	inc  bc                                          ; $506e: $03
	inc  bc                                          ; $506f: $03
	inc  bc                                          ; $5070: $03
	inc  bc                                          ; $5071: $03
	inc  bc                                          ; $5072: $03
	inc  bc                                          ; $5073: $03
	inc  bc                                          ; $5074: $03
	inc  bc                                          ; $5075: $03
	inc  bc                                          ; $5076: $03
	inc  bc                                          ; $5077: $03
	inc  bc                                          ; $5078: $03
	inc  bc                                          ; $5079: $03
	inc  bc                                          ; $507a: $03
	inc  bc                                          ; $507b: $03
	dec  c                                           ; $507c: $0d
	inc  c                                           ; $507d: $0c
	dec  c                                           ; $507e: $0d
	dec  c                                           ; $507f: $0d
	dec  c                                           ; $5080: $0d
	inc  bc                                          ; $5081: $03
	inc  bc                                          ; $5082: $03
	inc  bc                                          ; $5083: $03
	dec  bc                                          ; $5084: $0b
	dec  bc                                          ; $5085: $0b
	inc  bc                                          ; $5086: $03
	inc  bc                                          ; $5087: $03
	inc  bc                                          ; $5088: $03
	inc  bc                                          ; $5089: $03
	inc  bc                                          ; $508a: $03
	inc  bc                                          ; $508b: $03
	inc  bc                                          ; $508c: $03
	inc  bc                                          ; $508d: $03
	inc  bc                                          ; $508e: $03
	inc  bc                                          ; $508f: $03
	dec  c                                           ; $5090: $0d
	inc  bc                                          ; $5091: $03
	dec  c                                           ; $5092: $0d
	dec  c                                           ; $5093: $0d
	dec  c                                           ; $5094: $0d
	dec  c                                           ; $5095: $0d
	dec  c                                           ; $5096: $0d
	inc  bc                                          ; $5097: $03
	inc  bc                                          ; $5098: $03
	dec  bc                                          ; $5099: $0b
	inc  bc                                          ; $509a: $03
	inc  bc                                          ; $509b: $03
	inc  bc                                          ; $509c: $03
	inc  bc                                          ; $509d: $03
	inc  bc                                          ; $509e: $03
	inc  bc                                          ; $509f: $03
	inc  bc                                          ; $50a0: $03
	inc  bc                                          ; $50a1: $03
	inc  bc                                          ; $50a2: $03
	inc  bc                                          ; $50a3: $03
	dec  c                                           ; $50a4: $0d
	inc  c                                           ; $50a5: $0c
	dec  c                                           ; $50a6: $0d
	dec  c                                           ; $50a7: $0d
	dec  c                                           ; $50a8: $0d
	dec  c                                           ; $50a9: $0d
	dec  c                                           ; $50aa: $0d
	dec  c                                           ; $50ab: $0d
	dec  c                                           ; $50ac: $0d
	dec  bc                                          ; $50ad: $0b
	dec  bc                                          ; $50ae: $0b
	inc  bc                                          ; $50af: $03
	inc  bc                                          ; $50b0: $03
	inc  bc                                          ; $50b1: $03
	inc  bc                                          ; $50b2: $03
	inc  bc                                          ; $50b3: $03
	inc  bc                                          ; $50b4: $03
	inc  bc                                          ; $50b5: $03
	inc  bc                                          ; $50b6: $03
	inc  bc                                          ; $50b7: $03
	dec  c                                           ; $50b8: $0d
	inc  c                                           ; $50b9: $0c
	dec  c                                           ; $50ba: $0d
	inc  bc                                          ; $50bb: $03
	dec  c                                           ; $50bc: $0d
	dec  c                                           ; $50bd: $0d
	dec  c                                           ; $50be: $0d
	dec  c                                           ; $50bf: $0d
	dec  c                                           ; $50c0: $0d
	dec  bc                                          ; $50c1: $0b
	dec  bc                                          ; $50c2: $0b
	inc  bc                                          ; $50c3: $03
	inc  bc                                          ; $50c4: $03
	inc  bc                                          ; $50c5: $03
	inc  bc                                          ; $50c6: $03
	inc  bc                                          ; $50c7: $03
	inc  bc                                          ; $50c8: $03
	inc  bc                                          ; $50c9: $03
	inc  bc                                          ; $50ca: $03
	inc  bc                                          ; $50cb: $03
	dec  c                                           ; $50cc: $0d
	inc  bc                                          ; $50cd: $03
	dec  c                                           ; $50ce: $0d
	inc  bc                                          ; $50cf: $03
	dec  c                                           ; $50d0: $0d
	dec  c                                           ; $50d1: $0d
	dec  c                                           ; $50d2: $0d
	dec  c                                           ; $50d3: $0d
	dec  c                                           ; $50d4: $0d
	dec  bc                                          ; $50d5: $0b
	dec  b                                           ; $50d6: $05
	inc  bc                                          ; $50d7: $03
	inc  bc                                          ; $50d8: $03
	inc  bc                                          ; $50d9: $03
	inc  bc                                          ; $50da: $03
	inc  bc                                          ; $50db: $03
	inc  bc                                          ; $50dc: $03
	inc  bc                                          ; $50dd: $03
	inc  bc                                          ; $50de: $03
	inc  bc                                          ; $50df: $03
	dec  c                                           ; $50e0: $0d
	inc  c                                           ; $50e1: $0c
	dec  c                                           ; $50e2: $0d
	inc  bc                                          ; $50e3: $03
	dec  c                                           ; $50e4: $0d
	dec  c                                           ; $50e5: $0d
	dec  c                                           ; $50e6: $0d
	dec  c                                           ; $50e7: $0d
	dec  c                                           ; $50e8: $0d
	inc  bc                                          ; $50e9: $03
	dec  c                                           ; $50ea: $0d
	inc  bc                                          ; $50eb: $03
	inc  bc                                          ; $50ec: $03
	inc  bc                                          ; $50ed: $03
	inc  bc                                          ; $50ee: $03
	inc  bc                                          ; $50ef: $03
	inc  bc                                          ; $50f0: $03
	inc  bc                                          ; $50f1: $03
	inc  bc                                          ; $50f2: $03
	inc  bc                                          ; $50f3: $03
	dec  c                                           ; $50f4: $0d
	inc  c                                           ; $50f5: $0c
	dec  c                                           ; $50f6: $0d
	dec  c                                           ; $50f7: $0d
	dec  c                                           ; $50f8: $0d
	dec  c                                           ; $50f9: $0d
	dec  c                                           ; $50fa: $0d
	dec  c                                           ; $50fb: $0d
	dec  c                                           ; $50fc: $0d
	dec  c                                           ; $50fd: $0d
	dec  c                                           ; $50fe: $0d
	dec  c                                           ; $50ff: $0d
	inc  bc                                          ; $5100: $03
	inc  bc                                          ; $5101: $03
	inc  bc                                          ; $5102: $03
	inc  bc                                          ; $5103: $03
	inc  bc                                          ; $5104: $03
	inc  bc                                          ; $5105: $03
	inc  bc                                          ; $5106: $03
	inc  bc                                          ; $5107: $03
	dec  c                                           ; $5108: $0d
	inc  c                                           ; $5109: $0c
	dec  c                                           ; $510a: $0d
	dec  c                                           ; $510b: $0d
	dec  c                                           ; $510c: $0d
	dec  c                                           ; $510d: $0d
	dec  c                                           ; $510e: $0d
	dec  c                                           ; $510f: $0d
	dec  b                                           ; $5110: $05
	dec  b                                           ; $5111: $05
	dec  b                                           ; $5112: $05
	dec  c                                           ; $5113: $0d
	dec  bc                                          ; $5114: $0b
	dec  bc                                          ; $5115: $0b
	dec  bc                                          ; $5116: $0b
	dec  bc                                          ; $5117: $0b
	dec  bc                                          ; $5118: $0b
	dec  bc                                          ; $5119: $0b
	dec  bc                                          ; $511a: $0b
	inc  bc                                          ; $511b: $03
	dec  c                                           ; $511c: $0d
	dec  c                                           ; $511d: $0d
	dec  c                                           ; $511e: $0d
	dec  c                                           ; $511f: $0d
	dec  c                                           ; $5120: $0d
	dec  c                                           ; $5121: $0d
	dec  c                                           ; $5122: $0d
	dec  b                                           ; $5123: $05
	dec  b                                           ; $5124: $05
	dec  b                                           ; $5125: $05
	dec  b                                           ; $5126: $05
	dec  b                                           ; $5127: $05
	dec  c                                           ; $5128: $0d
	dec  bc                                          ; $5129: $0b
	dec  bc                                          ; $512a: $0b
	dec  bc                                          ; $512b: $0b
	dec  bc                                          ; $512c: $0b
	dec  bc                                          ; $512d: $0b
	dec  bc                                          ; $512e: $0b
	inc  bc                                          ; $512f: $03
	nop                                              ; $5130: $00
	ld   bc, $0302                                   ; $5131: $01 $02 $03
	inc  bc                                          ; $5134: $03
	inc  bc                                          ; $5135: $03
	inc  bc                                          ; $5136: $03
	inc  b                                           ; $5137: $04
	dec  b                                           ; $5138: $05
	ld   b, $07                                      ; $5139: $06 $07
	ld   [$0a09], sp                                 ; $513b: $08 $09 $0a
	inc  bc                                          ; $513e: $03
	dec  bc                                          ; $513f: $0b
	inc  c                                           ; $5140: $0c
	inc  bc                                          ; $5141: $03
	inc  bc                                          ; $5142: $03
	inc  b                                           ; $5143: $04
	dec  c                                           ; $5144: $0d
	ld   c, $0f                                      ; $5145: $0e $0f
	inc  bc                                          ; $5147: $03
	inc  bc                                          ; $5148: $03
	inc  bc                                          ; $5149: $03
	db   $10                                         ; $514a: $10
	ld   de, $1312                                   ; $514b: $11 $12 $13
	inc  d                                           ; $514e: $14
	dec  d                                           ; $514f: $15
	ld   d, $03                                      ; $5150: $16 $03
	inc  bc                                          ; $5152: $03
	rla                                              ; $5153: $17
	jr   jr_083_516f                                 ; $5154: $18 $19

	ld   e, l                                        ; $5156: $5d
	dec  b                                           ; $5157: $05
	dec  c                                           ; $5158: $0d
	ld   c, $0f                                      ; $5159: $0e $0f
	inc  bc                                          ; $515b: $03
	inc  bc                                          ; $515c: $03
	inc  bc                                          ; $515d: $03
	ld   a, [de]                                     ; $515e: $1a
	dec  de                                          ; $515f: $1b
	inc  e                                           ; $5160: $1c
	dec  e                                           ; $5161: $1d
	ld   e, $1f                                      ; $5162: $1e $1f
	jr   nz, @+$05                                   ; $5164: $20 $03

	inc  bc                                          ; $5166: $03
	inc  bc                                          ; $5167: $03
	ld   hl, $5d22                                   ; $5168: $21 $22 $5d
	dec  b                                           ; $516b: $05
	dec  c                                           ; $516c: $0d
	ld   c, $0f                                      ; $516d: $0e $0f

jr_083_516f:
	inc  bc                                          ; $516f: $03
	inc  bc                                          ; $5170: $03
	inc  bc                                          ; $5171: $03
	ld   a, [de]                                     ; $5172: $1a
	inc  hl                                          ; $5173: $23
	inc  h                                           ; $5174: $24
	dec  h                                           ; $5175: $25
	ld   h, $27                                      ; $5176: $26 $27
	jr   z, jr_083_517d                              ; $5178: $28 $03

	inc  bc                                          ; $517a: $03
	inc  bc                                          ; $517b: $03
	inc  bc                                          ; $517c: $03

jr_083_517d:
	add  hl, hl                                      ; $517d: $29
	ld   a, [hl+]                                    ; $517e: $2a
	dec  b                                           ; $517f: $05
	dec  c                                           ; $5180: $0d
	ld   c, $0f                                      ; $5181: $0e $0f
	inc  bc                                          ; $5183: $03
	inc  bc                                          ; $5184: $03
	inc  bc                                          ; $5185: $03
	ld   a, [de]                                     ; $5186: $1a
	dec  hl                                          ; $5187: $2b
	inc  l                                           ; $5188: $2c
	dec  l                                           ; $5189: $2d
	ld   l, $2f                                      ; $518a: $2e $2f
	jr   nc, jr_083_5191                             ; $518c: $30 $03

	inc  bc                                          ; $518e: $03
	inc  bc                                          ; $518f: $03
	inc  bc                                          ; $5190: $03

jr_083_5191:
	scf                                              ; $5191: $37
	jr   c, jr_083_5199                              ; $5192: $38 $05

	dec  c                                           ; $5194: $0d
	ld   c, $0f                                      ; $5195: $0e $0f
	inc  bc                                          ; $5197: $03
	inc  bc                                          ; $5198: $03

jr_083_5199:
	add  hl, sp                                      ; $5199: $39
	ld   a, [hl-]                                    ; $519a: $3a
	dec  sp                                          ; $519b: $3b
	inc  a                                           ; $519c: $3c
	dec  a                                           ; $519d: $3d
	ld   a, $3f                                      ; $519e: $3e $3f
	ld   b, b                                        ; $51a0: $40
	ld   b, c                                        ; $51a1: $41
	inc  bc                                          ; $51a2: $03
	inc  bc                                          ; $51a3: $03
	inc  bc                                          ; $51a4: $03
	ld   b, d                                        ; $51a5: $42
	ld   b, e                                        ; $51a6: $43
	ld   b, h                                        ; $51a7: $44
	dec  c                                           ; $51a8: $0d
	ld   c, $0f                                      ; $51a9: $0e $0f
	ld   b, l                                        ; $51ab: $45
	ld   b, [hl]                                     ; $51ac: $46
	ld   b, a                                        ; $51ad: $47
	ld   c, b                                        ; $51ae: $48
	ld   c, c                                        ; $51af: $49
	ld   c, d                                        ; $51b0: $4a
	ld   c, e                                        ; $51b1: $4b
	ld   c, h                                        ; $51b2: $4c
	ld   c, l                                        ; $51b3: $4d
	ld   c, [hl]                                     ; $51b4: $4e
	ld   c, a                                        ; $51b5: $4f
	ld   d, b                                        ; $51b6: $50
	inc  bc                                          ; $51b7: $03
	inc  bc                                          ; $51b8: $03
	inc  bc                                          ; $51b9: $03
	ld   d, c                                        ; $51ba: $51
	ld   d, d                                        ; $51bb: $52
	ld   d, e                                        ; $51bc: $53
	ld   d, h                                        ; $51bd: $54
	ld   d, l                                        ; $51be: $55
	ld   d, [hl]                                     ; $51bf: $56
	ld   d, a                                        ; $51c0: $57
	ld   e, b                                        ; $51c1: $58
	ld   e, c                                        ; $51c2: $59
	ld   e, d                                        ; $51c3: $5a
	ld   e, e                                        ; $51c4: $5b
	ld   e, h                                        ; $51c5: $5c
	ld   e, l                                        ; $51c6: $5d
	ld   e, l                                        ; $51c7: $5d
	ld   e, [hl]                                     ; $51c8: $5e
	ld   e, a                                        ; $51c9: $5f
	ld   h, b                                        ; $51ca: $60
	ld   h, c                                        ; $51cb: $61
	ld   h, d                                        ; $51cc: $62
	inc  bc                                          ; $51cd: $03
	ld   h, e                                        ; $51ce: $63
	ld   h, h                                        ; $51cf: $64
	ld   h, l                                        ; $51d0: $65
	ld   h, [hl]                                     ; $51d1: $66
	ld   h, a                                        ; $51d2: $67
	ld   l, b                                        ; $51d3: $68
	ld   l, c                                        ; $51d4: $69
	ld   l, d                                        ; $51d5: $6a
	ld   l, e                                        ; $51d6: $6b
	ld   l, h                                        ; $51d7: $6c
	ld   l, l                                        ; $51d8: $6d
	ld   l, l                                        ; $51d9: $6d
	ld   l, l                                        ; $51da: $6d
	ld   l, l                                        ; $51db: $6d
	ld   l, [hl]                                     ; $51dc: $6e
	ld   l, a                                        ; $51dd: $6f
	ld   [hl], b                                     ; $51de: $70
	ld   [hl], c                                     ; $51df: $71
	ld   [hl], d                                     ; $51e0: $72
	ld   [hl], e                                     ; $51e1: $73
	ld   [hl], h                                     ; $51e2: $74
	ld   [hl], l                                     ; $51e3: $75
	ld   h, l                                        ; $51e4: $65
	halt                                             ; $51e5: $76
	ld   [hl], a                                     ; $51e6: $77
	ld   a, b                                        ; $51e7: $78
	ld   a, c                                        ; $51e8: $79
	ld   a, d                                        ; $51e9: $7a
	ld   a, e                                        ; $51ea: $7b
	ld   l, l                                        ; $51eb: $6d
	ld   l, l                                        ; $51ec: $6d
	ld   l, l                                        ; $51ed: $6d
	ld   l, l                                        ; $51ee: $6d
	ld   l, l                                        ; $51ef: $6d
	ld   l, l                                        ; $51f0: $6d
	ld   a, h                                        ; $51f1: $7c
	ld   a, l                                        ; $51f2: $7d
	ld   a, [hl]                                     ; $51f3: $7e
	ld   a, a                                        ; $51f4: $7f
	nop                                              ; $51f5: $00
	ld   bc, $0302                                   ; $51f6: $01 $02 $03
	inc  bc                                          ; $51f9: $03
	inc  bc                                          ; $51fa: $03
	inc  bc                                          ; $51fb: $03
	inc  bc                                          ; $51fc: $03
	inc  bc                                          ; $51fd: $03
	inc  bc                                          ; $51fe: $03
	inc  bc                                          ; $51ff: $03
	inc  bc                                          ; $5200: $03
	inc  bc                                          ; $5201: $03
	inc  bc                                          ; $5202: $03
	inc  bc                                          ; $5203: $03
	inc  bc                                          ; $5204: $03
	inc  bc                                          ; $5205: $03
	inc  bc                                          ; $5206: $03
	inc  b                                           ; $5207: $04
	inc  b                                           ; $5208: $04
	inc  c                                           ; $5209: $0c
	inc  c                                           ; $520a: $0c
	inc  c                                           ; $520b: $0c
	inc  bc                                          ; $520c: $03
	inc  bc                                          ; $520d: $03
	inc  bc                                          ; $520e: $03
	inc  bc                                          ; $520f: $03
	inc  bc                                          ; $5210: $03
	inc  bc                                          ; $5211: $03
	inc  bc                                          ; $5212: $03
	dec  b                                           ; $5213: $05
	inc  bc                                          ; $5214: $03
	inc  bc                                          ; $5215: $03
	inc  bc                                          ; $5216: $03
	inc  bc                                          ; $5217: $03
	inc  bc                                          ; $5218: $03
	inc  bc                                          ; $5219: $03
	inc  bc                                          ; $521a: $03
	inc  b                                           ; $521b: $04
	inc  b                                           ; $521c: $04
	inc  b                                           ; $521d: $04
	inc  b                                           ; $521e: $04
	inc  c                                           ; $521f: $0c
	inc  bc                                          ; $5220: $03
	inc  bc                                          ; $5221: $03
	inc  bc                                          ; $5222: $03
	inc  bc                                          ; $5223: $03
	inc  bc                                          ; $5224: $03
	inc  bc                                          ; $5225: $03
	inc  bc                                          ; $5226: $03
	dec  b                                           ; $5227: $05
	inc  bc                                          ; $5228: $03
	inc  bc                                          ; $5229: $03
	inc  bc                                          ; $522a: $03
	inc  bc                                          ; $522b: $03
	inc  bc                                          ; $522c: $03
	inc  bc                                          ; $522d: $03
	inc  bc                                          ; $522e: $03
	inc  bc                                          ; $522f: $03
	inc  b                                           ; $5230: $04
	inc  b                                           ; $5231: $04
	inc  b                                           ; $5232: $04
	inc  c                                           ; $5233: $0c
	inc  bc                                          ; $5234: $03
	inc  bc                                          ; $5235: $03
	inc  bc                                          ; $5236: $03
	inc  bc                                          ; $5237: $03
	inc  bc                                          ; $5238: $03
	inc  bc                                          ; $5239: $03
	inc  bc                                          ; $523a: $03
	dec  b                                           ; $523b: $05
	inc  bc                                          ; $523c: $03
	inc  bc                                          ; $523d: $03
	inc  bc                                          ; $523e: $03
	inc  bc                                          ; $523f: $03
	inc  bc                                          ; $5240: $03
	inc  bc                                          ; $5241: $03
	inc  bc                                          ; $5242: $03
	inc  bc                                          ; $5243: $03
	inc  bc                                          ; $5244: $03
	inc  b                                           ; $5245: $04
	inc  b                                           ; $5246: $04
	inc  c                                           ; $5247: $0c
	inc  bc                                          ; $5248: $03
	inc  bc                                          ; $5249: $03
	inc  bc                                          ; $524a: $03
	inc  bc                                          ; $524b: $03
	inc  bc                                          ; $524c: $03
	inc  bc                                          ; $524d: $03
	inc  bc                                          ; $524e: $03
	dec  b                                           ; $524f: $05
	inc  bc                                          ; $5250: $03
	inc  bc                                          ; $5251: $03
	inc  bc                                          ; $5252: $03
	inc  bc                                          ; $5253: $03
	inc  bc                                          ; $5254: $03
	inc  bc                                          ; $5255: $03
	inc  bc                                          ; $5256: $03
	inc  bc                                          ; $5257: $03
	inc  bc                                          ; $5258: $03
	inc  b                                           ; $5259: $04
	inc  b                                           ; $525a: $04
	inc  c                                           ; $525b: $0c
	inc  bc                                          ; $525c: $03
	inc  bc                                          ; $525d: $03
	inc  bc                                          ; $525e: $03
	inc  bc                                          ; $525f: $03
	inc  bc                                          ; $5260: $03
	dec  b                                           ; $5261: $05
	dec  b                                           ; $5262: $05
	dec  b                                           ; $5263: $05
	inc  bc                                          ; $5264: $03
	inc  bc                                          ; $5265: $03
	inc  bc                                          ; $5266: $03
	inc  bc                                          ; $5267: $03
	dec  b                                           ; $5268: $05
	dec  b                                           ; $5269: $05
	inc  bc                                          ; $526a: $03
	inc  bc                                          ; $526b: $03
	inc  bc                                          ; $526c: $03
	inc  b                                           ; $526d: $04
	inc  b                                           ; $526e: $04
	inc  b                                           ; $526f: $04
	inc  bc                                          ; $5270: $03
	inc  bc                                          ; $5271: $03
	inc  bc                                          ; $5272: $03
	dec  b                                           ; $5273: $05
	dec  b                                           ; $5274: $05
	dec  b                                           ; $5275: $05
	dec  b                                           ; $5276: $05
	dec  b                                           ; $5277: $05
	inc  bc                                          ; $5278: $03
	inc  b                                           ; $5279: $04
	inc  b                                           ; $527a: $04
	inc  b                                           ; $527b: $04
	inc  b                                           ; $527c: $04
	dec  b                                           ; $527d: $05
	dec  b                                           ; $527e: $05
	inc  bc                                          ; $527f: $03
	inc  bc                                          ; $5280: $03
	inc  bc                                          ; $5281: $03
	inc  b                                           ; $5282: $04
	inc  b                                           ; $5283: $04
	inc  bc                                          ; $5284: $03
	inc  bc                                          ; $5285: $03
	inc  bc                                          ; $5286: $03
	inc  bc                                          ; $5287: $03
	inc  bc                                          ; $5288: $03
	dec  b                                           ; $5289: $05
	inc  bc                                          ; $528a: $03
	dec  b                                           ; $528b: $05
	inc  bc                                          ; $528c: $03
	inc  b                                           ; $528d: $04
	inc  b                                           ; $528e: $04
	inc  b                                           ; $528f: $04
	inc  b                                           ; $5290: $04
	dec  b                                           ; $5291: $05
	dec  b                                           ; $5292: $05
	dec  b                                           ; $5293: $05
	dec  b                                           ; $5294: $05
	inc  bc                                          ; $5295: $03
	inc  b                                           ; $5296: $04
	inc  b                                           ; $5297: $04
	inc  bc                                          ; $5298: $03
	inc  bc                                          ; $5299: $03
	inc  bc                                          ; $529a: $03
	inc  bc                                          ; $529b: $03
	inc  bc                                          ; $529c: $03
	inc  bc                                          ; $529d: $03
	inc  bc                                          ; $529e: $03
	inc  bc                                          ; $529f: $03
	inc  bc                                          ; $52a0: $03
	inc  bc                                          ; $52a1: $03
	inc  bc                                          ; $52a2: $03
	inc  bc                                          ; $52a3: $03
	inc  bc                                          ; $52a4: $03
	inc  bc                                          ; $52a5: $03
	inc  bc                                          ; $52a6: $03
	dec  b                                           ; $52a7: $05
	dec  b                                           ; $52a8: $05
	inc  bc                                          ; $52a9: $03
	inc  b                                           ; $52aa: $04
	inc  b                                           ; $52ab: $04
	inc  bc                                          ; $52ac: $03
	inc  bc                                          ; $52ad: $03
	inc  bc                                          ; $52ae: $03
	inc  bc                                          ; $52af: $03
	inc  bc                                          ; $52b0: $03
	inc  bc                                          ; $52b1: $03
	inc  bc                                          ; $52b2: $03
	inc  bc                                          ; $52b3: $03
	inc  bc                                          ; $52b4: $03
	inc  bc                                          ; $52b5: $03
	inc  bc                                          ; $52b6: $03
	inc  bc                                          ; $52b7: $03
	inc  bc                                          ; $52b8: $03
	inc  bc                                          ; $52b9: $03
	inc  bc                                          ; $52ba: $03
	inc  bc                                          ; $52bb: $03
	inc  bc                                          ; $52bc: $03
	dec  bc                                          ; $52bd: $0b
	dec  bc                                          ; $52be: $0b
	inc  c                                           ; $52bf: $0c
	nop                                              ; $52c0: $00
	ld   bc, $0302                                   ; $52c1: $01 $02 $03
	inc  bc                                          ; $52c4: $03
	inc  bc                                          ; $52c5: $03
	inc  bc                                          ; $52c6: $03
	inc  b                                           ; $52c7: $04
	dec  b                                           ; $52c8: $05
	ld   b, $07                                      ; $52c9: $06 $07
	ld   [$0a09], sp                                 ; $52cb: $08 $09 $0a
	inc  bc                                          ; $52ce: $03
	dec  bc                                          ; $52cf: $0b
	inc  c                                           ; $52d0: $0c
	inc  bc                                          ; $52d1: $03
	inc  bc                                          ; $52d2: $03
	inc  b                                           ; $52d3: $04
	dec  c                                           ; $52d4: $0d
	ld   c, $0f                                      ; $52d5: $0e $0f
	inc  bc                                          ; $52d7: $03
	inc  bc                                          ; $52d8: $03
	inc  bc                                          ; $52d9: $03
	db   $10                                         ; $52da: $10
	ld   de, $1306                                   ; $52db: $11 $06 $13
	ld   [$1615], sp                                 ; $52de: $08 $15 $16
	inc  bc                                          ; $52e1: $03
	inc  bc                                          ; $52e2: $03
	rla                                              ; $52e3: $17
	jr   jr_083_52ff                                 ; $52e4: $18 $19

	ld   e, l                                        ; $52e6: $5d
	dec  b                                           ; $52e7: $05
	dec  c                                           ; $52e8: $0d
	ld   c, $0f                                      ; $52e9: $0e $0f
	inc  bc                                          ; $52eb: $03
	inc  bc                                          ; $52ec: $03
	inc  bc                                          ; $52ed: $03
	ld   a, [de]                                     ; $52ee: $1a
	dec  de                                          ; $52ef: $1b
	add  hl, bc                                      ; $52f0: $09
	ld   a, [bc]                                     ; $52f1: $0a
	dec  bc                                          ; $52f2: $0b
	inc  c                                           ; $52f3: $0c
	jr   nz, @+$05                                   ; $52f4: $20 $03

	inc  bc                                          ; $52f6: $03
	inc  bc                                          ; $52f7: $03
	ld   hl, $5d22                                   ; $52f8: $21 $22 $5d
	dec  b                                           ; $52fb: $05
	dec  c                                           ; $52fc: $0d
	ld   c, $0f                                      ; $52fd: $0e $0f

jr_083_52ff:
	inc  bc                                          ; $52ff: $03
	inc  bc                                          ; $5300: $03
	inc  bc                                          ; $5301: $03
	ld   a, [de]                                     ; $5302: $1a
	inc  hl                                          ; $5303: $23
	dec  c                                           ; $5304: $0d
	ld   c, $0f                                      ; $5305: $0e $0f
	db   $10                                         ; $5307: $10
	jr   z, jr_083_530d                              ; $5308: $28 $03

	inc  bc                                          ; $530a: $03
	inc  bc                                          ; $530b: $03
	inc  bc                                          ; $530c: $03

jr_083_530d:
	add  hl, hl                                      ; $530d: $29
	ld   a, [hl+]                                    ; $530e: $2a
	dec  b                                           ; $530f: $05
	dec  c                                           ; $5310: $0d
	ld   c, $0f                                      ; $5311: $0e $0f
	inc  bc                                          ; $5313: $03
	inc  bc                                          ; $5314: $03
	inc  bc                                          ; $5315: $03
	ld   a, [de]                                     ; $5316: $1a
	dec  hl                                          ; $5317: $2b
	inc  l                                           ; $5318: $2c
	dec  l                                           ; $5319: $2d
	ld   de, $3012                                   ; $531a: $11 $12 $30
	inc  bc                                          ; $531d: $03
	inc  bc                                          ; $531e: $03
	inc  bc                                          ; $531f: $03
	inc  bc                                          ; $5320: $03
	scf                                              ; $5321: $37
	jr   c, jr_083_5329                              ; $5322: $38 $05

	dec  c                                           ; $5324: $0d
	ld   c, $0f                                      ; $5325: $0e $0f
	inc  bc                                          ; $5327: $03
	inc  bc                                          ; $5328: $03

jr_083_5329:
	add  hl, sp                                      ; $5329: $39
	ld   a, [hl-]                                    ; $532a: $3a
	dec  sp                                          ; $532b: $3b
	inc  a                                           ; $532c: $3c
	dec  a                                           ; $532d: $3d
	inc  de                                          ; $532e: $13
	inc  d                                           ; $532f: $14
	ld   b, b                                        ; $5330: $40
	ld   b, c                                        ; $5331: $41
	inc  bc                                          ; $5332: $03
	inc  bc                                          ; $5333: $03
	inc  bc                                          ; $5334: $03
	ld   b, d                                        ; $5335: $42
	ld   b, e                                        ; $5336: $43
	ld   b, h                                        ; $5337: $44
	dec  c                                           ; $5338: $0d
	ld   c, $0f                                      ; $5339: $0e $0f
	ld   b, l                                        ; $533b: $45
	ld   b, [hl]                                     ; $533c: $46
	ld   b, a                                        ; $533d: $47
	ld   c, b                                        ; $533e: $48
	ld   c, c                                        ; $533f: $49
	ld   c, d                                        ; $5340: $4a
	ld   c, e                                        ; $5341: $4b
	ld   c, h                                        ; $5342: $4c
	ld   c, l                                        ; $5343: $4d
	ld   c, [hl]                                     ; $5344: $4e
	ld   c, a                                        ; $5345: $4f
	ld   d, b                                        ; $5346: $50
	inc  bc                                          ; $5347: $03
	inc  bc                                          ; $5348: $03
	inc  bc                                          ; $5349: $03
	ld   d, c                                        ; $534a: $51
	ld   d, d                                        ; $534b: $52
	ld   h, l                                        ; $534c: $65
	dec  d                                           ; $534d: $15
	ld   d, $17                                      ; $534e: $16 $17
	jr   jr_083_53aa                                 ; $5350: $18 $58

	ld   e, c                                        ; $5352: $59
	ld   e, d                                        ; $5353: $5a
	add  hl, de                                      ; $5354: $19
	ld   l, l                                        ; $5355: $6d
	ld   l, l                                        ; $5356: $6d
	ld   l, l                                        ; $5357: $6d
	daa                                              ; $5358: $27
	ld   e, a                                        ; $5359: $5f
	ld   h, b                                        ; $535a: $60
	ld   h, c                                        ; $535b: $61
	ld   h, d                                        ; $535c: $62
	inc  bc                                          ; $535d: $03
	ld   h, e                                        ; $535e: $63
	ld   h, h                                        ; $535f: $64
	ld   h, l                                        ; $5360: $65
	ld   a, [de]                                     ; $5361: $1a
	dec  de                                          ; $5362: $1b
	inc  e                                           ; $5363: $1c
	dec  e                                           ; $5364: $1d
	ld   l, d                                        ; $5365: $6a
	ld   l, e                                        ; $5366: $6b
	ld   l, h                                        ; $5367: $6c
	ld   l, l                                        ; $5368: $6d
	ld   l, l                                        ; $5369: $6d
	ld   l, l                                        ; $536a: $6d
	ld   l, l                                        ; $536b: $6d
	ld   l, [hl]                                     ; $536c: $6e
	ld   l, a                                        ; $536d: $6f
	ld   [hl], b                                     ; $536e: $70
	ld   [hl], c                                     ; $536f: $71
	ld   [hl], d                                     ; $5370: $72
	ld   [hl], e                                     ; $5371: $73
	ld   [hl], h                                     ; $5372: $74
	ld   [hl], l                                     ; $5373: $75
	ld   h, l                                        ; $5374: $65
	ld   e, $1e                                      ; $5375: $1e $1e
	rra                                              ; $5377: $1f
	jr   nz, jr_083_53f4                             ; $5378: $20 $7a

	ld   a, e                                        ; $537a: $7b
	ld   l, l                                        ; $537b: $6d
	ld   l, l                                        ; $537c: $6d
	ld   l, l                                        ; $537d: $6d
	ld   l, l                                        ; $537e: $6d
	ld   l, l                                        ; $537f: $6d
	ld   l, l                                        ; $5380: $6d
	ld   hl, $2322                                   ; $5381: $21 $22 $23
	inc  h                                           ; $5384: $24
	dec  h                                           ; $5385: $25
	ld   h, $02                                      ; $5386: $26 $02
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
	dec  bc                                          ; $5392: $0b
	inc  bc                                          ; $5393: $03
	inc  bc                                          ; $5394: $03
	inc  bc                                          ; $5395: $03
	inc  bc                                          ; $5396: $03
	inc  b                                           ; $5397: $04
	inc  b                                           ; $5398: $04
	inc  c                                           ; $5399: $0c
	inc  c                                           ; $539a: $0c
	inc  c                                           ; $539b: $0c
	inc  bc                                          ; $539c: $03
	inc  bc                                          ; $539d: $03
	inc  bc                                          ; $539e: $03
	inc  bc                                          ; $539f: $03
	inc  bc                                          ; $53a0: $03
	inc  bc                                          ; $53a1: $03
	inc  bc                                          ; $53a2: $03
	dec  b                                           ; $53a3: $05
	dec  bc                                          ; $53a4: $0b
	inc  bc                                          ; $53a5: $03
	dec  bc                                          ; $53a6: $0b
	inc  bc                                          ; $53a7: $03
	inc  bc                                          ; $53a8: $03
	inc  bc                                          ; $53a9: $03

jr_083_53aa:
	inc  bc                                          ; $53aa: $03
	inc  b                                           ; $53ab: $04
	inc  b                                           ; $53ac: $04
	inc  b                                           ; $53ad: $04
	inc  b                                           ; $53ae: $04
	inc  c                                           ; $53af: $0c
	inc  bc                                          ; $53b0: $03
	inc  bc                                          ; $53b1: $03
	inc  bc                                          ; $53b2: $03
	inc  bc                                          ; $53b3: $03
	inc  bc                                          ; $53b4: $03
	inc  bc                                          ; $53b5: $03
	inc  bc                                          ; $53b6: $03
	dec  b                                           ; $53b7: $05
	dec  bc                                          ; $53b8: $0b
	dec  bc                                          ; $53b9: $0b
	dec  bc                                          ; $53ba: $0b
	dec  bc                                          ; $53bb: $0b
	inc  bc                                          ; $53bc: $03
	inc  bc                                          ; $53bd: $03
	inc  bc                                          ; $53be: $03
	inc  bc                                          ; $53bf: $03
	inc  b                                           ; $53c0: $04
	inc  b                                           ; $53c1: $04
	inc  b                                           ; $53c2: $04
	inc  c                                           ; $53c3: $0c
	inc  bc                                          ; $53c4: $03
	inc  bc                                          ; $53c5: $03
	inc  bc                                          ; $53c6: $03
	inc  bc                                          ; $53c7: $03
	inc  bc                                          ; $53c8: $03
	inc  bc                                          ; $53c9: $03
	inc  bc                                          ; $53ca: $03
	dec  b                                           ; $53cb: $05
	dec  bc                                          ; $53cc: $0b
	dec  bc                                          ; $53cd: $0b
	dec  bc                                          ; $53ce: $0b
	dec  bc                                          ; $53cf: $0b
	inc  bc                                          ; $53d0: $03
	inc  bc                                          ; $53d1: $03
	inc  bc                                          ; $53d2: $03
	inc  bc                                          ; $53d3: $03
	inc  bc                                          ; $53d4: $03
	inc  b                                           ; $53d5: $04
	inc  b                                           ; $53d6: $04
	inc  c                                           ; $53d7: $0c
	inc  bc                                          ; $53d8: $03
	inc  bc                                          ; $53d9: $03
	inc  bc                                          ; $53da: $03
	inc  bc                                          ; $53db: $03
	inc  bc                                          ; $53dc: $03
	inc  bc                                          ; $53dd: $03
	inc  bc                                          ; $53de: $03
	dec  b                                           ; $53df: $05
	inc  bc                                          ; $53e0: $03
	inc  bc                                          ; $53e1: $03
	dec  bc                                          ; $53e2: $0b
	dec  bc                                          ; $53e3: $0b
	inc  bc                                          ; $53e4: $03
	inc  bc                                          ; $53e5: $03
	inc  bc                                          ; $53e6: $03
	inc  bc                                          ; $53e7: $03
	inc  bc                                          ; $53e8: $03
	inc  b                                           ; $53e9: $04
	inc  b                                           ; $53ea: $04
	inc  c                                           ; $53eb: $0c
	inc  bc                                          ; $53ec: $03
	inc  bc                                          ; $53ed: $03
	inc  bc                                          ; $53ee: $03
	inc  bc                                          ; $53ef: $03
	inc  bc                                          ; $53f0: $03
	dec  b                                           ; $53f1: $05
	dec  b                                           ; $53f2: $05
	dec  b                                           ; $53f3: $05

jr_083_53f4:
	inc  bc                                          ; $53f4: $03
	inc  bc                                          ; $53f5: $03
	dec  bc                                          ; $53f6: $0b
	dec  bc                                          ; $53f7: $0b
	dec  b                                           ; $53f8: $05
	dec  b                                           ; $53f9: $05
	inc  bc                                          ; $53fa: $03
	inc  bc                                          ; $53fb: $03
	inc  bc                                          ; $53fc: $03
	inc  b                                           ; $53fd: $04
	inc  b                                           ; $53fe: $04
	inc  b                                           ; $53ff: $04
	inc  bc                                          ; $5400: $03
	inc  bc                                          ; $5401: $03
	inc  bc                                          ; $5402: $03
	dec  b                                           ; $5403: $05
	dec  b                                           ; $5404: $05
	dec  b                                           ; $5405: $05
	dec  b                                           ; $5406: $05
	dec  b                                           ; $5407: $05
	inc  bc                                          ; $5408: $03
	inc  b                                           ; $5409: $04
	inc  b                                           ; $540a: $04
	inc  b                                           ; $540b: $04
	inc  b                                           ; $540c: $04
	dec  b                                           ; $540d: $05
	dec  b                                           ; $540e: $05
	inc  bc                                          ; $540f: $03
	inc  bc                                          ; $5410: $03
	inc  bc                                          ; $5411: $03
	inc  b                                           ; $5412: $04
	inc  b                                           ; $5413: $04
	inc  bc                                          ; $5414: $03
	dec  bc                                          ; $5415: $0b
	dec  bc                                          ; $5416: $0b
	dec  bc                                          ; $5417: $0b
	dec  bc                                          ; $5418: $0b
	dec  b                                           ; $5419: $05
	inc  bc                                          ; $541a: $03
	dec  b                                           ; $541b: $05
	dec  bc                                          ; $541c: $0b
	inc  bc                                          ; $541d: $03
	inc  bc                                          ; $541e: $03
	inc  bc                                          ; $541f: $03
	dec  bc                                          ; $5420: $0b
	dec  b                                           ; $5421: $05
	dec  b                                           ; $5422: $05
	dec  b                                           ; $5423: $05
	dec  b                                           ; $5424: $05
	inc  bc                                          ; $5425: $03
	inc  b                                           ; $5426: $04
	inc  b                                           ; $5427: $04
	inc  bc                                          ; $5428: $03
	dec  bc                                          ; $5429: $0b
	dec  bc                                          ; $542a: $0b
	dec  bc                                          ; $542b: $0b
	dec  bc                                          ; $542c: $0b
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
	dec  b                                           ; $5437: $05
	dec  b                                           ; $5438: $05
	inc  bc                                          ; $5439: $03
	inc  b                                           ; $543a: $04
	inc  b                                           ; $543b: $04
	inc  bc                                          ; $543c: $03
	dec  bc                                          ; $543d: $0b
	dec  bc                                          ; $543e: $0b
	dec  bc                                          ; $543f: $0b
	dec  bc                                          ; $5440: $0b
	inc  bc                                          ; $5441: $03
	inc  bc                                          ; $5442: $03
	inc  bc                                          ; $5443: $03
	inc  bc                                          ; $5444: $03
	inc  bc                                          ; $5445: $03
	inc  bc                                          ; $5446: $03
	inc  bc                                          ; $5447: $03
	inc  bc                                          ; $5448: $03
	dec  bc                                          ; $5449: $0b
	dec  bc                                          ; $544a: $0b
	dec  bc                                          ; $544b: $0b
	dec  bc                                          ; $544c: $0b
	dec  bc                                          ; $544d: $0b
	dec  bc                                          ; $544e: $0b
	inc  c                                           ; $544f: $0c
	nop                                              ; $5450: $00
	ld   bc, $0302                                   ; $5451: $01 $02 $03
	inc  b                                           ; $5454: $04
	dec  b                                           ; $5455: $05
	ld   b, $07                                      ; $5456: $06 $07
	ld   [$0a09], sp                                 ; $5458: $08 $09 $0a
	dec  bc                                          ; $545b: $0b
	inc  c                                           ; $545c: $0c
	dec  c                                           ; $545d: $0d
	ld   c, $0f                                      ; $545e: $0e $0f
	ld   h, b                                        ; $5460: $60
	ld   h, c                                        ; $5461: $61
	ld   d, h                                        ; $5462: $54
	ld   d, b                                        ; $5463: $50
	db   $10                                         ; $5464: $10
	ld   de, $1312                                   ; $5465: $11 $12 $13
	inc  d                                           ; $5468: $14
	ld   de, $1716                                   ; $5469: $11 $16 $17
	jr   @+$1b                                       ; $546c: $18 $19

	ld   a, [de]                                     ; $546e: $1a
	dec  de                                          ; $546f: $1b
	inc  e                                           ; $5470: $1c
	dec  e                                           ; $5471: $1d
	ld   c, $1f                                      ; $5472: $0e $1f
	ld   b, b                                        ; $5474: $40
	ld   b, c                                        ; $5475: $41
	ld   c, $47                                      ; $5476: $0e $47
	db   $10                                         ; $5478: $10
	ld   de, $2322                                   ; $5479: $11 $22 $23
	inc  d                                           ; $547c: $14
	ld   de, $2726                                   ; $547d: $11 $26 $27
	jr   z, jr_083_54ab                              ; $5480: $28 $29

	ld   a, [hl+]                                    ; $5482: $2a
	dec  hl                                          ; $5483: $2b
	inc  l                                           ; $5484: $2c
	dec  l                                           ; $5485: $2d
	ld   c, $1f                                      ; $5486: $0e $1f
	ld   d, c                                        ; $5488: $51
	ld   b, c                                        ; $5489: $41
	ld   c, $0e                                      ; $548a: $0e $0e
	db   $10                                         ; $548c: $10
	ld   de, $3332                                   ; $548d: $11 $32 $33
	inc  d                                           ; $5490: $14
	ld   de, $3736                                   ; $5491: $11 $36 $37
	jr   c, jr_083_54cf                              ; $5494: $38 $39

	ld   a, [hl-]                                    ; $5496: $3a
	dec  sp                                          ; $5497: $3b
	inc  a                                           ; $5498: $3c
	dec  a                                           ; $5499: $3d
	ld   c, $3f                                      ; $549a: $0e $3f
	ld   a, $2f                                      ; $549c: $3e $2f
	ld   c, $0e                                      ; $549e: $0e $0e
	db   $10                                         ; $54a0: $10
	ld   de, $4342                                   ; $54a1: $11 $42 $43
	inc  d                                           ; $54a4: $14
	ld   de, $3746                                   ; $54a5: $11 $46 $37
	ld   c, b                                        ; $54a8: $48
	ld   c, c                                        ; $54a9: $49
	ld   c, d                                        ; $54aa: $4a

jr_083_54ab:
	dec  sp                                          ; $54ab: $3b
	ld   c, h                                        ; $54ac: $4c
	dec  a                                           ; $54ad: $3d
	ld   c, $4f                                      ; $54ae: $0e $4f
	ld   c, l                                        ; $54b0: $4d
	ld   c, [hl]                                     ; $54b1: $4e
	ld   c, $0e                                      ; $54b2: $0e $0e
	db   $10                                         ; $54b4: $10
	ld   de, $5352                                   ; $54b5: $11 $52 $53
	inc  d                                           ; $54b8: $14
	ld   d, l                                        ; $54b9: $55
	ld   d, [hl]                                     ; $54ba: $56
	ld   d, a                                        ; $54bb: $57
	ld   e, b                                        ; $54bc: $58
	ld   e, c                                        ; $54bd: $59
	ld   e, d                                        ; $54be: $5a
	ld   e, e                                        ; $54bf: $5b
	ld   e, h                                        ; $54c0: $5c
	ld   e, l                                        ; $54c1: $5d
	ld   e, [hl]                                     ; $54c2: $5e
	ld   e, a                                        ; $54c3: $5f
	ld   l, $41                                      ; $54c4: $2e $41
	ld   c, $0e                                      ; $54c6: $0e $0e
	db   $10                                         ; $54c8: $10
	ld   de, $6362                                   ; $54c9: $11 $62 $63
	ld   h, h                                        ; $54cc: $64
	ld   h, l                                        ; $54cd: $65
	ld   h, [hl]                                     ; $54ce: $66

jr_083_54cf:
	ld   h, a                                        ; $54cf: $67
	ld   l, b                                        ; $54d0: $68
	ld   l, c                                        ; $54d1: $69
	ld   l, d                                        ; $54d2: $6a
	ld   l, e                                        ; $54d3: $6b
	ld   l, h                                        ; $54d4: $6c
	ld   l, l                                        ; $54d5: $6d
	ld   l, [hl]                                     ; $54d6: $6e
	ld   l, a                                        ; $54d7: $6f
	ld   c, e                                        ; $54d8: $4b
	ld   b, h                                        ; $54d9: $44
	ld   b, l                                        ; $54da: $45
	ld   c, $70                                      ; $54db: $0e $70
	ld   [hl], c                                     ; $54dd: $71
	ld   [hl], d                                     ; $54de: $72
	ld   [hl], e                                     ; $54df: $73
	ld   h, [hl]                                     ; $54e0: $66
	ld   h, [hl]                                     ; $54e1: $66
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
	inc  [hl]                                        ; $54ec: $34
	dec  [hl]                                        ; $54ed: $35
	jr   nc, jr_083_5521                             ; $54ee: $30 $31

	nop                                              ; $54f0: $00
	ld   h, [hl]                                     ; $54f1: $66
	ld   h, [hl]                                     ; $54f2: $66
	ld   h, [hl]                                     ; $54f3: $66
	inc  b                                           ; $54f4: $04
	dec  b                                           ; $54f5: $05
	ld   b, $07                                      ; $54f6: $06 $07
	ld   [$0a09], sp                                 ; $54f8: $08 $09 $0a
	dec  bc                                          ; $54fb: $0b
	inc  c                                           ; $54fc: $0c
	dec  c                                           ; $54fd: $0d
	ld   c, $7f                                      ; $54fe: $0e $7f
	inc  h                                           ; $5500: $24
	dec  h                                           ; $5501: $25
	jr   nz, jr_083_5525                             ; $5502: $20 $21

	db   $10                                         ; $5504: $10
	ld   de, $1312                                   ; $5505: $11 $12 $13
	inc  d                                           ; $5508: $14
	dec  d                                           ; $5509: $15
	ld   d, $17                                      ; $550a: $16 $17
	jr   jr_083_5526                                 ; $550c: $18 $18

	rrca                                             ; $550e: $0f
	ld   bc, $0302                                   ; $550f: $01 $02 $03
	ld   [hl], h                                     ; $5512: $74
	ld   [hl], l                                     ; $5513: $75
	ld   e, $25                                      ; $5514: $1e $25
	jr   nz, jr_083_552d                             ; $5516: $20 $15

	dec  b                                           ; $5518: $05
	dec  b                                           ; $5519: $05
	inc  b                                           ; $551a: $04
	inc  b                                           ; $551b: $04
	dec  b                                           ; $551c: $05
	dec  b                                           ; $551d: $05
	inc  bc                                          ; $551e: $03
	inc  bc                                          ; $551f: $03
	inc  bc                                          ; $5520: $03

jr_083_5521:
	inc  bc                                          ; $5521: $03
	inc  bc                                          ; $5522: $03
	inc  bc                                          ; $5523: $03
	inc  bc                                          ; $5524: $03

jr_083_5525:
	inc  bc                                          ; $5525: $03

jr_083_5526:
	inc  bc                                          ; $5526: $03
	inc  bc                                          ; $5527: $03
	inc  bc                                          ; $5528: $03
	inc  bc                                          ; $5529: $03
	dec  b                                           ; $552a: $05
	dec  b                                           ; $552b: $05
	dec  b                                           ; $552c: $05

jr_083_552d:
	dec  b                                           ; $552d: $05
	inc  b                                           ; $552e: $04
	inc  b                                           ; $552f: $04
	dec  b                                           ; $5530: $05
	dec  b                                           ; $5531: $05
	inc  b                                           ; $5532: $04
	inc  bc                                          ; $5533: $03
	inc  bc                                          ; $5534: $03
	inc  bc                                          ; $5535: $03
	inc  bc                                          ; $5536: $03
	inc  bc                                          ; $5537: $03
	inc  bc                                          ; $5538: $03
	inc  bc                                          ; $5539: $03
	inc  bc                                          ; $553a: $03
	inc  bc                                          ; $553b: $03
	inc  bc                                          ; $553c: $03
	inc  bc                                          ; $553d: $03
	inc  bc                                          ; $553e: $03
	dec  b                                           ; $553f: $05
	dec  b                                           ; $5540: $05
	dec  b                                           ; $5541: $05
	inc  b                                           ; $5542: $04
	inc  b                                           ; $5543: $04
	dec  b                                           ; $5544: $05
	dec  b                                           ; $5545: $05
	inc  b                                           ; $5546: $04
	dec  b                                           ; $5547: $05
	dec  b                                           ; $5548: $05
	dec  b                                           ; $5549: $05
	dec  b                                           ; $554a: $05
	inc  bc                                          ; $554b: $03
	inc  bc                                          ; $554c: $03
	inc  bc                                          ; $554d: $03
	inc  bc                                          ; $554e: $03
	inc  bc                                          ; $554f: $03
	inc  bc                                          ; $5550: $03
	inc  bc                                          ; $5551: $03
	inc  bc                                          ; $5552: $03
	inc  bc                                          ; $5553: $03
	dec  b                                           ; $5554: $05
	dec  b                                           ; $5555: $05
	inc  b                                           ; $5556: $04
	inc  b                                           ; $5557: $04
	dec  b                                           ; $5558: $05
	dec  b                                           ; $5559: $05
	inc  b                                           ; $555a: $04
	dec  b                                           ; $555b: $05
	dec  b                                           ; $555c: $05
	dec  b                                           ; $555d: $05
	dec  b                                           ; $555e: $05
	inc  bc                                          ; $555f: $03
	inc  bc                                          ; $5560: $03
	inc  bc                                          ; $5561: $03
	inc  bc                                          ; $5562: $03
	inc  bc                                          ; $5563: $03
	inc  bc                                          ; $5564: $03
	inc  bc                                          ; $5565: $03
	inc  bc                                          ; $5566: $03
	inc  bc                                          ; $5567: $03
	dec  b                                           ; $5568: $05
	dec  b                                           ; $5569: $05
	inc  b                                           ; $556a: $04
	inc  b                                           ; $556b: $04
	dec  b                                           ; $556c: $05
	dec  b                                           ; $556d: $05
	inc  b                                           ; $556e: $04
	dec  b                                           ; $556f: $05
	dec  b                                           ; $5570: $05
	dec  b                                           ; $5571: $05
	dec  b                                           ; $5572: $05
	inc  bc                                          ; $5573: $03
	inc  bc                                          ; $5574: $03
	inc  bc                                          ; $5575: $03
	inc  bc                                          ; $5576: $03
	inc  bc                                          ; $5577: $03
	inc  bc                                          ; $5578: $03
	inc  bc                                          ; $5579: $03
	inc  bc                                          ; $557a: $03
	inc  bc                                          ; $557b: $03
	dec  b                                           ; $557c: $05
	dec  b                                           ; $557d: $05
	inc  b                                           ; $557e: $04
	inc  b                                           ; $557f: $04
	dec  b                                           ; $5580: $05
	dec  b                                           ; $5581: $05
	inc  b                                           ; $5582: $04
	dec  b                                           ; $5583: $05
	dec  b                                           ; $5584: $05
	dec  b                                           ; $5585: $05
	dec  b                                           ; $5586: $05
	dec  b                                           ; $5587: $05
	inc  bc                                          ; $5588: $03
	inc  bc                                          ; $5589: $03
	inc  bc                                          ; $558a: $03
	inc  bc                                          ; $558b: $03
	inc  bc                                          ; $558c: $03
	inc  bc                                          ; $558d: $03
	inc  bc                                          ; $558e: $03
	inc  bc                                          ; $558f: $03
	dec  b                                           ; $5590: $05
	dec  b                                           ; $5591: $05
	inc  b                                           ; $5592: $04
	inc  b                                           ; $5593: $04
	dec  b                                           ; $5594: $05
	dec  b                                           ; $5595: $05
	inc  b                                           ; $5596: $04
	dec  b                                           ; $5597: $05
	dec  b                                           ; $5598: $05
	dec  b                                           ; $5599: $05
	dec  b                                           ; $559a: $05
	dec  b                                           ; $559b: $05
	inc  bc                                          ; $559c: $03
	inc  bc                                          ; $559d: $03
	inc  bc                                          ; $559e: $03
	inc  bc                                          ; $559f: $03
	inc  bc                                          ; $55a0: $03
	inc  bc                                          ; $55a1: $03
	inc  bc                                          ; $55a2: $03
	inc  bc                                          ; $55a3: $03
	dec  b                                           ; $55a4: $05
	dec  b                                           ; $55a5: $05
	dec  b                                           ; $55a6: $05
	dec  b                                           ; $55a7: $05
	inc  b                                           ; $55a8: $04
	inc  b                                           ; $55a9: $04
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
	inc  bc                                          ; $55b4: $03
	inc  bc                                          ; $55b5: $03
	inc  bc                                          ; $55b6: $03
	inc  bc                                          ; $55b7: $03
	dec  c                                           ; $55b8: $0d
	inc  b                                           ; $55b9: $04
	inc  b                                           ; $55ba: $04
	inc  b                                           ; $55bb: $04
	dec  c                                           ; $55bc: $0d
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
	inc  bc                                          ; $55c7: $03
	inc  bc                                          ; $55c8: $03
	inc  bc                                          ; $55c9: $03
	inc  bc                                          ; $55ca: $03
	inc  bc                                          ; $55cb: $03
	dec  c                                           ; $55cc: $0d
	dec  bc                                          ; $55cd: $0b
	dec  bc                                          ; $55ce: $0b
	dec  bc                                          ; $55cf: $0b
	dec  c                                           ; $55d0: $0d
	dec  bc                                          ; $55d1: $0b
	dec  bc                                          ; $55d2: $0b
	dec  bc                                          ; $55d3: $0b
	dec  bc                                          ; $55d4: $0b
	dec  bc                                          ; $55d5: $0b
	dec  bc                                          ; $55d6: $0b
	dec  bc                                          ; $55d7: $0b
	dec  bc                                          ; $55d8: $0b
	dec  bc                                          ; $55d9: $0b
	inc  bc                                          ; $55da: $03
	inc  bc                                          ; $55db: $03
	inc  bc                                          ; $55dc: $03
	inc  bc                                          ; $55dd: $03
	inc  bc                                          ; $55de: $03
	inc  bc                                          ; $55df: $03
	nop                                              ; $55e0: $00
	jr   nz, jr_083_5604                             ; $55e1: $20 $21

	ld   [hl+], a                                    ; $55e3: $22
	ld   bc, $2501                                   ; $55e4: $01 $01 $25
	ld   h, $27                                      ; $55e7: $26 $27
	jr   z, jr_083_5614                              ; $55e9: $28 $29

	dec  bc                                          ; $55eb: $0b
	inc  c                                           ; $55ec: $0c
	dec  c                                           ; $55ed: $0d
	ld   c, $0f                                      ; $55ee: $0e $0f
	ld   h, b                                        ; $55f0: $60
	add  hl, de                                      ; $55f1: $19
	ld   bc, $1000                                   ; $55f2: $01 $00 $10
	jr   nc, jr_083_5628                             ; $55f5: $30 $31

	ld   [hl-], a                                    ; $55f7: $32
	inc  sp                                          ; $55f8: $33
	inc  [hl]                                        ; $55f9: $34
	dec  [hl]                                        ; $55fa: $35
	ld   [hl], $37                                   ; $55fb: $36 $37
	jr   c, jr_083_5638                              ; $55fd: $38 $39

	dec  de                                          ; $55ff: $1b
	inc  e                                           ; $5600: $1c
	dec  e                                           ; $5601: $1d
	ld   c, $1f                                      ; $5602: $0e $1f

jr_083_5604:
	ld   b, b                                        ; $5604: $40
	ld   a, [de]                                     ; $5605: $1a
	ld   de, $1010                                   ; $5606: $11 $10 $10
	jr   nc, jr_083_5635                             ; $5609: $30 $2a

	dec  hl                                          ; $560b: $2b
	inc  l                                           ; $560c: $2c
	dec  l                                           ; $560d: $2d
	ld   l, $2f                                      ; $560e: $2e $2f
	ld   b, b                                        ; $5610: $40
	ld   b, c                                        ; $5611: $41
	ld   b, d                                        ; $5612: $42
	dec  hl                                          ; $5613: $2b

jr_083_5614:
	inc  l                                           ; $5614: $2c
	dec  l                                           ; $5615: $2d
	ld   c, $1f                                      ; $5616: $0e $1f
	ld   d, c                                        ; $5618: $51
	ld   a, [de]                                     ; $5619: $1a
	ld   de, $1010                                   ; $561a: $11 $10 $10
	jr   nc, jr_083_5659                             ; $561d: $30 $3a

	dec  sp                                          ; $561f: $3b
	inc  a                                           ; $5620: $3c
	ld   c, $3e                                      ; $5621: $0e $3e
	ccf                                              ; $5623: $3f
	ld   d, b                                        ; $5624: $50
	add  hl, sp                                      ; $5625: $39
	ld   a, [hl-]                                    ; $5626: $3a
	dec  sp                                          ; $5627: $3b

jr_083_5628:
	inc  a                                           ; $5628: $3c
	dec  a                                           ; $5629: $3d
	ld   c, $3f                                      ; $562a: $0e $3f
	ld   a, $1b                                      ; $562c: $3e $1b
	ld   de, $1010                                   ; $562e: $11 $10 $10
	jr   nc, jr_083_5676                             ; $5631: $30 $43

	ld   b, h                                        ; $5633: $44
	ld   b, l                                        ; $5634: $45

jr_083_5635:
	ld   c, $47                                      ; $5635: $0e $47
	ld   c, b                                        ; $5637: $48

jr_083_5638:
	ld   c, c                                        ; $5638: $49
	ld   c, c                                        ; $5639: $49
	ld   c, d                                        ; $563a: $4a
	dec  sp                                          ; $563b: $3b
	ld   c, h                                        ; $563c: $4c
	dec  a                                           ; $563d: $3d
	ld   c, $4f                                      ; $563e: $0e $4f
	ld   c, l                                        ; $5640: $4d
	inc  e                                           ; $5641: $1c
	ld   de, $1010                                   ; $5642: $11 $10 $10
	jr   nc, jr_083_569a                             ; $5645: $30 $53

	ld   d, h                                        ; $5647: $54
	ld   c, $56                                      ; $5648: $0e $56
	ld   d, a                                        ; $564a: $57
	ld   e, b                                        ; $564b: $58
	ld   e, c                                        ; $564c: $59
	ld   e, c                                        ; $564d: $59
	ld   e, d                                        ; $564e: $5a
	ld   e, e                                        ; $564f: $5b
	ld   e, h                                        ; $5650: $5c
	ld   e, l                                        ; $5651: $5d
	ld   e, [hl]                                     ; $5652: $5e
	ld   e, a                                        ; $5653: $5f
	ld   l, $1a                                      ; $5654: $2e $1a
	ld   de, $1010                                   ; $5656: $11 $10 $10

jr_083_5659:
	jr   nc, jr_083_56a6                             ; $5659: $30 $4b

	ld   c, h                                        ; $565b: $4c
	ld   c, l                                        ; $565c: $4d
	ld   c, [hl]                                     ; $565d: $4e
	ld   c, a                                        ; $565e: $4f
	ld   h, b                                        ; $565f: $60
	ld   h, c                                        ; $5660: $61
	ld   l, c                                        ; $5661: $69
	ld   l, d                                        ; $5662: $6a
	ld   l, e                                        ; $5663: $6b
	ld   l, h                                        ; $5664: $6c
	ld   l, l                                        ; $5665: $6d
	ld   l, [hl]                                     ; $5666: $6e
	ld   l, a                                        ; $5667: $6f
	ld   c, e                                        ; $5668: $4b
	dec  e                                           ; $5669: $1d
	ld   e, $10                                      ; $566a: $1e $10
	ld   [hl], b                                     ; $566c: $70
	ld   e, d                                        ; $566d: $5a
	ld   e, e                                        ; $566e: $5b
	ld   e, h                                        ; $566f: $5c
	ld   e, l                                        ; $5670: $5d
	ld   h, [hl]                                     ; $5671: $66
	ld   e, a                                        ; $5672: $5f
	ld   c, d                                        ; $5673: $4a
	ld   b, [hl]                                     ; $5674: $46
	ld   a, c                                        ; $5675: $79

jr_083_5676:
	ld   a, d                                        ; $5676: $7a
	ld   a, e                                        ; $5677: $7b
	ld   a, h                                        ; $5678: $7c
	ld   a, l                                        ; $5679: $7d
	ld   a, [hl]                                     ; $567a: $7e
	ld   a, a                                        ; $567b: $7f
	inc  [hl]                                        ; $567c: $34
	dec  [hl]                                        ; $567d: $35
	rra                                              ; $567e: $1f
	ld   h, d                                        ; $567f: $62
	nop                                              ; $5680: $00
	ld   h, [hl]                                     ; $5681: $66
	ld   h, [hl]                                     ; $5682: $66
	ld   h, [hl]                                     ; $5683: $66
	ld   h, [hl]                                     ; $5684: $66
	ld   e, [hl]                                     ; $5685: $5e
	ld   d, l                                        ; $5686: $55
	ld   d, c                                        ; $5687: $51
	ld   d, d                                        ; $5688: $52
	add  hl, bc                                      ; $5689: $09
	ld   a, [bc]                                     ; $568a: $0a
	dec  bc                                          ; $568b: $0b
	inc  c                                           ; $568c: $0c
	dec  c                                           ; $568d: $0d
	ld   c, $7f                                      ; $568e: $0e $7f
	inc  h                                           ; $5690: $24
	dec  h                                           ; $5691: $25
	jr   nz, jr_083_56b5                             ; $5692: $20 $21

	db   $10                                         ; $5694: $10
	ld   de, $1312                                   ; $5695: $11 $12 $13
	dec  a                                           ; $5698: $3d
	inc  h                                           ; $5699: $24

jr_083_569a:
	ld   d, $16                                      ; $569a: $16 $16
	inc  hl                                          ; $569c: $23
	jr   jr_083_56ae                                 ; $569d: $18 $0f

	ld   bc, $0302                                   ; $569f: $01 $02 $03
	ld   [hl], h                                     ; $56a2: $74
	ld   [hl], l                                     ; $56a3: $75
	ld   e, $25                                      ; $56a4: $1e $25

jr_083_56a6:
	jr   nz, jr_083_56bd                             ; $56a6: $20 $15

	dec  b                                           ; $56a8: $05
	dec  c                                           ; $56a9: $0d
	dec  c                                           ; $56aa: $0d
	dec  c                                           ; $56ab: $0d
	dec  b                                           ; $56ac: $05
	dec  b                                           ; $56ad: $05

jr_083_56ae:
	dec  bc                                          ; $56ae: $0b
	dec  bc                                          ; $56af: $0b
	dec  c                                           ; $56b0: $0d
	dec  c                                           ; $56b1: $0d
	dec  c                                           ; $56b2: $0d
	inc  bc                                          ; $56b3: $03
	inc  bc                                          ; $56b4: $03

jr_083_56b5:
	inc  bc                                          ; $56b5: $03
	inc  bc                                          ; $56b6: $03
	inc  bc                                          ; $56b7: $03
	inc  bc                                          ; $56b8: $03
	dec  c                                           ; $56b9: $0d
	dec  b                                           ; $56ba: $05
	dec  h                                           ; $56bb: $25
	dec  b                                           ; $56bc: $05

jr_083_56bd:
	dec  c                                           ; $56bd: $0d
	dec  c                                           ; $56be: $0d
	dec  c                                           ; $56bf: $0d
	dec  c                                           ; $56c0: $0d
	dec  c                                           ; $56c1: $0d
	dec  bc                                          ; $56c2: $0b
	dec  bc                                          ; $56c3: $0b
	dec  bc                                          ; $56c4: $0b
	dec  bc                                          ; $56c5: $0b
	dec  bc                                          ; $56c6: $0b
	inc  bc                                          ; $56c7: $03
	inc  bc                                          ; $56c8: $03
	inc  bc                                          ; $56c9: $03
	inc  bc                                          ; $56ca: $03
	inc  bc                                          ; $56cb: $03
	inc  bc                                          ; $56cc: $03
	dec  c                                           ; $56cd: $0d
	dec  b                                           ; $56ce: $05
	dec  h                                           ; $56cf: $25
	dec  b                                           ; $56d0: $05
	dec  c                                           ; $56d1: $0d
	dec  c                                           ; $56d2: $0d
	dec  c                                           ; $56d3: $0d
	dec  c                                           ; $56d4: $0d
	dec  c                                           ; $56d5: $0d
	dec  c                                           ; $56d6: $0d
	dec  bc                                          ; $56d7: $0b
	dec  bc                                          ; $56d8: $0b
	dec  c                                           ; $56d9: $0d
	dec  bc                                          ; $56da: $0b
	inc  bc                                          ; $56db: $03
	inc  bc                                          ; $56dc: $03
	inc  bc                                          ; $56dd: $03
	inc  bc                                          ; $56de: $03
	inc  bc                                          ; $56df: $03
	inc  bc                                          ; $56e0: $03
	dec  c                                           ; $56e1: $0d
	dec  b                                           ; $56e2: $05
	dec  h                                           ; $56e3: $25
	dec  b                                           ; $56e4: $05
	dec  c                                           ; $56e5: $0d
	dec  c                                           ; $56e6: $0d
	dec  c                                           ; $56e7: $0d
	dec  c                                           ; $56e8: $0d
	inc  bc                                          ; $56e9: $03
	dec  c                                           ; $56ea: $0d
	dec  c                                           ; $56eb: $0d
	dec  c                                           ; $56ec: $0d
	dec  b                                           ; $56ed: $05
	dec  b                                           ; $56ee: $05
	inc  bc                                          ; $56ef: $03
	inc  bc                                          ; $56f0: $03
	inc  bc                                          ; $56f1: $03
	inc  bc                                          ; $56f2: $03
	inc  bc                                          ; $56f3: $03
	inc  bc                                          ; $56f4: $03
	dec  c                                           ; $56f5: $0d
	dec  b                                           ; $56f6: $05
	dec  h                                           ; $56f7: $25
	dec  b                                           ; $56f8: $05
	dec  c                                           ; $56f9: $0d
	dec  c                                           ; $56fa: $0d
	dec  c                                           ; $56fb: $0d
	dec  c                                           ; $56fc: $0d
	inc  bc                                          ; $56fd: $03
	dec  c                                           ; $56fe: $0d
	dec  c                                           ; $56ff: $0d
	dec  c                                           ; $5700: $0d
	dec  b                                           ; $5701: $05
	dec  b                                           ; $5702: $05
	inc  bc                                          ; $5703: $03
	inc  bc                                          ; $5704: $03
	inc  bc                                          ; $5705: $03
	inc  bc                                          ; $5706: $03
	inc  bc                                          ; $5707: $03
	inc  bc                                          ; $5708: $03
	dec  c                                           ; $5709: $0d
	dec  b                                           ; $570a: $05
	dec  h                                           ; $570b: $25
	dec  b                                           ; $570c: $05
	dec  c                                           ; $570d: $0d
	dec  c                                           ; $570e: $0d
	dec  c                                           ; $570f: $0d
	inc  bc                                          ; $5710: $03
	dec  c                                           ; $5711: $0d
	dec  bc                                          ; $5712: $0b
	dec  c                                           ; $5713: $0d
	dec  c                                           ; $5714: $0d
	dec  b                                           ; $5715: $05
	dec  b                                           ; $5716: $05
	dec  b                                           ; $5717: $05
	inc  bc                                          ; $5718: $03
	inc  bc                                          ; $5719: $03
	inc  bc                                          ; $571a: $03
	inc  bc                                          ; $571b: $03
	inc  bc                                          ; $571c: $03
	dec  c                                           ; $571d: $0d
	dec  b                                           ; $571e: $05
	dec  h                                           ; $571f: $25
	dec  b                                           ; $5720: $05
	dec  c                                           ; $5721: $0d
	dec  c                                           ; $5722: $0d
	dec  c                                           ; $5723: $0d
	dec  bc                                          ; $5724: $0b
	dec  bc                                          ; $5725: $0b
	dec  bc                                          ; $5726: $0b
	dec  c                                           ; $5727: $0d
	dec  c                                           ; $5728: $0d
	dec  b                                           ; $5729: $05
	dec  b                                           ; $572a: $05
	dec  b                                           ; $572b: $05
	inc  bc                                          ; $572c: $03
	inc  bc                                          ; $572d: $03
	inc  bc                                          ; $572e: $03
	inc  bc                                          ; $572f: $03
	inc  bc                                          ; $5730: $03
	dec  c                                           ; $5731: $0d
	dec  c                                           ; $5732: $0d
	dec  h                                           ; $5733: $25
	dec  b                                           ; $5734: $05
	dec  c                                           ; $5735: $0d
	dec  c                                           ; $5736: $0d
	dec  bc                                          ; $5737: $0b
	dec  bc                                          ; $5738: $0b
	inc  b                                           ; $5739: $04
	dec  bc                                          ; $573a: $0b
	dec  bc                                          ; $573b: $0b
	dec  bc                                          ; $573c: $0b
	inc  bc                                          ; $573d: $03
	inc  bc                                          ; $573e: $03
	inc  bc                                          ; $573f: $03
	inc  bc                                          ; $5740: $03
	inc  bc                                          ; $5741: $03
	inc  bc                                          ; $5742: $03
	inc  bc                                          ; $5743: $03
	inc  bc                                          ; $5744: $03
	inc  bc                                          ; $5745: $03
	dec  bc                                          ; $5746: $0b
	dec  bc                                          ; $5747: $0b
	dec  c                                           ; $5748: $0d
	inc  b                                           ; $5749: $04
	inc  b                                           ; $574a: $04
	inc  b                                           ; $574b: $04
	inc  b                                           ; $574c: $04
	dec  bc                                          ; $574d: $0b
	dec  bc                                          ; $574e: $0b
	dec  bc                                          ; $574f: $0b
	dec  bc                                          ; $5750: $0b
	dec  bc                                          ; $5751: $0b
	dec  bc                                          ; $5752: $0b
	dec  bc                                          ; $5753: $0b
	dec  bc                                          ; $5754: $0b
	dec  bc                                          ; $5755: $0b
	dec  bc                                          ; $5756: $0b
	inc  bc                                          ; $5757: $03
	inc  bc                                          ; $5758: $03
	inc  bc                                          ; $5759: $03
	inc  bc                                          ; $575a: $03
	inc  bc                                          ; $575b: $03
	dec  c                                           ; $575c: $0d
	dec  bc                                          ; $575d: $0b
	dec  bc                                          ; $575e: $0b
	dec  bc                                          ; $575f: $0b
	dec  bc                                          ; $5760: $0b
	dec  bc                                          ; $5761: $0b
	dec  bc                                          ; $5762: $0b
	dec  bc                                          ; $5763: $0b
	dec  bc                                          ; $5764: $0b
	dec  bc                                          ; $5765: $0b
	dec  bc                                          ; $5766: $0b
	dec  bc                                          ; $5767: $0b
	dec  bc                                          ; $5768: $0b
	dec  bc                                          ; $5769: $0b
	inc  bc                                          ; $576a: $03
	inc  bc                                          ; $576b: $03
	inc  bc                                          ; $576c: $03
	inc  bc                                          ; $576d: $03
	inc  bc                                          ; $576e: $03
	inc  bc                                          ; $576f: $03
	nop                                              ; $5770: $00
	ld   bc, $0302                                   ; $5771: $01 $02 $03
	inc  b                                           ; $5774: $04
	nop                                              ; $5775: $00
	nop                                              ; $5776: $00
	dec  b                                           ; $5777: $05
	ld   b, $07                                      ; $5778: $06 $07
	ld   [$0a09], sp                                 ; $577a: $08 $09 $0a
	nop                                              ; $577d: $00
	nop                                              ; $577e: $00
	dec  bc                                          ; $577f: $0b
	inc  c                                           ; $5780: $0c
	dec  c                                           ; $5781: $0d
	ld   c, $00                                      ; $5782: $0e $00
	nop                                              ; $5784: $00
	rrca                                             ; $5785: $0f
	db   $10                                         ; $5786: $10
	ld   de, $1312                                   ; $5787: $11 $12 $13
	inc  d                                           ; $578a: $14
	dec  d                                           ; $578b: $15
	ld   d, $17                                      ; $578c: $16 $17
	jr   @+$1b                                       ; $578e: $18 $19

	ld   a, [de]                                     ; $5790: $1a
	dec  de                                          ; $5791: $1b
	inc  e                                           ; $5792: $1c
	dec  e                                           ; $5793: $1d
	ld   e, $1f                                      ; $5794: $1e $1f
	jr   nz, jr_083_5798                             ; $5796: $20 $00

jr_083_5798:
	nop                                              ; $5798: $00
	ld   hl, $2322                                   ; $5799: $21 $22 $23
	ld   [de], a                                     ; $579c: $12
	inc  h                                           ; $579d: $24
	dec  h                                           ; $579e: $25
	ld   h, $27                                      ; $579f: $26 $27
	jr   z, jr_083_57cc                              ; $57a1: $28 $29

	ld   a, [hl+]                                    ; $57a3: $2a
	dec  hl                                          ; $57a4: $2b
	inc  l                                           ; $57a5: $2c
	dec  l                                           ; $57a6: $2d
	dec  e                                           ; $57a7: $1d
	ld   l, $2f                                      ; $57a8: $2e $2f
	jr   nz, jr_083_57ac                             ; $57aa: $20 $00

jr_083_57ac:
	nop                                              ; $57ac: $00
	jr   nc, jr_083_57e0                             ; $57ad: $30 $31

	ld   [hl-], a                                    ; $57af: $32
	ld   [de], a                                     ; $57b0: $12
	inc  sp                                          ; $57b1: $33
	inc  [hl]                                        ; $57b2: $34
	dec  [hl]                                        ; $57b3: $35
	ld   [hl], $37                                   ; $57b4: $36 $37
	jr   c, jr_083_57f1                              ; $57b6: $38 $39

	ld   a, [hl-]                                    ; $57b8: $3a
	dec  sp                                          ; $57b9: $3b
	inc  a                                           ; $57ba: $3c
	dec  e                                           ; $57bb: $1d
	dec  a                                           ; $57bc: $3d
	ld   a, $20                                      ; $57bd: $3e $20
	nop                                              ; $57bf: $00
	nop                                              ; $57c0: $00
	ccf                                              ; $57c1: $3f
	ld   b, b                                        ; $57c2: $40
	ld   b, c                                        ; $57c3: $41
	ld   [de], a                                     ; $57c4: $12
	ld   b, d                                        ; $57c5: $42
	ld   b, e                                        ; $57c6: $43
	ld   b, h                                        ; $57c7: $44
	ld   b, l                                        ; $57c8: $45
	ld   b, [hl]                                     ; $57c9: $46
	ld   b, a                                        ; $57ca: $47
	ld   c, b                                        ; $57cb: $48

jr_083_57cc:
	ld   c, c                                        ; $57cc: $49
	ld   c, d                                        ; $57cd: $4a
	ld   c, e                                        ; $57ce: $4b
	dec  e                                           ; $57cf: $1d
	ld   c, h                                        ; $57d0: $4c
	ld   c, l                                        ; $57d1: $4d
	jr   nz, jr_083_57d4                             ; $57d2: $20 $00

jr_083_57d4:
	nop                                              ; $57d4: $00
	ld   c, [hl]                                     ; $57d5: $4e
	ld   c, a                                        ; $57d6: $4f
	ld   d, b                                        ; $57d7: $50
	ld   d, c                                        ; $57d8: $51
	ld   d, d                                        ; $57d9: $52
	ld   d, e                                        ; $57da: $53
	ld   d, h                                        ; $57db: $54
	ld   d, l                                        ; $57dc: $55
	ld   d, [hl]                                     ; $57dd: $56
	ld   d, a                                        ; $57de: $57
	ld   e, b                                        ; $57df: $58

jr_083_57e0:
	ld   e, c                                        ; $57e0: $59
	ld   e, d                                        ; $57e1: $5a
	ld   e, e                                        ; $57e2: $5b
	dec  e                                           ; $57e3: $1d
	ld   e, h                                        ; $57e4: $5c
	ld   e, l                                        ; $57e5: $5d
	jr   nz, jr_083_57e8                             ; $57e6: $20 $00

jr_083_57e8:
	nop                                              ; $57e8: $00
	ld   e, [hl]                                     ; $57e9: $5e
	ld   e, a                                        ; $57ea: $5f
	ld   h, b                                        ; $57eb: $60
	ld   h, c                                        ; $57ec: $61
	ld   h, d                                        ; $57ed: $62
	ld   h, e                                        ; $57ee: $63
	ld   h, h                                        ; $57ef: $64
	ld   h, l                                        ; $57f0: $65

jr_083_57f1:
	ld   h, [hl]                                     ; $57f1: $66
	ld   h, a                                        ; $57f2: $67
	ld   l, b                                        ; $57f3: $68
	ld   l, c                                        ; $57f4: $69
	ld   l, d                                        ; $57f5: $6a
	ld   l, e                                        ; $57f6: $6b
	ld   l, h                                        ; $57f7: $6c
	ld   l, l                                        ; $57f8: $6d
	ld   l, [hl]                                     ; $57f9: $6e
	ld   l, a                                        ; $57fa: $6f
	nop                                              ; $57fb: $00
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
	nop                                              ; $580c: $00
	ld   bc, $0302                                   ; $580d: $01 $02 $03
	inc  b                                           ; $5810: $04
	dec  b                                           ; $5811: $05
	ld   b, $07                                      ; $5812: $06 $07
	ld   [$0a09], sp                                 ; $5814: $08 $09 $0a
	dec  bc                                          ; $5817: $0b
	inc  c                                           ; $5818: $0c
	dec  c                                           ; $5819: $0d
	ld   c, $0f                                      ; $581a: $0e $0f
	db   $10                                         ; $581c: $10
	ld   de, $1312                                   ; $581d: $11 $12 $13
	inc  d                                           ; $5820: $14
	dec  d                                           ; $5821: $15
	ld   d, $17                                      ; $5822: $16 $17
	inc  b                                           ; $5824: $04
	jr   jr_083_5840                                 ; $5825: $18 $19

	ld   a, [de]                                     ; $5827: $1a
	dec  de                                          ; $5828: $1b
	inc  e                                           ; $5829: $1c
	dec  e                                           ; $582a: $1d
	dec  e                                           ; $582b: $1d
	dec  e                                           ; $582c: $1d
	dec  e                                           ; $582d: $1d
	dec  e                                           ; $582e: $1d
	dec  e                                           ; $582f: $1d
	dec  e                                           ; $5830: $1d
	dec  e                                           ; $5831: $1d
	ld   e, $1f                                      ; $5832: $1e $1f
	jr   nz, jr_083_5857                             ; $5834: $20 $21

	ld   [hl+], a                                    ; $5836: $22
	inc  hl                                          ; $5837: $23
	inc  bc                                          ; $5838: $03
	inc  bc                                          ; $5839: $03
	inc  bc                                          ; $583a: $03
	inc  bc                                          ; $583b: $03
	inc  bc                                          ; $583c: $03
	inc  bc                                          ; $583d: $03
	inc  bc                                          ; $583e: $03
	inc  bc                                          ; $583f: $03

jr_083_5840:
	inc  bc                                          ; $5840: $03
	inc  bc                                          ; $5841: $03
	inc  bc                                          ; $5842: $03
	inc  bc                                          ; $5843: $03
	inc  bc                                          ; $5844: $03
	inc  bc                                          ; $5845: $03
	inc  bc                                          ; $5846: $03
	inc  bc                                          ; $5847: $03
	inc  bc                                          ; $5848: $03
	inc  bc                                          ; $5849: $03
	inc  bc                                          ; $584a: $03
	inc  bc                                          ; $584b: $03
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

jr_083_5857:
	inc  bc                                          ; $5857: $03
	inc  bc                                          ; $5858: $03
	inc  bc                                          ; $5859: $03
	inc  bc                                          ; $585a: $03
	inc  bc                                          ; $585b: $03
	inc  bc                                          ; $585c: $03
	inc  bc                                          ; $585d: $03
	inc  bc                                          ; $585e: $03
	inc  bc                                          ; $585f: $03
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
	inc  bc                                          ; $5870: $03
	inc  bc                                          ; $5871: $03
	inc  bc                                          ; $5872: $03
	inc  bc                                          ; $5873: $03
	inc  bc                                          ; $5874: $03
	inc  bc                                          ; $5875: $03
	inc  bc                                          ; $5876: $03
	inc  bc                                          ; $5877: $03
	inc  bc                                          ; $5878: $03
	inc  bc                                          ; $5879: $03
	inc  bc                                          ; $587a: $03
	inc  bc                                          ; $587b: $03
	dec  b                                           ; $587c: $05
	dec  b                                           ; $587d: $05
	dec  b                                           ; $587e: $05
	inc  bc                                          ; $587f: $03
	inc  bc                                          ; $5880: $03
	inc  bc                                          ; $5881: $03
	inc  bc                                          ; $5882: $03
	inc  bc                                          ; $5883: $03
	inc  bc                                          ; $5884: $03
	inc  bc                                          ; $5885: $03
	inc  bc                                          ; $5886: $03
	inc  bc                                          ; $5887: $03
	inc  bc                                          ; $5888: $03
	inc  bc                                          ; $5889: $03
	inc  bc                                          ; $588a: $03
	inc  bc                                          ; $588b: $03
	inc  bc                                          ; $588c: $03
	inc  bc                                          ; $588d: $03
	inc  bc                                          ; $588e: $03
	inc  bc                                          ; $588f: $03
	dec  b                                           ; $5890: $05
	dec  b                                           ; $5891: $05
	dec  b                                           ; $5892: $05
	inc  bc                                          ; $5893: $03
	inc  bc                                          ; $5894: $03
	inc  bc                                          ; $5895: $03
	inc  bc                                          ; $5896: $03
	inc  bc                                          ; $5897: $03
	inc  bc                                          ; $5898: $03
	inc  bc                                          ; $5899: $03
	inc  bc                                          ; $589a: $03
	inc  bc                                          ; $589b: $03
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
	inc  bc                                          ; $58a7: $03
	inc  bc                                          ; $58a8: $03
	inc  bc                                          ; $58a9: $03
	inc  bc                                          ; $58aa: $03
	inc  bc                                          ; $58ab: $03
	inc  bc                                          ; $58ac: $03
	inc  bc                                          ; $58ad: $03
	inc  bc                                          ; $58ae: $03
	inc  bc                                          ; $58af: $03
	inc  bc                                          ; $58b0: $03
	inc  bc                                          ; $58b1: $03
	inc  bc                                          ; $58b2: $03
	inc  bc                                          ; $58b3: $03
	inc  bc                                          ; $58b4: $03
	inc  bc                                          ; $58b5: $03
	inc  bc                                          ; $58b6: $03
	inc  bc                                          ; $58b7: $03
	inc  bc                                          ; $58b8: $03
	inc  bc                                          ; $58b9: $03
	inc  bc                                          ; $58ba: $03
	inc  bc                                          ; $58bb: $03
	inc  bc                                          ; $58bc: $03
	inc  bc                                          ; $58bd: $03
	inc  bc                                          ; $58be: $03
	inc  bc                                          ; $58bf: $03
	inc  bc                                          ; $58c0: $03
	inc  bc                                          ; $58c1: $03
	inc  bc                                          ; $58c2: $03
	inc  bc                                          ; $58c3: $03
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
	inc  bc                                          ; $58cf: $03
	inc  bc                                          ; $58d0: $03
	inc  bc                                          ; $58d1: $03
	inc  bc                                          ; $58d2: $03
	inc  bc                                          ; $58d3: $03
	dec  bc                                          ; $58d4: $0b
	dec  bc                                          ; $58d5: $0b
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
	dec  bc                                          ; $58e3: $0b
	dec  bc                                          ; $58e4: $0b
	dec  bc                                          ; $58e5: $0b
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
	dec  bc                                          ; $58f7: $0b
	dec  bc                                          ; $58f8: $0b
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
	nop                                              ; $5905: $00
	nop                                              ; $5906: $00
	dec  b                                           ; $5907: $05
	inc  h                                           ; $5908: $24
	dec  h                                           ; $5909: $25
	ld   h, $09                                      ; $590a: $26 $09
	ld   a, [bc]                                     ; $590c: $0a
	nop                                              ; $590d: $00
	nop                                              ; $590e: $00
	dec  bc                                          ; $590f: $0b
	inc  c                                           ; $5910: $0c
	dec  c                                           ; $5911: $0d
	ld   c, $00                                      ; $5912: $0e $00
	nop                                              ; $5914: $00
	rrca                                             ; $5915: $0f
	db   $10                                         ; $5916: $10
	ld   de, $1312                                   ; $5917: $11 $12 $13
	inc  d                                           ; $591a: $14
	dec  d                                           ; $591b: $15
	ld   d, $27                                      ; $591c: $16 $27
	jr   z, @+$1b                                    ; $591e: $28 $19

	ld   a, [de]                                     ; $5920: $1a
	dec  de                                          ; $5921: $1b
	inc  e                                           ; $5922: $1c
	dec  e                                           ; $5923: $1d
	ld   e, $1f                                      ; $5924: $1e $1f
	jr   nz, jr_083_5928                             ; $5926: $20 $00

jr_083_5928:
	nop                                              ; $5928: $00
	ld   hl, $2322                                   ; $5929: $21 $22 $23
	ld   [de], a                                     ; $592c: $12
	inc  h                                           ; $592d: $24
	dec  h                                           ; $592e: $25
	ld   h, $27                                      ; $592f: $26 $27
	add  hl, hl                                      ; $5931: $29
	ld   a, [hl+]                                    ; $5932: $2a
	ld   a, [hl+]                                    ; $5933: $2a
	dec  hl                                          ; $5934: $2b
	inc  l                                           ; $5935: $2c
	dec  l                                           ; $5936: $2d
	dec  e                                           ; $5937: $1d
	ld   l, $2f                                      ; $5938: $2e $2f
	jr   nz, jr_083_593c                             ; $593a: $20 $00

jr_083_593c:
	nop                                              ; $593c: $00
	jr   nc, jr_083_5970                             ; $593d: $30 $31

	ld   [hl-], a                                    ; $593f: $32
	ld   [de], a                                     ; $5940: $12
	inc  sp                                          ; $5941: $33
	inc  [hl]                                        ; $5942: $34
	dec  [hl]                                        ; $5943: $35
	dec  hl                                          ; $5944: $2b
	inc  l                                           ; $5945: $2c
	dec  l                                           ; $5946: $2d
	add  hl, sp                                      ; $5947: $39
	ld   a, [hl-]                                    ; $5948: $3a
	dec  sp                                          ; $5949: $3b
	inc  a                                           ; $594a: $3c
	dec  e                                           ; $594b: $1d
	dec  a                                           ; $594c: $3d
	ld   a, $20                                      ; $594d: $3e $20
	nop                                              ; $594f: $00
	nop                                              ; $5950: $00
	ccf                                              ; $5951: $3f
	ld   b, b                                        ; $5952: $40
	ld   b, c                                        ; $5953: $41
	ld   [de], a                                     ; $5954: $12
	ld   b, d                                        ; $5955: $42
	ld   b, e                                        ; $5956: $43
	ld   b, h                                        ; $5957: $44
	ld   l, $2f                                      ; $5958: $2e $2f
	jr   nc, jr_083_59a4                             ; $595a: $30 $48

	ld   c, c                                        ; $595c: $49
	ld   c, d                                        ; $595d: $4a
	ld   c, e                                        ; $595e: $4b
	dec  e                                           ; $595f: $1d
	ld   c, h                                        ; $5960: $4c
	ld   c, l                                        ; $5961: $4d
	jr   nz, jr_083_5964                             ; $5962: $20 $00

jr_083_5964:
	nop                                              ; $5964: $00
	ld   c, [hl]                                     ; $5965: $4e
	ld   c, a                                        ; $5966: $4f
	ld   d, b                                        ; $5967: $50
	ld   d, c                                        ; $5968: $51
	ld   d, d                                        ; $5969: $52
	ld   d, e                                        ; $596a: $53
	ld   d, h                                        ; $596b: $54
	ld   d, l                                        ; $596c: $55
	ld   d, [hl]                                     ; $596d: $56
	ld   d, a                                        ; $596e: $57
	ld   e, b                                        ; $596f: $58

jr_083_5970:
	ld   e, c                                        ; $5970: $59
	ld   e, d                                        ; $5971: $5a
	ld   e, e                                        ; $5972: $5b
	dec  e                                           ; $5973: $1d
	ld   e, h                                        ; $5974: $5c
	ld   e, l                                        ; $5975: $5d
	jr   nz, jr_083_5978                             ; $5976: $20 $00

jr_083_5978:
	nop                                              ; $5978: $00
	ld   e, [hl]                                     ; $5979: $5e
	ld   e, a                                        ; $597a: $5f
	ld   h, b                                        ; $597b: $60
	ld   h, c                                        ; $597c: $61
	ld   h, d                                        ; $597d: $62
	ld   h, e                                        ; $597e: $63
	ld   h, h                                        ; $597f: $64
	ld   h, l                                        ; $5980: $65
	ld   h, [hl]                                     ; $5981: $66
	ld   h, a                                        ; $5982: $67
	ld   l, b                                        ; $5983: $68
	ld   l, c                                        ; $5984: $69
	ld   l, d                                        ; $5985: $6a
	ld   l, e                                        ; $5986: $6b
	ld   l, h                                        ; $5987: $6c
	ld   l, l                                        ; $5988: $6d
	ld   l, [hl]                                     ; $5989: $6e
	ld   l, a                                        ; $598a: $6f
	nop                                              ; $598b: $00
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
	nop                                              ; $599c: $00
	ld   bc, $0302                                   ; $599d: $01 $02 $03
	inc  b                                           ; $59a0: $04
	dec  b                                           ; $59a1: $05
	ld   b, $07                                      ; $59a2: $06 $07

jr_083_59a4:
	ld   [$0a09], sp                                 ; $59a4: $08 $09 $0a
	dec  bc                                          ; $59a7: $0b
	inc  c                                           ; $59a8: $0c
	dec  c                                           ; $59a9: $0d
	ld   c, $0f                                      ; $59aa: $0e $0f
	db   $10                                         ; $59ac: $10
	ld   de, $1312                                   ; $59ad: $11 $12 $13
	inc  d                                           ; $59b0: $14
	dec  d                                           ; $59b1: $15
	ld   d, $17                                      ; $59b2: $16 $17
	inc  b                                           ; $59b4: $04
	jr   jr_083_59d0                                 ; $59b5: $18 $19

	ld   a, [de]                                     ; $59b7: $1a
	dec  de                                          ; $59b8: $1b
	inc  e                                           ; $59b9: $1c
	dec  e                                           ; $59ba: $1d
	dec  e                                           ; $59bb: $1d
	dec  e                                           ; $59bc: $1d
	dec  e                                           ; $59bd: $1d
	dec  e                                           ; $59be: $1d
	dec  e                                           ; $59bf: $1d
	dec  e                                           ; $59c0: $1d
	dec  e                                           ; $59c1: $1d
	ld   e, $1f                                      ; $59c2: $1e $1f
	jr   nz, jr_083_59e7                             ; $59c4: $20 $21

	ld   [hl+], a                                    ; $59c6: $22
	inc  hl                                          ; $59c7: $23
	inc  bc                                          ; $59c8: $03
	inc  bc                                          ; $59c9: $03
	inc  bc                                          ; $59ca: $03
	inc  bc                                          ; $59cb: $03
	inc  bc                                          ; $59cc: $03
	inc  bc                                          ; $59cd: $03
	inc  bc                                          ; $59ce: $03
	inc  bc                                          ; $59cf: $03

jr_083_59d0:
	dec  bc                                          ; $59d0: $0b
	dec  bc                                          ; $59d1: $0b
	dec  bc                                          ; $59d2: $0b
	inc  bc                                          ; $59d3: $03
	inc  bc                                          ; $59d4: $03
	inc  bc                                          ; $59d5: $03
	inc  bc                                          ; $59d6: $03
	inc  bc                                          ; $59d7: $03
	inc  bc                                          ; $59d8: $03
	inc  bc                                          ; $59d9: $03
	inc  bc                                          ; $59da: $03
	inc  bc                                          ; $59db: $03
	inc  bc                                          ; $59dc: $03
	inc  bc                                          ; $59dd: $03
	inc  bc                                          ; $59de: $03
	inc  bc                                          ; $59df: $03
	inc  bc                                          ; $59e0: $03
	inc  bc                                          ; $59e1: $03
	inc  bc                                          ; $59e2: $03
	inc  bc                                          ; $59e3: $03
	inc  bc                                          ; $59e4: $03
	dec  bc                                          ; $59e5: $0b
	dec  bc                                          ; $59e6: $0b

jr_083_59e7:
	inc  bc                                          ; $59e7: $03
	inc  bc                                          ; $59e8: $03
	inc  bc                                          ; $59e9: $03
	inc  bc                                          ; $59ea: $03
	inc  bc                                          ; $59eb: $03
	inc  bc                                          ; $59ec: $03
	inc  bc                                          ; $59ed: $03
	inc  bc                                          ; $59ee: $03
	inc  bc                                          ; $59ef: $03
	inc  bc                                          ; $59f0: $03
	inc  bc                                          ; $59f1: $03
	inc  bc                                          ; $59f2: $03
	inc  bc                                          ; $59f3: $03
	inc  bc                                          ; $59f4: $03
	inc  bc                                          ; $59f5: $03
	inc  bc                                          ; $59f6: $03
	inc  bc                                          ; $59f7: $03
	inc  bc                                          ; $59f8: $03
	dec  bc                                          ; $59f9: $0b
	dec  bc                                          ; $59fa: $0b
	inc  bc                                          ; $59fb: $03
	inc  bc                                          ; $59fc: $03
	inc  bc                                          ; $59fd: $03
	inc  bc                                          ; $59fe: $03
	inc  bc                                          ; $59ff: $03
	inc  bc                                          ; $5a00: $03
	inc  bc                                          ; $5a01: $03
	inc  bc                                          ; $5a02: $03
	inc  bc                                          ; $5a03: $03
	inc  bc                                          ; $5a04: $03
	inc  bc                                          ; $5a05: $03
	inc  bc                                          ; $5a06: $03
	inc  bc                                          ; $5a07: $03
	inc  bc                                          ; $5a08: $03
	inc  bc                                          ; $5a09: $03
	inc  bc                                          ; $5a0a: $03
	inc  bc                                          ; $5a0b: $03
	dec  c                                           ; $5a0c: $0d
	dec  c                                           ; $5a0d: $0d
	dec  c                                           ; $5a0e: $0d
	inc  bc                                          ; $5a0f: $03
	inc  bc                                          ; $5a10: $03
	inc  bc                                          ; $5a11: $03
	inc  bc                                          ; $5a12: $03
	inc  bc                                          ; $5a13: $03
	inc  bc                                          ; $5a14: $03
	inc  bc                                          ; $5a15: $03
	inc  bc                                          ; $5a16: $03
	inc  bc                                          ; $5a17: $03
	inc  bc                                          ; $5a18: $03
	inc  bc                                          ; $5a19: $03
	inc  bc                                          ; $5a1a: $03
	inc  bc                                          ; $5a1b: $03
	inc  bc                                          ; $5a1c: $03
	inc  bc                                          ; $5a1d: $03
	inc  bc                                          ; $5a1e: $03
	inc  bc                                          ; $5a1f: $03
	dec  c                                           ; $5a20: $0d
	dec  c                                           ; $5a21: $0d
	dec  c                                           ; $5a22: $0d
	inc  bc                                          ; $5a23: $03
	inc  bc                                          ; $5a24: $03
	inc  bc                                          ; $5a25: $03
	inc  bc                                          ; $5a26: $03
	inc  bc                                          ; $5a27: $03
	inc  bc                                          ; $5a28: $03
	inc  bc                                          ; $5a29: $03
	inc  bc                                          ; $5a2a: $03
	inc  bc                                          ; $5a2b: $03
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
	inc  bc                                          ; $5a37: $03
	inc  bc                                          ; $5a38: $03
	inc  bc                                          ; $5a39: $03
	inc  bc                                          ; $5a3a: $03
	inc  bc                                          ; $5a3b: $03
	inc  bc                                          ; $5a3c: $03
	inc  bc                                          ; $5a3d: $03
	inc  bc                                          ; $5a3e: $03
	inc  bc                                          ; $5a3f: $03
	inc  bc                                          ; $5a40: $03
	inc  bc                                          ; $5a41: $03
	inc  bc                                          ; $5a42: $03
	inc  bc                                          ; $5a43: $03
	inc  bc                                          ; $5a44: $03
	inc  bc                                          ; $5a45: $03
	inc  bc                                          ; $5a46: $03
	inc  bc                                          ; $5a47: $03
	inc  bc                                          ; $5a48: $03
	inc  bc                                          ; $5a49: $03
	inc  bc                                          ; $5a4a: $03
	inc  bc                                          ; $5a4b: $03
	inc  bc                                          ; $5a4c: $03
	inc  bc                                          ; $5a4d: $03
	inc  bc                                          ; $5a4e: $03
	inc  bc                                          ; $5a4f: $03
	inc  bc                                          ; $5a50: $03
	inc  bc                                          ; $5a51: $03
	inc  bc                                          ; $5a52: $03
	inc  bc                                          ; $5a53: $03
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
	inc  bc                                          ; $5a5f: $03
	inc  bc                                          ; $5a60: $03
	inc  bc                                          ; $5a61: $03
	inc  bc                                          ; $5a62: $03
	inc  bc                                          ; $5a63: $03
	dec  bc                                          ; $5a64: $0b
	dec  bc                                          ; $5a65: $0b
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
	dec  bc                                          ; $5a73: $0b
	dec  bc                                          ; $5a74: $0b
	dec  bc                                          ; $5a75: $0b
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
	dec  bc                                          ; $5a87: $0b
	dec  bc                                          ; $5a88: $0b
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
	dec  b                                           ; $5a95: $05
	ld   b, $07                                      ; $5a96: $06 $07
	ld   [$0a09], sp                                 ; $5a98: $08 $09 $0a
	dec  bc                                          ; $5a9b: $0b
	inc  c                                           ; $5a9c: $0c
	dec  c                                           ; $5a9d: $0d
	ld   c, $0f                                      ; $5a9e: $0e $0f
	jr   nz, jr_083_5ac3                             ; $5aa0: $20 $21

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
	jr   nc, jr_083_5ae7                             ; $5ab4: $30 $31

	ld   [hl-], a                                    ; $5ab6: $32
	inc  sp                                          ; $5ab7: $33
	jr   nz, @+$23                                   ; $5ab8: $20 $21

	ld   [hl+], a                                    ; $5aba: $22
	inc  hl                                          ; $5abb: $23
	inc  h                                           ; $5abc: $24
	dec  h                                           ; $5abd: $25
	ld   h, $27                                      ; $5abe: $26 $27
	jr   z, jr_083_5aeb                              ; $5ac0: $28 $29

	ld   a, [hl+]                                    ; $5ac2: $2a

jr_083_5ac3:
	dec  hl                                          ; $5ac3: $2b
	inc  l                                           ; $5ac4: $2c
	dec  l                                           ; $5ac5: $2d
	ld   l, $2f                                      ; $5ac6: $2e $2f
	ld   b, b                                        ; $5ac8: $40
	ld   b, c                                        ; $5ac9: $41
	ld   b, d                                        ; $5aca: $42
	ld   b, e                                        ; $5acb: $43
	jr   nc, jr_083_5aff                             ; $5acc: $30 $31

	ld   [hl-], a                                    ; $5ace: $32
	inc  sp                                          ; $5acf: $33
	inc  [hl]                                        ; $5ad0: $34
	dec  [hl]                                        ; $5ad1: $35
	ld   [hl], $37                                   ; $5ad2: $36 $37
	jr   c, jr_083_5b0f                              ; $5ad4: $38 $39

	ld   a, [hl-]                                    ; $5ad6: $3a
	dec  sp                                          ; $5ad7: $3b
	inc  a                                           ; $5ad8: $3c
	dec  a                                           ; $5ad9: $3d
	ld   a, $3f                                      ; $5ada: $3e $3f
	inc  h                                           ; $5adc: $24
	dec  h                                           ; $5add: $25
	ld   h, $27                                      ; $5ade: $26 $27
	ld   b, b                                        ; $5ae0: $40
	ld   b, c                                        ; $5ae1: $41
	ld   b, d                                        ; $5ae2: $42
	ld   b, e                                        ; $5ae3: $43
	ld   b, h                                        ; $5ae4: $44
	ld   b, l                                        ; $5ae5: $45
	ld   b, [hl]                                     ; $5ae6: $46

jr_083_5ae7:
	ld   b, a                                        ; $5ae7: $47
	ld   c, b                                        ; $5ae8: $48
	ld   c, c                                        ; $5ae9: $49
	ld   c, d                                        ; $5aea: $4a

jr_083_5aeb:
	ld   c, e                                        ; $5aeb: $4b
	ld   c, h                                        ; $5aec: $4c
	ld   c, l                                        ; $5aed: $4d
	ld   c, [hl]                                     ; $5aee: $4e
	ld   c, a                                        ; $5aef: $4f
	inc  [hl]                                        ; $5af0: $34
	dec  [hl]                                        ; $5af1: $35
	ld   [hl], $37                                   ; $5af2: $36 $37
	ld   d, b                                        ; $5af4: $50
	ld   d, c                                        ; $5af5: $51
	ld   d, d                                        ; $5af6: $52
	ld   d, e                                        ; $5af7: $53
	ld   d, h                                        ; $5af8: $54
	ld   d, l                                        ; $5af9: $55
	ld   d, [hl]                                     ; $5afa: $56
	ld   d, a                                        ; $5afb: $57
	ld   e, b                                        ; $5afc: $58
	ld   e, c                                        ; $5afd: $59
	ld   e, d                                        ; $5afe: $5a

jr_083_5aff:
	ld   e, e                                        ; $5aff: $5b
	ld   e, h                                        ; $5b00: $5c
	ld   e, l                                        ; $5b01: $5d
	ld   e, [hl]                                     ; $5b02: $5e
	ld   e, a                                        ; $5b03: $5f
	ld   b, h                                        ; $5b04: $44
	ld   b, l                                        ; $5b05: $45
	ld   b, [hl]                                     ; $5b06: $46
	ld   b, a                                        ; $5b07: $47
	ld   h, b                                        ; $5b08: $60
	ld   h, c                                        ; $5b09: $61
	ld   h, d                                        ; $5b0a: $62
	ld   h, e                                        ; $5b0b: $63
	ld   h, h                                        ; $5b0c: $64
	ld   h, l                                        ; $5b0d: $65
	ld   h, [hl]                                     ; $5b0e: $66

jr_083_5b0f:
	ld   h, a                                        ; $5b0f: $67
	ld   l, b                                        ; $5b10: $68
	ld   l, c                                        ; $5b11: $69
	ld   l, d                                        ; $5b12: $6a
	ld   l, e                                        ; $5b13: $6b
	ld   l, h                                        ; $5b14: $6c
	ld   l, l                                        ; $5b15: $6d
	ld   l, [hl]                                     ; $5b16: $6e
	ld   l, a                                        ; $5b17: $6f
	jr   z, @+$2b                                    ; $5b18: $28 $29

	ld   a, [hl+]                                    ; $5b1a: $2a
	dec  hl                                          ; $5b1b: $2b
	ld   [hl], b                                     ; $5b1c: $70
	ld   [hl], c                                     ; $5b1d: $71
	ld   [hl], d                                     ; $5b1e: $72
	ld   [hl], e                                     ; $5b1f: $73
	ld   [hl], h                                     ; $5b20: $74
	ld   [hl], l                                     ; $5b21: $75
	halt                                             ; $5b22: $76
	ld   [hl], a                                     ; $5b23: $77
	ld   a, b                                        ; $5b24: $78
	ld   a, c                                        ; $5b25: $79
	ld   a, d                                        ; $5b26: $7a
	ld   a, e                                        ; $5b27: $7b
	ld   a, h                                        ; $5b28: $7c
	ld   a, l                                        ; $5b29: $7d
	ld   a, [hl]                                     ; $5b2a: $7e
	ld   a, a                                        ; $5b2b: $7f
	jr   c, jr_083_5b67                              ; $5b2c: $38 $39

	ld   a, [hl-]                                    ; $5b2e: $3a
	dec  sp                                          ; $5b2f: $3b
	nop                                              ; $5b30: $00
	ld   bc, $0302                                   ; $5b31: $01 $02 $03
	inc  b                                           ; $5b34: $04
	dec  b                                           ; $5b35: $05
	ld   b, $07                                      ; $5b36: $06 $07
	ld   [$0a09], sp                                 ; $5b38: $08 $09 $0a
	dec  bc                                          ; $5b3b: $0b
	inc  c                                           ; $5b3c: $0c
	dec  c                                           ; $5b3d: $0d
	ld   c, $0f                                      ; $5b3e: $0e $0f
	inc  l                                           ; $5b40: $2c
	dec  l                                           ; $5b41: $2d
	ld   l, $2f                                      ; $5b42: $2e $2f
	db   $10                                         ; $5b44: $10
	ld   de, $1312                                   ; $5b45: $11 $12 $13
	inc  d                                           ; $5b48: $14
	dec  d                                           ; $5b49: $15
	ld   d, $17                                      ; $5b4a: $16 $17
	jr   jr_083_5b67                                 ; $5b4c: $18 $19

	ld   a, [de]                                     ; $5b4e: $1a
	dec  de                                          ; $5b4f: $1b
	inc  e                                           ; $5b50: $1c
	dec  e                                           ; $5b51: $1d
	ld   e, $1f                                      ; $5b52: $1e $1f
	inc  a                                           ; $5b54: $3c
	dec  a                                           ; $5b55: $3d
	ld   a, $3f                                      ; $5b56: $3e $3f
	inc  bc                                          ; $5b58: $03
	inc  bc                                          ; $5b59: $03
	inc  bc                                          ; $5b5a: $03
	inc  bc                                          ; $5b5b: $03
	inc  bc                                          ; $5b5c: $03
	inc  bc                                          ; $5b5d: $03
	inc  bc                                          ; $5b5e: $03
	inc  bc                                          ; $5b5f: $03
	inc  bc                                          ; $5b60: $03
	inc  bc                                          ; $5b61: $03
	inc  bc                                          ; $5b62: $03
	inc  bc                                          ; $5b63: $03
	inc  bc                                          ; $5b64: $03
	inc  bc                                          ; $5b65: $03
	inc  bc                                          ; $5b66: $03

jr_083_5b67:
	inc  bc                                          ; $5b67: $03
	dec  bc                                          ; $5b68: $0b
	dec  bc                                          ; $5b69: $0b
	dec  bc                                          ; $5b6a: $0b
	dec  bc                                          ; $5b6b: $0b
	inc  bc                                          ; $5b6c: $03
	inc  bc                                          ; $5b6d: $03
	inc  bc                                          ; $5b6e: $03
	inc  bc                                          ; $5b6f: $03
	inc  bc                                          ; $5b70: $03
	inc  bc                                          ; $5b71: $03
	inc  bc                                          ; $5b72: $03
	inc  bc                                          ; $5b73: $03
	inc  bc                                          ; $5b74: $03
	inc  bc                                          ; $5b75: $03
	inc  bc                                          ; $5b76: $03
	inc  bc                                          ; $5b77: $03
	inc  bc                                          ; $5b78: $03
	inc  bc                                          ; $5b79: $03
	inc  bc                                          ; $5b7a: $03
	inc  bc                                          ; $5b7b: $03
	dec  bc                                          ; $5b7c: $0b
	dec  bc                                          ; $5b7d: $0b
	dec  bc                                          ; $5b7e: $0b
	dec  bc                                          ; $5b7f: $0b
	inc  bc                                          ; $5b80: $03
	inc  bc                                          ; $5b81: $03
	inc  bc                                          ; $5b82: $03
	inc  bc                                          ; $5b83: $03
	inc  bc                                          ; $5b84: $03
	inc  bc                                          ; $5b85: $03
	inc  bc                                          ; $5b86: $03
	inc  bc                                          ; $5b87: $03
	inc  bc                                          ; $5b88: $03
	inc  bc                                          ; $5b89: $03
	inc  bc                                          ; $5b8a: $03
	inc  bc                                          ; $5b8b: $03
	inc  bc                                          ; $5b8c: $03
	inc  bc                                          ; $5b8d: $03
	inc  bc                                          ; $5b8e: $03
	inc  bc                                          ; $5b8f: $03
	dec  bc                                          ; $5b90: $0b
	dec  bc                                          ; $5b91: $0b
	dec  bc                                          ; $5b92: $0b
	dec  bc                                          ; $5b93: $0b
	inc  bc                                          ; $5b94: $03
	inc  bc                                          ; $5b95: $03
	inc  bc                                          ; $5b96: $03
	inc  bc                                          ; $5b97: $03
	inc  bc                                          ; $5b98: $03
	inc  bc                                          ; $5b99: $03
	inc  bc                                          ; $5b9a: $03
	inc  bc                                          ; $5b9b: $03
	inc  bc                                          ; $5b9c: $03
	inc  bc                                          ; $5b9d: $03
	inc  bc                                          ; $5b9e: $03
	inc  bc                                          ; $5b9f: $03
	inc  bc                                          ; $5ba0: $03
	inc  bc                                          ; $5ba1: $03
	inc  bc                                          ; $5ba2: $03
	inc  bc                                          ; $5ba3: $03
	dec  bc                                          ; $5ba4: $0b
	dec  bc                                          ; $5ba5: $0b
	dec  bc                                          ; $5ba6: $0b
	dec  bc                                          ; $5ba7: $0b
	inc  bc                                          ; $5ba8: $03
	inc  bc                                          ; $5ba9: $03
	inc  bc                                          ; $5baa: $03
	inc  bc                                          ; $5bab: $03
	inc  bc                                          ; $5bac: $03
	inc  bc                                          ; $5bad: $03
	inc  bc                                          ; $5bae: $03
	inc  bc                                          ; $5baf: $03
	inc  bc                                          ; $5bb0: $03
	inc  bc                                          ; $5bb1: $03
	inc  bc                                          ; $5bb2: $03
	inc  bc                                          ; $5bb3: $03
	inc  bc                                          ; $5bb4: $03
	inc  bc                                          ; $5bb5: $03
	inc  bc                                          ; $5bb6: $03
	inc  bc                                          ; $5bb7: $03
	dec  bc                                          ; $5bb8: $0b
	dec  bc                                          ; $5bb9: $0b
	dec  bc                                          ; $5bba: $0b
	dec  bc                                          ; $5bbb: $0b
	inc  bc                                          ; $5bbc: $03
	inc  bc                                          ; $5bbd: $03
	inc  bc                                          ; $5bbe: $03
	inc  bc                                          ; $5bbf: $03
	inc  bc                                          ; $5bc0: $03
	inc  bc                                          ; $5bc1: $03
	inc  bc                                          ; $5bc2: $03
	inc  bc                                          ; $5bc3: $03
	inc  bc                                          ; $5bc4: $03
	inc  bc                                          ; $5bc5: $03
	inc  bc                                          ; $5bc6: $03
	inc  bc                                          ; $5bc7: $03
	inc  bc                                          ; $5bc8: $03
	inc  bc                                          ; $5bc9: $03
	inc  bc                                          ; $5bca: $03
	inc  bc                                          ; $5bcb: $03
	dec  bc                                          ; $5bcc: $0b
	dec  bc                                          ; $5bcd: $0b
	dec  bc                                          ; $5bce: $0b
	dec  bc                                          ; $5bcf: $0b
	inc  bc                                          ; $5bd0: $03
	inc  bc                                          ; $5bd1: $03
	inc  bc                                          ; $5bd2: $03
	inc  bc                                          ; $5bd3: $03
	inc  bc                                          ; $5bd4: $03
	inc  bc                                          ; $5bd5: $03
	inc  bc                                          ; $5bd6: $03
	inc  bc                                          ; $5bd7: $03
	inc  bc                                          ; $5bd8: $03
	inc  bc                                          ; $5bd9: $03
	inc  bc                                          ; $5bda: $03
	inc  bc                                          ; $5bdb: $03
	inc  bc                                          ; $5bdc: $03
	inc  bc                                          ; $5bdd: $03
	inc  bc                                          ; $5bde: $03
	inc  bc                                          ; $5bdf: $03
	dec  bc                                          ; $5be0: $0b
	dec  bc                                          ; $5be1: $0b
	dec  bc                                          ; $5be2: $0b
	dec  bc                                          ; $5be3: $0b
	inc  bc                                          ; $5be4: $03
	inc  bc                                          ; $5be5: $03
	inc  bc                                          ; $5be6: $03
	inc  bc                                          ; $5be7: $03
	inc  bc                                          ; $5be8: $03
	inc  bc                                          ; $5be9: $03
	inc  bc                                          ; $5bea: $03
	inc  bc                                          ; $5beb: $03
	inc  bc                                          ; $5bec: $03
	inc  bc                                          ; $5bed: $03
	inc  bc                                          ; $5bee: $03
	inc  bc                                          ; $5bef: $03
	inc  bc                                          ; $5bf0: $03
	inc  bc                                          ; $5bf1: $03
	inc  bc                                          ; $5bf2: $03
	inc  bc                                          ; $5bf3: $03
	dec  bc                                          ; $5bf4: $0b
	dec  bc                                          ; $5bf5: $0b
	dec  bc                                          ; $5bf6: $0b
	dec  bc                                          ; $5bf7: $0b
	dec  bc                                          ; $5bf8: $0b
	dec  bc                                          ; $5bf9: $0b
	dec  bc                                          ; $5bfa: $0b
	dec  bc                                          ; $5bfb: $0b
	dec  bc                                          ; $5bfc: $0b
	dec  bc                                          ; $5bfd: $0b
	dec  bc                                          ; $5bfe: $0b
	dec  bc                                          ; $5bff: $0b
	dec  bc                                          ; $5c00: $0b
	dec  bc                                          ; $5c01: $0b
	dec  bc                                          ; $5c02: $0b
	dec  bc                                          ; $5c03: $0b
	dec  bc                                          ; $5c04: $0b
	dec  bc                                          ; $5c05: $0b
	dec  bc                                          ; $5c06: $0b
	dec  bc                                          ; $5c07: $0b
	dec  bc                                          ; $5c08: $0b
	dec  bc                                          ; $5c09: $0b
	dec  bc                                          ; $5c0a: $0b
	dec  bc                                          ; $5c0b: $0b
	dec  bc                                          ; $5c0c: $0b
	dec  bc                                          ; $5c0d: $0b
	dec  bc                                          ; $5c0e: $0b
	dec  bc                                          ; $5c0f: $0b
	dec  bc                                          ; $5c10: $0b
	dec  bc                                          ; $5c11: $0b
	dec  bc                                          ; $5c12: $0b
	dec  bc                                          ; $5c13: $0b
	dec  bc                                          ; $5c14: $0b
	dec  bc                                          ; $5c15: $0b
	dec  bc                                          ; $5c16: $0b
	dec  bc                                          ; $5c17: $0b
	dec  bc                                          ; $5c18: $0b
	dec  bc                                          ; $5c19: $0b
	dec  bc                                          ; $5c1a: $0b
	dec  bc                                          ; $5c1b: $0b
	dec  bc                                          ; $5c1c: $0b
	dec  bc                                          ; $5c1d: $0b
	dec  bc                                          ; $5c1e: $0b
	dec  bc                                          ; $5c1f: $0b
	nop                                              ; $5c20: $00
	ld   bc, $0302                                   ; $5c21: $01 $02 $03
	inc  b                                           ; $5c24: $04
	dec  b                                           ; $5c25: $05
	ld   b, $07                                      ; $5c26: $06 $07
	ld   [$0a09], sp                                 ; $5c28: $08 $09 $0a
	dec  bc                                          ; $5c2b: $0b
	inc  c                                           ; $5c2c: $0c
	dec  c                                           ; $5c2d: $0d
	ld   c, $0f                                      ; $5c2e: $0e $0f
	jr   nz, jr_083_5c53                             ; $5c30: $20 $21

	ld   [hl+], a                                    ; $5c32: $22
	inc  hl                                          ; $5c33: $23
	db   $10                                         ; $5c34: $10
	ld   de, $1312                                   ; $5c35: $11 $12 $13
	inc  d                                           ; $5c38: $14
	dec  d                                           ; $5c39: $15
	ld   d, $17                                      ; $5c3a: $16 $17
	jr   @+$1b                                       ; $5c3c: $18 $19

	ld   a, [de]                                     ; $5c3e: $1a
	dec  de                                          ; $5c3f: $1b
	inc  e                                           ; $5c40: $1c
	dec  e                                           ; $5c41: $1d
	ld   e, $1f                                      ; $5c42: $1e $1f
	jr   nc, jr_083_5c77                             ; $5c44: $30 $31

	ld   [hl-], a                                    ; $5c46: $32
	inc  sp                                          ; $5c47: $33
	jr   nz, @+$23                                   ; $5c48: $20 $21

	ld   [hl+], a                                    ; $5c4a: $22
	inc  hl                                          ; $5c4b: $23
	inc  h                                           ; $5c4c: $24
	dec  h                                           ; $5c4d: $25
	ld   h, $27                                      ; $5c4e: $26 $27
	jr   z, jr_083_5c7b                              ; $5c50: $28 $29

	ld   a, [hl+]                                    ; $5c52: $2a

jr_083_5c53:
	dec  hl                                          ; $5c53: $2b
	inc  l                                           ; $5c54: $2c
	dec  l                                           ; $5c55: $2d
	ld   l, $2f                                      ; $5c56: $2e $2f
	ld   b, b                                        ; $5c58: $40
	ld   b, c                                        ; $5c59: $41
	ld   b, d                                        ; $5c5a: $42
	ld   b, e                                        ; $5c5b: $43
	jr   nc, jr_083_5c8f                             ; $5c5c: $30 $31

	ld   [hl-], a                                    ; $5c5e: $32
	inc  sp                                          ; $5c5f: $33
	inc  [hl]                                        ; $5c60: $34
	dec  [hl]                                        ; $5c61: $35
	ld   [hl], $37                                   ; $5c62: $36 $37
	jr   c, jr_083_5c9f                              ; $5c64: $38 $39

	ld   a, [hl-]                                    ; $5c66: $3a
	dec  sp                                          ; $5c67: $3b
	inc  a                                           ; $5c68: $3c
	dec  a                                           ; $5c69: $3d
	ld   a, $3f                                      ; $5c6a: $3e $3f
	inc  h                                           ; $5c6c: $24
	dec  h                                           ; $5c6d: $25
	ld   h, $27                                      ; $5c6e: $26 $27
	ld   b, b                                        ; $5c70: $40
	ld   b, c                                        ; $5c71: $41
	ld   b, d                                        ; $5c72: $42
	ld   b, e                                        ; $5c73: $43
	ld   b, h                                        ; $5c74: $44
	ld   b, l                                        ; $5c75: $45
	ld   b, [hl]                                     ; $5c76: $46

jr_083_5c77:
	ld   b, a                                        ; $5c77: $47
	ld   c, b                                        ; $5c78: $48
	ld   c, c                                        ; $5c79: $49
	ld   c, d                                        ; $5c7a: $4a

jr_083_5c7b:
	ld   c, e                                        ; $5c7b: $4b
	ld   c, h                                        ; $5c7c: $4c
	ld   c, l                                        ; $5c7d: $4d
	ld   c, [hl]                                     ; $5c7e: $4e
	ld   c, a                                        ; $5c7f: $4f
	inc  [hl]                                        ; $5c80: $34
	dec  [hl]                                        ; $5c81: $35
	ld   [hl], $37                                   ; $5c82: $36 $37
	ld   d, b                                        ; $5c84: $50
	ld   d, c                                        ; $5c85: $51
	ld   d, d                                        ; $5c86: $52
	ld   d, e                                        ; $5c87: $53
	ld   d, h                                        ; $5c88: $54
	ld   d, l                                        ; $5c89: $55
	ld   d, [hl]                                     ; $5c8a: $56
	ld   d, a                                        ; $5c8b: $57
	ld   e, b                                        ; $5c8c: $58
	ld   e, c                                        ; $5c8d: $59
	ld   e, d                                        ; $5c8e: $5a

jr_083_5c8f:
	ld   e, e                                        ; $5c8f: $5b
	ld   e, h                                        ; $5c90: $5c
	ld   e, l                                        ; $5c91: $5d
	ld   e, [hl]                                     ; $5c92: $5e
	ld   e, a                                        ; $5c93: $5f
	ld   b, h                                        ; $5c94: $44
	ld   b, l                                        ; $5c95: $45
	ld   b, [hl]                                     ; $5c96: $46
	ld   b, a                                        ; $5c97: $47
	ld   h, b                                        ; $5c98: $60
	ld   h, c                                        ; $5c99: $61
	ld   h, d                                        ; $5c9a: $62
	ld   h, e                                        ; $5c9b: $63
	ld   h, h                                        ; $5c9c: $64
	ld   h, l                                        ; $5c9d: $65
	ld   h, [hl]                                     ; $5c9e: $66

jr_083_5c9f:
	ld   h, a                                        ; $5c9f: $67
	ld   l, b                                        ; $5ca0: $68
	ld   l, c                                        ; $5ca1: $69
	ld   l, d                                        ; $5ca2: $6a
	ld   l, e                                        ; $5ca3: $6b
	ld   l, h                                        ; $5ca4: $6c
	ld   l, l                                        ; $5ca5: $6d
	ld   l, [hl]                                     ; $5ca6: $6e
	ld   l, a                                        ; $5ca7: $6f
	jr   z, @+$2b                                    ; $5ca8: $28 $29

	ld   a, [hl+]                                    ; $5caa: $2a
	dec  hl                                          ; $5cab: $2b
	ld   [hl], b                                     ; $5cac: $70
	ld   [hl], c                                     ; $5cad: $71
	ld   [hl], d                                     ; $5cae: $72
	ld   [hl], e                                     ; $5caf: $73
	ld   [hl], h                                     ; $5cb0: $74
	ld   [hl], l                                     ; $5cb1: $75
	halt                                             ; $5cb2: $76
	ld   [hl], a                                     ; $5cb3: $77
	ld   a, b                                        ; $5cb4: $78
	ld   a, c                                        ; $5cb5: $79
	ld   a, d                                        ; $5cb6: $7a
	ld   a, e                                        ; $5cb7: $7b
	ld   a, h                                        ; $5cb8: $7c
	ld   a, l                                        ; $5cb9: $7d
	ld   a, [hl]                                     ; $5cba: $7e
	ld   a, a                                        ; $5cbb: $7f
	jr   c, jr_083_5cf7                              ; $5cbc: $38 $39

	ld   a, [hl-]                                    ; $5cbe: $3a
	dec  sp                                          ; $5cbf: $3b
	nop                                              ; $5cc0: $00
	ld   bc, $0302                                   ; $5cc1: $01 $02 $03
	inc  b                                           ; $5cc4: $04
	dec  b                                           ; $5cc5: $05
	ld   b, $07                                      ; $5cc6: $06 $07
	ld   [$0a09], sp                                 ; $5cc8: $08 $09 $0a
	dec  bc                                          ; $5ccb: $0b
	inc  c                                           ; $5ccc: $0c
	dec  c                                           ; $5ccd: $0d
	ld   c, $0f                                      ; $5cce: $0e $0f
	inc  l                                           ; $5cd0: $2c
	dec  l                                           ; $5cd1: $2d
	ld   l, $2f                                      ; $5cd2: $2e $2f
	db   $10                                         ; $5cd4: $10
	ld   de, $1312                                   ; $5cd5: $11 $12 $13
	inc  d                                           ; $5cd8: $14
	dec  d                                           ; $5cd9: $15
	ld   d, $17                                      ; $5cda: $16 $17
	jr   jr_083_5cf7                                 ; $5cdc: $18 $19

	ld   a, [de]                                     ; $5cde: $1a
	dec  de                                          ; $5cdf: $1b
	inc  e                                           ; $5ce0: $1c
	dec  e                                           ; $5ce1: $1d
	ld   e, $1f                                      ; $5ce2: $1e $1f
	inc  a                                           ; $5ce4: $3c
	dec  a                                           ; $5ce5: $3d
	ld   a, $3f                                      ; $5ce6: $3e $3f
	inc  bc                                          ; $5ce8: $03
	inc  bc                                          ; $5ce9: $03
	inc  bc                                          ; $5cea: $03
	inc  bc                                          ; $5ceb: $03
	inc  bc                                          ; $5cec: $03
	inc  bc                                          ; $5ced: $03
	inc  bc                                          ; $5cee: $03
	inc  bc                                          ; $5cef: $03
	inc  bc                                          ; $5cf0: $03
	inc  bc                                          ; $5cf1: $03
	inc  bc                                          ; $5cf2: $03
	inc  bc                                          ; $5cf3: $03
	inc  bc                                          ; $5cf4: $03
	inc  bc                                          ; $5cf5: $03
	inc  bc                                          ; $5cf6: $03

jr_083_5cf7:
	inc  bc                                          ; $5cf7: $03
	dec  bc                                          ; $5cf8: $0b
	dec  bc                                          ; $5cf9: $0b
	dec  bc                                          ; $5cfa: $0b
	dec  bc                                          ; $5cfb: $0b
	inc  bc                                          ; $5cfc: $03
	inc  bc                                          ; $5cfd: $03
	inc  bc                                          ; $5cfe: $03
	inc  bc                                          ; $5cff: $03
	inc  bc                                          ; $5d00: $03
	inc  bc                                          ; $5d01: $03
	inc  bc                                          ; $5d02: $03
	inc  bc                                          ; $5d03: $03
	inc  bc                                          ; $5d04: $03
	inc  bc                                          ; $5d05: $03
	inc  bc                                          ; $5d06: $03
	inc  bc                                          ; $5d07: $03
	inc  bc                                          ; $5d08: $03
	inc  bc                                          ; $5d09: $03
	inc  bc                                          ; $5d0a: $03
	inc  bc                                          ; $5d0b: $03
	dec  bc                                          ; $5d0c: $0b
	dec  bc                                          ; $5d0d: $0b
	dec  bc                                          ; $5d0e: $0b
	dec  bc                                          ; $5d0f: $0b
	inc  bc                                          ; $5d10: $03
	inc  bc                                          ; $5d11: $03
	inc  bc                                          ; $5d12: $03
	inc  bc                                          ; $5d13: $03
	inc  bc                                          ; $5d14: $03
	inc  bc                                          ; $5d15: $03
	inc  bc                                          ; $5d16: $03
	inc  bc                                          ; $5d17: $03
	inc  bc                                          ; $5d18: $03
	inc  bc                                          ; $5d19: $03
	inc  bc                                          ; $5d1a: $03
	inc  bc                                          ; $5d1b: $03
	inc  bc                                          ; $5d1c: $03
	inc  bc                                          ; $5d1d: $03
	inc  bc                                          ; $5d1e: $03
	inc  bc                                          ; $5d1f: $03
	dec  bc                                          ; $5d20: $0b
	dec  bc                                          ; $5d21: $0b
	dec  bc                                          ; $5d22: $0b
	dec  bc                                          ; $5d23: $0b
	inc  bc                                          ; $5d24: $03
	inc  bc                                          ; $5d25: $03
	inc  bc                                          ; $5d26: $03
	inc  bc                                          ; $5d27: $03
	inc  bc                                          ; $5d28: $03
	inc  bc                                          ; $5d29: $03
	inc  bc                                          ; $5d2a: $03
	inc  bc                                          ; $5d2b: $03
	inc  bc                                          ; $5d2c: $03
	inc  bc                                          ; $5d2d: $03
	inc  bc                                          ; $5d2e: $03
	inc  bc                                          ; $5d2f: $03
	inc  bc                                          ; $5d30: $03
	inc  bc                                          ; $5d31: $03
	inc  bc                                          ; $5d32: $03
	inc  bc                                          ; $5d33: $03
	dec  bc                                          ; $5d34: $0b
	dec  bc                                          ; $5d35: $0b
	dec  bc                                          ; $5d36: $0b
	dec  bc                                          ; $5d37: $0b
	inc  bc                                          ; $5d38: $03
	inc  bc                                          ; $5d39: $03
	inc  bc                                          ; $5d3a: $03
	inc  bc                                          ; $5d3b: $03
	inc  bc                                          ; $5d3c: $03
	inc  bc                                          ; $5d3d: $03
	inc  bc                                          ; $5d3e: $03
	inc  bc                                          ; $5d3f: $03
	inc  bc                                          ; $5d40: $03
	inc  bc                                          ; $5d41: $03
	inc  bc                                          ; $5d42: $03
	inc  bc                                          ; $5d43: $03
	inc  bc                                          ; $5d44: $03
	inc  bc                                          ; $5d45: $03
	inc  bc                                          ; $5d46: $03
	inc  bc                                          ; $5d47: $03
	dec  bc                                          ; $5d48: $0b
	dec  bc                                          ; $5d49: $0b
	dec  bc                                          ; $5d4a: $0b
	dec  bc                                          ; $5d4b: $0b
	inc  bc                                          ; $5d4c: $03
	inc  bc                                          ; $5d4d: $03
	inc  bc                                          ; $5d4e: $03
	inc  b                                           ; $5d4f: $04
	inc  b                                           ; $5d50: $04
	inc  bc                                          ; $5d51: $03
	inc  bc                                          ; $5d52: $03
	inc  bc                                          ; $5d53: $03
	inc  bc                                          ; $5d54: $03
	inc  bc                                          ; $5d55: $03
	inc  bc                                          ; $5d56: $03
	inc  bc                                          ; $5d57: $03
	inc  bc                                          ; $5d58: $03
	inc  b                                           ; $5d59: $04
	inc  b                                           ; $5d5a: $04
	inc  bc                                          ; $5d5b: $03
	dec  bc                                          ; $5d5c: $0b
	dec  bc                                          ; $5d5d: $0b
	dec  bc                                          ; $5d5e: $0b
	dec  bc                                          ; $5d5f: $0b
	inc  bc                                          ; $5d60: $03
	inc  b                                           ; $5d61: $04
	inc  b                                           ; $5d62: $04
	inc  bc                                          ; $5d63: $03
	inc  b                                           ; $5d64: $04
	inc  bc                                          ; $5d65: $03
	dec  b                                           ; $5d66: $05
	dec  b                                           ; $5d67: $05
	dec  b                                           ; $5d68: $05
	dec  b                                           ; $5d69: $05
	dec  b                                           ; $5d6a: $05
	dec  b                                           ; $5d6b: $05
	dec  b                                           ; $5d6c: $05
	inc  b                                           ; $5d6d: $04
	inc  b                                           ; $5d6e: $04
	inc  b                                           ; $5d6f: $04
	inc  c                                           ; $5d70: $0c
	dec  bc                                          ; $5d71: $0b
	dec  bc                                          ; $5d72: $0b
	dec  bc                                          ; $5d73: $0b
	inc  bc                                          ; $5d74: $03
	inc  b                                           ; $5d75: $04
	inc  b                                           ; $5d76: $04
	inc  b                                           ; $5d77: $04
	inc  bc                                          ; $5d78: $03
	dec  b                                           ; $5d79: $05
	dec  b                                           ; $5d7a: $05
	dec  b                                           ; $5d7b: $05
	dec  b                                           ; $5d7c: $05
	dec  b                                           ; $5d7d: $05
	dec  b                                           ; $5d7e: $05
	dec  b                                           ; $5d7f: $05
	dec  b                                           ; $5d80: $05
	dec  b                                           ; $5d81: $05
	inc  bc                                          ; $5d82: $03
	inc  b                                           ; $5d83: $04
	inc  c                                           ; $5d84: $0c
	dec  bc                                          ; $5d85: $0b
	inc  c                                           ; $5d86: $0c
	inc  c                                           ; $5d87: $0c
	dec  bc                                          ; $5d88: $0b
	dec  bc                                          ; $5d89: $0b
	inc  c                                           ; $5d8a: $0c
	dec  bc                                          ; $5d8b: $0b
	dec  c                                           ; $5d8c: $0d
	dec  c                                           ; $5d8d: $0d
	dec  c                                           ; $5d8e: $0d
	dec  c                                           ; $5d8f: $0d
	dec  c                                           ; $5d90: $0d
	dec  c                                           ; $5d91: $0d
	dec  c                                           ; $5d92: $0d
	dec  c                                           ; $5d93: $0d
	dec  c                                           ; $5d94: $0d
	dec  c                                           ; $5d95: $0d
	dec  c                                           ; $5d96: $0d
	dec  bc                                          ; $5d97: $0b
	dec  bc                                          ; $5d98: $0b
	dec  bc                                          ; $5d99: $0b
	inc  c                                           ; $5d9a: $0c
	inc  c                                           ; $5d9b: $0c
	dec  bc                                          ; $5d9c: $0b
	dec  bc                                          ; $5d9d: $0b
	dec  bc                                          ; $5d9e: $0b
	dec  c                                           ; $5d9f: $0d
	dec  c                                           ; $5da0: $0d
	dec  c                                           ; $5da1: $0d
	dec  c                                           ; $5da2: $0d
	dec  c                                           ; $5da3: $0d
	dec  c                                           ; $5da4: $0d
	dec  c                                           ; $5da5: $0d
	dec  c                                           ; $5da6: $0d
	dec  c                                           ; $5da7: $0d
	dec  c                                           ; $5da8: $0d
	dec  c                                           ; $5da9: $0d
	dec  c                                           ; $5daa: $0d
	dec  c                                           ; $5dab: $0d
	dec  bc                                          ; $5dac: $0b
	inc  c                                           ; $5dad: $0c
	inc  c                                           ; $5dae: $0c
	inc  c                                           ; $5daf: $0c
	nop                                              ; $5db0: $00
	ld   bc, $0302                                   ; $5db1: $01 $02 $03
	inc  b                                           ; $5db4: $04
	dec  b                                           ; $5db5: $05
	ld   b, $07                                      ; $5db6: $06 $07
	ld   [$0a09], sp                                 ; $5db8: $08 $09 $0a
	dec  bc                                          ; $5dbb: $0b
	inc  c                                           ; $5dbc: $0c
	dec  c                                           ; $5dbd: $0d
	ld   c, $0f                                      ; $5dbe: $0e $0f
	jr   nz, jr_083_5de3                             ; $5dc0: $20 $21

	ld   [hl+], a                                    ; $5dc2: $22
	inc  hl                                          ; $5dc3: $23
	db   $10                                         ; $5dc4: $10
	ld   de, $1312                                   ; $5dc5: $11 $12 $13
	inc  d                                           ; $5dc8: $14
	dec  d                                           ; $5dc9: $15
	ld   d, $17                                      ; $5dca: $16 $17
	jr   @+$1b                                       ; $5dcc: $18 $19

	ld   a, [de]                                     ; $5dce: $1a
	dec  de                                          ; $5dcf: $1b
	inc  e                                           ; $5dd0: $1c
	dec  e                                           ; $5dd1: $1d
	ld   e, $1f                                      ; $5dd2: $1e $1f
	jr   nc, jr_083_5e07                             ; $5dd4: $30 $31

	ld   [hl-], a                                    ; $5dd6: $32
	inc  sp                                          ; $5dd7: $33
	jr   nz, @+$23                                   ; $5dd8: $20 $21

	ld   [hl+], a                                    ; $5dda: $22
	inc  hl                                          ; $5ddb: $23
	inc  h                                           ; $5ddc: $24
	dec  h                                           ; $5ddd: $25
	ld   h, $27                                      ; $5dde: $26 $27
	jr   z, jr_083_5e0b                              ; $5de0: $28 $29

	ld   a, [hl+]                                    ; $5de2: $2a

jr_083_5de3:
	dec  hl                                          ; $5de3: $2b
	inc  l                                           ; $5de4: $2c
	dec  l                                           ; $5de5: $2d
	ld   l, $2f                                      ; $5de6: $2e $2f
	ld   b, b                                        ; $5de8: $40
	ld   b, c                                        ; $5de9: $41
	ld   b, d                                        ; $5dea: $42
	ld   b, e                                        ; $5deb: $43
	jr   nc, jr_083_5e1f                             ; $5dec: $30 $31

	ld   [hl-], a                                    ; $5dee: $32
	inc  sp                                          ; $5def: $33
	inc  [hl]                                        ; $5df0: $34
	dec  [hl]                                        ; $5df1: $35
	ld   [hl], $37                                   ; $5df2: $36 $37
	jr   c, jr_083_5e2f                              ; $5df4: $38 $39

	ld   a, [hl-]                                    ; $5df6: $3a
	dec  sp                                          ; $5df7: $3b
	inc  a                                           ; $5df8: $3c
	dec  a                                           ; $5df9: $3d
	ld   a, $3f                                      ; $5dfa: $3e $3f
	inc  h                                           ; $5dfc: $24
	dec  h                                           ; $5dfd: $25
	ld   h, $27                                      ; $5dfe: $26 $27
	ld   b, b                                        ; $5e00: $40
	ld   b, c                                        ; $5e01: $41
	ld   b, d                                        ; $5e02: $42
	ld   b, e                                        ; $5e03: $43
	ld   b, h                                        ; $5e04: $44
	ld   b, l                                        ; $5e05: $45
	ld   b, [hl]                                     ; $5e06: $46

jr_083_5e07:
	ld   b, a                                        ; $5e07: $47
	ld   c, b                                        ; $5e08: $48
	ld   c, c                                        ; $5e09: $49
	ld   c, d                                        ; $5e0a: $4a

jr_083_5e0b:
	ld   c, e                                        ; $5e0b: $4b
	ld   c, h                                        ; $5e0c: $4c
	ld   c, l                                        ; $5e0d: $4d
	ld   c, [hl]                                     ; $5e0e: $4e
	ld   c, a                                        ; $5e0f: $4f
	inc  [hl]                                        ; $5e10: $34
	dec  [hl]                                        ; $5e11: $35
	ld   [hl], $37                                   ; $5e12: $36 $37
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

jr_083_5e1f:
	ld   e, e                                        ; $5e1f: $5b
	ld   e, h                                        ; $5e20: $5c
	ld   e, l                                        ; $5e21: $5d
	ld   e, [hl]                                     ; $5e22: $5e
	ld   e, a                                        ; $5e23: $5f
	ld   b, h                                        ; $5e24: $44
	ld   b, l                                        ; $5e25: $45
	ld   b, [hl]                                     ; $5e26: $46
	ld   b, a                                        ; $5e27: $47
	ld   h, b                                        ; $5e28: $60
	ld   h, c                                        ; $5e29: $61
	ld   h, d                                        ; $5e2a: $62
	ld   h, e                                        ; $5e2b: $63
	ld   h, h                                        ; $5e2c: $64
	ld   h, l                                        ; $5e2d: $65
	ld   h, [hl]                                     ; $5e2e: $66

jr_083_5e2f:
	ld   h, a                                        ; $5e2f: $67
	ld   l, b                                        ; $5e30: $68
	ld   l, c                                        ; $5e31: $69
	ld   l, d                                        ; $5e32: $6a
	ld   l, e                                        ; $5e33: $6b
	ld   l, h                                        ; $5e34: $6c
	ld   l, l                                        ; $5e35: $6d
	ld   l, [hl]                                     ; $5e36: $6e
	ld   l, a                                        ; $5e37: $6f
	jr   z, @+$2b                                    ; $5e38: $28 $29

	ld   a, [hl+]                                    ; $5e3a: $2a
	dec  hl                                          ; $5e3b: $2b
	ld   [hl], b                                     ; $5e3c: $70
	ld   [hl], c                                     ; $5e3d: $71
	ld   [hl], d                                     ; $5e3e: $72
	ld   [hl], e                                     ; $5e3f: $73
	ld   [hl], h                                     ; $5e40: $74
	ld   [hl], l                                     ; $5e41: $75
	halt                                             ; $5e42: $76
	ld   [hl], a                                     ; $5e43: $77
	ld   a, b                                        ; $5e44: $78
	ld   a, c                                        ; $5e45: $79
	ld   a, d                                        ; $5e46: $7a
	ld   a, e                                        ; $5e47: $7b
	ld   a, h                                        ; $5e48: $7c
	ld   a, l                                        ; $5e49: $7d
	ld   a, [hl]                                     ; $5e4a: $7e
	ld   a, a                                        ; $5e4b: $7f
	jr   c, jr_083_5e87                              ; $5e4c: $38 $39

	ld   a, [hl-]                                    ; $5e4e: $3a
	dec  sp                                          ; $5e4f: $3b
	nop                                              ; $5e50: $00
	ld   bc, $0302                                   ; $5e51: $01 $02 $03
	inc  b                                           ; $5e54: $04
	dec  b                                           ; $5e55: $05
	ld   b, $07                                      ; $5e56: $06 $07
	ld   [$0a09], sp                                 ; $5e58: $08 $09 $0a
	dec  bc                                          ; $5e5b: $0b
	inc  c                                           ; $5e5c: $0c
	dec  c                                           ; $5e5d: $0d
	ld   c, $0f                                      ; $5e5e: $0e $0f
	inc  l                                           ; $5e60: $2c
	dec  l                                           ; $5e61: $2d
	ld   l, $2f                                      ; $5e62: $2e $2f
	db   $10                                         ; $5e64: $10
	ld   de, $1312                                   ; $5e65: $11 $12 $13
	inc  d                                           ; $5e68: $14
	dec  d                                           ; $5e69: $15
	ld   d, $17                                      ; $5e6a: $16 $17
	jr   jr_083_5e87                                 ; $5e6c: $18 $19

	ld   a, [de]                                     ; $5e6e: $1a
	dec  de                                          ; $5e6f: $1b
	inc  e                                           ; $5e70: $1c
	dec  e                                           ; $5e71: $1d
	ld   e, $1f                                      ; $5e72: $1e $1f
	inc  a                                           ; $5e74: $3c
	dec  a                                           ; $5e75: $3d
	ld   a, $3f                                      ; $5e76: $3e $3f
	inc  bc                                          ; $5e78: $03
	inc  bc                                          ; $5e79: $03
	inc  b                                           ; $5e7a: $04
	inc  b                                           ; $5e7b: $04
	inc  b                                           ; $5e7c: $04
	inc  b                                           ; $5e7d: $04
	inc  bc                                          ; $5e7e: $03
	inc  bc                                          ; $5e7f: $03
	inc  b                                           ; $5e80: $04
	inc  b                                           ; $5e81: $04
	inc  b                                           ; $5e82: $04
	inc  bc                                          ; $5e83: $03
	inc  bc                                          ; $5e84: $03
	inc  bc                                          ; $5e85: $03
	inc  bc                                          ; $5e86: $03

jr_083_5e87:
	inc  bc                                          ; $5e87: $03
	dec  bc                                          ; $5e88: $0b
	dec  bc                                          ; $5e89: $0b
	dec  bc                                          ; $5e8a: $0b
	dec  bc                                          ; $5e8b: $0b
	inc  bc                                          ; $5e8c: $03
	inc  bc                                          ; $5e8d: $03
	inc  b                                           ; $5e8e: $04
	inc  b                                           ; $5e8f: $04
	inc  b                                           ; $5e90: $04
	inc  bc                                          ; $5e91: $03
	inc  bc                                          ; $5e92: $03
	inc  bc                                          ; $5e93: $03
	inc  b                                           ; $5e94: $04
	inc  b                                           ; $5e95: $04
	inc  b                                           ; $5e96: $04
	inc  b                                           ; $5e97: $04
	inc  bc                                          ; $5e98: $03
	inc  bc                                          ; $5e99: $03
	inc  bc                                          ; $5e9a: $03
	inc  bc                                          ; $5e9b: $03
	inc  c                                           ; $5e9c: $0c
	inc  c                                           ; $5e9d: $0c
	dec  bc                                          ; $5e9e: $0b
	dec  bc                                          ; $5e9f: $0b
	inc  bc                                          ; $5ea0: $03
	inc  bc                                          ; $5ea1: $03
	inc  bc                                          ; $5ea2: $03
	inc  bc                                          ; $5ea3: $03
	inc  b                                           ; $5ea4: $04
	inc  bc                                          ; $5ea5: $03
	inc  bc                                          ; $5ea6: $03
	inc  b                                           ; $5ea7: $04
	inc  b                                           ; $5ea8: $04
	inc  b                                           ; $5ea9: $04
	inc  b                                           ; $5eaa: $04
	inc  b                                           ; $5eab: $04
	inc  b                                           ; $5eac: $04
	inc  bc                                          ; $5ead: $03
	inc  bc                                          ; $5eae: $03
	inc  bc                                          ; $5eaf: $03
	inc  c                                           ; $5eb0: $0c
	dec  bc                                          ; $5eb1: $0b
	dec  bc                                          ; $5eb2: $0b
	dec  bc                                          ; $5eb3: $0b
	inc  bc                                          ; $5eb4: $03
	inc  bc                                          ; $5eb5: $03
	inc  bc                                          ; $5eb6: $03
	inc  bc                                          ; $5eb7: $03
	dec  b                                           ; $5eb8: $05
	inc  bc                                          ; $5eb9: $03
	inc  bc                                          ; $5eba: $03
	dec  b                                           ; $5ebb: $05
	inc  b                                           ; $5ebc: $04
	inc  b                                           ; $5ebd: $04
	inc  b                                           ; $5ebe: $04
	inc  b                                           ; $5ebf: $04
	dec  b                                           ; $5ec0: $05
	inc  bc                                          ; $5ec1: $03
	inc  bc                                          ; $5ec2: $03
	inc  bc                                          ; $5ec3: $03
	inc  c                                           ; $5ec4: $0c
	dec  bc                                          ; $5ec5: $0b
	dec  bc                                          ; $5ec6: $0b
	dec  bc                                          ; $5ec7: $0b
	inc  bc                                          ; $5ec8: $03
	inc  bc                                          ; $5ec9: $03
	inc  bc                                          ; $5eca: $03
	inc  bc                                          ; $5ecb: $03
	dec  b                                           ; $5ecc: $05
	inc  bc                                          ; $5ecd: $03
	inc  bc                                          ; $5ece: $03
	dec  b                                           ; $5ecf: $05
	inc  b                                           ; $5ed0: $04
	inc  b                                           ; $5ed1: $04
	inc  b                                           ; $5ed2: $04
	inc  b                                           ; $5ed3: $04
	inc  b                                           ; $5ed4: $04
	inc  bc                                          ; $5ed5: $03
	inc  bc                                          ; $5ed6: $03
	inc  bc                                          ; $5ed7: $03
	inc  c                                           ; $5ed8: $0c
	dec  bc                                          ; $5ed9: $0b
	dec  bc                                          ; $5eda: $0b
	dec  bc                                          ; $5edb: $0b
	inc  bc                                          ; $5edc: $03
	inc  bc                                          ; $5edd: $03
	inc  b                                           ; $5ede: $04
	inc  b                                           ; $5edf: $04
	inc  b                                           ; $5ee0: $04
	dec  b                                           ; $5ee1: $05
	dec  b                                           ; $5ee2: $05
	inc  b                                           ; $5ee3: $04
	inc  b                                           ; $5ee4: $04
	dec  b                                           ; $5ee5: $05
	dec  b                                           ; $5ee6: $05
	inc  b                                           ; $5ee7: $04
	inc  b                                           ; $5ee8: $04
	inc  b                                           ; $5ee9: $04
	inc  b                                           ; $5eea: $04
	inc  b                                           ; $5eeb: $04
	inc  c                                           ; $5eec: $0c
	inc  c                                           ; $5eed: $0c
	dec  bc                                          ; $5eee: $0b
	dec  bc                                          ; $5eef: $0b
	inc  b                                           ; $5ef0: $04
	dec  b                                           ; $5ef1: $05
	inc  b                                           ; $5ef2: $04
	inc  b                                           ; $5ef3: $04
	inc  b                                           ; $5ef4: $04
	inc  b                                           ; $5ef5: $04
	inc  b                                           ; $5ef6: $04
	inc  b                                           ; $5ef7: $04
	inc  b                                           ; $5ef8: $04
	dec  b                                           ; $5ef9: $05
	dec  b                                           ; $5efa: $05
	inc  b                                           ; $5efb: $04
	inc  b                                           ; $5efc: $04
	inc  b                                           ; $5efd: $04
	inc  b                                           ; $5efe: $04
	inc  b                                           ; $5eff: $04
	inc  c                                           ; $5f00: $0c
	inc  c                                           ; $5f01: $0c
	dec  bc                                          ; $5f02: $0b
	dec  bc                                          ; $5f03: $0b
	inc  bc                                          ; $5f04: $03
	dec  b                                           ; $5f05: $05
	dec  b                                           ; $5f06: $05
	dec  b                                           ; $5f07: $05
	dec  b                                           ; $5f08: $05
	inc  b                                           ; $5f09: $04
	inc  b                                           ; $5f0a: $04
	inc  b                                           ; $5f0b: $04
	inc  b                                           ; $5f0c: $04
	inc  b                                           ; $5f0d: $04
	inc  b                                           ; $5f0e: $04
	inc  b                                           ; $5f0f: $04
	inc  b                                           ; $5f10: $04
	dec  b                                           ; $5f11: $05
	dec  b                                           ; $5f12: $05
	dec  b                                           ; $5f13: $05
	inc  c                                           ; $5f14: $0c
	dec  c                                           ; $5f15: $0d
	dec  bc                                          ; $5f16: $0b
	dec  bc                                          ; $5f17: $0b
	dec  bc                                          ; $5f18: $0b
	dec  bc                                          ; $5f19: $0b
	dec  bc                                          ; $5f1a: $0b
	dec  bc                                          ; $5f1b: $0b
	dec  bc                                          ; $5f1c: $0b
	dec  bc                                          ; $5f1d: $0b
	dec  bc                                          ; $5f1e: $0b
	dec  bc                                          ; $5f1f: $0b
	dec  bc                                          ; $5f20: $0b
	dec  bc                                          ; $5f21: $0b
	dec  bc                                          ; $5f22: $0b
	dec  bc                                          ; $5f23: $0b
	dec  bc                                          ; $5f24: $0b
	dec  bc                                          ; $5f25: $0b
	dec  bc                                          ; $5f26: $0b
	dec  bc                                          ; $5f27: $0b
	dec  bc                                          ; $5f28: $0b
	dec  bc                                          ; $5f29: $0b
	dec  bc                                          ; $5f2a: $0b
	dec  bc                                          ; $5f2b: $0b
	dec  bc                                          ; $5f2c: $0b
	dec  bc                                          ; $5f2d: $0b
	dec  bc                                          ; $5f2e: $0b
	dec  bc                                          ; $5f2f: $0b
	dec  bc                                          ; $5f30: $0b
	dec  bc                                          ; $5f31: $0b
	dec  bc                                          ; $5f32: $0b
	dec  bc                                          ; $5f33: $0b
	dec  bc                                          ; $5f34: $0b
	dec  bc                                          ; $5f35: $0b
	dec  bc                                          ; $5f36: $0b
	dec  bc                                          ; $5f37: $0b
	dec  bc                                          ; $5f38: $0b
	dec  bc                                          ; $5f39: $0b
	dec  bc                                          ; $5f3a: $0b
	dec  bc                                          ; $5f3b: $0b
	dec  bc                                          ; $5f3c: $0b
	dec  bc                                          ; $5f3d: $0b
	dec  bc                                          ; $5f3e: $0b
	dec  bc                                          ; $5f3f: $0b
	nop                                              ; $5f40: $00
	ld   bc, $0302                                   ; $5f41: $01 $02 $03
	inc  b                                           ; $5f44: $04
	dec  b                                           ; $5f45: $05
	ld   b, $07                                      ; $5f46: $06 $07
	ld   [$0a09], sp                                 ; $5f48: $08 $09 $0a
	dec  bc                                          ; $5f4b: $0b
	inc  c                                           ; $5f4c: $0c
	dec  c                                           ; $5f4d: $0d
	ld   c, $0f                                      ; $5f4e: $0e $0f
	jr   nz, jr_083_5f73                             ; $5f50: $20 $21

	ld   [hl+], a                                    ; $5f52: $22
	inc  hl                                          ; $5f53: $23
	db   $10                                         ; $5f54: $10
	ld   de, $1312                                   ; $5f55: $11 $12 $13
	inc  d                                           ; $5f58: $14
	dec  d                                           ; $5f59: $15
	ld   d, $17                                      ; $5f5a: $16 $17
	jr   @+$1b                                       ; $5f5c: $18 $19

	ld   a, [de]                                     ; $5f5e: $1a
	dec  de                                          ; $5f5f: $1b
	inc  e                                           ; $5f60: $1c
	dec  e                                           ; $5f61: $1d
	ld   e, $1f                                      ; $5f62: $1e $1f
	jr   nc, jr_083_5f97                             ; $5f64: $30 $31

	ld   [hl-], a                                    ; $5f66: $32
	inc  sp                                          ; $5f67: $33
	jr   nz, @+$23                                   ; $5f68: $20 $21

	ld   [hl+], a                                    ; $5f6a: $22
	inc  hl                                          ; $5f6b: $23
	inc  h                                           ; $5f6c: $24
	dec  h                                           ; $5f6d: $25
	ld   h, $27                                      ; $5f6e: $26 $27
	jr   z, jr_083_5f9b                              ; $5f70: $28 $29

	ld   a, [hl+]                                    ; $5f72: $2a

jr_083_5f73:
	dec  hl                                          ; $5f73: $2b
	inc  l                                           ; $5f74: $2c
	dec  l                                           ; $5f75: $2d
	ld   l, $2f                                      ; $5f76: $2e $2f
	ld   b, b                                        ; $5f78: $40
	ld   b, c                                        ; $5f79: $41
	ld   b, d                                        ; $5f7a: $42
	ld   b, e                                        ; $5f7b: $43
	jr   nc, jr_083_5faf                             ; $5f7c: $30 $31

	ld   [hl-], a                                    ; $5f7e: $32
	inc  sp                                          ; $5f7f: $33
	inc  [hl]                                        ; $5f80: $34
	dec  [hl]                                        ; $5f81: $35
	ld   [hl], $37                                   ; $5f82: $36 $37
	jr   c, jr_083_5fbf                              ; $5f84: $38 $39

	ld   a, [hl-]                                    ; $5f86: $3a
	dec  sp                                          ; $5f87: $3b
	inc  a                                           ; $5f88: $3c
	dec  a                                           ; $5f89: $3d
	ld   a, $3f                                      ; $5f8a: $3e $3f
	inc  h                                           ; $5f8c: $24
	dec  h                                           ; $5f8d: $25
	ld   h, $27                                      ; $5f8e: $26 $27
	ld   b, b                                        ; $5f90: $40
	ld   b, c                                        ; $5f91: $41
	ld   b, d                                        ; $5f92: $42
	ld   b, e                                        ; $5f93: $43
	ld   b, h                                        ; $5f94: $44
	ld   b, l                                        ; $5f95: $45
	ld   b, [hl]                                     ; $5f96: $46

jr_083_5f97:
	ld   b, a                                        ; $5f97: $47
	ld   c, b                                        ; $5f98: $48
	ld   c, c                                        ; $5f99: $49
	ld   c, d                                        ; $5f9a: $4a

jr_083_5f9b:
	ld   c, e                                        ; $5f9b: $4b
	ld   c, h                                        ; $5f9c: $4c
	ld   c, l                                        ; $5f9d: $4d
	ld   c, [hl]                                     ; $5f9e: $4e
	ld   c, a                                        ; $5f9f: $4f
	inc  [hl]                                        ; $5fa0: $34
	dec  [hl]                                        ; $5fa1: $35
	ld   [hl], $37                                   ; $5fa2: $36 $37
	ld   d, b                                        ; $5fa4: $50
	ld   d, c                                        ; $5fa5: $51
	ld   d, d                                        ; $5fa6: $52
	ld   d, e                                        ; $5fa7: $53
	ld   d, h                                        ; $5fa8: $54
	ld   d, l                                        ; $5fa9: $55
	ld   d, [hl]                                     ; $5faa: $56
	ld   d, a                                        ; $5fab: $57
	ld   e, b                                        ; $5fac: $58
	ld   e, c                                        ; $5fad: $59
	ld   e, d                                        ; $5fae: $5a

jr_083_5faf:
	ld   e, e                                        ; $5faf: $5b
	ld   e, h                                        ; $5fb0: $5c
	ld   e, l                                        ; $5fb1: $5d
	ld   e, [hl]                                     ; $5fb2: $5e
	ld   e, a                                        ; $5fb3: $5f
	ld   b, h                                        ; $5fb4: $44
	ld   b, l                                        ; $5fb5: $45
	ld   b, [hl]                                     ; $5fb6: $46
	ld   b, a                                        ; $5fb7: $47
	ld   h, b                                        ; $5fb8: $60
	ld   h, c                                        ; $5fb9: $61
	ld   h, d                                        ; $5fba: $62
	ld   h, e                                        ; $5fbb: $63
	ld   h, h                                        ; $5fbc: $64
	ld   h, l                                        ; $5fbd: $65
	ld   h, [hl]                                     ; $5fbe: $66

jr_083_5fbf:
	ld   h, a                                        ; $5fbf: $67
	ld   l, b                                        ; $5fc0: $68
	ld   l, c                                        ; $5fc1: $69
	ld   l, d                                        ; $5fc2: $6a
	ld   l, e                                        ; $5fc3: $6b
	ld   l, h                                        ; $5fc4: $6c
	ld   l, l                                        ; $5fc5: $6d
	ld   l, [hl]                                     ; $5fc6: $6e
	ld   l, a                                        ; $5fc7: $6f
	jr   z, @+$2b                                    ; $5fc8: $28 $29

	ld   a, [hl+]                                    ; $5fca: $2a
	dec  hl                                          ; $5fcb: $2b
	ld   [hl], b                                     ; $5fcc: $70
	ld   [hl], c                                     ; $5fcd: $71
	ld   [hl], d                                     ; $5fce: $72
	ld   [hl], e                                     ; $5fcf: $73
	ld   [hl], h                                     ; $5fd0: $74
	ld   [hl], l                                     ; $5fd1: $75
	halt                                             ; $5fd2: $76
	ld   [hl], a                                     ; $5fd3: $77
	ld   a, b                                        ; $5fd4: $78
	ld   a, c                                        ; $5fd5: $79
	ld   a, d                                        ; $5fd6: $7a
	ld   a, e                                        ; $5fd7: $7b
	ld   a, h                                        ; $5fd8: $7c
	ld   a, l                                        ; $5fd9: $7d
	ld   a, [hl]                                     ; $5fda: $7e
	ld   a, a                                        ; $5fdb: $7f
	jr   c, jr_083_6017                              ; $5fdc: $38 $39

	ld   a, [hl-]                                    ; $5fde: $3a
	dec  sp                                          ; $5fdf: $3b
	nop                                              ; $5fe0: $00
	ld   bc, $0302                                   ; $5fe1: $01 $02 $03
	inc  b                                           ; $5fe4: $04
	dec  b                                           ; $5fe5: $05
	ld   b, $07                                      ; $5fe6: $06 $07
	ld   [$0a09], sp                                 ; $5fe8: $08 $09 $0a
	dec  bc                                          ; $5feb: $0b
	inc  c                                           ; $5fec: $0c
	dec  c                                           ; $5fed: $0d
	ld   c, $0f                                      ; $5fee: $0e $0f
	inc  l                                           ; $5ff0: $2c
	dec  l                                           ; $5ff1: $2d
	ld   l, $2f                                      ; $5ff2: $2e $2f
	db   $10                                         ; $5ff4: $10
	ld   de, $1312                                   ; $5ff5: $11 $12 $13
	inc  d                                           ; $5ff8: $14
	dec  d                                           ; $5ff9: $15
	ld   d, $17                                      ; $5ffa: $16 $17
	jr   jr_083_6017                                 ; $5ffc: $18 $19

	ld   a, [de]                                     ; $5ffe: $1a
	dec  de                                          ; $5fff: $1b
	inc  e                                           ; $6000: $1c
	dec  e                                           ; $6001: $1d
	ld   e, $1f                                      ; $6002: $1e $1f
	inc  a                                           ; $6004: $3c
	dec  a                                           ; $6005: $3d
	ld   a, $3f                                      ; $6006: $3e $3f
	inc  bc                                          ; $6008: $03
	inc  bc                                          ; $6009: $03
	inc  bc                                          ; $600a: $03
	inc  bc                                          ; $600b: $03
	inc  bc                                          ; $600c: $03
	inc  b                                           ; $600d: $04
	inc  b                                           ; $600e: $04
	inc  b                                           ; $600f: $04
	inc  b                                           ; $6010: $04
	inc  b                                           ; $6011: $04
	inc  b                                           ; $6012: $04
	inc  b                                           ; $6013: $04
	inc  b                                           ; $6014: $04
	inc  b                                           ; $6015: $04
	inc  b                                           ; $6016: $04

jr_083_6017:
	inc  bc                                          ; $6017: $03
	dec  bc                                          ; $6018: $0b
	dec  bc                                          ; $6019: $0b
	dec  bc                                          ; $601a: $0b
	dec  bc                                          ; $601b: $0b
	inc  bc                                          ; $601c: $03
	inc  bc                                          ; $601d: $03
	inc  bc                                          ; $601e: $03
	inc  bc                                          ; $601f: $03
	inc  bc                                          ; $6020: $03
	inc  bc                                          ; $6021: $03
	inc  b                                           ; $6022: $04
	inc  b                                           ; $6023: $04
	inc  b                                           ; $6024: $04
	inc  b                                           ; $6025: $04
	inc  b                                           ; $6026: $04
	inc  b                                           ; $6027: $04
	inc  b                                           ; $6028: $04
	inc  bc                                          ; $6029: $03
	inc  bc                                          ; $602a: $03
	inc  bc                                          ; $602b: $03
	dec  bc                                          ; $602c: $0b
	dec  bc                                          ; $602d: $0b
	dec  bc                                          ; $602e: $0b
	dec  bc                                          ; $602f: $0b
	inc  bc                                          ; $6030: $03
	inc  bc                                          ; $6031: $03
	inc  bc                                          ; $6032: $03
	inc  bc                                          ; $6033: $03
	inc  bc                                          ; $6034: $03
	inc  bc                                          ; $6035: $03
	inc  b                                           ; $6036: $04
	inc  b                                           ; $6037: $04
	inc  b                                           ; $6038: $04
	inc  b                                           ; $6039: $04
	inc  b                                           ; $603a: $04
	inc  bc                                          ; $603b: $03
	inc  bc                                          ; $603c: $03
	inc  bc                                          ; $603d: $03
	inc  bc                                          ; $603e: $03
	inc  bc                                          ; $603f: $03
	dec  bc                                          ; $6040: $0b
	dec  bc                                          ; $6041: $0b
	dec  bc                                          ; $6042: $0b
	dec  bc                                          ; $6043: $0b
	inc  bc                                          ; $6044: $03
	inc  bc                                          ; $6045: $03
	inc  bc                                          ; $6046: $03
	inc  bc                                          ; $6047: $03
	inc  bc                                          ; $6048: $03
	inc  bc                                          ; $6049: $03
	inc  bc                                          ; $604a: $03
	inc  b                                           ; $604b: $04
	inc  bc                                          ; $604c: $03
	inc  b                                           ; $604d: $04
	inc  bc                                          ; $604e: $03
	inc  bc                                          ; $604f: $03
	inc  bc                                          ; $6050: $03
	inc  bc                                          ; $6051: $03
	inc  bc                                          ; $6052: $03
	inc  bc                                          ; $6053: $03
	dec  bc                                          ; $6054: $0b
	dec  bc                                          ; $6055: $0b
	dec  bc                                          ; $6056: $0b
	dec  bc                                          ; $6057: $0b
	inc  bc                                          ; $6058: $03
	inc  bc                                          ; $6059: $03
	inc  bc                                          ; $605a: $03
	inc  bc                                          ; $605b: $03
	inc  bc                                          ; $605c: $03
	inc  b                                           ; $605d: $04
	inc  b                                           ; $605e: $04
	inc  b                                           ; $605f: $04
	inc  b                                           ; $6060: $04
	inc  b                                           ; $6061: $04
	inc  bc                                          ; $6062: $03
	inc  bc                                          ; $6063: $03
	inc  bc                                          ; $6064: $03
	inc  bc                                          ; $6065: $03
	inc  bc                                          ; $6066: $03
	inc  bc                                          ; $6067: $03
	dec  bc                                          ; $6068: $0b
	dec  bc                                          ; $6069: $0b
	dec  bc                                          ; $606a: $0b
	dec  bc                                          ; $606b: $0b
	inc  bc                                          ; $606c: $03
	inc  bc                                          ; $606d: $03
	inc  b                                           ; $606e: $04
	inc  b                                           ; $606f: $04
	inc  b                                           ; $6070: $04
	inc  b                                           ; $6071: $04
	inc  b                                           ; $6072: $04
	inc  b                                           ; $6073: $04
	inc  b                                           ; $6074: $04
	inc  b                                           ; $6075: $04
	inc  bc                                          ; $6076: $03
	inc  bc                                          ; $6077: $03
	inc  bc                                          ; $6078: $03
	inc  bc                                          ; $6079: $03
	inc  bc                                          ; $607a: $03
	inc  bc                                          ; $607b: $03
	dec  bc                                          ; $607c: $0b
	dec  bc                                          ; $607d: $0b
	dec  bc                                          ; $607e: $0b
	dec  bc                                          ; $607f: $0b
	inc  b                                           ; $6080: $04
	inc  b                                           ; $6081: $04
	inc  b                                           ; $6082: $04
	inc  b                                           ; $6083: $04
	inc  b                                           ; $6084: $04
	inc  b                                           ; $6085: $04
	dec  b                                           ; $6086: $05
	dec  b                                           ; $6087: $05
	dec  b                                           ; $6088: $05
	dec  b                                           ; $6089: $05
	dec  b                                           ; $608a: $05
	inc  bc                                          ; $608b: $03
	inc  bc                                          ; $608c: $03
	inc  bc                                          ; $608d: $03
	inc  bc                                          ; $608e: $03
	inc  bc                                          ; $608f: $03
	dec  bc                                          ; $6090: $0b
	dec  bc                                          ; $6091: $0b
	dec  bc                                          ; $6092: $0b
	dec  bc                                          ; $6093: $0b
	inc  b                                           ; $6094: $04
	inc  b                                           ; $6095: $04
	inc  b                                           ; $6096: $04
	inc  b                                           ; $6097: $04
	inc  b                                           ; $6098: $04
	inc  b                                           ; $6099: $04
	dec  b                                           ; $609a: $05
	dec  b                                           ; $609b: $05
	dec  b                                           ; $609c: $05
	dec  b                                           ; $609d: $05
	dec  b                                           ; $609e: $05
	dec  b                                           ; $609f: $05
	inc  bc                                          ; $60a0: $03
	inc  bc                                          ; $60a1: $03
	inc  bc                                          ; $60a2: $03
	inc  bc                                          ; $60a3: $03
	dec  bc                                          ; $60a4: $0b
	dec  bc                                          ; $60a5: $0b
	dec  bc                                          ; $60a6: $0b
	dec  bc                                          ; $60a7: $0b
	inc  c                                           ; $60a8: $0c
	inc  c                                           ; $60a9: $0c
	inc  c                                           ; $60aa: $0c
	inc  c                                           ; $60ab: $0c
	inc  c                                           ; $60ac: $0c
	inc  c                                           ; $60ad: $0c
	dec  c                                           ; $60ae: $0d
	dec  c                                           ; $60af: $0d
	dec  c                                           ; $60b0: $0d
	dec  c                                           ; $60b1: $0d
	dec  c                                           ; $60b2: $0d
	dec  c                                           ; $60b3: $0d
	dec  c                                           ; $60b4: $0d
	dec  c                                           ; $60b5: $0d
	dec  bc                                          ; $60b6: $0b
	dec  bc                                          ; $60b7: $0b
	dec  bc                                          ; $60b8: $0b
	dec  bc                                          ; $60b9: $0b
	dec  bc                                          ; $60ba: $0b
	dec  bc                                          ; $60bb: $0b
	inc  c                                           ; $60bc: $0c
	inc  c                                           ; $60bd: $0c
	inc  c                                           ; $60be: $0c
	inc  c                                           ; $60bf: $0c
	inc  c                                           ; $60c0: $0c
	dec  c                                           ; $60c1: $0d
	dec  c                                           ; $60c2: $0d
	dec  c                                           ; $60c3: $0d
	dec  c                                           ; $60c4: $0d
	dec  c                                           ; $60c5: $0d
	dec  c                                           ; $60c6: $0d
	dec  c                                           ; $60c7: $0d
	dec  c                                           ; $60c8: $0d
	dec  c                                           ; $60c9: $0d
	dec  bc                                          ; $60ca: $0b
	dec  bc                                          ; $60cb: $0b
	dec  bc                                          ; $60cc: $0b
	dec  bc                                          ; $60cd: $0b
	dec  bc                                          ; $60ce: $0b
	dec  bc                                          ; $60cf: $0b
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
	inc  e                                           ; $6109: $1c
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
	ld   a, b                                        ; $611d: $78
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
	ld   a, b                                        ; $6131: $78
	ld   a, c                                        ; $6132: $79
	ld   [hl], d                                     ; $6133: $72
	ld   a, d                                        ; $6134: $7a
	ld   a, e                                        ; $6135: $7b
	jr   nz, jr_083_6159                             ; $6136: $20 $21

	inc  h                                           ; $6138: $24
	dec  h                                           ; $6139: $25
	ld   h, $27                                      ; $613a: $26 $27
	jr   z, jr_083_6167                              ; $613c: $28 $29

	ld   a, [hl+]                                    ; $613e: $2a
	dec  hl                                          ; $613f: $2b
	inc  l                                           ; $6140: $2c
	dec  l                                           ; $6141: $2d
	ld   l, $2f                                      ; $6142: $2e $2f
	dec  bc                                          ; $6144: $0b
	inc  c                                           ; $6145: $0c
	dec  c                                           ; $6146: $0d
	ld   c, $75                                      ; $6147: $0e $75
	ld   a, h                                        ; $6149: $7c
	jr   nc, jr_083_617d                             ; $614a: $30 $31

	inc  [hl]                                        ; $614c: $34
	dec  [hl]                                        ; $614d: $35
	ld   [hl], $37                                   ; $614e: $36 $37
	jr   c, jr_083_618b                              ; $6150: $38 $39

	ld   a, [hl-]                                    ; $6152: $3a
	dec  sp                                          ; $6153: $3b
	inc  a                                           ; $6154: $3c
	dec  a                                           ; $6155: $3d
	ld   a, $3f                                      ; $6156: $3e $3f
	inc  bc                                          ; $6158: $03

jr_083_6159:
	inc  b                                           ; $6159: $04
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

jr_083_6167:
	ld   c, e                                        ; $6167: $4b
	ld   c, h                                        ; $6168: $4c
	ld   c, l                                        ; $6169: $4d
	ld   c, [hl]                                     ; $616a: $4e
	ld   c, a                                        ; $616b: $4f
	inc  de                                          ; $616c: $13
	inc  d                                           ; $616d: $14
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

jr_083_617d:
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

jr_083_618b:
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
	jr   jr_083_61b0                                 ; $6195: $18 $19

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

jr_083_61b0:
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
	inc  bc                                          ; $61e5: $03
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
	inc  bc                                          ; $61f9: $03
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
	ld   [hl], b                                     ; $6264: $70
	ld   [hl], b                                     ; $6265: $70
	ld   [hl], b                                     ; $6266: $70
	ld   [hl], b                                     ; $6267: $70
	ld   [hl], b                                     ; $6268: $70
	ld   [hl], b                                     ; $6269: $70
	ld   [hl], b                                     ; $626a: $70
	ld   [hl], b                                     ; $626b: $70
	ld   [hl], b                                     ; $626c: $70
	ld   [hl], b                                     ; $626d: $70
	ld   [hl], b                                     ; $626e: $70
	ld   [hl], b                                     ; $626f: $70
	nop                                              ; $6270: $00
	ld   bc, $7202                                   ; $6271: $01 $02 $72
	db   $10                                         ; $6274: $10
	ld   de, $1312                                   ; $6275: $11 $12 $13
	ld   [hl], c                                     ; $6278: $71
	ld   [hl], c                                     ; $6279: $71
	ld   [hl], c                                     ; $627a: $71
	ld   [hl], c                                     ; $627b: $71
	ld   [hl], c                                     ; $627c: $71
	ld   [hl], c                                     ; $627d: $71
	ld   [hl], c                                     ; $627e: $71
	ld   [hl], c                                     ; $627f: $71
	ld   [hl], c                                     ; $6280: $71
	ld   [hl], c                                     ; $6281: $71
	ld   [hl], c                                     ; $6282: $71
	ld   l, a                                        ; $6283: $6f
	db   $10                                         ; $6284: $10
	ld   de, $7212                                   ; $6285: $11 $12 $72
	ld   [hl], d                                     ; $6288: $72
	ld   a, [hl]                                     ; $6289: $7e
	ld   [hl+], a                                    ; $628a: $22
	inc  hl                                          ; $628b: $23
	ld   l, e                                        ; $628c: $6b
	ld   l, h                                        ; $628d: $6c
	ld   [hl], e                                     ; $628e: $73
	rrca                                             ; $628f: $0f
	ld   [hl], e                                     ; $6290: $73
	ld   [hl], e                                     ; $6291: $73
	ld   [hl], e                                     ; $6292: $73
	ld   [hl], e                                     ; $6293: $73
	ld   [hl], e                                     ; $6294: $73
	ld   l, l                                        ; $6295: $6d
	ld   l, [hl]                                     ; $6296: $6e
	ld   a, a                                        ; $6297: $7f
	dec  de                                          ; $6298: $1b
	inc  e                                           ; $6299: $1c
	dec  e                                           ; $629a: $1d
	ld   [hl], d                                     ; $629b: $72
	ld   [hl], d                                     ; $629c: $72
	ld   [hl], h                                     ; $629d: $74
	ld   [hl-], a                                    ; $629e: $32
	inc  sp                                          ; $629f: $33
	inc  b                                           ; $62a0: $04
	jr   nz, jr_083_62c4                             ; $62a1: $20 $21

	ld   [hl+], a                                    ; $62a3: $22
	ld   [$0a09], sp                                 ; $62a4: $08 $09 $0a
	dec  bc                                          ; $62a7: $0b
	inc  c                                           ; $62a8: $0c
	dec  c                                           ; $62a9: $0d
	ld   c, $0f                                      ; $62aa: $0e $0f
	ld   [hl], a                                     ; $62ac: $77
	ld   a, b                                        ; $62ad: $78
	ld   a, c                                        ; $62ae: $79
	ld   [hl], d                                     ; $62af: $72
	ld   [hl], d                                     ; $62b0: $72
	ld   [hl], h                                     ; $62b1: $74
	ld   b, d                                        ; $62b2: $42
	ld   b, e                                        ; $62b3: $43
	inc  d                                           ; $62b4: $14
	jr   nc, jr_083_62e8                             ; $62b5: $30 $31

	ld   [hl-], a                                    ; $62b7: $32
	jr   @+$1b                                       ; $62b8: $18 $19

	ld   a, [de]                                     ; $62ba: $1a
	dec  de                                          ; $62bb: $1b
	inc  e                                           ; $62bc: $1c
	dec  e                                           ; $62bd: $1d
	ld   e, $1f                                      ; $62be: $1e $1f
	ld   [hl], a                                     ; $62c0: $77
	ld   a, b                                        ; $62c1: $78
	ld   a, c                                        ; $62c2: $79
	ld   [hl], d                                     ; $62c3: $72

jr_083_62c4:
	ld   a, d                                        ; $62c4: $7a
	ld   a, e                                        ; $62c5: $7b
	jr   nz, jr_083_62e9                             ; $62c6: $20 $21

	inc  h                                           ; $62c8: $24
	ld   b, b                                        ; $62c9: $40
	ld   b, c                                        ; $62ca: $41
	ld   b, d                                        ; $62cb: $42
	jr   z, jr_083_62f7                              ; $62cc: $28 $29

	ld   a, [hl+]                                    ; $62ce: $2a
	dec  hl                                          ; $62cf: $2b
	inc  l                                           ; $62d0: $2c
	dec  l                                           ; $62d1: $2d
	ld   l, $2f                                      ; $62d2: $2e $2f
	dec  bc                                          ; $62d4: $0b
	inc  c                                           ; $62d5: $0c
	dec  c                                           ; $62d6: $0d
	ld   c, $75                                      ; $62d7: $0e $75
	ld   a, h                                        ; $62d9: $7c
	jr   nc, jr_083_630d                             ; $62da: $30 $31

	inc  [hl]                                        ; $62dc: $34
	ld   c, a                                        ; $62dd: $4f
	ld   d, b                                        ; $62de: $50
	ld   d, c                                        ; $62df: $51
	jr   c, jr_083_631b                              ; $62e0: $38 $39

	ld   a, [hl-]                                    ; $62e2: $3a
	dec  sp                                          ; $62e3: $3b
	inc  a                                           ; $62e4: $3c
	dec  a                                           ; $62e5: $3d
	ld   a, $3f                                      ; $62e6: $3e $3f

jr_083_62e8:
	inc  bc                                          ; $62e8: $03

jr_083_62e9:
	inc  b                                           ; $62e9: $04
	dec  b                                           ; $62ea: $05
	ld   b, $75                                      ; $62eb: $06 $75
	ld   a, l                                        ; $62ed: $7d
	ld   b, b                                        ; $62ee: $40
	ld   b, c                                        ; $62ef: $41
	ld   b, h                                        ; $62f0: $44
	ld   e, [hl]                                     ; $62f1: $5e
	ld   e, a                                        ; $62f2: $5f
	ld   h, b                                        ; $62f3: $60
	ld   c, b                                        ; $62f4: $48
	ld   c, c                                        ; $62f5: $49
	ld   c, d                                        ; $62f6: $4a

jr_083_62f7:
	ld   c, e                                        ; $62f7: $4b
	ld   c, h                                        ; $62f8: $4c
	ld   c, l                                        ; $62f9: $4d
	ld   c, [hl]                                     ; $62fa: $4e
	ld   c, a                                        ; $62fb: $4f
	inc  de                                          ; $62fc: $13
	inc  d                                           ; $62fd: $14
	dec  d                                           ; $62fe: $15
	ld   d, $50                                      ; $62ff: $16 $50
	ld   d, c                                        ; $6301: $51
	ld   d, d                                        ; $6302: $52
	ld   d, e                                        ; $6303: $53
	ld   d, h                                        ; $6304: $54
	ld   d, l                                        ; $6305: $55
	ld   d, [hl]                                     ; $6306: $56
	ld   d, a                                        ; $6307: $57
	ld   e, b                                        ; $6308: $58
	ld   e, c                                        ; $6309: $59
	ld   e, d                                        ; $630a: $5a
	ld   e, e                                        ; $630b: $5b
	ld   e, h                                        ; $630c: $5c

jr_083_630d:
	ld   e, l                                        ; $630d: $5d
	ld   e, [hl]                                     ; $630e: $5e
	ld   e, a                                        ; $630f: $5f
	rlca                                             ; $6310: $07
	ld   [$0a09], sp                                 ; $6311: $08 $09 $0a
	ld   h, b                                        ; $6314: $60
	halt                                             ; $6315: $76
	ld   h, c                                        ; $6316: $61
	ld   h, d                                        ; $6317: $62
	ld   h, e                                        ; $6318: $63
	ld   h, h                                        ; $6319: $64
	halt                                             ; $631a: $76

jr_083_631b:
	ld   h, l                                        ; $631b: $65
	ld   h, [hl]                                     ; $631c: $66
	ld   h, a                                        ; $631d: $67
	halt                                             ; $631e: $76
	halt                                             ; $631f: $76
	ld   l, b                                        ; $6320: $68
	ld   l, c                                        ; $6321: $69
	ld   l, d                                        ; $6322: $6a
	halt                                             ; $6323: $76
	rla                                              ; $6324: $17
	jr   jr_083_6340                                 ; $6325: $18 $19

	ld   a, [de]                                     ; $6327: $1a
	dec  b                                           ; $6328: $05
	dec  b                                           ; $6329: $05
	dec  b                                           ; $632a: $05
	dec  b                                           ; $632b: $05
	dec  b                                           ; $632c: $05
	dec  b                                           ; $632d: $05
	dec  b                                           ; $632e: $05
	dec  b                                           ; $632f: $05
	dec  b                                           ; $6330: $05
	dec  b                                           ; $6331: $05
	dec  b                                           ; $6332: $05
	dec  b                                           ; $6333: $05
	dec  b                                           ; $6334: $05
	dec  b                                           ; $6335: $05
	dec  b                                           ; $6336: $05
	dec  b                                           ; $6337: $05
	dec  c                                           ; $6338: $0d
	dec  c                                           ; $6339: $0d
	dec  c                                           ; $633a: $0d
	dec  b                                           ; $633b: $05
	dec  b                                           ; $633c: $05
	dec  b                                           ; $633d: $05
	dec  b                                           ; $633e: $05
	dec  b                                           ; $633f: $05

jr_083_6340:
	dec  b                                           ; $6340: $05
	dec  b                                           ; $6341: $05
	dec  b                                           ; $6342: $05
	dec  b                                           ; $6343: $05
	dec  b                                           ; $6344: $05
	dec  b                                           ; $6345: $05
	dec  b                                           ; $6346: $05
	dec  b                                           ; $6347: $05
	dec  b                                           ; $6348: $05
	dec  b                                           ; $6349: $05
	dec  b                                           ; $634a: $05
	dec  b                                           ; $634b: $05
	dec  c                                           ; $634c: $0d
	dec  c                                           ; $634d: $0d
	dec  c                                           ; $634e: $0d
	dec  b                                           ; $634f: $05
	dec  b                                           ; $6350: $05
	dec  b                                           ; $6351: $05
	dec  b                                           ; $6352: $05
	dec  b                                           ; $6353: $05
	dec  b                                           ; $6354: $05
	dec  b                                           ; $6355: $05
	dec  b                                           ; $6356: $05
	dec  c                                           ; $6357: $0d
	dec  b                                           ; $6358: $05
	dec  b                                           ; $6359: $05
	dec  b                                           ; $635a: $05
	dec  b                                           ; $635b: $05
	dec  b                                           ; $635c: $05
	dec  b                                           ; $635d: $05
	dec  b                                           ; $635e: $05
	dec  b                                           ; $635f: $05
	dec  c                                           ; $6360: $0d
	dec  c                                           ; $6361: $0d
	dec  c                                           ; $6362: $0d
	dec  b                                           ; $6363: $05
	dec  b                                           ; $6364: $05
	dec  b                                           ; $6365: $05
	inc  bc                                          ; $6366: $03
	dec  b                                           ; $6367: $05
	dec  b                                           ; $6368: $05
	dec  c                                           ; $6369: $0d
	dec  c                                           ; $636a: $0d
	dec  c                                           ; $636b: $0d
	inc  bc                                          ; $636c: $03
	inc  bc                                          ; $636d: $03
	inc  bc                                          ; $636e: $03
	inc  bc                                          ; $636f: $03
	inc  bc                                          ; $6370: $03
	inc  bc                                          ; $6371: $03
	inc  bc                                          ; $6372: $03
	inc  bc                                          ; $6373: $03
	dec  b                                           ; $6374: $05
	inc  bc                                          ; $6375: $03
	dec  b                                           ; $6376: $05
	dec  b                                           ; $6377: $05
	dec  b                                           ; $6378: $05
	dec  b                                           ; $6379: $05
	inc  bc                                          ; $637a: $03
	dec  b                                           ; $637b: $05
	dec  b                                           ; $637c: $05
	dec  c                                           ; $637d: $0d
	dec  c                                           ; $637e: $0d
	dec  c                                           ; $637f: $0d
	inc  bc                                          ; $6380: $03
	inc  bc                                          ; $6381: $03
	inc  bc                                          ; $6382: $03
	inc  bc                                          ; $6383: $03
	inc  bc                                          ; $6384: $03
	inc  bc                                          ; $6385: $03
	inc  bc                                          ; $6386: $03
	inc  bc                                          ; $6387: $03
	dec  b                                           ; $6388: $05
	inc  bc                                          ; $6389: $03
	dec  b                                           ; $638a: $05
	dec  b                                           ; $638b: $05
	inc  b                                           ; $638c: $04
	inc  b                                           ; $638d: $04
	inc  bc                                          ; $638e: $03
	inc  b                                           ; $638f: $04
	inc  b                                           ; $6390: $04
	dec  c                                           ; $6391: $0d
	dec  c                                           ; $6392: $0d
	dec  c                                           ; $6393: $0d
	inc  bc                                          ; $6394: $03
	inc  bc                                          ; $6395: $03
	inc  bc                                          ; $6396: $03
	inc  bc                                          ; $6397: $03
	inc  bc                                          ; $6398: $03
	inc  bc                                          ; $6399: $03
	inc  bc                                          ; $639a: $03
	inc  bc                                          ; $639b: $03
	dec  c                                           ; $639c: $0d
	dec  bc                                          ; $639d: $0b
	dec  c                                           ; $639e: $0d
	dec  c                                           ; $639f: $0d
	inc  b                                           ; $63a0: $04
	inc  b                                           ; $63a1: $04
	inc  bc                                          ; $63a2: $03
	inc  b                                           ; $63a3: $04
	dec  b                                           ; $63a4: $05
	dec  c                                           ; $63a5: $0d
	dec  c                                           ; $63a6: $0d
	dec  c                                           ; $63a7: $0d
	inc  bc                                          ; $63a8: $03
	inc  bc                                          ; $63a9: $03
	inc  bc                                          ; $63aa: $03
	inc  bc                                          ; $63ab: $03
	inc  bc                                          ; $63ac: $03
	inc  bc                                          ; $63ad: $03
	inc  bc                                          ; $63ae: $03
	inc  bc                                          ; $63af: $03
	dec  c                                           ; $63b0: $0d
	dec  bc                                          ; $63b1: $0b
	inc  c                                           ; $63b2: $0c
	dec  c                                           ; $63b3: $0d
	inc  b                                           ; $63b4: $04
	inc  b                                           ; $63b5: $04
	inc  bc                                          ; $63b6: $03
	dec  b                                           ; $63b7: $05
	dec  b                                           ; $63b8: $05
	dec  c                                           ; $63b9: $0d
	dec  c                                           ; $63ba: $0d
	dec  c                                           ; $63bb: $0d
	inc  bc                                          ; $63bc: $03
	inc  bc                                          ; $63bd: $03
	inc  bc                                          ; $63be: $03
	inc  bc                                          ; $63bf: $03
	inc  bc                                          ; $63c0: $03
	inc  bc                                          ; $63c1: $03
	inc  bc                                          ; $63c2: $03
	inc  bc                                          ; $63c3: $03
	dec  bc                                          ; $63c4: $0b
	dec  bc                                          ; $63c5: $0b
	dec  c                                           ; $63c6: $0d
	dec  c                                           ; $63c7: $0d
	inc  b                                           ; $63c8: $04
	inc  b                                           ; $63c9: $04
	inc  b                                           ; $63ca: $04
	inc  b                                           ; $63cb: $04
	inc  b                                           ; $63cc: $04
	inc  b                                           ; $63cd: $04
	inc  b                                           ; $63ce: $04
	inc  b                                           ; $63cf: $04
	inc  b                                           ; $63d0: $04
	inc  b                                           ; $63d1: $04
	inc  b                                           ; $63d2: $04
	inc  b                                           ; $63d3: $04
	inc  b                                           ; $63d4: $04
	inc  b                                           ; $63d5: $04
	inc  b                                           ; $63d6: $04
	inc  b                                           ; $63d7: $04
	dec  bc                                          ; $63d8: $0b
	dec  bc                                          ; $63d9: $0b
	dec  bc                                          ; $63da: $0b
	dec  c                                           ; $63db: $0d
	dec  b                                           ; $63dc: $05
	inc  b                                           ; $63dd: $04
	inc  b                                           ; $63de: $04
	inc  b                                           ; $63df: $04
	inc  b                                           ; $63e0: $04
	inc  b                                           ; $63e1: $04
	inc  b                                           ; $63e2: $04
	inc  b                                           ; $63e3: $04
	inc  b                                           ; $63e4: $04
	inc  b                                           ; $63e5: $04
	inc  b                                           ; $63e6: $04
	inc  b                                           ; $63e7: $04
	inc  b                                           ; $63e8: $04
	inc  b                                           ; $63e9: $04
	inc  b                                           ; $63ea: $04
	inc  b                                           ; $63eb: $04
	dec  c                                           ; $63ec: $0d
	dec  bc                                          ; $63ed: $0b
	dec  bc                                          ; $63ee: $0b
	dec  c                                           ; $63ef: $0d
	nop                                              ; $63f0: $00
	ld   bc, $0302                                   ; $63f1: $01 $02 $03
	ld   [hl], b                                     ; $63f4: $70
	ld   [hl], b                                     ; $63f5: $70
	ld   [hl], b                                     ; $63f6: $70
	ld   [hl], b                                     ; $63f7: $70
	ld   [hl], b                                     ; $63f8: $70
	ld   [hl], b                                     ; $63f9: $70
	ld   [hl], b                                     ; $63fa: $70
	ld   [hl], b                                     ; $63fb: $70
	ld   [hl], b                                     ; $63fc: $70
	ld   [hl], b                                     ; $63fd: $70
	ld   [hl], b                                     ; $63fe: $70
	ld   [hl], b                                     ; $63ff: $70
	nop                                              ; $6400: $00
	ld   bc, $7202                                   ; $6401: $01 $02 $72
	db   $10                                         ; $6404: $10
	ld   de, $1312                                   ; $6405: $11 $12 $13
	ld   [hl], c                                     ; $6408: $71
	ld   [hl], c                                     ; $6409: $71
	ld   [hl], c                                     ; $640a: $71
	ld   [hl], c                                     ; $640b: $71
	ld   [hl], c                                     ; $640c: $71
	ld   [hl], c                                     ; $640d: $71
	ld   [hl], c                                     ; $640e: $71
	ld   [hl], c                                     ; $640f: $71
	ld   [hl], c                                     ; $6410: $71
	ld   [hl], c                                     ; $6411: $71
	ld   [hl], c                                     ; $6412: $71
	ld   l, a                                        ; $6413: $6f
	db   $10                                         ; $6414: $10
	ld   de, $7212                                   ; $6415: $11 $12 $72
	ld   [hl], d                                     ; $6418: $72
	ld   a, [hl]                                     ; $6419: $7e
	ld   [hl+], a                                    ; $641a: $22
	inc  hl                                          ; $641b: $23
	ld   l, e                                        ; $641c: $6b
	ld   l, h                                        ; $641d: $6c
	ld   [hl], e                                     ; $641e: $73
	ld   [hl], e                                     ; $641f: $73
	ld   [hl], e                                     ; $6420: $73
	ld   e, $73                                      ; $6421: $1e $73
	ld   [hl], e                                     ; $6423: $73
	ld   [hl], e                                     ; $6424: $73
	ld   l, l                                        ; $6425: $6d
	ld   l, [hl]                                     ; $6426: $6e
	ld   a, a                                        ; $6427: $7f
	dec  de                                          ; $6428: $1b
	inc  e                                           ; $6429: $1c
	dec  e                                           ; $642a: $1d
	ld   [hl], d                                     ; $642b: $72
	ld   [hl], d                                     ; $642c: $72
	ld   [hl], h                                     ; $642d: $74
	ld   [hl-], a                                    ; $642e: $32
	inc  sp                                          ; $642f: $33
	inc  b                                           ; $6430: $04
	dec  b                                           ; $6431: $05
	ld   b, $23                                      ; $6432: $06 $23
	inc  h                                           ; $6434: $24
	dec  h                                           ; $6435: $25
	ld   a, [bc]                                     ; $6436: $0a
	dec  bc                                          ; $6437: $0b
	inc  c                                           ; $6438: $0c
	dec  c                                           ; $6439: $0d
	ld   c, $0f                                      ; $643a: $0e $0f
	ld   [hl], a                                     ; $643c: $77
	ld   a, b                                        ; $643d: $78
	ld   a, c                                        ; $643e: $79
	ld   [hl], d                                     ; $643f: $72
	ld   [hl], d                                     ; $6440: $72
	ld   [hl], h                                     ; $6441: $74
	ld   b, d                                        ; $6442: $42
	ld   b, e                                        ; $6443: $43
	inc  d                                           ; $6444: $14
	dec  d                                           ; $6445: $15
	ld   d, $33                                      ; $6446: $16 $33
	inc  [hl]                                        ; $6448: $34
	dec  [hl]                                        ; $6449: $35
	ld   a, [de]                                     ; $644a: $1a
	dec  de                                          ; $644b: $1b
	inc  e                                           ; $644c: $1c
	dec  e                                           ; $644d: $1d
	ld   e, $1f                                      ; $644e: $1e $1f
	ld   [hl], a                                     ; $6450: $77
	ld   a, b                                        ; $6451: $78
	ld   a, c                                        ; $6452: $79
	ld   [hl], d                                     ; $6453: $72
	ld   a, d                                        ; $6454: $7a
	ld   a, e                                        ; $6455: $7b
	jr   nz, jr_083_6479                             ; $6456: $20 $21

	inc  h                                           ; $6458: $24
	dec  h                                           ; $6459: $25
	ld   h, $43                                      ; $645a: $26 $43
	ld   b, h                                        ; $645c: $44
	ld   b, l                                        ; $645d: $45
	ld   a, [hl+]                                    ; $645e: $2a
	dec  hl                                          ; $645f: $2b
	inc  l                                           ; $6460: $2c
	dec  l                                           ; $6461: $2d
	ld   l, $2f                                      ; $6462: $2e $2f
	dec  bc                                          ; $6464: $0b
	inc  c                                           ; $6465: $0c
	dec  c                                           ; $6466: $0d
	ld   c, $75                                      ; $6467: $0e $75
	ld   a, h                                        ; $6469: $7c
	jr   nc, jr_083_649d                             ; $646a: $30 $31

	inc  [hl]                                        ; $646c: $34
	dec  [hl]                                        ; $646d: $35
	ld   [hl], $52                                   ; $646e: $36 $52
	ld   d, e                                        ; $6470: $53
	ld   d, h                                        ; $6471: $54
	ld   a, [hl-]                                    ; $6472: $3a
	dec  sp                                          ; $6473: $3b
	inc  a                                           ; $6474: $3c
	dec  a                                           ; $6475: $3d
	ld   a, $3f                                      ; $6476: $3e $3f
	inc  bc                                          ; $6478: $03

jr_083_6479:
	inc  b                                           ; $6479: $04
	dec  b                                           ; $647a: $05
	ld   b, $75                                      ; $647b: $06 $75
	ld   a, l                                        ; $647d: $7d
	ld   b, b                                        ; $647e: $40
	ld   b, c                                        ; $647f: $41
	ld   b, h                                        ; $6480: $44
	ld   b, l                                        ; $6481: $45
	ld   b, [hl]                                     ; $6482: $46
	ld   h, c                                        ; $6483: $61
	ld   h, d                                        ; $6484: $62
	ld   h, e                                        ; $6485: $63
	ld   c, d                                        ; $6486: $4a
	ld   c, e                                        ; $6487: $4b
	ld   c, h                                        ; $6488: $4c
	ld   c, l                                        ; $6489: $4d
	ld   c, [hl]                                     ; $648a: $4e
	ld   c, a                                        ; $648b: $4f
	inc  de                                          ; $648c: $13
	inc  d                                           ; $648d: $14
	dec  d                                           ; $648e: $15
	ld   d, $50                                      ; $648f: $16 $50
	ld   d, c                                        ; $6491: $51
	ld   d, d                                        ; $6492: $52
	ld   d, e                                        ; $6493: $53
	ld   d, h                                        ; $6494: $54
	ld   d, l                                        ; $6495: $55
	ld   d, [hl]                                     ; $6496: $56
	ld   d, a                                        ; $6497: $57
	ld   e, b                                        ; $6498: $58
	ld   e, c                                        ; $6499: $59
	ld   e, d                                        ; $649a: $5a
	ld   e, e                                        ; $649b: $5b
	ld   e, h                                        ; $649c: $5c

jr_083_649d:
	ld   e, l                                        ; $649d: $5d
	ld   e, [hl]                                     ; $649e: $5e
	ld   e, a                                        ; $649f: $5f
	rlca                                             ; $64a0: $07
	ld   [$0a09], sp                                 ; $64a1: $08 $09 $0a
	ld   h, b                                        ; $64a4: $60
	halt                                             ; $64a5: $76
	ld   h, c                                        ; $64a6: $61
	ld   h, d                                        ; $64a7: $62
	ld   h, e                                        ; $64a8: $63
	ld   h, h                                        ; $64a9: $64
	halt                                             ; $64aa: $76
	ld   h, l                                        ; $64ab: $65
	ld   h, [hl]                                     ; $64ac: $66
	ld   h, a                                        ; $64ad: $67
	halt                                             ; $64ae: $76
	halt                                             ; $64af: $76
	ld   l, b                                        ; $64b0: $68
	ld   l, c                                        ; $64b1: $69
	ld   l, d                                        ; $64b2: $6a
	halt                                             ; $64b3: $76
	rla                                              ; $64b4: $17
	jr   jr_083_64d0                                 ; $64b5: $18 $19

	ld   a, [de]                                     ; $64b7: $1a
	dec  b                                           ; $64b8: $05
	dec  b                                           ; $64b9: $05
	dec  b                                           ; $64ba: $05
	dec  b                                           ; $64bb: $05
	dec  b                                           ; $64bc: $05
	dec  b                                           ; $64bd: $05
	dec  b                                           ; $64be: $05
	dec  b                                           ; $64bf: $05
	dec  b                                           ; $64c0: $05
	dec  b                                           ; $64c1: $05
	dec  b                                           ; $64c2: $05
	dec  b                                           ; $64c3: $05
	dec  b                                           ; $64c4: $05
	dec  b                                           ; $64c5: $05
	dec  b                                           ; $64c6: $05
	dec  b                                           ; $64c7: $05
	dec  c                                           ; $64c8: $0d
	dec  c                                           ; $64c9: $0d
	dec  c                                           ; $64ca: $0d
	dec  b                                           ; $64cb: $05
	dec  b                                           ; $64cc: $05
	dec  b                                           ; $64cd: $05
	dec  b                                           ; $64ce: $05
	dec  b                                           ; $64cf: $05

jr_083_64d0:
	dec  b                                           ; $64d0: $05
	dec  b                                           ; $64d1: $05
	dec  b                                           ; $64d2: $05
	dec  b                                           ; $64d3: $05
	dec  b                                           ; $64d4: $05
	dec  b                                           ; $64d5: $05
	dec  b                                           ; $64d6: $05
	dec  b                                           ; $64d7: $05
	dec  b                                           ; $64d8: $05
	dec  b                                           ; $64d9: $05
	dec  b                                           ; $64da: $05
	dec  b                                           ; $64db: $05
	dec  c                                           ; $64dc: $0d
	dec  c                                           ; $64dd: $0d
	dec  c                                           ; $64de: $0d
	dec  b                                           ; $64df: $05
	dec  b                                           ; $64e0: $05
	dec  b                                           ; $64e1: $05
	dec  b                                           ; $64e2: $05
	dec  b                                           ; $64e3: $05
	dec  b                                           ; $64e4: $05
	dec  b                                           ; $64e5: $05
	dec  b                                           ; $64e6: $05
	dec  b                                           ; $64e7: $05
	dec  b                                           ; $64e8: $05
	dec  c                                           ; $64e9: $0d
	dec  b                                           ; $64ea: $05
	dec  b                                           ; $64eb: $05
	dec  b                                           ; $64ec: $05
	dec  b                                           ; $64ed: $05
	dec  b                                           ; $64ee: $05
	dec  b                                           ; $64ef: $05
	dec  c                                           ; $64f0: $0d
	dec  c                                           ; $64f1: $0d
	dec  c                                           ; $64f2: $0d
	dec  b                                           ; $64f3: $05
	dec  b                                           ; $64f4: $05
	dec  b                                           ; $64f5: $05
	inc  bc                                          ; $64f6: $03
	dec  b                                           ; $64f7: $05
	dec  b                                           ; $64f8: $05
	dec  b                                           ; $64f9: $05
	inc  bc                                          ; $64fa: $03
	dec  bc                                          ; $64fb: $0b
	dec  bc                                          ; $64fc: $0b
	dec  c                                           ; $64fd: $0d
	inc  bc                                          ; $64fe: $03
	inc  bc                                          ; $64ff: $03
	inc  bc                                          ; $6500: $03
	inc  bc                                          ; $6501: $03
	inc  bc                                          ; $6502: $03
	inc  bc                                          ; $6503: $03
	dec  b                                           ; $6504: $05
	inc  bc                                          ; $6505: $03
	dec  b                                           ; $6506: $05
	dec  b                                           ; $6507: $05
	dec  b                                           ; $6508: $05
	dec  b                                           ; $6509: $05
	inc  bc                                          ; $650a: $03
	dec  b                                           ; $650b: $05
	dec  b                                           ; $650c: $05
	dec  b                                           ; $650d: $05
	inc  bc                                          ; $650e: $03
	dec  bc                                          ; $650f: $0b
	dec  bc                                          ; $6510: $0b
	dec  c                                           ; $6511: $0d
	inc  bc                                          ; $6512: $03
	inc  bc                                          ; $6513: $03
	inc  bc                                          ; $6514: $03
	inc  bc                                          ; $6515: $03
	inc  bc                                          ; $6516: $03
	inc  bc                                          ; $6517: $03
	dec  b                                           ; $6518: $05
	inc  bc                                          ; $6519: $03
	dec  b                                           ; $651a: $05
	dec  b                                           ; $651b: $05
	inc  b                                           ; $651c: $04
	inc  b                                           ; $651d: $04
	inc  bc                                          ; $651e: $03
	inc  b                                           ; $651f: $04
	inc  b                                           ; $6520: $04
	dec  b                                           ; $6521: $05
	inc  bc                                          ; $6522: $03
	dec  bc                                          ; $6523: $0b
	dec  bc                                          ; $6524: $0b
	dec  bc                                          ; $6525: $0b
	inc  bc                                          ; $6526: $03
	inc  bc                                          ; $6527: $03
	inc  bc                                          ; $6528: $03
	inc  bc                                          ; $6529: $03
	inc  bc                                          ; $652a: $03
	inc  bc                                          ; $652b: $03
	dec  c                                           ; $652c: $0d
	dec  bc                                          ; $652d: $0b
	dec  c                                           ; $652e: $0d
	dec  c                                           ; $652f: $0d
	inc  b                                           ; $6530: $04
	inc  b                                           ; $6531: $04
	inc  bc                                          ; $6532: $03
	inc  b                                           ; $6533: $04
	dec  b                                           ; $6534: $05
	inc  bc                                          ; $6535: $03
	inc  bc                                          ; $6536: $03
	dec  bc                                          ; $6537: $0b
	dec  bc                                          ; $6538: $0b
	dec  bc                                          ; $6539: $0b
	inc  bc                                          ; $653a: $03
	inc  bc                                          ; $653b: $03
	inc  bc                                          ; $653c: $03
	inc  bc                                          ; $653d: $03
	inc  bc                                          ; $653e: $03
	inc  bc                                          ; $653f: $03
	dec  c                                           ; $6540: $0d
	dec  bc                                          ; $6541: $0b
	inc  c                                           ; $6542: $0c
	dec  c                                           ; $6543: $0d
	inc  b                                           ; $6544: $04
	inc  b                                           ; $6545: $04
	inc  bc                                          ; $6546: $03
	dec  b                                           ; $6547: $05
	dec  b                                           ; $6548: $05
	inc  bc                                          ; $6549: $03
	inc  bc                                          ; $654a: $03
	dec  bc                                          ; $654b: $0b
	dec  bc                                          ; $654c: $0b
	dec  bc                                          ; $654d: $0b
	inc  bc                                          ; $654e: $03
	inc  bc                                          ; $654f: $03
	inc  bc                                          ; $6550: $03
	inc  bc                                          ; $6551: $03
	inc  bc                                          ; $6552: $03
	inc  bc                                          ; $6553: $03
	dec  bc                                          ; $6554: $0b
	dec  bc                                          ; $6555: $0b
	dec  c                                           ; $6556: $0d
	dec  c                                           ; $6557: $0d
	inc  b                                           ; $6558: $04
	inc  b                                           ; $6559: $04
	inc  b                                           ; $655a: $04
	inc  b                                           ; $655b: $04
	inc  b                                           ; $655c: $04
	inc  b                                           ; $655d: $04
	inc  b                                           ; $655e: $04
	inc  b                                           ; $655f: $04
	inc  b                                           ; $6560: $04
	inc  b                                           ; $6561: $04
	inc  b                                           ; $6562: $04
	inc  b                                           ; $6563: $04
	inc  b                                           ; $6564: $04
	inc  b                                           ; $6565: $04
	inc  b                                           ; $6566: $04
	inc  b                                           ; $6567: $04
	dec  bc                                          ; $6568: $0b
	dec  bc                                          ; $6569: $0b
	dec  bc                                          ; $656a: $0b
	dec  c                                           ; $656b: $0d
	dec  b                                           ; $656c: $05
	inc  b                                           ; $656d: $04
	inc  b                                           ; $656e: $04
	inc  b                                           ; $656f: $04
	inc  b                                           ; $6570: $04
	inc  b                                           ; $6571: $04
	inc  b                                           ; $6572: $04
	inc  b                                           ; $6573: $04
	inc  b                                           ; $6574: $04
	inc  b                                           ; $6575: $04
	inc  b                                           ; $6576: $04
	inc  b                                           ; $6577: $04
	inc  b                                           ; $6578: $04
	inc  b                                           ; $6579: $04
	inc  b                                           ; $657a: $04
	inc  b                                           ; $657b: $04
	dec  c                                           ; $657c: $0d
	dec  bc                                          ; $657d: $0b
	dec  bc                                          ; $657e: $0b
	dec  c                                           ; $657f: $0d
	nop                                              ; $6580: $00
	ld   bc, $0302                                   ; $6581: $01 $02 $03
	ld   [hl], b                                     ; $6584: $70
	ld   [hl], b                                     ; $6585: $70
	ld   [hl], b                                     ; $6586: $70
	ld   [hl], b                                     ; $6587: $70
	ld   [hl], b                                     ; $6588: $70
	ld   [hl], b                                     ; $6589: $70
	ld   [hl], b                                     ; $658a: $70
	ld   [hl], b                                     ; $658b: $70
	ld   [hl], b                                     ; $658c: $70
	ld   [hl], b                                     ; $658d: $70
	ld   [hl], b                                     ; $658e: $70
	ld   [hl], b                                     ; $658f: $70
	nop                                              ; $6590: $00
	ld   bc, $7202                                   ; $6591: $01 $02 $72
	db   $10                                         ; $6594: $10
	ld   de, $1312                                   ; $6595: $11 $12 $13
	ld   [hl], c                                     ; $6598: $71
	ld   [hl], c                                     ; $6599: $71
	ld   [hl], c                                     ; $659a: $71
	ld   [hl], c                                     ; $659b: $71
	ld   [hl], c                                     ; $659c: $71
	ld   [hl], c                                     ; $659d: $71
	ld   [hl], c                                     ; $659e: $71
	ld   [hl], c                                     ; $659f: $71
	ld   [hl], c                                     ; $65a0: $71
	ld   [hl], c                                     ; $65a1: $71
	ld   [hl], c                                     ; $65a2: $71
	ld   l, a                                        ; $65a3: $6f
	db   $10                                         ; $65a4: $10
	ld   de, $7212                                   ; $65a5: $11 $12 $72
	ld   [hl], d                                     ; $65a8: $72
	ld   a, [hl]                                     ; $65a9: $7e
	ld   [hl+], a                                    ; $65aa: $22
	inc  hl                                          ; $65ab: $23
	ld   l, e                                        ; $65ac: $6b
	ld   l, h                                        ; $65ad: $6c
	ld   [hl], e                                     ; $65ae: $73
	ld   [hl], e                                     ; $65af: $73
	ld   [hl], e                                     ; $65b0: $73
	ld   [hl], e                                     ; $65b1: $73
	rra                                              ; $65b2: $1f
	ld   [hl], e                                     ; $65b3: $73
	ld   [hl], e                                     ; $65b4: $73
	ld   l, l                                        ; $65b5: $6d
	ld   l, [hl]                                     ; $65b6: $6e
	ld   a, a                                        ; $65b7: $7f
	dec  de                                          ; $65b8: $1b
	inc  e                                           ; $65b9: $1c
	dec  e                                           ; $65ba: $1d
	ld   [hl], d                                     ; $65bb: $72
	ld   [hl], d                                     ; $65bc: $72
	ld   [hl], h                                     ; $65bd: $74
	ld   [hl-], a                                    ; $65be: $32
	inc  sp                                          ; $65bf: $33
	inc  b                                           ; $65c0: $04
	dec  b                                           ; $65c1: $05
	ld   b, $07                                      ; $65c2: $06 $07
	ld   h, $27                                      ; $65c4: $26 $27
	jr   z, jr_083_65d3                              ; $65c6: $28 $0b

	inc  c                                           ; $65c8: $0c
	dec  c                                           ; $65c9: $0d
	ld   c, $0f                                      ; $65ca: $0e $0f
	ld   [hl], a                                     ; $65cc: $77
	ld   a, b                                        ; $65cd: $78
	ld   a, c                                        ; $65ce: $79
	ld   [hl], d                                     ; $65cf: $72
	ld   [hl], d                                     ; $65d0: $72
	ld   [hl], h                                     ; $65d1: $74
	ld   b, d                                        ; $65d2: $42

jr_083_65d3:
	ld   b, e                                        ; $65d3: $43
	inc  d                                           ; $65d4: $14
	dec  d                                           ; $65d5: $15
	ld   d, $17                                      ; $65d6: $16 $17
	ld   [hl], $37                                   ; $65d8: $36 $37
	jr   c, jr_083_65f7                              ; $65da: $38 $1b

	inc  e                                           ; $65dc: $1c
	dec  e                                           ; $65dd: $1d
	ld   e, $1f                                      ; $65de: $1e $1f
	ld   [hl], a                                     ; $65e0: $77
	ld   a, b                                        ; $65e1: $78
	ld   a, c                                        ; $65e2: $79
	ld   [hl], d                                     ; $65e3: $72
	ld   a, d                                        ; $65e4: $7a
	ld   a, e                                        ; $65e5: $7b
	jr   nz, jr_083_6609                             ; $65e6: $20 $21

	inc  h                                           ; $65e8: $24
	dec  h                                           ; $65e9: $25
	ld   h, $27                                      ; $65ea: $26 $27
	ld   b, [hl]                                     ; $65ec: $46
	ld   b, a                                        ; $65ed: $47
	ld   c, b                                        ; $65ee: $48
	dec  hl                                          ; $65ef: $2b
	inc  l                                           ; $65f0: $2c
	dec  l                                           ; $65f1: $2d
	ld   l, $2f                                      ; $65f2: $2e $2f
	dec  bc                                          ; $65f4: $0b
	inc  c                                           ; $65f5: $0c
	dec  c                                           ; $65f6: $0d

jr_083_65f7:
	ld   c, $75                                      ; $65f7: $0e $75
	ld   a, h                                        ; $65f9: $7c
	jr   nc, jr_083_662d                             ; $65fa: $30 $31

	inc  [hl]                                        ; $65fc: $34
	dec  [hl]                                        ; $65fd: $35
	ld   [hl], $37                                   ; $65fe: $36 $37
	ld   d, l                                        ; $6600: $55
	ld   d, [hl]                                     ; $6601: $56
	ld   d, a                                        ; $6602: $57
	dec  sp                                          ; $6603: $3b
	inc  a                                           ; $6604: $3c
	dec  a                                           ; $6605: $3d
	ld   a, $3f                                      ; $6606: $3e $3f
	inc  bc                                          ; $6608: $03

jr_083_6609:
	inc  b                                           ; $6609: $04
	dec  b                                           ; $660a: $05
	ld   b, $75                                      ; $660b: $06 $75
	ld   a, l                                        ; $660d: $7d
	ld   b, b                                        ; $660e: $40
	ld   b, c                                        ; $660f: $41
	ld   b, h                                        ; $6610: $44
	ld   b, l                                        ; $6611: $45
	ld   b, [hl]                                     ; $6612: $46
	ld   b, a                                        ; $6613: $47
	ld   h, h                                        ; $6614: $64
	ld   h, l                                        ; $6615: $65
	ld   h, [hl]                                     ; $6616: $66
	ld   c, e                                        ; $6617: $4b
	ld   c, h                                        ; $6618: $4c
	ld   c, l                                        ; $6619: $4d
	ld   c, [hl]                                     ; $661a: $4e
	ld   c, a                                        ; $661b: $4f
	inc  de                                          ; $661c: $13
	inc  d                                           ; $661d: $14
	dec  d                                           ; $661e: $15
	ld   d, $50                                      ; $661f: $16 $50
	ld   d, c                                        ; $6621: $51
	ld   d, d                                        ; $6622: $52
	ld   d, e                                        ; $6623: $53
	ld   d, h                                        ; $6624: $54
	ld   d, l                                        ; $6625: $55
	ld   d, [hl]                                     ; $6626: $56
	ld   d, a                                        ; $6627: $57
	ld   e, b                                        ; $6628: $58
	ld   e, c                                        ; $6629: $59
	ld   e, d                                        ; $662a: $5a
	ld   e, e                                        ; $662b: $5b
	ld   e, h                                        ; $662c: $5c

jr_083_662d:
	ld   e, l                                        ; $662d: $5d
	ld   e, [hl]                                     ; $662e: $5e
	ld   e, a                                        ; $662f: $5f
	rlca                                             ; $6630: $07
	ld   [$0a09], sp                                 ; $6631: $08 $09 $0a
	ld   h, b                                        ; $6634: $60
	halt                                             ; $6635: $76
	ld   h, c                                        ; $6636: $61
	ld   h, d                                        ; $6637: $62
	ld   h, e                                        ; $6638: $63
	ld   h, h                                        ; $6639: $64
	halt                                             ; $663a: $76
	ld   h, l                                        ; $663b: $65
	ld   h, [hl]                                     ; $663c: $66
	ld   h, a                                        ; $663d: $67
	halt                                             ; $663e: $76
	halt                                             ; $663f: $76
	ld   l, b                                        ; $6640: $68
	ld   l, c                                        ; $6641: $69
	ld   l, d                                        ; $6642: $6a
	halt                                             ; $6643: $76
	rla                                              ; $6644: $17
	jr   jr_083_6660                                 ; $6645: $18 $19

	ld   a, [de]                                     ; $6647: $1a
	dec  b                                           ; $6648: $05
	dec  b                                           ; $6649: $05
	dec  b                                           ; $664a: $05
	dec  b                                           ; $664b: $05
	dec  b                                           ; $664c: $05
	dec  b                                           ; $664d: $05
	dec  b                                           ; $664e: $05
	dec  b                                           ; $664f: $05
	dec  b                                           ; $6650: $05
	dec  b                                           ; $6651: $05
	dec  b                                           ; $6652: $05
	dec  b                                           ; $6653: $05
	dec  b                                           ; $6654: $05
	dec  b                                           ; $6655: $05
	dec  b                                           ; $6656: $05
	dec  b                                           ; $6657: $05
	dec  c                                           ; $6658: $0d
	dec  c                                           ; $6659: $0d
	dec  c                                           ; $665a: $0d
	dec  b                                           ; $665b: $05
	dec  b                                           ; $665c: $05
	dec  b                                           ; $665d: $05
	dec  b                                           ; $665e: $05
	dec  b                                           ; $665f: $05

jr_083_6660:
	dec  b                                           ; $6660: $05
	dec  b                                           ; $6661: $05
	dec  b                                           ; $6662: $05
	dec  b                                           ; $6663: $05
	dec  b                                           ; $6664: $05
	dec  b                                           ; $6665: $05
	dec  b                                           ; $6666: $05
	dec  b                                           ; $6667: $05
	dec  b                                           ; $6668: $05
	dec  b                                           ; $6669: $05
	dec  b                                           ; $666a: $05
	dec  b                                           ; $666b: $05
	dec  c                                           ; $666c: $0d
	dec  c                                           ; $666d: $0d
	dec  c                                           ; $666e: $0d
	dec  b                                           ; $666f: $05
	dec  b                                           ; $6670: $05
	dec  b                                           ; $6671: $05
	dec  b                                           ; $6672: $05
	dec  b                                           ; $6673: $05
	dec  b                                           ; $6674: $05
	dec  b                                           ; $6675: $05
	dec  b                                           ; $6676: $05
	dec  b                                           ; $6677: $05
	dec  b                                           ; $6678: $05
	dec  b                                           ; $6679: $05
	dec  c                                           ; $667a: $0d
	dec  b                                           ; $667b: $05
	dec  b                                           ; $667c: $05
	dec  b                                           ; $667d: $05
	dec  b                                           ; $667e: $05
	dec  b                                           ; $667f: $05
	dec  c                                           ; $6680: $0d
	dec  c                                           ; $6681: $0d
	dec  c                                           ; $6682: $0d
	dec  b                                           ; $6683: $05
	dec  b                                           ; $6684: $05
	dec  b                                           ; $6685: $05
	inc  bc                                          ; $6686: $03
	dec  b                                           ; $6687: $05
	dec  b                                           ; $6688: $05
	dec  b                                           ; $6689: $05
	inc  bc                                          ; $668a: $03
	inc  bc                                          ; $668b: $03
	dec  bc                                          ; $668c: $0b
	dec  c                                           ; $668d: $0d
	dec  c                                           ; $668e: $0d
	inc  bc                                          ; $668f: $03
	inc  bc                                          ; $6690: $03
	inc  bc                                          ; $6691: $03
	inc  bc                                          ; $6692: $03
	inc  bc                                          ; $6693: $03
	dec  b                                           ; $6694: $05
	inc  bc                                          ; $6695: $03
	dec  b                                           ; $6696: $05
	dec  b                                           ; $6697: $05
	dec  b                                           ; $6698: $05
	dec  b                                           ; $6699: $05
	inc  bc                                          ; $669a: $03
	dec  b                                           ; $669b: $05
	dec  b                                           ; $669c: $05
	dec  b                                           ; $669d: $05
	inc  bc                                          ; $669e: $03
	inc  bc                                          ; $669f: $03
	dec  bc                                          ; $66a0: $0b
	dec  bc                                          ; $66a1: $0b
	dec  c                                           ; $66a2: $0d
	inc  bc                                          ; $66a3: $03
	inc  bc                                          ; $66a4: $03
	inc  bc                                          ; $66a5: $03
	inc  bc                                          ; $66a6: $03
	inc  bc                                          ; $66a7: $03
	dec  b                                           ; $66a8: $05
	inc  bc                                          ; $66a9: $03
	dec  b                                           ; $66aa: $05
	dec  b                                           ; $66ab: $05
	inc  b                                           ; $66ac: $04
	inc  b                                           ; $66ad: $04
	inc  bc                                          ; $66ae: $03
	inc  b                                           ; $66af: $04
	inc  b                                           ; $66b0: $04
	dec  b                                           ; $66b1: $05
	inc  bc                                          ; $66b2: $03
	inc  bc                                          ; $66b3: $03
	dec  bc                                          ; $66b4: $0b
	dec  bc                                          ; $66b5: $0b
	dec  c                                           ; $66b6: $0d
	inc  bc                                          ; $66b7: $03
	inc  bc                                          ; $66b8: $03
	inc  bc                                          ; $66b9: $03
	inc  bc                                          ; $66ba: $03
	inc  bc                                          ; $66bb: $03
	dec  c                                           ; $66bc: $0d
	dec  bc                                          ; $66bd: $0b
	dec  c                                           ; $66be: $0d
	dec  c                                           ; $66bf: $0d
	inc  b                                           ; $66c0: $04
	inc  b                                           ; $66c1: $04
	inc  bc                                          ; $66c2: $03
	inc  b                                           ; $66c3: $04
	dec  b                                           ; $66c4: $05
	inc  bc                                          ; $66c5: $03
	inc  bc                                          ; $66c6: $03
	inc  bc                                          ; $66c7: $03
	dec  bc                                          ; $66c8: $0b
	dec  bc                                          ; $66c9: $0b
	dec  bc                                          ; $66ca: $0b
	inc  bc                                          ; $66cb: $03
	inc  bc                                          ; $66cc: $03
	inc  bc                                          ; $66cd: $03
	inc  bc                                          ; $66ce: $03
	inc  bc                                          ; $66cf: $03
	dec  c                                           ; $66d0: $0d
	dec  bc                                          ; $66d1: $0b
	inc  c                                           ; $66d2: $0c
	dec  c                                           ; $66d3: $0d
	inc  b                                           ; $66d4: $04
	inc  b                                           ; $66d5: $04
	inc  bc                                          ; $66d6: $03
	dec  b                                           ; $66d7: $05
	dec  b                                           ; $66d8: $05
	inc  bc                                          ; $66d9: $03
	inc  bc                                          ; $66da: $03
	inc  bc                                          ; $66db: $03
	dec  bc                                          ; $66dc: $0b
	dec  bc                                          ; $66dd: $0b
	dec  bc                                          ; $66de: $0b
	inc  bc                                          ; $66df: $03
	inc  bc                                          ; $66e0: $03
	inc  bc                                          ; $66e1: $03
	inc  bc                                          ; $66e2: $03
	inc  bc                                          ; $66e3: $03
	dec  bc                                          ; $66e4: $0b
	dec  bc                                          ; $66e5: $0b
	dec  c                                           ; $66e6: $0d
	dec  c                                           ; $66e7: $0d
	inc  b                                           ; $66e8: $04
	inc  b                                           ; $66e9: $04
	inc  b                                           ; $66ea: $04
	inc  b                                           ; $66eb: $04
	inc  b                                           ; $66ec: $04
	inc  b                                           ; $66ed: $04
	inc  b                                           ; $66ee: $04
	inc  b                                           ; $66ef: $04
	inc  b                                           ; $66f0: $04
	inc  b                                           ; $66f1: $04
	inc  b                                           ; $66f2: $04
	inc  b                                           ; $66f3: $04
	inc  b                                           ; $66f4: $04
	inc  b                                           ; $66f5: $04
	inc  b                                           ; $66f6: $04
	inc  b                                           ; $66f7: $04
	dec  bc                                          ; $66f8: $0b
	dec  bc                                          ; $66f9: $0b
	dec  bc                                          ; $66fa: $0b
	dec  c                                           ; $66fb: $0d
	dec  b                                           ; $66fc: $05
	inc  b                                           ; $66fd: $04
	inc  b                                           ; $66fe: $04
	inc  b                                           ; $66ff: $04
	inc  b                                           ; $6700: $04
	inc  b                                           ; $6701: $04
	inc  b                                           ; $6702: $04
	inc  b                                           ; $6703: $04
	inc  b                                           ; $6704: $04
	inc  b                                           ; $6705: $04
	inc  b                                           ; $6706: $04
	inc  b                                           ; $6707: $04
	inc  b                                           ; $6708: $04
	inc  b                                           ; $6709: $04
	inc  b                                           ; $670a: $04
	inc  b                                           ; $670b: $04
	dec  c                                           ; $670c: $0d
	dec  bc                                          ; $670d: $0b
	dec  bc                                          ; $670e: $0b
	dec  c                                           ; $670f: $0d
	nop                                              ; $6710: $00
	ld   bc, $0302                                   ; $6711: $01 $02 $03
	ld   [hl], b                                     ; $6714: $70
	ld   [hl], b                                     ; $6715: $70
	ld   [hl], b                                     ; $6716: $70
	ld   [hl], b                                     ; $6717: $70
	ld   [hl], b                                     ; $6718: $70
	ld   [hl], b                                     ; $6719: $70
	ld   [hl], b                                     ; $671a: $70
	ld   [hl], b                                     ; $671b: $70
	ld   [hl], b                                     ; $671c: $70
	ld   [hl], b                                     ; $671d: $70
	ld   [hl], b                                     ; $671e: $70
	ld   [hl], b                                     ; $671f: $70
	nop                                              ; $6720: $00
	ld   bc, $7202                                   ; $6721: $01 $02 $72
	db   $10                                         ; $6724: $10
	ld   de, $1312                                   ; $6725: $11 $12 $13
	ld   [hl], c                                     ; $6728: $71
	ld   [hl], c                                     ; $6729: $71
	ld   [hl], c                                     ; $672a: $71
	ld   [hl], c                                     ; $672b: $71
	ld   [hl], c                                     ; $672c: $71
	ld   [hl], c                                     ; $672d: $71
	ld   [hl], c                                     ; $672e: $71
	ld   [hl], c                                     ; $672f: $71
	ld   [hl], c                                     ; $6730: $71
	ld   [hl], c                                     ; $6731: $71
	ld   [hl], c                                     ; $6732: $71
	ld   l, a                                        ; $6733: $6f
	db   $10                                         ; $6734: $10
	ld   de, $7212                                   ; $6735: $11 $12 $72
	ld   [hl], d                                     ; $6738: $72
	ld   a, [hl]                                     ; $6739: $7e
	ld   [hl+], a                                    ; $673a: $22
	inc  hl                                          ; $673b: $23
	ld   l, e                                        ; $673c: $6b
	ld   l, h                                        ; $673d: $6c
	ld   [hl], e                                     ; $673e: $73
	ld   [hl], e                                     ; $673f: $73
	ld   [hl], e                                     ; $6740: $73
	ld   [hl], e                                     ; $6741: $73
	ld   [hl], e                                     ; $6742: $73
	ld   [hl], e                                     ; $6743: $73
	cpl                                              ; $6744: $2f
	ld   l, l                                        ; $6745: $6d
	ld   l, [hl]                                     ; $6746: $6e
	ld   a, a                                        ; $6747: $7f
	dec  de                                          ; $6748: $1b
	inc  e                                           ; $6749: $1c
	dec  e                                           ; $674a: $1d
	ld   [hl], d                                     ; $674b: $72
	ld   [hl], d                                     ; $674c: $72
	ld   [hl], h                                     ; $674d: $74
	ld   [hl-], a                                    ; $674e: $32
	inc  sp                                          ; $674f: $33
	inc  b                                           ; $6750: $04
	dec  b                                           ; $6751: $05
	ld   b, $07                                      ; $6752: $06 $07
	ld   [$2909], sp                                 ; $6754: $08 $09 $29
	ld   a, [hl+]                                    ; $6757: $2a
	dec  hl                                          ; $6758: $2b
	dec  c                                           ; $6759: $0d
	ld   c, $0f                                      ; $675a: $0e $0f
	ld   [hl], a                                     ; $675c: $77
	ld   a, b                                        ; $675d: $78
	ld   a, c                                        ; $675e: $79
	ld   [hl], d                                     ; $675f: $72
	ld   [hl], d                                     ; $6760: $72
	ld   [hl], h                                     ; $6761: $74
	ld   b, d                                        ; $6762: $42
	ld   b, e                                        ; $6763: $43
	inc  d                                           ; $6764: $14
	dec  d                                           ; $6765: $15
	ld   d, $17                                      ; $6766: $16 $17
	jr   @+$1b                                       ; $6768: $18 $19

	add  hl, sp                                      ; $676a: $39
	ld   a, [hl-]                                    ; $676b: $3a
	dec  sp                                          ; $676c: $3b
	dec  e                                           ; $676d: $1d
	ld   e, $1f                                      ; $676e: $1e $1f
	ld   [hl], a                                     ; $6770: $77
	ld   a, b                                        ; $6771: $78
	ld   a, c                                        ; $6772: $79
	ld   [hl], d                                     ; $6773: $72
	ld   a, d                                        ; $6774: $7a
	ld   a, e                                        ; $6775: $7b
	jr   nz, jr_083_6799                             ; $6776: $20 $21

	inc  h                                           ; $6778: $24
	dec  h                                           ; $6779: $25
	ld   h, $27                                      ; $677a: $26 $27
	jr   z, jr_083_67a7                              ; $677c: $28 $29

	ld   c, c                                        ; $677e: $49
	ld   c, d                                        ; $677f: $4a
	ld   c, e                                        ; $6780: $4b
	dec  l                                           ; $6781: $2d
	ld   l, $2f                                      ; $6782: $2e $2f
	dec  bc                                          ; $6784: $0b
	inc  c                                           ; $6785: $0c
	dec  c                                           ; $6786: $0d
	ld   c, $75                                      ; $6787: $0e $75
	ld   a, h                                        ; $6789: $7c
	jr   nc, jr_083_67bd                             ; $678a: $30 $31

	inc  [hl]                                        ; $678c: $34
	dec  [hl]                                        ; $678d: $35
	ld   [hl], $37                                   ; $678e: $36 $37
	jr   c, jr_083_67cb                              ; $6790: $38 $39

	ld   e, b                                        ; $6792: $58
	ld   e, c                                        ; $6793: $59
	ld   e, d                                        ; $6794: $5a
	dec  a                                           ; $6795: $3d
	ld   a, $3f                                      ; $6796: $3e $3f
	inc  bc                                          ; $6798: $03

jr_083_6799:
	inc  b                                           ; $6799: $04
	dec  b                                           ; $679a: $05
	ld   b, $75                                      ; $679b: $06 $75
	ld   a, l                                        ; $679d: $7d
	ld   b, b                                        ; $679e: $40
	ld   b, c                                        ; $679f: $41
	ld   b, h                                        ; $67a0: $44
	ld   b, l                                        ; $67a1: $45
	ld   b, [hl]                                     ; $67a2: $46
	ld   b, a                                        ; $67a3: $47
	ld   c, b                                        ; $67a4: $48
	ld   c, c                                        ; $67a5: $49
	ld   h, a                                        ; $67a6: $67

jr_083_67a7:
	ld   l, b                                        ; $67a7: $68
	ld   l, c                                        ; $67a8: $69
	ld   c, l                                        ; $67a9: $4d
	ld   c, [hl]                                     ; $67aa: $4e
	ld   c, a                                        ; $67ab: $4f
	inc  de                                          ; $67ac: $13
	inc  d                                           ; $67ad: $14
	dec  d                                           ; $67ae: $15
	ld   d, $50                                      ; $67af: $16 $50
	ld   d, c                                        ; $67b1: $51
	ld   d, d                                        ; $67b2: $52
	ld   d, e                                        ; $67b3: $53
	ld   d, h                                        ; $67b4: $54
	ld   d, l                                        ; $67b5: $55
	ld   d, [hl]                                     ; $67b6: $56
	ld   d, a                                        ; $67b7: $57
	ld   e, b                                        ; $67b8: $58
	ld   e, c                                        ; $67b9: $59
	ld   e, d                                        ; $67ba: $5a
	ld   e, e                                        ; $67bb: $5b
	ld   e, h                                        ; $67bc: $5c

jr_083_67bd:
	ld   e, l                                        ; $67bd: $5d
	ld   e, [hl]                                     ; $67be: $5e
	ld   e, a                                        ; $67bf: $5f
	rlca                                             ; $67c0: $07
	ld   [$0a09], sp                                 ; $67c1: $08 $09 $0a
	ld   h, b                                        ; $67c4: $60
	halt                                             ; $67c5: $76
	ld   h, c                                        ; $67c6: $61
	ld   h, d                                        ; $67c7: $62
	ld   h, e                                        ; $67c8: $63
	ld   h, h                                        ; $67c9: $64
	halt                                             ; $67ca: $76

jr_083_67cb:
	ld   h, l                                        ; $67cb: $65
	ld   h, [hl]                                     ; $67cc: $66
	ld   h, a                                        ; $67cd: $67
	halt                                             ; $67ce: $76
	halt                                             ; $67cf: $76
	ld   l, b                                        ; $67d0: $68
	ld   l, c                                        ; $67d1: $69
	ld   l, d                                        ; $67d2: $6a
	halt                                             ; $67d3: $76
	rla                                              ; $67d4: $17
	jr   jr_083_67f0                                 ; $67d5: $18 $19

	ld   a, [de]                                     ; $67d7: $1a
	dec  b                                           ; $67d8: $05
	dec  b                                           ; $67d9: $05
	dec  b                                           ; $67da: $05
	dec  b                                           ; $67db: $05
	dec  b                                           ; $67dc: $05
	dec  b                                           ; $67dd: $05
	dec  b                                           ; $67de: $05
	dec  b                                           ; $67df: $05
	dec  b                                           ; $67e0: $05
	dec  b                                           ; $67e1: $05
	dec  b                                           ; $67e2: $05
	dec  b                                           ; $67e3: $05
	dec  b                                           ; $67e4: $05
	dec  b                                           ; $67e5: $05
	dec  b                                           ; $67e6: $05
	dec  b                                           ; $67e7: $05
	dec  c                                           ; $67e8: $0d
	dec  c                                           ; $67e9: $0d
	dec  c                                           ; $67ea: $0d
	dec  b                                           ; $67eb: $05
	dec  b                                           ; $67ec: $05
	dec  b                                           ; $67ed: $05
	dec  b                                           ; $67ee: $05
	dec  b                                           ; $67ef: $05

jr_083_67f0:
	dec  b                                           ; $67f0: $05
	dec  b                                           ; $67f1: $05
	dec  b                                           ; $67f2: $05
	dec  b                                           ; $67f3: $05
	dec  b                                           ; $67f4: $05
	dec  b                                           ; $67f5: $05
	dec  b                                           ; $67f6: $05
	dec  b                                           ; $67f7: $05
	dec  b                                           ; $67f8: $05
	dec  b                                           ; $67f9: $05
	dec  b                                           ; $67fa: $05
	dec  b                                           ; $67fb: $05
	dec  c                                           ; $67fc: $0d
	dec  c                                           ; $67fd: $0d
	dec  c                                           ; $67fe: $0d
	dec  b                                           ; $67ff: $05
	dec  b                                           ; $6800: $05
	dec  b                                           ; $6801: $05
	dec  b                                           ; $6802: $05
	dec  b                                           ; $6803: $05
	dec  b                                           ; $6804: $05
	dec  b                                           ; $6805: $05
	dec  b                                           ; $6806: $05
	dec  b                                           ; $6807: $05
	dec  b                                           ; $6808: $05
	dec  b                                           ; $6809: $05
	dec  b                                           ; $680a: $05
	dec  b                                           ; $680b: $05
	dec  c                                           ; $680c: $0d
	dec  b                                           ; $680d: $05
	dec  b                                           ; $680e: $05
	dec  b                                           ; $680f: $05
	dec  c                                           ; $6810: $0d
	dec  c                                           ; $6811: $0d
	dec  c                                           ; $6812: $0d
	dec  b                                           ; $6813: $05
	dec  b                                           ; $6814: $05
	dec  b                                           ; $6815: $05
	inc  bc                                          ; $6816: $03
	dec  b                                           ; $6817: $05
	dec  b                                           ; $6818: $05
	dec  b                                           ; $6819: $05
	inc  bc                                          ; $681a: $03
	inc  bc                                          ; $681b: $03
	inc  bc                                          ; $681c: $03
	inc  bc                                          ; $681d: $03
	dec  bc                                          ; $681e: $0b
	dec  bc                                          ; $681f: $0b
	dec  c                                           ; $6820: $0d
	inc  bc                                          ; $6821: $03
	inc  bc                                          ; $6822: $03
	inc  bc                                          ; $6823: $03
	dec  b                                           ; $6824: $05
	inc  bc                                          ; $6825: $03
	dec  b                                           ; $6826: $05
	dec  b                                           ; $6827: $05
	dec  b                                           ; $6828: $05
	dec  b                                           ; $6829: $05
	inc  bc                                          ; $682a: $03
	dec  b                                           ; $682b: $05
	dec  b                                           ; $682c: $05
	dec  b                                           ; $682d: $05
	inc  bc                                          ; $682e: $03
	inc  bc                                          ; $682f: $03
	inc  bc                                          ; $6830: $03
	inc  bc                                          ; $6831: $03
	dec  bc                                          ; $6832: $0b
	dec  bc                                          ; $6833: $0b
	dec  c                                           ; $6834: $0d
	inc  bc                                          ; $6835: $03
	inc  bc                                          ; $6836: $03
	inc  bc                                          ; $6837: $03
	dec  b                                           ; $6838: $05
	inc  bc                                          ; $6839: $03
	dec  b                                           ; $683a: $05
	dec  b                                           ; $683b: $05
	inc  b                                           ; $683c: $04
	inc  b                                           ; $683d: $04
	inc  bc                                          ; $683e: $03
	inc  b                                           ; $683f: $04
	inc  b                                           ; $6840: $04
	dec  b                                           ; $6841: $05
	inc  bc                                          ; $6842: $03
	inc  bc                                          ; $6843: $03
	inc  bc                                          ; $6844: $03
	inc  bc                                          ; $6845: $03
	dec  bc                                          ; $6846: $0b
	dec  bc                                          ; $6847: $0b
	dec  bc                                          ; $6848: $0b
	inc  bc                                          ; $6849: $03
	inc  bc                                          ; $684a: $03
	inc  bc                                          ; $684b: $03
	dec  c                                           ; $684c: $0d
	dec  bc                                          ; $684d: $0b
	dec  c                                           ; $684e: $0d
	dec  c                                           ; $684f: $0d
	inc  b                                           ; $6850: $04
	inc  b                                           ; $6851: $04
	inc  bc                                          ; $6852: $03
	inc  b                                           ; $6853: $04
	dec  b                                           ; $6854: $05
	inc  bc                                          ; $6855: $03
	inc  bc                                          ; $6856: $03
	inc  bc                                          ; $6857: $03
	inc  bc                                          ; $6858: $03
	inc  bc                                          ; $6859: $03
	dec  c                                           ; $685a: $0d
	dec  bc                                          ; $685b: $0b
	dec  bc                                          ; $685c: $0b
	inc  bc                                          ; $685d: $03
	inc  bc                                          ; $685e: $03
	inc  bc                                          ; $685f: $03
	dec  c                                           ; $6860: $0d
	dec  bc                                          ; $6861: $0b
	inc  c                                           ; $6862: $0c
	dec  c                                           ; $6863: $0d
	inc  b                                           ; $6864: $04
	inc  b                                           ; $6865: $04
	inc  bc                                          ; $6866: $03
	dec  b                                           ; $6867: $05
	dec  b                                           ; $6868: $05
	inc  bc                                          ; $6869: $03
	inc  bc                                          ; $686a: $03
	inc  bc                                          ; $686b: $03
	inc  bc                                          ; $686c: $03
	inc  bc                                          ; $686d: $03
	dec  c                                           ; $686e: $0d
	dec  bc                                          ; $686f: $0b
	dec  bc                                          ; $6870: $0b
	inc  bc                                          ; $6871: $03
	inc  bc                                          ; $6872: $03
	inc  bc                                          ; $6873: $03
	dec  bc                                          ; $6874: $0b
	dec  bc                                          ; $6875: $0b
	dec  c                                           ; $6876: $0d
	dec  c                                           ; $6877: $0d
	inc  b                                           ; $6878: $04
	inc  b                                           ; $6879: $04
	inc  b                                           ; $687a: $04
	inc  b                                           ; $687b: $04
	inc  b                                           ; $687c: $04
	inc  b                                           ; $687d: $04
	inc  b                                           ; $687e: $04
	inc  b                                           ; $687f: $04
	inc  b                                           ; $6880: $04
	inc  b                                           ; $6881: $04
	inc  b                                           ; $6882: $04
	inc  b                                           ; $6883: $04
	inc  b                                           ; $6884: $04
	inc  b                                           ; $6885: $04
	inc  b                                           ; $6886: $04
	inc  b                                           ; $6887: $04
	dec  bc                                          ; $6888: $0b
	dec  bc                                          ; $6889: $0b
	dec  bc                                          ; $688a: $0b
	dec  c                                           ; $688b: $0d
	dec  b                                           ; $688c: $05
	inc  b                                           ; $688d: $04
	inc  b                                           ; $688e: $04
	inc  b                                           ; $688f: $04
	inc  b                                           ; $6890: $04
	inc  b                                           ; $6891: $04
	inc  b                                           ; $6892: $04
	inc  b                                           ; $6893: $04
	inc  b                                           ; $6894: $04
	inc  b                                           ; $6895: $04
	inc  b                                           ; $6896: $04
	inc  b                                           ; $6897: $04
	inc  b                                           ; $6898: $04
	inc  b                                           ; $6899: $04
	inc  b                                           ; $689a: $04
	inc  b                                           ; $689b: $04
	dec  c                                           ; $689c: $0d
	dec  bc                                          ; $689d: $0b
	dec  bc                                          ; $689e: $0b
	dec  c                                           ; $689f: $0d
	nop                                              ; $68a0: $00
	ld   bc, $0302                                   ; $68a1: $01 $02 $03
	ld   [hl], b                                     ; $68a4: $70
	ld   [hl], b                                     ; $68a5: $70
	ld   [hl], b                                     ; $68a6: $70
	ld   [hl], b                                     ; $68a7: $70
	ld   [hl], b                                     ; $68a8: $70
	ld   [hl], b                                     ; $68a9: $70
	ld   [hl], b                                     ; $68aa: $70
	ld   [hl], b                                     ; $68ab: $70
	ld   [hl], b                                     ; $68ac: $70
	ld   [hl], b                                     ; $68ad: $70
	ld   [hl], b                                     ; $68ae: $70
	ld   [hl], b                                     ; $68af: $70
	nop                                              ; $68b0: $00
	ld   bc, $7202                                   ; $68b1: $01 $02 $72
	db   $10                                         ; $68b4: $10
	ld   de, $1312                                   ; $68b5: $11 $12 $13
	ld   [hl], c                                     ; $68b8: $71
	ld   [hl], c                                     ; $68b9: $71
	ld   [hl], c                                     ; $68ba: $71
	ld   [hl], c                                     ; $68bb: $71
	ld   [hl], c                                     ; $68bc: $71
	ld   [hl], c                                     ; $68bd: $71
	ld   [hl], c                                     ; $68be: $71
	ld   [hl], c                                     ; $68bf: $71
	ld   [hl], c                                     ; $68c0: $71
	ld   [hl], c                                     ; $68c1: $71
	ld   [hl], c                                     ; $68c2: $71
	ld   l, a                                        ; $68c3: $6f
	db   $10                                         ; $68c4: $10
	ld   de, $7212                                   ; $68c5: $11 $12 $72
	ld   [hl], d                                     ; $68c8: $72
	ld   a, [hl]                                     ; $68c9: $7e
	ld   [hl+], a                                    ; $68ca: $22
	inc  hl                                          ; $68cb: $23
	ld   l, e                                        ; $68cc: $6b
	ld   l, h                                        ; $68cd: $6c
	ld   [hl], e                                     ; $68ce: $73
	ld   [hl], e                                     ; $68cf: $73
	ld   [hl], e                                     ; $68d0: $73
	ld   [hl], e                                     ; $68d1: $73
	ld   [hl], e                                     ; $68d2: $73
	ld   [hl], e                                     ; $68d3: $73
	ld   [hl], e                                     ; $68d4: $73
	ccf                                              ; $68d5: $3f
	ld   l, [hl]                                     ; $68d6: $6e
	ld   a, a                                        ; $68d7: $7f
	dec  de                                          ; $68d8: $1b
	inc  e                                           ; $68d9: $1c
	dec  e                                           ; $68da: $1d
	ld   [hl], d                                     ; $68db: $72
	ld   [hl], d                                     ; $68dc: $72
	ld   [hl], h                                     ; $68dd: $74
	ld   [hl-], a                                    ; $68de: $32
	inc  sp                                          ; $68df: $33
	inc  b                                           ; $68e0: $04
	dec  b                                           ; $68e1: $05
	ld   b, $07                                      ; $68e2: $06 $07
	ld   [$0a09], sp                                 ; $68e4: $08 $09 $0a
	inc  l                                           ; $68e7: $2c
	dec  l                                           ; $68e8: $2d
	ld   l, $0e                                      ; $68e9: $2e $0e
	rrca                                             ; $68eb: $0f
	ld   [hl], a                                     ; $68ec: $77
	ld   a, b                                        ; $68ed: $78
	ld   a, c                                        ; $68ee: $79
	ld   [hl], d                                     ; $68ef: $72
	ld   [hl], d                                     ; $68f0: $72
	ld   [hl], h                                     ; $68f1: $74
	ld   b, d                                        ; $68f2: $42
	ld   b, e                                        ; $68f3: $43
	inc  d                                           ; $68f4: $14
	dec  d                                           ; $68f5: $15
	ld   d, $17                                      ; $68f6: $16 $17
	jr   @+$1b                                       ; $68f8: $18 $19

	ld   a, [de]                                     ; $68fa: $1a
	inc  a                                           ; $68fb: $3c
	dec  a                                           ; $68fc: $3d
	ld   a, $1e                                      ; $68fd: $3e $1e
	rra                                              ; $68ff: $1f
	ld   [hl], a                                     ; $6900: $77
	ld   a, b                                        ; $6901: $78
	ld   a, c                                        ; $6902: $79
	ld   [hl], d                                     ; $6903: $72
	ld   a, d                                        ; $6904: $7a
	ld   a, e                                        ; $6905: $7b
	jr   nz, jr_083_6929                             ; $6906: $20 $21

	inc  h                                           ; $6908: $24
	dec  h                                           ; $6909: $25
	ld   h, $27                                      ; $690a: $26 $27
	jr   z, jr_083_6937                              ; $690c: $28 $29

	ld   a, [hl+]                                    ; $690e: $2a
	ld   c, h                                        ; $690f: $4c
	ld   c, l                                        ; $6910: $4d
	ld   c, [hl]                                     ; $6911: $4e
	ld   l, $2f                                      ; $6912: $2e $2f
	dec  bc                                          ; $6914: $0b
	inc  c                                           ; $6915: $0c
	dec  c                                           ; $6916: $0d
	ld   c, $75                                      ; $6917: $0e $75
	ld   a, h                                        ; $6919: $7c
	jr   nc, jr_083_694d                             ; $691a: $30 $31

	inc  [hl]                                        ; $691c: $34
	dec  [hl]                                        ; $691d: $35
	ld   [hl], $37                                   ; $691e: $36 $37
	jr   c, jr_083_695b                              ; $6920: $38 $39

	ld   a, [hl-]                                    ; $6922: $3a
	ld   e, e                                        ; $6923: $5b
	ld   e, h                                        ; $6924: $5c
	ld   e, l                                        ; $6925: $5d
	ld   a, $3f                                      ; $6926: $3e $3f
	inc  bc                                          ; $6928: $03

jr_083_6929:
	inc  b                                           ; $6929: $04
	dec  b                                           ; $692a: $05
	ld   b, $75                                      ; $692b: $06 $75
	ld   a, l                                        ; $692d: $7d
	ld   b, b                                        ; $692e: $40
	ld   b, c                                        ; $692f: $41
	ld   b, h                                        ; $6930: $44
	ld   b, l                                        ; $6931: $45
	ld   b, [hl]                                     ; $6932: $46
	ld   b, a                                        ; $6933: $47
	ld   c, b                                        ; $6934: $48
	ld   c, c                                        ; $6935: $49
	ld   c, d                                        ; $6936: $4a

jr_083_6937:
	ld   l, d                                        ; $6937: $6a
	ld   l, e                                        ; $6938: $6b
	ld   l, h                                        ; $6939: $6c
	ld   c, [hl]                                     ; $693a: $4e
	ld   c, a                                        ; $693b: $4f
	inc  de                                          ; $693c: $13
	inc  d                                           ; $693d: $14
	dec  d                                           ; $693e: $15
	ld   d, $50                                      ; $693f: $16 $50
	ld   d, c                                        ; $6941: $51
	ld   d, d                                        ; $6942: $52
	ld   d, e                                        ; $6943: $53
	ld   d, h                                        ; $6944: $54
	ld   d, l                                        ; $6945: $55
	ld   d, [hl]                                     ; $6946: $56
	ld   d, a                                        ; $6947: $57
	ld   e, b                                        ; $6948: $58
	ld   e, c                                        ; $6949: $59
	ld   e, d                                        ; $694a: $5a
	ld   e, e                                        ; $694b: $5b
	ld   e, h                                        ; $694c: $5c

jr_083_694d:
	ld   e, l                                        ; $694d: $5d
	ld   e, [hl]                                     ; $694e: $5e
	ld   e, a                                        ; $694f: $5f
	rlca                                             ; $6950: $07
	ld   [$0a09], sp                                 ; $6951: $08 $09 $0a
	ld   h, b                                        ; $6954: $60
	halt                                             ; $6955: $76
	ld   h, c                                        ; $6956: $61
	ld   h, d                                        ; $6957: $62
	ld   h, e                                        ; $6958: $63
	ld   h, h                                        ; $6959: $64
	halt                                             ; $695a: $76

jr_083_695b:
	ld   h, l                                        ; $695b: $65
	ld   h, [hl]                                     ; $695c: $66
	ld   h, a                                        ; $695d: $67
	halt                                             ; $695e: $76
	halt                                             ; $695f: $76
	ld   l, b                                        ; $6960: $68
	ld   l, c                                        ; $6961: $69
	ld   l, d                                        ; $6962: $6a
	halt                                             ; $6963: $76
	rla                                              ; $6964: $17
	jr   jr_083_6980                                 ; $6965: $18 $19

	ld   a, [de]                                     ; $6967: $1a
	dec  b                                           ; $6968: $05
	dec  b                                           ; $6969: $05
	dec  b                                           ; $696a: $05
	dec  b                                           ; $696b: $05
	dec  b                                           ; $696c: $05
	dec  b                                           ; $696d: $05
	dec  b                                           ; $696e: $05
	dec  b                                           ; $696f: $05
	dec  b                                           ; $6970: $05
	dec  b                                           ; $6971: $05
	dec  b                                           ; $6972: $05
	dec  b                                           ; $6973: $05
	dec  b                                           ; $6974: $05
	dec  b                                           ; $6975: $05
	dec  b                                           ; $6976: $05
	dec  b                                           ; $6977: $05
	dec  c                                           ; $6978: $0d
	dec  c                                           ; $6979: $0d
	dec  c                                           ; $697a: $0d
	dec  b                                           ; $697b: $05
	dec  b                                           ; $697c: $05
	dec  b                                           ; $697d: $05
	dec  b                                           ; $697e: $05
	dec  b                                           ; $697f: $05

jr_083_6980:
	dec  b                                           ; $6980: $05
	dec  b                                           ; $6981: $05
	dec  b                                           ; $6982: $05
	dec  b                                           ; $6983: $05
	dec  b                                           ; $6984: $05
	dec  b                                           ; $6985: $05
	dec  b                                           ; $6986: $05
	dec  b                                           ; $6987: $05
	dec  b                                           ; $6988: $05
	dec  b                                           ; $6989: $05
	dec  b                                           ; $698a: $05
	dec  b                                           ; $698b: $05
	dec  c                                           ; $698c: $0d
	dec  c                                           ; $698d: $0d
	dec  c                                           ; $698e: $0d
	dec  b                                           ; $698f: $05
	dec  b                                           ; $6990: $05
	dec  b                                           ; $6991: $05
	dec  b                                           ; $6992: $05
	dec  b                                           ; $6993: $05
	dec  b                                           ; $6994: $05
	dec  b                                           ; $6995: $05
	dec  b                                           ; $6996: $05
	dec  b                                           ; $6997: $05
	dec  b                                           ; $6998: $05
	dec  b                                           ; $6999: $05
	dec  b                                           ; $699a: $05
	dec  b                                           ; $699b: $05
	dec  b                                           ; $699c: $05
	dec  c                                           ; $699d: $0d
	dec  b                                           ; $699e: $05
	dec  b                                           ; $699f: $05
	dec  c                                           ; $69a0: $0d
	dec  c                                           ; $69a1: $0d
	dec  c                                           ; $69a2: $0d
	dec  b                                           ; $69a3: $05
	dec  b                                           ; $69a4: $05
	dec  b                                           ; $69a5: $05
	inc  bc                                          ; $69a6: $03
	dec  b                                           ; $69a7: $05
	dec  b                                           ; $69a8: $05
	dec  b                                           ; $69a9: $05
	inc  bc                                          ; $69aa: $03
	inc  bc                                          ; $69ab: $03
	inc  bc                                          ; $69ac: $03
	inc  bc                                          ; $69ad: $03
	inc  bc                                          ; $69ae: $03
	dec  bc                                          ; $69af: $0b
	dec  bc                                          ; $69b0: $0b
	dec  c                                           ; $69b1: $0d
	inc  bc                                          ; $69b2: $03
	inc  bc                                          ; $69b3: $03
	dec  b                                           ; $69b4: $05
	inc  bc                                          ; $69b5: $03
	dec  b                                           ; $69b6: $05
	dec  b                                           ; $69b7: $05
	dec  b                                           ; $69b8: $05
	dec  b                                           ; $69b9: $05
	inc  bc                                          ; $69ba: $03
	dec  b                                           ; $69bb: $05
	dec  b                                           ; $69bc: $05
	dec  b                                           ; $69bd: $05
	inc  bc                                          ; $69be: $03
	inc  bc                                          ; $69bf: $03
	inc  bc                                          ; $69c0: $03
	inc  bc                                          ; $69c1: $03
	inc  bc                                          ; $69c2: $03
	dec  bc                                          ; $69c3: $0b
	dec  c                                           ; $69c4: $0d
	dec  c                                           ; $69c5: $0d
	inc  bc                                          ; $69c6: $03
	inc  bc                                          ; $69c7: $03
	dec  b                                           ; $69c8: $05
	inc  bc                                          ; $69c9: $03
	dec  b                                           ; $69ca: $05
	dec  b                                           ; $69cb: $05
	inc  b                                           ; $69cc: $04
	inc  b                                           ; $69cd: $04
	inc  bc                                          ; $69ce: $03
	inc  b                                           ; $69cf: $04
	inc  b                                           ; $69d0: $04
	dec  b                                           ; $69d1: $05
	inc  bc                                          ; $69d2: $03
	inc  bc                                          ; $69d3: $03
	inc  bc                                          ; $69d4: $03
	inc  bc                                          ; $69d5: $03
	inc  bc                                          ; $69d6: $03
	dec  bc                                          ; $69d7: $0b
	dec  c                                           ; $69d8: $0d
	dec  c                                           ; $69d9: $0d
	inc  bc                                          ; $69da: $03
	inc  bc                                          ; $69db: $03
	dec  c                                           ; $69dc: $0d
	dec  bc                                          ; $69dd: $0b
	dec  c                                           ; $69de: $0d
	dec  c                                           ; $69df: $0d
	inc  b                                           ; $69e0: $04
	inc  b                                           ; $69e1: $04
	inc  bc                                          ; $69e2: $03
	inc  b                                           ; $69e3: $04
	dec  b                                           ; $69e4: $05
	inc  bc                                          ; $69e5: $03
	inc  bc                                          ; $69e6: $03
	inc  bc                                          ; $69e7: $03
	inc  bc                                          ; $69e8: $03
	inc  bc                                          ; $69e9: $03
	inc  bc                                          ; $69ea: $03
	dec  bc                                          ; $69eb: $0b
	dec  c                                           ; $69ec: $0d
	dec  c                                           ; $69ed: $0d
	inc  bc                                          ; $69ee: $03
	inc  bc                                          ; $69ef: $03
	dec  c                                           ; $69f0: $0d
	dec  bc                                          ; $69f1: $0b
	inc  c                                           ; $69f2: $0c
	dec  c                                           ; $69f3: $0d
	inc  b                                           ; $69f4: $04
	inc  b                                           ; $69f5: $04
	inc  bc                                          ; $69f6: $03
	dec  b                                           ; $69f7: $05
	dec  b                                           ; $69f8: $05
	inc  bc                                          ; $69f9: $03
	inc  bc                                          ; $69fa: $03
	inc  bc                                          ; $69fb: $03
	inc  bc                                          ; $69fc: $03
	inc  bc                                          ; $69fd: $03
	inc  bc                                          ; $69fe: $03
	dec  bc                                          ; $69ff: $0b
	dec  bc                                          ; $6a00: $0b
	dec  c                                           ; $6a01: $0d
	inc  bc                                          ; $6a02: $03
	inc  bc                                          ; $6a03: $03
	dec  bc                                          ; $6a04: $0b
	dec  bc                                          ; $6a05: $0b
	dec  c                                           ; $6a06: $0d
	dec  c                                           ; $6a07: $0d
	inc  b                                           ; $6a08: $04
	inc  b                                           ; $6a09: $04
	inc  b                                           ; $6a0a: $04
	inc  b                                           ; $6a0b: $04
	inc  b                                           ; $6a0c: $04
	inc  b                                           ; $6a0d: $04
	inc  b                                           ; $6a0e: $04
	inc  b                                           ; $6a0f: $04
	inc  b                                           ; $6a10: $04
	inc  b                                           ; $6a11: $04
	inc  b                                           ; $6a12: $04
	inc  b                                           ; $6a13: $04
	inc  b                                           ; $6a14: $04
	inc  b                                           ; $6a15: $04
	inc  b                                           ; $6a16: $04
	inc  b                                           ; $6a17: $04
	dec  bc                                          ; $6a18: $0b
	dec  bc                                          ; $6a19: $0b
	dec  bc                                          ; $6a1a: $0b
	dec  c                                           ; $6a1b: $0d
	dec  b                                           ; $6a1c: $05
	inc  b                                           ; $6a1d: $04
	inc  b                                           ; $6a1e: $04
	inc  b                                           ; $6a1f: $04
	inc  b                                           ; $6a20: $04
	inc  b                                           ; $6a21: $04
	inc  b                                           ; $6a22: $04
	inc  b                                           ; $6a23: $04
	inc  b                                           ; $6a24: $04
	inc  b                                           ; $6a25: $04
	inc  b                                           ; $6a26: $04
	inc  b                                           ; $6a27: $04
	inc  b                                           ; $6a28: $04
	inc  b                                           ; $6a29: $04
	inc  b                                           ; $6a2a: $04
	inc  b                                           ; $6a2b: $04
	dec  c                                           ; $6a2c: $0d
	dec  bc                                          ; $6a2d: $0b
	dec  bc                                          ; $6a2e: $0b
	dec  c                                           ; $6a2f: $0d
	nop                                              ; $6a30: $00
	ld   bc, $0302                                   ; $6a31: $01 $02 $03
	ld   [hl], b                                     ; $6a34: $70
	ld   [hl], b                                     ; $6a35: $70
	ld   [hl], b                                     ; $6a36: $70
	ld   [hl], b                                     ; $6a37: $70
	ld   [hl], b                                     ; $6a38: $70
	ld   [hl], b                                     ; $6a39: $70
	ld   [hl], b                                     ; $6a3a: $70
	ld   [hl], b                                     ; $6a3b: $70
	ld   [hl], b                                     ; $6a3c: $70
	ld   [hl], b                                     ; $6a3d: $70
	ld   [hl], b                                     ; $6a3e: $70
	ld   [hl], b                                     ; $6a3f: $70
	nop                                              ; $6a40: $00
	ld   bc, $7202                                   ; $6a41: $01 $02 $72
	db   $10                                         ; $6a44: $10
	ld   de, $1312                                   ; $6a45: $11 $12 $13
	ld   [hl], c                                     ; $6a48: $71
	ld   [hl], c                                     ; $6a49: $71
	ld   [hl], c                                     ; $6a4a: $71
	ld   [hl], c                                     ; $6a4b: $71
	ld   [hl], c                                     ; $6a4c: $71
	ld   [hl], c                                     ; $6a4d: $71
	ld   [hl], c                                     ; $6a4e: $71
	ld   [hl], c                                     ; $6a4f: $71
	ld   [hl], c                                     ; $6a50: $71
	ld   [hl], c                                     ; $6a51: $71
	ld   [hl], c                                     ; $6a52: $71
	ld   l, a                                        ; $6a53: $6f
	db   $10                                         ; $6a54: $10
	ld   de, $7212                                   ; $6a55: $11 $12 $72
	ld   [hl], d                                     ; $6a58: $72
	ld   a, [hl]                                     ; $6a59: $7e
	ld   [hl+], a                                    ; $6a5a: $22
	inc  hl                                          ; $6a5b: $23
	ld   l, e                                        ; $6a5c: $6b
	ld   l, h                                        ; $6a5d: $6c
	ld   [hl], e                                     ; $6a5e: $73
	ld   [hl], e                                     ; $6a5f: $73
	ld   [hl], e                                     ; $6a60: $73
	ld   [hl], e                                     ; $6a61: $73
	ld   [hl], e                                     ; $6a62: $73
	ld   [hl], e                                     ; $6a63: $73
	ld   [hl], e                                     ; $6a64: $73
	ld   l, l                                        ; $6a65: $6d
	ld   l, [hl]                                     ; $6a66: $6e
	rrca                                             ; $6a67: $0f
	dec  de                                          ; $6a68: $1b
	inc  e                                           ; $6a69: $1c
	dec  e                                           ; $6a6a: $1d
	ld   [hl], d                                     ; $6a6b: $72
	ld   [hl], d                                     ; $6a6c: $72
	ld   [hl], h                                     ; $6a6d: $74
	ld   [hl-], a                                    ; $6a6e: $32
	inc  sp                                          ; $6a6f: $33
	inc  b                                           ; $6a70: $04
	dec  b                                           ; $6a71: $05
	ld   b, $07                                      ; $6a72: $06 $07
	ld   [$0a09], sp                                 ; $6a74: $08 $09 $0a
	dec  bc                                          ; $6a77: $0b
	inc  c                                           ; $6a78: $0c
	jr   nz, jr_083_6a9c                             ; $6a79: $20 $21

	ld   [hl+], a                                    ; $6a7b: $22
	ld   [hl], a                                     ; $6a7c: $77
	ld   a, b                                        ; $6a7d: $78
	ld   a, c                                        ; $6a7e: $79
	ld   [hl], d                                     ; $6a7f: $72
	ld   [hl], d                                     ; $6a80: $72
	ld   [hl], h                                     ; $6a81: $74
	ld   b, d                                        ; $6a82: $42
	ld   b, e                                        ; $6a83: $43
	inc  d                                           ; $6a84: $14
	dec  d                                           ; $6a85: $15
	ld   d, $17                                      ; $6a86: $16 $17
	jr   jr_083_6aa3                                 ; $6a88: $18 $19

	ld   a, [de]                                     ; $6a8a: $1a
	dec  de                                          ; $6a8b: $1b
	inc  e                                           ; $6a8c: $1c
	jr   nc, jr_083_6ac0                             ; $6a8d: $30 $31

	ld   [hl-], a                                    ; $6a8f: $32
	ld   [hl], a                                     ; $6a90: $77
	ld   a, b                                        ; $6a91: $78
	ld   a, c                                        ; $6a92: $79
	ld   [hl], d                                     ; $6a93: $72
	ld   a, d                                        ; $6a94: $7a
	ld   a, e                                        ; $6a95: $7b
	jr   nz, jr_083_6ab9                             ; $6a96: $20 $21

	inc  h                                           ; $6a98: $24
	dec  h                                           ; $6a99: $25
	ld   h, $27                                      ; $6a9a: $26 $27

jr_083_6a9c:
	jr   z, jr_083_6ac7                              ; $6a9c: $28 $29

	ld   a, [hl+]                                    ; $6a9e: $2a
	dec  hl                                          ; $6a9f: $2b
	inc  l                                           ; $6aa0: $2c
	ld   b, b                                        ; $6aa1: $40
	ld   b, c                                        ; $6aa2: $41

jr_083_6aa3:
	ld   b, d                                        ; $6aa3: $42
	dec  bc                                          ; $6aa4: $0b
	inc  c                                           ; $6aa5: $0c
	dec  c                                           ; $6aa6: $0d
	ld   c, $75                                      ; $6aa7: $0e $75
	ld   a, h                                        ; $6aa9: $7c
	jr   nc, jr_083_6add                             ; $6aaa: $30 $31

	inc  [hl]                                        ; $6aac: $34
	dec  [hl]                                        ; $6aad: $35
	ld   [hl], $37                                   ; $6aae: $36 $37
	jr   c, jr_083_6aeb                              ; $6ab0: $38 $39

	ld   a, [hl-]                                    ; $6ab2: $3a
	dec  sp                                          ; $6ab3: $3b
	inc  a                                           ; $6ab4: $3c
	ld   h, $27                                      ; $6ab5: $26 $27
	jr   z, @+$05                                    ; $6ab7: $28 $03

jr_083_6ab9:
	inc  b                                           ; $6ab9: $04
	dec  b                                           ; $6aba: $05
	ld   b, $75                                      ; $6abb: $06 $75
	ld   a, l                                        ; $6abd: $7d
	ld   b, b                                        ; $6abe: $40
	ld   b, c                                        ; $6abf: $41

jr_083_6ac0:
	ld   b, h                                        ; $6ac0: $44
	ld   b, l                                        ; $6ac1: $45
	ld   b, [hl]                                     ; $6ac2: $46
	ld   b, a                                        ; $6ac3: $47
	ld   c, b                                        ; $6ac4: $48
	ld   c, c                                        ; $6ac5: $49
	ld   c, d                                        ; $6ac6: $4a

jr_083_6ac7:
	ld   c, e                                        ; $6ac7: $4b
	ld   c, h                                        ; $6ac8: $4c
	ld   [hl], $37                                   ; $6ac9: $36 $37
	jr   c, jr_083_6ae0                              ; $6acb: $38 $13

	inc  d                                           ; $6acd: $14
	dec  d                                           ; $6ace: $15
	ld   d, $50                                      ; $6acf: $16 $50
	ld   d, c                                        ; $6ad1: $51
	ld   d, d                                        ; $6ad2: $52
	ld   d, e                                        ; $6ad3: $53
	ld   d, h                                        ; $6ad4: $54
	ld   d, l                                        ; $6ad5: $55
	ld   d, [hl]                                     ; $6ad6: $56
	ld   d, a                                        ; $6ad7: $57
	ld   e, b                                        ; $6ad8: $58
	ld   e, c                                        ; $6ad9: $59
	ld   e, d                                        ; $6ada: $5a
	ld   e, e                                        ; $6adb: $5b
	ld   e, h                                        ; $6adc: $5c

jr_083_6add:
	ld   e, l                                        ; $6add: $5d
	ld   e, [hl]                                     ; $6ade: $5e
	ld   e, a                                        ; $6adf: $5f

jr_083_6ae0:
	rlca                                             ; $6ae0: $07
	ld   [$0a09], sp                                 ; $6ae1: $08 $09 $0a
	ld   h, b                                        ; $6ae4: $60
	halt                                             ; $6ae5: $76
	ld   h, c                                        ; $6ae6: $61
	ld   h, d                                        ; $6ae7: $62
	ld   h, e                                        ; $6ae8: $63
	ld   h, h                                        ; $6ae9: $64
	halt                                             ; $6aea: $76

jr_083_6aeb:
	ld   h, l                                        ; $6aeb: $65
	ld   h, [hl]                                     ; $6aec: $66
	ld   h, a                                        ; $6aed: $67
	halt                                             ; $6aee: $76
	halt                                             ; $6aef: $76
	ld   l, b                                        ; $6af0: $68
	ld   l, c                                        ; $6af1: $69
	ld   l, d                                        ; $6af2: $6a
	halt                                             ; $6af3: $76
	rla                                              ; $6af4: $17
	jr   jr_083_6b10                                 ; $6af5: $18 $19

	ld   a, [de]                                     ; $6af7: $1a
	dec  b                                           ; $6af8: $05
	dec  b                                           ; $6af9: $05
	dec  b                                           ; $6afa: $05
	dec  b                                           ; $6afb: $05
	dec  b                                           ; $6afc: $05
	dec  b                                           ; $6afd: $05
	dec  b                                           ; $6afe: $05
	dec  b                                           ; $6aff: $05
	dec  b                                           ; $6b00: $05
	dec  b                                           ; $6b01: $05
	dec  b                                           ; $6b02: $05
	dec  b                                           ; $6b03: $05
	dec  b                                           ; $6b04: $05
	dec  b                                           ; $6b05: $05
	dec  b                                           ; $6b06: $05
	dec  b                                           ; $6b07: $05
	dec  c                                           ; $6b08: $0d
	dec  c                                           ; $6b09: $0d
	dec  c                                           ; $6b0a: $0d
	dec  b                                           ; $6b0b: $05
	dec  b                                           ; $6b0c: $05
	dec  b                                           ; $6b0d: $05
	dec  b                                           ; $6b0e: $05
	dec  b                                           ; $6b0f: $05

jr_083_6b10:
	dec  b                                           ; $6b10: $05
	dec  b                                           ; $6b11: $05
	dec  b                                           ; $6b12: $05
	dec  b                                           ; $6b13: $05
	dec  b                                           ; $6b14: $05
	dec  b                                           ; $6b15: $05
	dec  b                                           ; $6b16: $05
	dec  b                                           ; $6b17: $05
	dec  b                                           ; $6b18: $05
	dec  b                                           ; $6b19: $05
	dec  b                                           ; $6b1a: $05
	dec  b                                           ; $6b1b: $05
	dec  c                                           ; $6b1c: $0d
	dec  c                                           ; $6b1d: $0d
	dec  c                                           ; $6b1e: $0d
	dec  b                                           ; $6b1f: $05
	dec  b                                           ; $6b20: $05
	dec  b                                           ; $6b21: $05
	dec  b                                           ; $6b22: $05
	dec  b                                           ; $6b23: $05
	dec  b                                           ; $6b24: $05
	dec  b                                           ; $6b25: $05
	dec  b                                           ; $6b26: $05
	dec  b                                           ; $6b27: $05
	dec  b                                           ; $6b28: $05
	dec  b                                           ; $6b29: $05
	dec  b                                           ; $6b2a: $05
	dec  b                                           ; $6b2b: $05
	dec  b                                           ; $6b2c: $05
	dec  b                                           ; $6b2d: $05
	dec  b                                           ; $6b2e: $05
	dec  c                                           ; $6b2f: $0d
	dec  c                                           ; $6b30: $0d
	dec  c                                           ; $6b31: $0d
	dec  c                                           ; $6b32: $0d
	dec  b                                           ; $6b33: $05
	dec  b                                           ; $6b34: $05
	dec  b                                           ; $6b35: $05
	inc  bc                                          ; $6b36: $03
	dec  b                                           ; $6b37: $05
	dec  b                                           ; $6b38: $05
	dec  b                                           ; $6b39: $05
	inc  bc                                          ; $6b3a: $03
	inc  bc                                          ; $6b3b: $03
	inc  bc                                          ; $6b3c: $03
	inc  bc                                          ; $6b3d: $03
	inc  bc                                          ; $6b3e: $03
	inc  bc                                          ; $6b3f: $03
	inc  bc                                          ; $6b40: $03
	dec  bc                                          ; $6b41: $0b
	dec  bc                                          ; $6b42: $0b
	dec  c                                           ; $6b43: $0d
	dec  b                                           ; $6b44: $05
	inc  bc                                          ; $6b45: $03
	dec  b                                           ; $6b46: $05
	dec  b                                           ; $6b47: $05
	dec  b                                           ; $6b48: $05
	dec  b                                           ; $6b49: $05
	inc  bc                                          ; $6b4a: $03
	dec  b                                           ; $6b4b: $05
	dec  b                                           ; $6b4c: $05
	dec  b                                           ; $6b4d: $05
	inc  bc                                          ; $6b4e: $03
	inc  bc                                          ; $6b4f: $03
	inc  bc                                          ; $6b50: $03
	inc  bc                                          ; $6b51: $03
	inc  bc                                          ; $6b52: $03
	inc  bc                                          ; $6b53: $03
	inc  bc                                          ; $6b54: $03
	dec  bc                                          ; $6b55: $0b
	dec  bc                                          ; $6b56: $0b
	dec  c                                           ; $6b57: $0d
	dec  b                                           ; $6b58: $05
	inc  bc                                          ; $6b59: $03
	dec  b                                           ; $6b5a: $05
	dec  b                                           ; $6b5b: $05
	inc  b                                           ; $6b5c: $04
	inc  b                                           ; $6b5d: $04
	inc  bc                                          ; $6b5e: $03
	inc  b                                           ; $6b5f: $04
	inc  b                                           ; $6b60: $04
	dec  b                                           ; $6b61: $05
	inc  bc                                          ; $6b62: $03
	inc  bc                                          ; $6b63: $03
	inc  bc                                          ; $6b64: $03
	inc  bc                                          ; $6b65: $03
	inc  bc                                          ; $6b66: $03
	inc  bc                                          ; $6b67: $03
	inc  bc                                          ; $6b68: $03
	dec  bc                                          ; $6b69: $0b
	dec  bc                                          ; $6b6a: $0b
	dec  bc                                          ; $6b6b: $0b
	dec  c                                           ; $6b6c: $0d
	dec  bc                                          ; $6b6d: $0b
	dec  c                                           ; $6b6e: $0d
	dec  c                                           ; $6b6f: $0d
	inc  b                                           ; $6b70: $04
	inc  b                                           ; $6b71: $04
	inc  bc                                          ; $6b72: $03
	inc  b                                           ; $6b73: $04
	dec  b                                           ; $6b74: $05
	inc  bc                                          ; $6b75: $03
	inc  bc                                          ; $6b76: $03
	inc  bc                                          ; $6b77: $03
	inc  bc                                          ; $6b78: $03
	inc  bc                                          ; $6b79: $03
	inc  bc                                          ; $6b7a: $03
	inc  bc                                          ; $6b7b: $03
	inc  bc                                          ; $6b7c: $03
	dec  bc                                          ; $6b7d: $0b
	dec  bc                                          ; $6b7e: $0b
	dec  bc                                          ; $6b7f: $0b
	dec  c                                           ; $6b80: $0d
	dec  bc                                          ; $6b81: $0b
	inc  c                                           ; $6b82: $0c
	dec  c                                           ; $6b83: $0d
	inc  b                                           ; $6b84: $04
	inc  b                                           ; $6b85: $04
	inc  bc                                          ; $6b86: $03
	dec  b                                           ; $6b87: $05
	dec  b                                           ; $6b88: $05
	inc  bc                                          ; $6b89: $03
	inc  bc                                          ; $6b8a: $03
	inc  bc                                          ; $6b8b: $03
	inc  bc                                          ; $6b8c: $03
	inc  bc                                          ; $6b8d: $03
	inc  bc                                          ; $6b8e: $03
	inc  bc                                          ; $6b8f: $03
	inc  bc                                          ; $6b90: $03
	dec  bc                                          ; $6b91: $0b
	dec  bc                                          ; $6b92: $0b
	dec  bc                                          ; $6b93: $0b
	dec  bc                                          ; $6b94: $0b
	dec  bc                                          ; $6b95: $0b
	dec  c                                           ; $6b96: $0d
	dec  c                                           ; $6b97: $0d
	inc  b                                           ; $6b98: $04
	inc  b                                           ; $6b99: $04
	inc  b                                           ; $6b9a: $04
	inc  b                                           ; $6b9b: $04
	inc  b                                           ; $6b9c: $04
	inc  b                                           ; $6b9d: $04
	inc  b                                           ; $6b9e: $04
	inc  b                                           ; $6b9f: $04
	inc  b                                           ; $6ba0: $04
	inc  b                                           ; $6ba1: $04
	inc  b                                           ; $6ba2: $04
	inc  b                                           ; $6ba3: $04
	inc  b                                           ; $6ba4: $04
	inc  b                                           ; $6ba5: $04
	inc  b                                           ; $6ba6: $04
	inc  b                                           ; $6ba7: $04
	dec  bc                                          ; $6ba8: $0b
	dec  bc                                          ; $6ba9: $0b
	dec  bc                                          ; $6baa: $0b
	dec  c                                           ; $6bab: $0d
	dec  b                                           ; $6bac: $05
	inc  b                                           ; $6bad: $04
	inc  b                                           ; $6bae: $04
	inc  b                                           ; $6baf: $04
	inc  b                                           ; $6bb0: $04
	inc  b                                           ; $6bb1: $04
	inc  b                                           ; $6bb2: $04
	inc  b                                           ; $6bb3: $04
	inc  b                                           ; $6bb4: $04
	inc  b                                           ; $6bb5: $04
	inc  b                                           ; $6bb6: $04
	inc  b                                           ; $6bb7: $04
	inc  b                                           ; $6bb8: $04
	inc  b                                           ; $6bb9: $04
	inc  b                                           ; $6bba: $04
	inc  b                                           ; $6bbb: $04
	dec  c                                           ; $6bbc: $0d
	dec  bc                                          ; $6bbd: $0b
	dec  bc                                          ; $6bbe: $0b
	dec  c                                           ; $6bbf: $0d
	nop                                              ; $6bc0: $00
	ld   bc, $0302                                   ; $6bc1: $01 $02 $03
	ld   [hl], b                                     ; $6bc4: $70
	ld   [hl], b                                     ; $6bc5: $70
	ld   [hl], b                                     ; $6bc6: $70
	ld   [hl], b                                     ; $6bc7: $70
	ld   [hl], b                                     ; $6bc8: $70
	ld   [hl], b                                     ; $6bc9: $70
	ld   [hl], b                                     ; $6bca: $70
	ld   [hl], b                                     ; $6bcb: $70
	ld   [hl], b                                     ; $6bcc: $70
	ld   [hl], b                                     ; $6bcd: $70
	ld   [hl], b                                     ; $6bce: $70
	ld   [hl], b                                     ; $6bcf: $70
	nop                                              ; $6bd0: $00
	ld   bc, $7202                                   ; $6bd1: $01 $02 $72
	db   $10                                         ; $6bd4: $10
	ld   de, $1312                                   ; $6bd5: $11 $12 $13
	ld   [hl], c                                     ; $6bd8: $71
	ld   [hl], c                                     ; $6bd9: $71
	ld   [hl], c                                     ; $6bda: $71
	ld   [hl], c                                     ; $6bdb: $71
	ld   [hl], c                                     ; $6bdc: $71
	ld   [hl], c                                     ; $6bdd: $71
	ld   [hl], c                                     ; $6bde: $71
	ld   [hl], c                                     ; $6bdf: $71
	ld   [hl], c                                     ; $6be0: $71
	ld   [hl], c                                     ; $6be1: $71
	ld   [hl], c                                     ; $6be2: $71
	ld   l, a                                        ; $6be3: $6f
	db   $10                                         ; $6be4: $10
	ld   de, $7212                                   ; $6be5: $11 $12 $72
	ld   [hl], d                                     ; $6be8: $72
	ld   a, [hl]                                     ; $6be9: $7e
	ld   [hl+], a                                    ; $6bea: $22
	inc  hl                                          ; $6beb: $23
	ld   l, e                                        ; $6bec: $6b
	ld   l, h                                        ; $6bed: $6c
	ld   [hl], e                                     ; $6bee: $73
	ld   [hl], e                                     ; $6bef: $73
	ld   [hl], e                                     ; $6bf0: $73
	ld   [hl], e                                     ; $6bf1: $73
	ld   [hl], e                                     ; $6bf2: $73
	ld   [hl], e                                     ; $6bf3: $73
	ld   [hl], e                                     ; $6bf4: $73
	ld   l, l                                        ; $6bf5: $6d
	ld   l, [hl]                                     ; $6bf6: $6e
	ld   a, a                                        ; $6bf7: $7f
	ld   e, $1c                                      ; $6bf8: $1e $1c
	dec  e                                           ; $6bfa: $1d
	ld   [hl], d                                     ; $6bfb: $72
	ld   [hl], d                                     ; $6bfc: $72
	ld   [hl], h                                     ; $6bfd: $74
	ld   [hl-], a                                    ; $6bfe: $32
	inc  sp                                          ; $6bff: $33
	inc  b                                           ; $6c00: $04
	dec  b                                           ; $6c01: $05
	ld   b, $07                                      ; $6c02: $06 $07
	ld   [$0a09], sp                                 ; $6c04: $08 $09 $0a
	dec  bc                                          ; $6c07: $0b
	inc  c                                           ; $6c08: $0c
	dec  c                                           ; $6c09: $0d
	inc  hl                                          ; $6c0a: $23
	inc  h                                           ; $6c0b: $24
	dec  h                                           ; $6c0c: $25
	ld   a, b                                        ; $6c0d: $78
	ld   a, c                                        ; $6c0e: $79
	ld   [hl], d                                     ; $6c0f: $72
	ld   [hl], d                                     ; $6c10: $72
	ld   [hl], h                                     ; $6c11: $74
	ld   b, d                                        ; $6c12: $42
	ld   b, e                                        ; $6c13: $43
	inc  d                                           ; $6c14: $14
	dec  d                                           ; $6c15: $15
	ld   d, $17                                      ; $6c16: $16 $17
	jr   jr_083_6c33                                 ; $6c18: $18 $19

	ld   a, [de]                                     ; $6c1a: $1a
	dec  de                                          ; $6c1b: $1b
	inc  e                                           ; $6c1c: $1c
	dec  e                                           ; $6c1d: $1d
	inc  sp                                          ; $6c1e: $33
	inc  [hl]                                        ; $6c1f: $34
	dec  [hl]                                        ; $6c20: $35
	ld   a, b                                        ; $6c21: $78
	ld   a, c                                        ; $6c22: $79
	ld   [hl], d                                     ; $6c23: $72
	ld   a, d                                        ; $6c24: $7a
	ld   a, e                                        ; $6c25: $7b
	jr   nz, jr_083_6c49                             ; $6c26: $20 $21

	inc  h                                           ; $6c28: $24
	dec  h                                           ; $6c29: $25
	ld   h, $27                                      ; $6c2a: $26 $27
	jr   z, jr_083_6c57                              ; $6c2c: $28 $29

	ld   a, [hl+]                                    ; $6c2e: $2a
	dec  hl                                          ; $6c2f: $2b
	inc  l                                           ; $6c30: $2c
	dec  l                                           ; $6c31: $2d
	ld   b, e                                        ; $6c32: $43

jr_083_6c33:
	ld   b, h                                        ; $6c33: $44
	ld   b, l                                        ; $6c34: $45
	inc  c                                           ; $6c35: $0c
	dec  c                                           ; $6c36: $0d
	ld   c, $75                                      ; $6c37: $0e $75
	ld   a, h                                        ; $6c39: $7c
	jr   nc, jr_083_6c6d                             ; $6c3a: $30 $31

	inc  [hl]                                        ; $6c3c: $34
	dec  [hl]                                        ; $6c3d: $35
	ld   [hl], $37                                   ; $6c3e: $36 $37
	jr   c, jr_083_6c7b                              ; $6c40: $38 $39

	ld   a, [hl-]                                    ; $6c42: $3a
	dec  sp                                          ; $6c43: $3b
	inc  a                                           ; $6c44: $3c
	dec  a                                           ; $6c45: $3d
	add  hl, hl                                      ; $6c46: $29
	ld   a, [hl+]                                    ; $6c47: $2a
	dec  hl                                          ; $6c48: $2b

jr_083_6c49:
	inc  b                                           ; $6c49: $04
	dec  b                                           ; $6c4a: $05
	ld   b, $75                                      ; $6c4b: $06 $75
	ld   a, l                                        ; $6c4d: $7d
	ld   b, b                                        ; $6c4e: $40
	ld   b, c                                        ; $6c4f: $41
	ld   b, h                                        ; $6c50: $44
	ld   b, l                                        ; $6c51: $45
	ld   b, [hl]                                     ; $6c52: $46
	ld   b, a                                        ; $6c53: $47
	ld   c, b                                        ; $6c54: $48
	ld   c, c                                        ; $6c55: $49
	ld   c, d                                        ; $6c56: $4a

jr_083_6c57:
	ld   c, e                                        ; $6c57: $4b
	ld   c, h                                        ; $6c58: $4c
	ld   c, l                                        ; $6c59: $4d
	add  hl, sp                                      ; $6c5a: $39
	ld   a, [hl-]                                    ; $6c5b: $3a
	dec  sp                                          ; $6c5c: $3b
	inc  d                                           ; $6c5d: $14
	dec  d                                           ; $6c5e: $15
	ld   d, $50                                      ; $6c5f: $16 $50
	ld   d, c                                        ; $6c61: $51
	ld   d, d                                        ; $6c62: $52
	ld   d, e                                        ; $6c63: $53
	ld   d, h                                        ; $6c64: $54
	ld   d, l                                        ; $6c65: $55
	ld   d, [hl]                                     ; $6c66: $56
	ld   d, a                                        ; $6c67: $57
	ld   e, b                                        ; $6c68: $58
	ld   e, c                                        ; $6c69: $59
	ld   e, d                                        ; $6c6a: $5a
	ld   e, e                                        ; $6c6b: $5b
	ld   e, h                                        ; $6c6c: $5c

jr_083_6c6d:
	ld   e, l                                        ; $6c6d: $5d
	ld   e, [hl]                                     ; $6c6e: $5e
	ld   e, a                                        ; $6c6f: $5f
	rlca                                             ; $6c70: $07
	ld   [$0a09], sp                                 ; $6c71: $08 $09 $0a
	ld   h, b                                        ; $6c74: $60
	halt                                             ; $6c75: $76
	ld   h, c                                        ; $6c76: $61
	ld   h, d                                        ; $6c77: $62
	ld   h, e                                        ; $6c78: $63
	ld   h, h                                        ; $6c79: $64
	halt                                             ; $6c7a: $76

jr_083_6c7b:
	ld   h, l                                        ; $6c7b: $65
	ld   h, [hl]                                     ; $6c7c: $66
	ld   h, a                                        ; $6c7d: $67
	halt                                             ; $6c7e: $76
	halt                                             ; $6c7f: $76
	ld   l, b                                        ; $6c80: $68
	ld   l, c                                        ; $6c81: $69
	ld   l, d                                        ; $6c82: $6a
	halt                                             ; $6c83: $76
	rla                                              ; $6c84: $17
	jr   jr_083_6ca0                                 ; $6c85: $18 $19

	ld   a, [de]                                     ; $6c87: $1a
	dec  b                                           ; $6c88: $05
	dec  b                                           ; $6c89: $05
	dec  b                                           ; $6c8a: $05
	dec  b                                           ; $6c8b: $05
	dec  b                                           ; $6c8c: $05
	dec  b                                           ; $6c8d: $05
	dec  b                                           ; $6c8e: $05
	dec  b                                           ; $6c8f: $05
	dec  b                                           ; $6c90: $05
	dec  b                                           ; $6c91: $05
	dec  b                                           ; $6c92: $05
	dec  b                                           ; $6c93: $05
	dec  b                                           ; $6c94: $05
	dec  b                                           ; $6c95: $05
	dec  b                                           ; $6c96: $05
	dec  b                                           ; $6c97: $05
	dec  c                                           ; $6c98: $0d
	dec  c                                           ; $6c99: $0d
	dec  c                                           ; $6c9a: $0d
	dec  b                                           ; $6c9b: $05
	dec  b                                           ; $6c9c: $05
	dec  b                                           ; $6c9d: $05
	dec  b                                           ; $6c9e: $05
	dec  b                                           ; $6c9f: $05

jr_083_6ca0:
	dec  b                                           ; $6ca0: $05
	dec  b                                           ; $6ca1: $05
	dec  b                                           ; $6ca2: $05
	dec  b                                           ; $6ca3: $05
	dec  b                                           ; $6ca4: $05
	dec  b                                           ; $6ca5: $05
	dec  b                                           ; $6ca6: $05
	dec  b                                           ; $6ca7: $05
	dec  b                                           ; $6ca8: $05
	dec  b                                           ; $6ca9: $05
	dec  b                                           ; $6caa: $05
	dec  b                                           ; $6cab: $05
	dec  c                                           ; $6cac: $0d
	dec  c                                           ; $6cad: $0d
	dec  c                                           ; $6cae: $0d
	dec  b                                           ; $6caf: $05
	dec  b                                           ; $6cb0: $05
	dec  b                                           ; $6cb1: $05
	dec  b                                           ; $6cb2: $05
	dec  b                                           ; $6cb3: $05
	dec  b                                           ; $6cb4: $05
	dec  b                                           ; $6cb5: $05
	dec  b                                           ; $6cb6: $05
	dec  b                                           ; $6cb7: $05
	dec  b                                           ; $6cb8: $05
	dec  b                                           ; $6cb9: $05
	dec  b                                           ; $6cba: $05
	dec  b                                           ; $6cbb: $05
	dec  b                                           ; $6cbc: $05
	dec  b                                           ; $6cbd: $05
	dec  b                                           ; $6cbe: $05
	dec  b                                           ; $6cbf: $05
	dec  c                                           ; $6cc0: $0d
	dec  c                                           ; $6cc1: $0d
	dec  c                                           ; $6cc2: $0d
	dec  b                                           ; $6cc3: $05
	dec  b                                           ; $6cc4: $05
	dec  b                                           ; $6cc5: $05
	inc  bc                                          ; $6cc6: $03
	dec  b                                           ; $6cc7: $05
	dec  b                                           ; $6cc8: $05
	dec  b                                           ; $6cc9: $05
	inc  bc                                          ; $6cca: $03
	inc  bc                                          ; $6ccb: $03
	inc  bc                                          ; $6ccc: $03
	inc  bc                                          ; $6ccd: $03
	inc  bc                                          ; $6cce: $03
	inc  bc                                          ; $6ccf: $03
	inc  bc                                          ; $6cd0: $03
	inc  bc                                          ; $6cd1: $03
	dec  bc                                          ; $6cd2: $0b
	dec  bc                                          ; $6cd3: $0b
	dec  c                                           ; $6cd4: $0d
	inc  bc                                          ; $6cd5: $03
	dec  b                                           ; $6cd6: $05
	dec  b                                           ; $6cd7: $05
	dec  b                                           ; $6cd8: $05
	dec  b                                           ; $6cd9: $05
	inc  bc                                          ; $6cda: $03
	dec  b                                           ; $6cdb: $05
	dec  b                                           ; $6cdc: $05
	dec  b                                           ; $6cdd: $05
	inc  bc                                          ; $6cde: $03
	inc  bc                                          ; $6cdf: $03
	inc  bc                                          ; $6ce0: $03
	inc  bc                                          ; $6ce1: $03
	inc  bc                                          ; $6ce2: $03
	inc  bc                                          ; $6ce3: $03
	inc  bc                                          ; $6ce4: $03
	inc  bc                                          ; $6ce5: $03
	dec  bc                                          ; $6ce6: $0b
	dec  bc                                          ; $6ce7: $0b
	dec  bc                                          ; $6ce8: $0b
	inc  bc                                          ; $6ce9: $03
	dec  b                                           ; $6cea: $05
	dec  b                                           ; $6ceb: $05
	inc  b                                           ; $6cec: $04
	inc  b                                           ; $6ced: $04
	inc  bc                                          ; $6cee: $03
	inc  b                                           ; $6cef: $04
	inc  b                                           ; $6cf0: $04
	dec  b                                           ; $6cf1: $05
	inc  bc                                          ; $6cf2: $03
	inc  bc                                          ; $6cf3: $03
	inc  bc                                          ; $6cf4: $03
	inc  bc                                          ; $6cf5: $03
	inc  bc                                          ; $6cf6: $03
	inc  bc                                          ; $6cf7: $03
	inc  bc                                          ; $6cf8: $03
	inc  bc                                          ; $6cf9: $03
	dec  bc                                          ; $6cfa: $0b
	dec  bc                                          ; $6cfb: $0b
	dec  bc                                          ; $6cfc: $0b
	dec  bc                                          ; $6cfd: $0b
	dec  c                                           ; $6cfe: $0d
	dec  c                                           ; $6cff: $0d
	inc  b                                           ; $6d00: $04
	inc  b                                           ; $6d01: $04
	inc  bc                                          ; $6d02: $03
	inc  b                                           ; $6d03: $04
	dec  b                                           ; $6d04: $05
	inc  bc                                          ; $6d05: $03
	inc  bc                                          ; $6d06: $03
	inc  bc                                          ; $6d07: $03
	inc  bc                                          ; $6d08: $03
	inc  bc                                          ; $6d09: $03
	inc  bc                                          ; $6d0a: $03
	inc  bc                                          ; $6d0b: $03
	inc  bc                                          ; $6d0c: $03
	inc  bc                                          ; $6d0d: $03
	dec  bc                                          ; $6d0e: $0b
	dec  bc                                          ; $6d0f: $0b
	dec  c                                           ; $6d10: $0d
	dec  bc                                          ; $6d11: $0b
	inc  c                                           ; $6d12: $0c
	dec  c                                           ; $6d13: $0d
	inc  b                                           ; $6d14: $04
	inc  b                                           ; $6d15: $04
	inc  bc                                          ; $6d16: $03
	dec  b                                           ; $6d17: $05
	dec  b                                           ; $6d18: $05
	inc  bc                                          ; $6d19: $03
	inc  bc                                          ; $6d1a: $03
	inc  bc                                          ; $6d1b: $03
	inc  bc                                          ; $6d1c: $03
	inc  bc                                          ; $6d1d: $03
	inc  bc                                          ; $6d1e: $03
	inc  bc                                          ; $6d1f: $03
	inc  bc                                          ; $6d20: $03
	inc  bc                                          ; $6d21: $03
	dec  bc                                          ; $6d22: $0b
	dec  bc                                          ; $6d23: $0b
	dec  bc                                          ; $6d24: $0b
	dec  bc                                          ; $6d25: $0b
	dec  c                                           ; $6d26: $0d
	dec  c                                           ; $6d27: $0d
	inc  b                                           ; $6d28: $04
	inc  b                                           ; $6d29: $04
	inc  b                                           ; $6d2a: $04
	inc  b                                           ; $6d2b: $04
	inc  b                                           ; $6d2c: $04
	inc  b                                           ; $6d2d: $04
	inc  b                                           ; $6d2e: $04
	inc  b                                           ; $6d2f: $04
	inc  b                                           ; $6d30: $04
	inc  b                                           ; $6d31: $04
	inc  b                                           ; $6d32: $04
	inc  b                                           ; $6d33: $04
	inc  b                                           ; $6d34: $04
	inc  b                                           ; $6d35: $04
	inc  b                                           ; $6d36: $04
	inc  b                                           ; $6d37: $04
	dec  bc                                          ; $6d38: $0b
	dec  bc                                          ; $6d39: $0b
	dec  bc                                          ; $6d3a: $0b
	dec  c                                           ; $6d3b: $0d
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
	dec  c                                           ; $6d4c: $0d
	dec  bc                                          ; $6d4d: $0b
	dec  bc                                          ; $6d4e: $0b
	dec  c                                           ; $6d4f: $0d
	nop                                              ; $6d50: $00
	ld   bc, $0302                                   ; $6d51: $01 $02 $03
	inc  b                                           ; $6d54: $04
	dec  b                                           ; $6d55: $05
	ld   b, $07                                      ; $6d56: $06 $07
	ld   [$0a09], sp                                 ; $6d58: $08 $09 $0a
	dec  bc                                          ; $6d5b: $0b
	inc  c                                           ; $6d5c: $0c
	dec  c                                           ; $6d5d: $0d
	ld   c, $0f                                      ; $6d5e: $0e $0f
	jr   nz, jr_083_6d83                             ; $6d60: $20 $21

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
	jr   nc, jr_083_6da7                             ; $6d74: $30 $31

	ld   [hl-], a                                    ; $6d76: $32
	inc  sp                                          ; $6d77: $33
	jr   nz, @+$23                                   ; $6d78: $20 $21

	ld   [hl+], a                                    ; $6d7a: $22
	inc  hl                                          ; $6d7b: $23
	inc  h                                           ; $6d7c: $24
	dec  h                                           ; $6d7d: $25
	ld   h, $27                                      ; $6d7e: $26 $27
	jr   z, jr_083_6dab                              ; $6d80: $28 $29

	ld   a, [hl+]                                    ; $6d82: $2a

jr_083_6d83:
	dec  hl                                          ; $6d83: $2b
	inc  l                                           ; $6d84: $2c
	dec  l                                           ; $6d85: $2d
	ld   l, $2f                                      ; $6d86: $2e $2f
	ld   b, b                                        ; $6d88: $40
	ld   b, c                                        ; $6d89: $41
	ld   b, d                                        ; $6d8a: $42
	ld   b, e                                        ; $6d8b: $43
	jr   nc, jr_083_6dbf                             ; $6d8c: $30 $31

	ld   [hl-], a                                    ; $6d8e: $32
	inc  sp                                          ; $6d8f: $33
	inc  [hl]                                        ; $6d90: $34
	dec  [hl]                                        ; $6d91: $35
	ld   [hl], $37                                   ; $6d92: $36 $37
	jr   c, jr_083_6dcf                              ; $6d94: $38 $39

	ld   a, [hl-]                                    ; $6d96: $3a
	dec  sp                                          ; $6d97: $3b
	inc  a                                           ; $6d98: $3c
	dec  a                                           ; $6d99: $3d
	ld   a, $3f                                      ; $6d9a: $3e $3f
	inc  h                                           ; $6d9c: $24
	dec  h                                           ; $6d9d: $25
	ld   h, $27                                      ; $6d9e: $26 $27
	ld   b, b                                        ; $6da0: $40
	ld   b, c                                        ; $6da1: $41
	ld   b, d                                        ; $6da2: $42
	ld   b, e                                        ; $6da3: $43
	ld   b, h                                        ; $6da4: $44
	ld   b, l                                        ; $6da5: $45
	ld   b, [hl]                                     ; $6da6: $46

jr_083_6da7:
	ld   b, a                                        ; $6da7: $47
	ld   c, b                                        ; $6da8: $48
	ld   c, c                                        ; $6da9: $49
	ld   c, d                                        ; $6daa: $4a

jr_083_6dab:
	ld   c, e                                        ; $6dab: $4b
	ld   c, h                                        ; $6dac: $4c
	ld   c, l                                        ; $6dad: $4d
	ld   c, [hl]                                     ; $6dae: $4e
	ld   c, a                                        ; $6daf: $4f
	inc  [hl]                                        ; $6db0: $34
	dec  [hl]                                        ; $6db1: $35
	ld   [hl], $37                                   ; $6db2: $36 $37
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

jr_083_6dbf:
	ld   e, e                                        ; $6dbf: $5b
	ld   e, h                                        ; $6dc0: $5c
	ld   e, l                                        ; $6dc1: $5d
	ld   e, [hl]                                     ; $6dc2: $5e
	ld   e, a                                        ; $6dc3: $5f
	ld   b, h                                        ; $6dc4: $44
	ld   b, l                                        ; $6dc5: $45
	ld   b, [hl]                                     ; $6dc6: $46
	ld   b, a                                        ; $6dc7: $47
	ld   h, b                                        ; $6dc8: $60
	ld   h, c                                        ; $6dc9: $61
	ld   h, d                                        ; $6dca: $62
	ld   h, e                                        ; $6dcb: $63
	ld   h, h                                        ; $6dcc: $64
	ld   h, l                                        ; $6dcd: $65
	ld   h, [hl]                                     ; $6dce: $66

jr_083_6dcf:
	ld   h, a                                        ; $6dcf: $67
	ld   l, b                                        ; $6dd0: $68
	ld   l, c                                        ; $6dd1: $69
	ld   l, d                                        ; $6dd2: $6a
	ld   l, e                                        ; $6dd3: $6b
	ld   l, h                                        ; $6dd4: $6c
	ld   l, l                                        ; $6dd5: $6d
	ld   l, [hl]                                     ; $6dd6: $6e
	ld   l, a                                        ; $6dd7: $6f
	jr   z, @+$2b                                    ; $6dd8: $28 $29

	ld   a, [hl+]                                    ; $6dda: $2a
	dec  hl                                          ; $6ddb: $2b
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
	ld   a, e                                        ; $6de7: $7b
	ld   a, h                                        ; $6de8: $7c
	ld   a, l                                        ; $6de9: $7d
	ld   a, [hl]                                     ; $6dea: $7e
	ld   a, a                                        ; $6deb: $7f
	jr   c, jr_083_6e27                              ; $6dec: $38 $39

	ld   a, [hl-]                                    ; $6dee: $3a
	dec  sp                                          ; $6def: $3b
	nop                                              ; $6df0: $00
	ld   bc, $0302                                   ; $6df1: $01 $02 $03
	inc  b                                           ; $6df4: $04
	dec  b                                           ; $6df5: $05
	ld   b, $07                                      ; $6df6: $06 $07
	ld   [$0a09], sp                                 ; $6df8: $08 $09 $0a
	dec  bc                                          ; $6dfb: $0b
	inc  c                                           ; $6dfc: $0c
	dec  c                                           ; $6dfd: $0d
	ld   c, $0f                                      ; $6dfe: $0e $0f
	inc  l                                           ; $6e00: $2c
	dec  l                                           ; $6e01: $2d
	ld   l, $2f                                      ; $6e02: $2e $2f
	db   $10                                         ; $6e04: $10
	ld   de, $1312                                   ; $6e05: $11 $12 $13
	inc  d                                           ; $6e08: $14
	dec  d                                           ; $6e09: $15
	ld   d, $17                                      ; $6e0a: $16 $17
	jr   jr_083_6e27                                 ; $6e0c: $18 $19

	ld   a, [de]                                     ; $6e0e: $1a
	dec  de                                          ; $6e0f: $1b
	inc  e                                           ; $6e10: $1c
	dec  e                                           ; $6e11: $1d
	ld   e, $1f                                      ; $6e12: $1e $1f
	inc  a                                           ; $6e14: $3c
	dec  a                                           ; $6e15: $3d
	ld   a, $3f                                      ; $6e16: $3e $3f
	inc  b                                           ; $6e18: $04
	inc  b                                           ; $6e19: $04
	inc  b                                           ; $6e1a: $04
	inc  b                                           ; $6e1b: $04
	inc  b                                           ; $6e1c: $04
	inc  b                                           ; $6e1d: $04
	inc  b                                           ; $6e1e: $04
	inc  b                                           ; $6e1f: $04
	inc  b                                           ; $6e20: $04
	inc  b                                           ; $6e21: $04
	inc  b                                           ; $6e22: $04
	inc  b                                           ; $6e23: $04
	inc  b                                           ; $6e24: $04
	inc  b                                           ; $6e25: $04
	inc  b                                           ; $6e26: $04

jr_083_6e27:
	inc  b                                           ; $6e27: $04
	inc  c                                           ; $6e28: $0c
	inc  c                                           ; $6e29: $0c
	inc  c                                           ; $6e2a: $0c
	inc  c                                           ; $6e2b: $0c
	inc  b                                           ; $6e2c: $04
	inc  b                                           ; $6e2d: $04
	inc  b                                           ; $6e2e: $04
	inc  b                                           ; $6e2f: $04
	inc  b                                           ; $6e30: $04
	inc  b                                           ; $6e31: $04
	inc  b                                           ; $6e32: $04
	inc  b                                           ; $6e33: $04
	inc  b                                           ; $6e34: $04
	inc  b                                           ; $6e35: $04
	inc  b                                           ; $6e36: $04
	inc  b                                           ; $6e37: $04
	inc  b                                           ; $6e38: $04
	inc  b                                           ; $6e39: $04
	inc  b                                           ; $6e3a: $04
	inc  b                                           ; $6e3b: $04
	inc  c                                           ; $6e3c: $0c
	inc  c                                           ; $6e3d: $0c
	inc  c                                           ; $6e3e: $0c
	inc  c                                           ; $6e3f: $0c
	inc  b                                           ; $6e40: $04
	inc  b                                           ; $6e41: $04
	inc  bc                                          ; $6e42: $03
	inc  b                                           ; $6e43: $04
	inc  b                                           ; $6e44: $04
	inc  b                                           ; $6e45: $04
	inc  b                                           ; $6e46: $04
	inc  b                                           ; $6e47: $04
	inc  b                                           ; $6e48: $04
	inc  b                                           ; $6e49: $04
	inc  b                                           ; $6e4a: $04
	inc  b                                           ; $6e4b: $04
	inc  b                                           ; $6e4c: $04
	inc  b                                           ; $6e4d: $04
	inc  bc                                          ; $6e4e: $03
	inc  bc                                          ; $6e4f: $03
	inc  c                                           ; $6e50: $0c
	inc  c                                           ; $6e51: $0c
	inc  c                                           ; $6e52: $0c
	inc  c                                           ; $6e53: $0c
	inc  b                                           ; $6e54: $04
	inc  b                                           ; $6e55: $04
	inc  bc                                          ; $6e56: $03
	inc  b                                           ; $6e57: $04
	inc  b                                           ; $6e58: $04
	inc  b                                           ; $6e59: $04
	inc  b                                           ; $6e5a: $04
	inc  b                                           ; $6e5b: $04
	inc  b                                           ; $6e5c: $04
	inc  b                                           ; $6e5d: $04
	inc  b                                           ; $6e5e: $04
	inc  b                                           ; $6e5f: $04
	inc  b                                           ; $6e60: $04
	inc  b                                           ; $6e61: $04
	inc  bc                                          ; $6e62: $03
	inc  bc                                          ; $6e63: $03
	inc  c                                           ; $6e64: $0c
	inc  c                                           ; $6e65: $0c
	inc  c                                           ; $6e66: $0c
	inc  c                                           ; $6e67: $0c
	inc  b                                           ; $6e68: $04
	inc  b                                           ; $6e69: $04
	inc  bc                                          ; $6e6a: $03
	inc  bc                                          ; $6e6b: $03
	inc  bc                                          ; $6e6c: $03
	inc  b                                           ; $6e6d: $04
	inc  b                                           ; $6e6e: $04
	inc  b                                           ; $6e6f: $04
	inc  b                                           ; $6e70: $04
	inc  b                                           ; $6e71: $04
	inc  b                                           ; $6e72: $04
	inc  b                                           ; $6e73: $04
	inc  b                                           ; $6e74: $04
	inc  bc                                          ; $6e75: $03
	inc  bc                                          ; $6e76: $03
	inc  bc                                          ; $6e77: $03
	inc  c                                           ; $6e78: $0c
	inc  c                                           ; $6e79: $0c
	dec  bc                                          ; $6e7a: $0b
	dec  bc                                          ; $6e7b: $0b
	inc  bc                                          ; $6e7c: $03
	inc  bc                                          ; $6e7d: $03
	inc  bc                                          ; $6e7e: $03
	inc  bc                                          ; $6e7f: $03
	dec  b                                           ; $6e80: $05
	dec  b                                           ; $6e81: $05
	dec  b                                           ; $6e82: $05
	dec  b                                           ; $6e83: $05
	dec  b                                           ; $6e84: $05
	dec  b                                           ; $6e85: $05
	dec  b                                           ; $6e86: $05
	dec  b                                           ; $6e87: $05
	dec  b                                           ; $6e88: $05
	dec  b                                           ; $6e89: $05
	inc  bc                                          ; $6e8a: $03
	inc  bc                                          ; $6e8b: $03
	dec  bc                                          ; $6e8c: $0b
	dec  c                                           ; $6e8d: $0d
	dec  bc                                          ; $6e8e: $0b
	dec  bc                                          ; $6e8f: $0b
	inc  bc                                          ; $6e90: $03
	inc  bc                                          ; $6e91: $03
	inc  bc                                          ; $6e92: $03
	dec  b                                           ; $6e93: $05
	inc  bc                                          ; $6e94: $03
	dec  b                                           ; $6e95: $05
	dec  b                                           ; $6e96: $05
	dec  b                                           ; $6e97: $05
	dec  b                                           ; $6e98: $05
	dec  b                                           ; $6e99: $05
	dec  b                                           ; $6e9a: $05
	dec  b                                           ; $6e9b: $05
	dec  b                                           ; $6e9c: $05
	dec  b                                           ; $6e9d: $05
	inc  bc                                          ; $6e9e: $03
	inc  bc                                          ; $6e9f: $03
	dec  bc                                          ; $6ea0: $0b
	dec  c                                           ; $6ea1: $0d
	dec  bc                                          ; $6ea2: $0b
	dec  bc                                          ; $6ea3: $0b
	inc  bc                                          ; $6ea4: $03
	dec  b                                           ; $6ea5: $05
	dec  b                                           ; $6ea6: $05
	dec  b                                           ; $6ea7: $05
	dec  b                                           ; $6ea8: $05
	dec  b                                           ; $6ea9: $05
	dec  b                                           ; $6eaa: $05
	dec  b                                           ; $6eab: $05
	dec  b                                           ; $6eac: $05
	inc  bc                                          ; $6ead: $03
	inc  bc                                          ; $6eae: $03
	dec  b                                           ; $6eaf: $05
	inc  bc                                          ; $6eb0: $03
	inc  bc                                          ; $6eb1: $03
	inc  bc                                          ; $6eb2: $03
	inc  bc                                          ; $6eb3: $03
	dec  bc                                          ; $6eb4: $0b
	dec  c                                           ; $6eb5: $0d
	dec  c                                           ; $6eb6: $0d
	dec  bc                                          ; $6eb7: $0b
	dec  bc                                          ; $6eb8: $0b
	dec  c                                           ; $6eb9: $0d
	dec  c                                           ; $6eba: $0d
	dec  c                                           ; $6ebb: $0d
	dec  c                                           ; $6ebc: $0d
	dec  c                                           ; $6ebd: $0d
	dec  c                                           ; $6ebe: $0d
	dec  c                                           ; $6ebf: $0d
	dec  bc                                          ; $6ec0: $0b
	dec  bc                                          ; $6ec1: $0b
	dec  bc                                          ; $6ec2: $0b
	dec  bc                                          ; $6ec3: $0b
	dec  bc                                          ; $6ec4: $0b
	dec  bc                                          ; $6ec5: $0b
	dec  bc                                          ; $6ec6: $0b
	dec  bc                                          ; $6ec7: $0b
	dec  bc                                          ; $6ec8: $0b
	dec  c                                           ; $6ec9: $0d
	dec  c                                           ; $6eca: $0d
	dec  bc                                          ; $6ecb: $0b
	dec  bc                                          ; $6ecc: $0b
	dec  c                                           ; $6ecd: $0d
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
	dec  bc                                          ; $6ed9: $0b
	dec  bc                                          ; $6eda: $0b
	dec  bc                                          ; $6edb: $0b
	dec  c                                           ; $6edc: $0d
	dec  c                                           ; $6edd: $0d
	dec  c                                           ; $6ede: $0d
	dec  bc                                          ; $6edf: $0b
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
	jr   nz, jr_083_6f13                             ; $6ef0: $20 $21

	ld   [hl+], a                                    ; $6ef2: $22
	inc  hl                                          ; $6ef3: $23
	db   $10                                         ; $6ef4: $10
	ld   de, $4948                                   ; $6ef5: $11 $48 $49
	inc  d                                           ; $6ef8: $14
	dec  d                                           ; $6ef9: $15
	ld   d, $17                                      ; $6efa: $16 $17
	jr   @+$1b                                       ; $6efc: $18 $19

	ld   a, [de]                                     ; $6efe: $1a
	dec  de                                          ; $6eff: $1b
	inc  e                                           ; $6f00: $1c
	dec  e                                           ; $6f01: $1d
	ld   e, $1f                                      ; $6f02: $1e $1f
	jr   nc, jr_083_6f37                             ; $6f04: $30 $31

	ld   [hl-], a                                    ; $6f06: $32
	inc  sp                                          ; $6f07: $33
	jr   nz, @+$23                                   ; $6f08: $20 $21

	ld   c, d                                        ; $6f0a: $4a
	ld   c, e                                        ; $6f0b: $4b
	inc  h                                           ; $6f0c: $24
	dec  h                                           ; $6f0d: $25
	ld   h, $27                                      ; $6f0e: $26 $27
	jr   z, jr_083_6f3b                              ; $6f10: $28 $29

	ld   a, [hl+]                                    ; $6f12: $2a

jr_083_6f13:
	dec  hl                                          ; $6f13: $2b
	inc  l                                           ; $6f14: $2c
	dec  l                                           ; $6f15: $2d
	ld   l, $2f                                      ; $6f16: $2e $2f
	ld   b, b                                        ; $6f18: $40
	ld   b, c                                        ; $6f19: $41
	ld   b, d                                        ; $6f1a: $42
	ld   b, e                                        ; $6f1b: $43
	jr   nc, jr_083_6f4f                             ; $6f1c: $30 $31

	ld   c, h                                        ; $6f1e: $4c
	ld   c, l                                        ; $6f1f: $4d
	inc  [hl]                                        ; $6f20: $34
	dec  [hl]                                        ; $6f21: $35
	ld   [hl], $37                                   ; $6f22: $36 $37
	jr   c, jr_083_6f5f                              ; $6f24: $38 $39

	ld   a, [hl-]                                    ; $6f26: $3a
	dec  sp                                          ; $6f27: $3b
	inc  a                                           ; $6f28: $3c
	dec  a                                           ; $6f29: $3d
	ld   a, $3f                                      ; $6f2a: $3e $3f
	inc  h                                           ; $6f2c: $24
	dec  h                                           ; $6f2d: $25
	ld   h, $27                                      ; $6f2e: $26 $27
	ld   b, b                                        ; $6f30: $40
	ld   b, c                                        ; $6f31: $41
	ld   c, [hl]                                     ; $6f32: $4e
	ld   c, a                                        ; $6f33: $4f
	ld   b, h                                        ; $6f34: $44
	ld   b, l                                        ; $6f35: $45
	ld   b, [hl]                                     ; $6f36: $46

jr_083_6f37:
	ld   b, a                                        ; $6f37: $47
	ld   c, b                                        ; $6f38: $48
	ld   c, c                                        ; $6f39: $49
	ld   c, d                                        ; $6f3a: $4a

jr_083_6f3b:
	ld   c, e                                        ; $6f3b: $4b
	ld   c, h                                        ; $6f3c: $4c
	ld   c, l                                        ; $6f3d: $4d
	ld   c, [hl]                                     ; $6f3e: $4e
	ld   c, a                                        ; $6f3f: $4f
	inc  [hl]                                        ; $6f40: $34
	dec  [hl]                                        ; $6f41: $35
	ld   [hl], $37                                   ; $6f42: $36 $37
	ld   d, b                                        ; $6f44: $50
	ld   d, c                                        ; $6f45: $51
	ld   d, b                                        ; $6f46: $50
	ld   d, c                                        ; $6f47: $51
	ld   d, h                                        ; $6f48: $54
	ld   d, l                                        ; $6f49: $55
	ld   d, [hl]                                     ; $6f4a: $56
	ld   d, a                                        ; $6f4b: $57
	ld   e, b                                        ; $6f4c: $58
	ld   e, c                                        ; $6f4d: $59
	ld   e, d                                        ; $6f4e: $5a

jr_083_6f4f:
	ld   e, e                                        ; $6f4f: $5b
	ld   e, h                                        ; $6f50: $5c
	ld   e, l                                        ; $6f51: $5d
	ld   e, [hl]                                     ; $6f52: $5e
	ld   e, a                                        ; $6f53: $5f
	ld   b, h                                        ; $6f54: $44
	ld   b, l                                        ; $6f55: $45
	ld   b, [hl]                                     ; $6f56: $46
	ld   b, a                                        ; $6f57: $47
	ld   h, b                                        ; $6f58: $60
	ld   h, c                                        ; $6f59: $61
	ld   d, d                                        ; $6f5a: $52
	ld   d, e                                        ; $6f5b: $53
	ld   h, h                                        ; $6f5c: $64
	ld   h, l                                        ; $6f5d: $65
	ld   h, [hl]                                     ; $6f5e: $66

jr_083_6f5f:
	ld   h, a                                        ; $6f5f: $67
	ld   l, b                                        ; $6f60: $68
	ld   l, c                                        ; $6f61: $69
	ld   l, d                                        ; $6f62: $6a
	ld   l, e                                        ; $6f63: $6b
	ld   l, h                                        ; $6f64: $6c
	ld   l, l                                        ; $6f65: $6d
	ld   l, [hl]                                     ; $6f66: $6e
	ld   l, a                                        ; $6f67: $6f
	jr   z, @+$2b                                    ; $6f68: $28 $29

	ld   a, [hl+]                                    ; $6f6a: $2a
	dec  hl                                          ; $6f6b: $2b
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
	jr   c, jr_083_6fb7                              ; $6f7c: $38 $39

	ld   a, [hl-]                                    ; $6f7e: $3a
	dec  sp                                          ; $6f7f: $3b
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
	inc  l                                           ; $6f90: $2c
	dec  l                                           ; $6f91: $2d
	ld   l, $2f                                      ; $6f92: $2e $2f
	db   $10                                         ; $6f94: $10
	ld   de, $1312                                   ; $6f95: $11 $12 $13
	inc  d                                           ; $6f98: $14
	dec  d                                           ; $6f99: $15
	ld   d, $17                                      ; $6f9a: $16 $17
	jr   jr_083_6fb7                                 ; $6f9c: $18 $19

	ld   a, [de]                                     ; $6f9e: $1a
	dec  de                                          ; $6f9f: $1b
	inc  e                                           ; $6fa0: $1c
	dec  e                                           ; $6fa1: $1d
	ld   e, $1f                                      ; $6fa2: $1e $1f
	inc  a                                           ; $6fa4: $3c
	dec  a                                           ; $6fa5: $3d
	ld   a, $3f                                      ; $6fa6: $3e $3f
	inc  b                                           ; $6fa8: $04
	inc  b                                           ; $6fa9: $04
	inc  b                                           ; $6faa: $04
	inc  b                                           ; $6fab: $04
	inc  b                                           ; $6fac: $04
	inc  b                                           ; $6fad: $04
	inc  b                                           ; $6fae: $04
	inc  b                                           ; $6faf: $04
	inc  b                                           ; $6fb0: $04
	inc  b                                           ; $6fb1: $04
	inc  b                                           ; $6fb2: $04
	inc  b                                           ; $6fb3: $04
	inc  b                                           ; $6fb4: $04
	inc  b                                           ; $6fb5: $04
	inc  b                                           ; $6fb6: $04

jr_083_6fb7:
	inc  b                                           ; $6fb7: $04
	inc  c                                           ; $6fb8: $0c
	inc  c                                           ; $6fb9: $0c
	inc  c                                           ; $6fba: $0c
	inc  c                                           ; $6fbb: $0c
	inc  b                                           ; $6fbc: $04
	inc  b                                           ; $6fbd: $04
	dec  bc                                          ; $6fbe: $0b
	inc  c                                           ; $6fbf: $0c
	inc  b                                           ; $6fc0: $04
	inc  b                                           ; $6fc1: $04
	inc  b                                           ; $6fc2: $04
	inc  b                                           ; $6fc3: $04
	inc  b                                           ; $6fc4: $04
	inc  b                                           ; $6fc5: $04
	inc  b                                           ; $6fc6: $04
	inc  b                                           ; $6fc7: $04
	inc  b                                           ; $6fc8: $04
	inc  b                                           ; $6fc9: $04
	inc  b                                           ; $6fca: $04
	inc  b                                           ; $6fcb: $04
	inc  c                                           ; $6fcc: $0c
	inc  c                                           ; $6fcd: $0c
	inc  c                                           ; $6fce: $0c
	inc  c                                           ; $6fcf: $0c
	inc  b                                           ; $6fd0: $04
	inc  b                                           ; $6fd1: $04
	dec  bc                                          ; $6fd2: $0b
	inc  c                                           ; $6fd3: $0c
	inc  b                                           ; $6fd4: $04
	inc  b                                           ; $6fd5: $04
	inc  b                                           ; $6fd6: $04
	inc  b                                           ; $6fd7: $04
	inc  b                                           ; $6fd8: $04
	inc  b                                           ; $6fd9: $04
	inc  b                                           ; $6fda: $04
	inc  b                                           ; $6fdb: $04
	inc  b                                           ; $6fdc: $04
	inc  b                                           ; $6fdd: $04
	inc  bc                                          ; $6fde: $03
	inc  bc                                          ; $6fdf: $03
	inc  c                                           ; $6fe0: $0c
	inc  c                                           ; $6fe1: $0c
	inc  c                                           ; $6fe2: $0c
	inc  c                                           ; $6fe3: $0c
	inc  b                                           ; $6fe4: $04
	inc  b                                           ; $6fe5: $04
	dec  bc                                          ; $6fe6: $0b
	dec  bc                                          ; $6fe7: $0b
	inc  b                                           ; $6fe8: $04
	inc  b                                           ; $6fe9: $04
	inc  b                                           ; $6fea: $04
	inc  b                                           ; $6feb: $04
	inc  b                                           ; $6fec: $04
	inc  b                                           ; $6fed: $04
	inc  b                                           ; $6fee: $04
	inc  b                                           ; $6fef: $04
	inc  b                                           ; $6ff0: $04
	inc  b                                           ; $6ff1: $04
	inc  bc                                          ; $6ff2: $03
	inc  bc                                          ; $6ff3: $03
	inc  c                                           ; $6ff4: $0c
	inc  c                                           ; $6ff5: $0c
	inc  c                                           ; $6ff6: $0c
	inc  c                                           ; $6ff7: $0c
	inc  b                                           ; $6ff8: $04
	inc  b                                           ; $6ff9: $04
	dec  bc                                          ; $6ffa: $0b
	dec  bc                                          ; $6ffb: $0b
	inc  bc                                          ; $6ffc: $03
	inc  b                                           ; $6ffd: $04
	inc  b                                           ; $6ffe: $04
	inc  b                                           ; $6fff: $04
	inc  b                                           ; $7000: $04
	inc  b                                           ; $7001: $04
	inc  b                                           ; $7002: $04
	inc  b                                           ; $7003: $04
	inc  b                                           ; $7004: $04
	inc  bc                                          ; $7005: $03
	inc  bc                                          ; $7006: $03
	inc  bc                                          ; $7007: $03
	inc  c                                           ; $7008: $0c
	inc  c                                           ; $7009: $0c
	dec  bc                                          ; $700a: $0b
	dec  bc                                          ; $700b: $0b
	inc  bc                                          ; $700c: $03
	inc  bc                                          ; $700d: $03
	dec  bc                                          ; $700e: $0b
	dec  bc                                          ; $700f: $0b
	dec  b                                           ; $7010: $05
	dec  b                                           ; $7011: $05
	dec  b                                           ; $7012: $05
	dec  b                                           ; $7013: $05
	dec  b                                           ; $7014: $05
	dec  b                                           ; $7015: $05
	dec  b                                           ; $7016: $05
	dec  b                                           ; $7017: $05
	dec  b                                           ; $7018: $05
	dec  b                                           ; $7019: $05
	inc  bc                                          ; $701a: $03
	inc  bc                                          ; $701b: $03
	dec  bc                                          ; $701c: $0b
	dec  c                                           ; $701d: $0d
	dec  bc                                          ; $701e: $0b
	dec  bc                                          ; $701f: $0b
	inc  bc                                          ; $7020: $03
	inc  bc                                          ; $7021: $03
	dec  bc                                          ; $7022: $0b
	dec  bc                                          ; $7023: $0b
	inc  bc                                          ; $7024: $03
	dec  b                                           ; $7025: $05
	dec  b                                           ; $7026: $05
	dec  b                                           ; $7027: $05
	dec  b                                           ; $7028: $05
	dec  b                                           ; $7029: $05
	dec  b                                           ; $702a: $05
	dec  b                                           ; $702b: $05
	dec  b                                           ; $702c: $05
	dec  b                                           ; $702d: $05
	inc  bc                                          ; $702e: $03
	inc  bc                                          ; $702f: $03
	dec  bc                                          ; $7030: $0b
	dec  c                                           ; $7031: $0d
	dec  bc                                          ; $7032: $0b
	dec  bc                                          ; $7033: $0b
	inc  bc                                          ; $7034: $03
	dec  b                                           ; $7035: $05
	dec  b                                           ; $7036: $05
	dec  b                                           ; $7037: $05
	dec  b                                           ; $7038: $05
	dec  b                                           ; $7039: $05
	dec  b                                           ; $703a: $05
	dec  b                                           ; $703b: $05
	dec  b                                           ; $703c: $05
	inc  bc                                          ; $703d: $03
	inc  bc                                          ; $703e: $03
	dec  b                                           ; $703f: $05
	inc  bc                                          ; $7040: $03
	inc  bc                                          ; $7041: $03
	inc  bc                                          ; $7042: $03
	inc  bc                                          ; $7043: $03
	dec  bc                                          ; $7044: $0b
	dec  c                                           ; $7045: $0d
	dec  c                                           ; $7046: $0d
	dec  bc                                          ; $7047: $0b
	dec  bc                                          ; $7048: $0b
	dec  c                                           ; $7049: $0d
	dec  c                                           ; $704a: $0d
	dec  c                                           ; $704b: $0d
	dec  c                                           ; $704c: $0d
	dec  c                                           ; $704d: $0d
	dec  c                                           ; $704e: $0d
	dec  c                                           ; $704f: $0d
	dec  bc                                          ; $7050: $0b
	dec  bc                                          ; $7051: $0b
	dec  bc                                          ; $7052: $0b
	dec  bc                                          ; $7053: $0b
	dec  bc                                          ; $7054: $0b
	dec  bc                                          ; $7055: $0b
	dec  bc                                          ; $7056: $0b
	dec  bc                                          ; $7057: $0b
	dec  bc                                          ; $7058: $0b
	dec  c                                           ; $7059: $0d
	dec  c                                           ; $705a: $0d
	dec  bc                                          ; $705b: $0b
	dec  bc                                          ; $705c: $0b
	dec  c                                           ; $705d: $0d
	dec  c                                           ; $705e: $0d
	dec  c                                           ; $705f: $0d
	dec  c                                           ; $7060: $0d
	dec  c                                           ; $7061: $0d
	dec  c                                           ; $7062: $0d
	dec  c                                           ; $7063: $0d
	dec  bc                                          ; $7064: $0b
	dec  bc                                          ; $7065: $0b
	dec  bc                                          ; $7066: $0b
	dec  bc                                          ; $7067: $0b
	dec  bc                                          ; $7068: $0b
	dec  bc                                          ; $7069: $0b
	dec  bc                                          ; $706a: $0b
	dec  bc                                          ; $706b: $0b
	dec  c                                           ; $706c: $0d
	dec  c                                           ; $706d: $0d
	dec  c                                           ; $706e: $0d
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
	jr   nz, jr_083_70a3                             ; $7080: $20 $21

	ld   [hl+], a                                    ; $7082: $22
	inc  hl                                          ; $7083: $23
	db   $10                                         ; $7084: $10
	ld   de, $1312                                   ; $7085: $11 $12 $13
	inc  d                                           ; $7088: $14
	dec  d                                           ; $7089: $15
	ld   d, $17                                      ; $708a: $16 $17
	jr   jr_083_70a7                                 ; $708c: $18 $19

	ld   a, [de]                                     ; $708e: $1a
	dec  de                                          ; $708f: $1b
	inc  e                                           ; $7090: $1c
	dec  e                                           ; $7091: $1d
	ld   e, $1f                                      ; $7092: $1e $1f
	jr   nc, jr_083_70c7                             ; $7094: $30 $31

	ld   [hl-], a                                    ; $7096: $32
	inc  sp                                          ; $7097: $33
	jr   nz, jr_083_70bb                             ; $7098: $20 $21

	ld   [hl+], a                                    ; $709a: $22
	inc  hl                                          ; $709b: $23
	inc  h                                           ; $709c: $24
	dec  h                                           ; $709d: $25
	ld   h, $27                                      ; $709e: $26 $27
	jr   z, jr_083_70cb                              ; $70a0: $28 $29

	ld   a, [hl+]                                    ; $70a2: $2a

jr_083_70a3:
	dec  hl                                          ; $70a3: $2b
	inc  l                                           ; $70a4: $2c
	dec  l                                           ; $70a5: $2d
	ld   d, h                                        ; $70a6: $54

jr_083_70a7:
	ld   d, l                                        ; $70a7: $55
	ld   b, b                                        ; $70a8: $40
	ld   b, c                                        ; $70a9: $41
	ld   b, d                                        ; $70aa: $42
	ld   b, e                                        ; $70ab: $43
	jr   nc, jr_083_70df                             ; $70ac: $30 $31

	ld   [hl-], a                                    ; $70ae: $32
	inc  sp                                          ; $70af: $33
	inc  [hl]                                        ; $70b0: $34
	dec  [hl]                                        ; $70b1: $35
	ld   [hl], $37                                   ; $70b2: $36 $37
	jr   c, jr_083_70ef                              ; $70b4: $38 $39

	ld   a, [hl-]                                    ; $70b6: $3a
	dec  sp                                          ; $70b7: $3b
	inc  a                                           ; $70b8: $3c
	dec  a                                           ; $70b9: $3d
	ld   d, [hl]                                     ; $70ba: $56

jr_083_70bb:
	ld   d, a                                        ; $70bb: $57
	inc  h                                           ; $70bc: $24
	dec  h                                           ; $70bd: $25
	ld   h, $27                                      ; $70be: $26 $27
	ld   b, b                                        ; $70c0: $40
	ld   b, c                                        ; $70c1: $41
	ld   b, d                                        ; $70c2: $42
	ld   b, e                                        ; $70c3: $43
	ld   b, h                                        ; $70c4: $44
	ld   b, l                                        ; $70c5: $45
	ld   b, [hl]                                     ; $70c6: $46

jr_083_70c7:
	ld   b, a                                        ; $70c7: $47
	ld   c, b                                        ; $70c8: $48
	ld   c, c                                        ; $70c9: $49
	ld   c, d                                        ; $70ca: $4a

jr_083_70cb:
	ld   c, e                                        ; $70cb: $4b
	ld   c, h                                        ; $70cc: $4c
	ld   c, l                                        ; $70cd: $4d
	ld   e, b                                        ; $70ce: $58
	ld   e, c                                        ; $70cf: $59
	inc  [hl]                                        ; $70d0: $34
	dec  [hl]                                        ; $70d1: $35
	ld   [hl], $37                                   ; $70d2: $36 $37
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

jr_083_70df:
	ld   e, e                                        ; $70df: $5b
	ld   e, h                                        ; $70e0: $5c
	ld   e, l                                        ; $70e1: $5d
	ld   e, d                                        ; $70e2: $5a
	ld   e, e                                        ; $70e3: $5b
	ld   b, h                                        ; $70e4: $44
	ld   b, l                                        ; $70e5: $45
	ld   b, [hl]                                     ; $70e6: $46
	ld   b, a                                        ; $70e7: $47
	ld   h, b                                        ; $70e8: $60
	ld   h, c                                        ; $70e9: $61
	ld   h, d                                        ; $70ea: $62
	ld   h, e                                        ; $70eb: $63
	ld   h, h                                        ; $70ec: $64
	ld   h, l                                        ; $70ed: $65
	ld   h, [hl]                                     ; $70ee: $66

jr_083_70ef:
	ld   h, a                                        ; $70ef: $67
	ld   l, b                                        ; $70f0: $68
	ld   l, c                                        ; $70f1: $69
	ld   l, d                                        ; $70f2: $6a
	ld   l, e                                        ; $70f3: $6b
	ld   l, h                                        ; $70f4: $6c
	ld   l, l                                        ; $70f5: $6d
	ld   l, [hl]                                     ; $70f6: $6e
	ld   l, a                                        ; $70f7: $6f
	jr   z, @+$2b                                    ; $70f8: $28 $29

	ld   a, [hl+]                                    ; $70fa: $2a
	dec  hl                                          ; $70fb: $2b
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
	jr   c, jr_083_7147                              ; $710c: $38 $39

	ld   a, [hl-]                                    ; $710e: $3a
	dec  sp                                          ; $710f: $3b
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
	inc  l                                           ; $7120: $2c
	dec  l                                           ; $7121: $2d
	ld   l, $2f                                      ; $7122: $2e $2f
	db   $10                                         ; $7124: $10
	ld   de, $1312                                   ; $7125: $11 $12 $13
	inc  d                                           ; $7128: $14
	dec  d                                           ; $7129: $15
	ld   d, $17                                      ; $712a: $16 $17
	jr   jr_083_7147                                 ; $712c: $18 $19

	ld   a, [de]                                     ; $712e: $1a
	dec  de                                          ; $712f: $1b
	inc  e                                           ; $7130: $1c
	dec  e                                           ; $7131: $1d
	ld   e, $1f                                      ; $7132: $1e $1f
	inc  a                                           ; $7134: $3c
	dec  a                                           ; $7135: $3d
	ld   a, $3f                                      ; $7136: $3e $3f
	inc  b                                           ; $7138: $04
	inc  b                                           ; $7139: $04
	inc  b                                           ; $713a: $04
	inc  b                                           ; $713b: $04
	inc  b                                           ; $713c: $04
	inc  b                                           ; $713d: $04
	inc  b                                           ; $713e: $04
	inc  b                                           ; $713f: $04
	inc  b                                           ; $7140: $04
	inc  b                                           ; $7141: $04
	inc  b                                           ; $7142: $04
	inc  b                                           ; $7143: $04
	inc  b                                           ; $7144: $04
	inc  b                                           ; $7145: $04
	inc  b                                           ; $7146: $04

jr_083_7147:
	inc  b                                           ; $7147: $04
	inc  c                                           ; $7148: $0c
	inc  c                                           ; $7149: $0c
	inc  c                                           ; $714a: $0c
	inc  c                                           ; $714b: $0c
	inc  b                                           ; $714c: $04
	inc  b                                           ; $714d: $04
	inc  b                                           ; $714e: $04
	inc  b                                           ; $714f: $04
	inc  b                                           ; $7150: $04
	inc  b                                           ; $7151: $04
	inc  b                                           ; $7152: $04
	inc  b                                           ; $7153: $04
	inc  b                                           ; $7154: $04
	inc  b                                           ; $7155: $04
	inc  b                                           ; $7156: $04
	inc  b                                           ; $7157: $04
	inc  b                                           ; $7158: $04
	inc  b                                           ; $7159: $04
	inc  b                                           ; $715a: $04
	inc  b                                           ; $715b: $04
	inc  c                                           ; $715c: $0c
	inc  c                                           ; $715d: $0c
	inc  c                                           ; $715e: $0c
	inc  c                                           ; $715f: $0c
	inc  b                                           ; $7160: $04
	inc  b                                           ; $7161: $04
	inc  bc                                          ; $7162: $03
	inc  b                                           ; $7163: $04
	inc  b                                           ; $7164: $04
	inc  b                                           ; $7165: $04
	inc  b                                           ; $7166: $04
	inc  b                                           ; $7167: $04
	inc  b                                           ; $7168: $04
	inc  b                                           ; $7169: $04
	inc  b                                           ; $716a: $04
	inc  b                                           ; $716b: $04
	inc  b                                           ; $716c: $04
	inc  b                                           ; $716d: $04
	dec  bc                                          ; $716e: $0b
	dec  bc                                          ; $716f: $0b
	inc  c                                           ; $7170: $0c
	inc  c                                           ; $7171: $0c
	inc  c                                           ; $7172: $0c
	inc  c                                           ; $7173: $0c
	inc  b                                           ; $7174: $04
	inc  b                                           ; $7175: $04
	inc  bc                                          ; $7176: $03
	inc  b                                           ; $7177: $04
	inc  b                                           ; $7178: $04
	inc  b                                           ; $7179: $04
	inc  b                                           ; $717a: $04
	inc  b                                           ; $717b: $04
	inc  b                                           ; $717c: $04
	inc  b                                           ; $717d: $04
	inc  b                                           ; $717e: $04
	inc  b                                           ; $717f: $04
	inc  b                                           ; $7180: $04
	inc  b                                           ; $7181: $04
	dec  bc                                          ; $7182: $0b
	dec  bc                                          ; $7183: $0b
	inc  c                                           ; $7184: $0c
	inc  c                                           ; $7185: $0c
	inc  c                                           ; $7186: $0c
	inc  c                                           ; $7187: $0c
	inc  b                                           ; $7188: $04
	inc  b                                           ; $7189: $04
	inc  bc                                          ; $718a: $03
	inc  bc                                          ; $718b: $03
	inc  bc                                          ; $718c: $03
	inc  b                                           ; $718d: $04
	inc  b                                           ; $718e: $04
	inc  b                                           ; $718f: $04
	inc  b                                           ; $7190: $04
	inc  b                                           ; $7191: $04
	inc  b                                           ; $7192: $04
	inc  b                                           ; $7193: $04
	inc  b                                           ; $7194: $04
	inc  bc                                          ; $7195: $03
	dec  bc                                          ; $7196: $0b
	dec  bc                                          ; $7197: $0b
	inc  c                                           ; $7198: $0c
	inc  c                                           ; $7199: $0c
	dec  bc                                          ; $719a: $0b
	dec  bc                                          ; $719b: $0b
	inc  bc                                          ; $719c: $03
	inc  bc                                          ; $719d: $03
	inc  bc                                          ; $719e: $03
	inc  bc                                          ; $719f: $03
	dec  b                                           ; $71a0: $05
	dec  b                                           ; $71a1: $05
	dec  b                                           ; $71a2: $05
	dec  b                                           ; $71a3: $05
	dec  b                                           ; $71a4: $05
	dec  b                                           ; $71a5: $05
	dec  b                                           ; $71a6: $05
	dec  b                                           ; $71a7: $05
	dec  b                                           ; $71a8: $05
	dec  b                                           ; $71a9: $05
	dec  bc                                          ; $71aa: $0b
	dec  bc                                          ; $71ab: $0b
	dec  bc                                          ; $71ac: $0b
	dec  c                                           ; $71ad: $0d
	dec  bc                                          ; $71ae: $0b
	dec  bc                                          ; $71af: $0b
	inc  bc                                          ; $71b0: $03
	inc  bc                                          ; $71b1: $03
	inc  bc                                          ; $71b2: $03
	dec  b                                           ; $71b3: $05
	inc  bc                                          ; $71b4: $03
	dec  b                                           ; $71b5: $05
	dec  b                                           ; $71b6: $05
	dec  b                                           ; $71b7: $05
	dec  b                                           ; $71b8: $05
	dec  b                                           ; $71b9: $05
	dec  b                                           ; $71ba: $05
	dec  b                                           ; $71bb: $05
	dec  b                                           ; $71bc: $05
	dec  b                                           ; $71bd: $05
	inc  bc                                          ; $71be: $03
	inc  bc                                          ; $71bf: $03
	dec  bc                                          ; $71c0: $0b
	dec  c                                           ; $71c1: $0d
	dec  bc                                          ; $71c2: $0b
	dec  bc                                          ; $71c3: $0b
	inc  bc                                          ; $71c4: $03
	dec  b                                           ; $71c5: $05
	dec  b                                           ; $71c6: $05
	dec  b                                           ; $71c7: $05
	dec  b                                           ; $71c8: $05
	dec  b                                           ; $71c9: $05
	dec  b                                           ; $71ca: $05
	dec  b                                           ; $71cb: $05
	dec  b                                           ; $71cc: $05
	inc  bc                                          ; $71cd: $03
	inc  bc                                          ; $71ce: $03
	dec  b                                           ; $71cf: $05
	inc  bc                                          ; $71d0: $03
	inc  bc                                          ; $71d1: $03
	inc  bc                                          ; $71d2: $03
	inc  bc                                          ; $71d3: $03
	dec  bc                                          ; $71d4: $0b
	dec  c                                           ; $71d5: $0d
	dec  c                                           ; $71d6: $0d
	dec  bc                                          ; $71d7: $0b
	dec  bc                                          ; $71d8: $0b
	dec  c                                           ; $71d9: $0d
	dec  c                                           ; $71da: $0d
	dec  c                                           ; $71db: $0d
	dec  c                                           ; $71dc: $0d
	dec  c                                           ; $71dd: $0d
	dec  c                                           ; $71de: $0d
	dec  c                                           ; $71df: $0d
	dec  bc                                          ; $71e0: $0b
	dec  bc                                          ; $71e1: $0b
	dec  bc                                          ; $71e2: $0b
	dec  bc                                          ; $71e3: $0b
	dec  bc                                          ; $71e4: $0b
	dec  bc                                          ; $71e5: $0b
	dec  bc                                          ; $71e6: $0b
	dec  bc                                          ; $71e7: $0b
	dec  bc                                          ; $71e8: $0b
	dec  c                                           ; $71e9: $0d
	dec  c                                           ; $71ea: $0d
	dec  bc                                          ; $71eb: $0b
	dec  bc                                          ; $71ec: $0b
	dec  c                                           ; $71ed: $0d
	dec  c                                           ; $71ee: $0d
	dec  c                                           ; $71ef: $0d
	dec  c                                           ; $71f0: $0d
	dec  c                                           ; $71f1: $0d
	dec  c                                           ; $71f2: $0d
	dec  c                                           ; $71f3: $0d
	dec  bc                                          ; $71f4: $0b
	dec  bc                                          ; $71f5: $0b
	dec  bc                                          ; $71f6: $0b
	dec  bc                                          ; $71f7: $0b
	dec  bc                                          ; $71f8: $0b
	dec  bc                                          ; $71f9: $0b
	dec  bc                                          ; $71fa: $0b
	dec  bc                                          ; $71fb: $0b
	dec  c                                           ; $71fc: $0d
	dec  c                                           ; $71fd: $0d
	dec  c                                           ; $71fe: $0d
	dec  bc                                          ; $71ff: $0b
	nop                                              ; $7200: $00
	ld   bc, $0302                                   ; $7201: $01 $02 $03
	inc  b                                           ; $7204: $04
	dec  b                                           ; $7205: $05
	ld   b, $07                                      ; $7206: $06 $07
	ld   [$0a09], sp                                 ; $7208: $08 $09 $0a
	dec  bc                                          ; $720b: $0b
	inc  c                                           ; $720c: $0c
	dec  c                                           ; $720d: $0d
	ld   c, $0f                                      ; $720e: $0e $0f
	jr   nz, jr_083_7233                             ; $7210: $20 $21

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
	dec  e                                           ; $7221: $1d
	ld   e, $1f                                      ; $7222: $1e $1f
	jr   nc, jr_083_7257                             ; $7224: $30 $31

	ld   [hl-], a                                    ; $7226: $32
	inc  sp                                          ; $7227: $33
	jr   nz, @+$23                                   ; $7228: $20 $21

	ld   [hl+], a                                    ; $722a: $22
	inc  hl                                          ; $722b: $23
	inc  h                                           ; $722c: $24
	dec  h                                           ; $722d: $25
	ld   h, $27                                      ; $722e: $26 $27
	jr   z, jr_083_725b                              ; $7230: $28 $29

	ld   a, [hl+]                                    ; $7232: $2a

jr_083_7233:
	dec  hl                                          ; $7233: $2b
	inc  l                                           ; $7234: $2c
	dec  l                                           ; $7235: $2d
	ld   l, $2f                                      ; $7236: $2e $2f
	ld   b, b                                        ; $7238: $40
	ld   b, c                                        ; $7239: $41
	ld   b, d                                        ; $723a: $42
	ld   b, e                                        ; $723b: $43
	jr   nc, jr_083_726f                             ; $723c: $30 $31

	ld   [hl-], a                                    ; $723e: $32
	inc  sp                                          ; $723f: $33
	inc  [hl]                                        ; $7240: $34
	dec  [hl]                                        ; $7241: $35
	ld   [hl], $37                                   ; $7242: $36 $37
	jr   c, jr_083_727f                              ; $7244: $38 $39

	ld   a, [hl-]                                    ; $7246: $3a
	dec  sp                                          ; $7247: $3b
	inc  a                                           ; $7248: $3c
	dec  a                                           ; $7249: $3d
	ld   a, $3f                                      ; $724a: $3e $3f
	inc  h                                           ; $724c: $24
	dec  h                                           ; $724d: $25
	ld   h, $27                                      ; $724e: $26 $27
	ld   b, b                                        ; $7250: $40
	ld   b, c                                        ; $7251: $41
	ld   b, d                                        ; $7252: $42
	ld   b, e                                        ; $7253: $43
	ld   b, h                                        ; $7254: $44
	ld   b, l                                        ; $7255: $45
	ld   b, [hl]                                     ; $7256: $46

jr_083_7257:
	ld   b, a                                        ; $7257: $47
	ld   c, b                                        ; $7258: $48
	ld   c, c                                        ; $7259: $49
	ld   c, d                                        ; $725a: $4a

jr_083_725b:
	ld   c, e                                        ; $725b: $4b
	ld   c, h                                        ; $725c: $4c
	ld   c, l                                        ; $725d: $4d
	ld   c, [hl]                                     ; $725e: $4e
	ld   c, a                                        ; $725f: $4f
	inc  [hl]                                        ; $7260: $34
	dec  [hl]                                        ; $7261: $35
	ld   [hl], $37                                   ; $7262: $36 $37
	ld   d, b                                        ; $7264: $50
	ld   d, c                                        ; $7265: $51
	ld   d, d                                        ; $7266: $52
	ld   d, e                                        ; $7267: $53
	ld   d, h                                        ; $7268: $54
	ld   d, l                                        ; $7269: $55
	ld   d, [hl]                                     ; $726a: $56
	ld   d, a                                        ; $726b: $57
	ld   e, b                                        ; $726c: $58
	ld   e, c                                        ; $726d: $59
	ld   e, d                                        ; $726e: $5a

jr_083_726f:
	ld   e, e                                        ; $726f: $5b
	ld   e, h                                        ; $7270: $5c
	ld   e, l                                        ; $7271: $5d
	ld   e, [hl]                                     ; $7272: $5e
	ld   e, a                                        ; $7273: $5f
	ld   b, h                                        ; $7274: $44
	ld   b, l                                        ; $7275: $45
	ld   b, [hl]                                     ; $7276: $46
	ld   b, a                                        ; $7277: $47
	ld   h, b                                        ; $7278: $60
	ld   h, c                                        ; $7279: $61
	ld   h, d                                        ; $727a: $62
	ld   h, e                                        ; $727b: $63
	ld   h, h                                        ; $727c: $64
	ld   h, l                                        ; $727d: $65
	ld   h, [hl]                                     ; $727e: $66

jr_083_727f:
	ld   h, a                                        ; $727f: $67
	ld   l, b                                        ; $7280: $68
	ld   l, c                                        ; $7281: $69
	ld   l, d                                        ; $7282: $6a
	ld   l, e                                        ; $7283: $6b
	ld   l, h                                        ; $7284: $6c
	ld   l, l                                        ; $7285: $6d
	ld   l, [hl]                                     ; $7286: $6e
	ld   l, a                                        ; $7287: $6f
	jr   z, @+$2b                                    ; $7288: $28 $29

	ld   a, [hl+]                                    ; $728a: $2a
	dec  hl                                          ; $728b: $2b
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
	jr   c, jr_083_72d7                              ; $729c: $38 $39

	ld   a, [hl-]                                    ; $729e: $3a
	dec  sp                                          ; $729f: $3b
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
	inc  l                                           ; $72b0: $2c
	dec  l                                           ; $72b1: $2d
	ld   l, $2f                                      ; $72b2: $2e $2f
	db   $10                                         ; $72b4: $10
	ld   de, $1312                                   ; $72b5: $11 $12 $13
	inc  d                                           ; $72b8: $14
	dec  d                                           ; $72b9: $15
	ld   d, $17                                      ; $72ba: $16 $17
	jr   jr_083_72d7                                 ; $72bc: $18 $19

	ld   a, [de]                                     ; $72be: $1a
	dec  de                                          ; $72bf: $1b
	inc  e                                           ; $72c0: $1c
	dec  e                                           ; $72c1: $1d
	ld   e, $1f                                      ; $72c2: $1e $1f
	inc  a                                           ; $72c4: $3c
	dec  a                                           ; $72c5: $3d
	ld   a, $3f                                      ; $72c6: $3e $3f
	inc  bc                                          ; $72c8: $03
	inc  bc                                          ; $72c9: $03
	inc  b                                           ; $72ca: $04
	inc  b                                           ; $72cb: $04
	inc  b                                           ; $72cc: $04
	inc  b                                           ; $72cd: $04
	inc  b                                           ; $72ce: $04
	inc  b                                           ; $72cf: $04
	inc  b                                           ; $72d0: $04
	inc  b                                           ; $72d1: $04
	inc  b                                           ; $72d2: $04
	inc  b                                           ; $72d3: $04
	inc  b                                           ; $72d4: $04
	inc  b                                           ; $72d5: $04
	inc  b                                           ; $72d6: $04

jr_083_72d7:
	inc  b                                           ; $72d7: $04
	inc  c                                           ; $72d8: $0c
	inc  c                                           ; $72d9: $0c
	inc  c                                           ; $72da: $0c
	inc  c                                           ; $72db: $0c
	inc  bc                                          ; $72dc: $03
	inc  bc                                          ; $72dd: $03
	inc  b                                           ; $72de: $04
	inc  b                                           ; $72df: $04
	inc  b                                           ; $72e0: $04
	inc  b                                           ; $72e1: $04
	inc  b                                           ; $72e2: $04
	inc  b                                           ; $72e3: $04
	inc  b                                           ; $72e4: $04
	inc  b                                           ; $72e5: $04
	inc  b                                           ; $72e6: $04
	inc  b                                           ; $72e7: $04
	inc  b                                           ; $72e8: $04
	inc  b                                           ; $72e9: $04
	inc  b                                           ; $72ea: $04
	inc  b                                           ; $72eb: $04
	inc  c                                           ; $72ec: $0c
	inc  c                                           ; $72ed: $0c
	inc  c                                           ; $72ee: $0c
	inc  c                                           ; $72ef: $0c
	inc  bc                                          ; $72f0: $03
	inc  bc                                          ; $72f1: $03
	dec  b                                           ; $72f2: $05
	dec  b                                           ; $72f3: $05
	inc  b                                           ; $72f4: $04
	inc  b                                           ; $72f5: $04
	inc  b                                           ; $72f6: $04
	inc  b                                           ; $72f7: $04
	inc  b                                           ; $72f8: $04
	inc  b                                           ; $72f9: $04
	inc  b                                           ; $72fa: $04
	inc  b                                           ; $72fb: $04
	inc  b                                           ; $72fc: $04
	inc  b                                           ; $72fd: $04
	inc  b                                           ; $72fe: $04
	inc  b                                           ; $72ff: $04
	inc  c                                           ; $7300: $0c
	inc  c                                           ; $7301: $0c
	inc  c                                           ; $7302: $0c
	inc  c                                           ; $7303: $0c
	inc  bc                                          ; $7304: $03
	inc  bc                                          ; $7305: $03
	inc  bc                                          ; $7306: $03
	dec  b                                           ; $7307: $05
	inc  b                                           ; $7308: $04
	inc  b                                           ; $7309: $04
	inc  b                                           ; $730a: $04
	inc  b                                           ; $730b: $04
	inc  b                                           ; $730c: $04
	inc  b                                           ; $730d: $04
	inc  b                                           ; $730e: $04
	inc  b                                           ; $730f: $04
	inc  b                                           ; $7310: $04
	inc  b                                           ; $7311: $04
	inc  b                                           ; $7312: $04
	dec  b                                           ; $7313: $05
	dec  bc                                          ; $7314: $0b
	dec  bc                                          ; $7315: $0b
	dec  c                                           ; $7316: $0d
	inc  c                                           ; $7317: $0c
	inc  bc                                          ; $7318: $03
	inc  bc                                          ; $7319: $03
	inc  bc                                          ; $731a: $03
	dec  b                                           ; $731b: $05
	inc  b                                           ; $731c: $04
	inc  b                                           ; $731d: $04
	inc  b                                           ; $731e: $04
	inc  b                                           ; $731f: $04
	inc  b                                           ; $7320: $04
	inc  b                                           ; $7321: $04
	inc  b                                           ; $7322: $04
	inc  b                                           ; $7323: $04
	inc  b                                           ; $7324: $04
	inc  b                                           ; $7325: $04
	inc  b                                           ; $7326: $04
	dec  b                                           ; $7327: $05
	inc  c                                           ; $7328: $0c
	inc  c                                           ; $7329: $0c
	inc  c                                           ; $732a: $0c
	inc  c                                           ; $732b: $0c
	inc  bc                                          ; $732c: $03
	inc  bc                                          ; $732d: $03
	inc  bc                                          ; $732e: $03
	dec  b                                           ; $732f: $05
	inc  b                                           ; $7330: $04
	inc  b                                           ; $7331: $04
	inc  b                                           ; $7332: $04
	inc  b                                           ; $7333: $04
	inc  b                                           ; $7334: $04
	inc  b                                           ; $7335: $04
	inc  b                                           ; $7336: $04
	inc  b                                           ; $7337: $04
	inc  b                                           ; $7338: $04
	inc  b                                           ; $7339: $04
	inc  b                                           ; $733a: $04
	inc  b                                           ; $733b: $04
	inc  c                                           ; $733c: $0c
	inc  c                                           ; $733d: $0c
	inc  c                                           ; $733e: $0c
	inc  c                                           ; $733f: $0c
	inc  bc                                          ; $7340: $03
	inc  bc                                          ; $7341: $03
	inc  bc                                          ; $7342: $03
	inc  bc                                          ; $7343: $03
	inc  bc                                          ; $7344: $03
	inc  bc                                          ; $7345: $03
	inc  bc                                          ; $7346: $03
	inc  b                                           ; $7347: $04
	inc  b                                           ; $7348: $04
	inc  b                                           ; $7349: $04
	inc  b                                           ; $734a: $04
	inc  b                                           ; $734b: $04
	inc  b                                           ; $734c: $04
	inc  b                                           ; $734d: $04
	dec  b                                           ; $734e: $05
	inc  b                                           ; $734f: $04
	inc  c                                           ; $7350: $0c
	inc  c                                           ; $7351: $0c
	inc  c                                           ; $7352: $0c
	inc  c                                           ; $7353: $0c
	inc  bc                                          ; $7354: $03
	inc  bc                                          ; $7355: $03
	inc  bc                                          ; $7356: $03
	inc  bc                                          ; $7357: $03
	inc  bc                                          ; $7358: $03
	inc  bc                                          ; $7359: $03
	inc  bc                                          ; $735a: $03
	inc  b                                           ; $735b: $04
	inc  b                                           ; $735c: $04
	inc  b                                           ; $735d: $04
	dec  b                                           ; $735e: $05
	dec  b                                           ; $735f: $05
	dec  b                                           ; $7360: $05
	dec  b                                           ; $7361: $05
	dec  b                                           ; $7362: $05
	inc  bc                                          ; $7363: $03
	dec  bc                                          ; $7364: $0b
	dec  bc                                          ; $7365: $0b
	dec  bc                                          ; $7366: $0b
	dec  bc                                          ; $7367: $0b
	dec  bc                                          ; $7368: $0b
	dec  bc                                          ; $7369: $0b
	dec  bc                                          ; $736a: $0b
	dec  bc                                          ; $736b: $0b
	dec  bc                                          ; $736c: $0b
	dec  bc                                          ; $736d: $0b
	dec  bc                                          ; $736e: $0b
	dec  bc                                          ; $736f: $0b
	dec  bc                                          ; $7370: $0b
	dec  bc                                          ; $7371: $0b
	dec  bc                                          ; $7372: $0b
	dec  bc                                          ; $7373: $0b
	dec  bc                                          ; $7374: $0b
	dec  bc                                          ; $7375: $0b
	dec  c                                           ; $7376: $0d
	dec  bc                                          ; $7377: $0b
	dec  bc                                          ; $7378: $0b
	dec  bc                                          ; $7379: $0b
	dec  bc                                          ; $737a: $0b
	dec  bc                                          ; $737b: $0b
	dec  bc                                          ; $737c: $0b
	dec  bc                                          ; $737d: $0b
	dec  bc                                          ; $737e: $0b
	dec  bc                                          ; $737f: $0b
	dec  bc                                          ; $7380: $0b
	dec  bc                                          ; $7381: $0b
	dec  bc                                          ; $7382: $0b
	dec  bc                                          ; $7383: $0b
	dec  bc                                          ; $7384: $0b
	dec  bc                                          ; $7385: $0b
	dec  bc                                          ; $7386: $0b
	dec  bc                                          ; $7387: $0b
	dec  bc                                          ; $7388: $0b
	dec  bc                                          ; $7389: $0b
	dec  bc                                          ; $738a: $0b
	dec  bc                                          ; $738b: $0b
	dec  bc                                          ; $738c: $0b
	dec  bc                                          ; $738d: $0b
	dec  bc                                          ; $738e: $0b
	dec  bc                                          ; $738f: $0b
	nop                                              ; $7390: $00
	ld   bc, $0302                                   ; $7391: $01 $02 $03
	inc  b                                           ; $7394: $04
	dec  b                                           ; $7395: $05
	ld   b, $07                                      ; $7396: $06 $07
	ld   [$0a09], sp                                 ; $7398: $08 $09 $0a
	dec  bc                                          ; $739b: $0b
	inc  c                                           ; $739c: $0c
	dec  c                                           ; $739d: $0d
	ld   c, $0f                                      ; $739e: $0e $0f
	jr   nz, jr_083_73c3                             ; $73a0: $20 $21

	ld   [hl+], a                                    ; $73a2: $22
	inc  hl                                          ; $73a3: $23
	db   $10                                         ; $73a4: $10
	ld   de, $1312                                   ; $73a5: $11 $12 $13
	inc  d                                           ; $73a8: $14
	dec  d                                           ; $73a9: $15
	ld   d, $17                                      ; $73aa: $16 $17
	jr   @+$1b                                       ; $73ac: $18 $19

	ld   a, [de]                                     ; $73ae: $1a
	dec  de                                          ; $73af: $1b
	inc  e                                           ; $73b0: $1c
	dec  e                                           ; $73b1: $1d
	ld   e, $1f                                      ; $73b2: $1e $1f
	jr   nc, jr_083_73e7                             ; $73b4: $30 $31

	ld   [hl-], a                                    ; $73b6: $32
	inc  sp                                          ; $73b7: $33
	jr   nz, @+$23                                   ; $73b8: $20 $21

	ld   [hl+], a                                    ; $73ba: $22
	inc  hl                                          ; $73bb: $23
	inc  h                                           ; $73bc: $24
	dec  h                                           ; $73bd: $25
	ld   h, $27                                      ; $73be: $26 $27
	jr   z, jr_083_73eb                              ; $73c0: $28 $29

	ld   a, [hl+]                                    ; $73c2: $2a

jr_083_73c3:
	dec  hl                                          ; $73c3: $2b
	inc  l                                           ; $73c4: $2c
	dec  l                                           ; $73c5: $2d
	ld   l, $2f                                      ; $73c6: $2e $2f
	ld   b, b                                        ; $73c8: $40
	ld   b, c                                        ; $73c9: $41
	ld   b, d                                        ; $73ca: $42
	ld   b, e                                        ; $73cb: $43
	jr   nc, jr_083_73ff                             ; $73cc: $30 $31

	ld   [hl-], a                                    ; $73ce: $32
	inc  sp                                          ; $73cf: $33
	inc  [hl]                                        ; $73d0: $34
	dec  [hl]                                        ; $73d1: $35
	ld   [hl], $37                                   ; $73d2: $36 $37
	jr   c, jr_083_740f                              ; $73d4: $38 $39

	ld   a, [hl-]                                    ; $73d6: $3a
	dec  sp                                          ; $73d7: $3b
	inc  a                                           ; $73d8: $3c
	dec  a                                           ; $73d9: $3d
	ld   a, $3f                                      ; $73da: $3e $3f
	inc  h                                           ; $73dc: $24
	dec  h                                           ; $73dd: $25
	ld   h, $27                                      ; $73de: $26 $27
	ld   b, b                                        ; $73e0: $40
	ld   b, c                                        ; $73e1: $41
	ld   b, d                                        ; $73e2: $42
	ld   b, e                                        ; $73e3: $43
	ld   b, h                                        ; $73e4: $44
	ld   b, l                                        ; $73e5: $45
	ld   b, [hl]                                     ; $73e6: $46

jr_083_73e7:
	ld   b, a                                        ; $73e7: $47
	ld   c, b                                        ; $73e8: $48
	ld   c, c                                        ; $73e9: $49
	ld   c, d                                        ; $73ea: $4a

jr_083_73eb:
	ld   c, e                                        ; $73eb: $4b
	ld   c, h                                        ; $73ec: $4c
	ld   c, l                                        ; $73ed: $4d
	ld   c, [hl]                                     ; $73ee: $4e
	ld   c, a                                        ; $73ef: $4f
	inc  [hl]                                        ; $73f0: $34
	dec  [hl]                                        ; $73f1: $35
	ld   [hl], $37                                   ; $73f2: $36 $37
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

jr_083_73ff:
	ld   e, e                                        ; $73ff: $5b
	ld   e, h                                        ; $7400: $5c
	ld   e, l                                        ; $7401: $5d
	ld   e, [hl]                                     ; $7402: $5e
	ld   e, a                                        ; $7403: $5f
	ld   b, h                                        ; $7404: $44
	ld   b, l                                        ; $7405: $45
	ld   b, [hl]                                     ; $7406: $46
	ld   b, a                                        ; $7407: $47
	ld   h, b                                        ; $7408: $60
	ld   h, c                                        ; $7409: $61
	ld   h, d                                        ; $740a: $62
	ld   h, e                                        ; $740b: $63
	ld   h, h                                        ; $740c: $64
	ld   h, l                                        ; $740d: $65
	ld   h, [hl]                                     ; $740e: $66

jr_083_740f:
	ld   h, a                                        ; $740f: $67
	ld   l, b                                        ; $7410: $68
	ld   l, c                                        ; $7411: $69
	ld   l, d                                        ; $7412: $6a
	ld   l, e                                        ; $7413: $6b
	ld   l, h                                        ; $7414: $6c
	ld   l, l                                        ; $7415: $6d
	ld   l, [hl]                                     ; $7416: $6e
	ld   l, a                                        ; $7417: $6f
	jr   z, @+$2b                                    ; $7418: $28 $29

	ld   a, [hl+]                                    ; $741a: $2a
	dec  hl                                          ; $741b: $2b
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
	jr   c, jr_083_7467                              ; $742c: $38 $39

	ld   a, [hl-]                                    ; $742e: $3a
	dec  sp                                          ; $742f: $3b
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
	inc  l                                           ; $7440: $2c
	dec  l                                           ; $7441: $2d
	ld   l, $2f                                      ; $7442: $2e $2f
	db   $10                                         ; $7444: $10
	ld   de, $1312                                   ; $7445: $11 $12 $13
	inc  d                                           ; $7448: $14
	dec  d                                           ; $7449: $15
	ld   d, $17                                      ; $744a: $16 $17
	jr   jr_083_7467                                 ; $744c: $18 $19

	ld   a, [de]                                     ; $744e: $1a
	dec  de                                          ; $744f: $1b
	inc  e                                           ; $7450: $1c
	dec  e                                           ; $7451: $1d
	ld   e, $1f                                      ; $7452: $1e $1f
	inc  a                                           ; $7454: $3c
	dec  a                                           ; $7455: $3d
	ld   a, $3f                                      ; $7456: $3e $3f
	inc  bc                                          ; $7458: $03
	inc  bc                                          ; $7459: $03
	inc  bc                                          ; $745a: $03
	inc  bc                                          ; $745b: $03
	inc  bc                                          ; $745c: $03
	inc  bc                                          ; $745d: $03
	inc  bc                                          ; $745e: $03
	inc  bc                                          ; $745f: $03
	inc  bc                                          ; $7460: $03
	inc  bc                                          ; $7461: $03
	inc  bc                                          ; $7462: $03
	inc  bc                                          ; $7463: $03
	inc  bc                                          ; $7464: $03
	inc  bc                                          ; $7465: $03
	inc  bc                                          ; $7466: $03

jr_083_7467:
	inc  bc                                          ; $7467: $03
	dec  bc                                          ; $7468: $0b
	dec  bc                                          ; $7469: $0b
	dec  bc                                          ; $746a: $0b
	dec  bc                                          ; $746b: $0b
	inc  bc                                          ; $746c: $03
	inc  bc                                          ; $746d: $03
	inc  bc                                          ; $746e: $03
	inc  bc                                          ; $746f: $03
	inc  bc                                          ; $7470: $03
	inc  bc                                          ; $7471: $03
	inc  bc                                          ; $7472: $03
	inc  bc                                          ; $7473: $03
	inc  bc                                          ; $7474: $03
	inc  bc                                          ; $7475: $03
	inc  bc                                          ; $7476: $03
	inc  bc                                          ; $7477: $03
	inc  bc                                          ; $7478: $03
	inc  bc                                          ; $7479: $03
	inc  bc                                          ; $747a: $03
	inc  bc                                          ; $747b: $03
	dec  bc                                          ; $747c: $0b
	dec  bc                                          ; $747d: $0b
	dec  bc                                          ; $747e: $0b
	dec  bc                                          ; $747f: $0b
	inc  bc                                          ; $7480: $03
	inc  bc                                          ; $7481: $03
	inc  bc                                          ; $7482: $03
	inc  bc                                          ; $7483: $03
	inc  bc                                          ; $7484: $03
	inc  bc                                          ; $7485: $03
	inc  bc                                          ; $7486: $03
	inc  bc                                          ; $7487: $03
	inc  bc                                          ; $7488: $03
	inc  bc                                          ; $7489: $03
	inc  bc                                          ; $748a: $03
	inc  bc                                          ; $748b: $03
	inc  bc                                          ; $748c: $03
	inc  bc                                          ; $748d: $03
	inc  bc                                          ; $748e: $03
	inc  bc                                          ; $748f: $03
	dec  bc                                          ; $7490: $0b
	dec  bc                                          ; $7491: $0b
	dec  bc                                          ; $7492: $0b
	dec  bc                                          ; $7493: $0b
	inc  bc                                          ; $7494: $03
	inc  bc                                          ; $7495: $03
	inc  bc                                          ; $7496: $03
	inc  b                                           ; $7497: $04
	inc  b                                           ; $7498: $04
	inc  bc                                          ; $7499: $03
	inc  bc                                          ; $749a: $03
	inc  bc                                          ; $749b: $03
	inc  bc                                          ; $749c: $03
	inc  bc                                          ; $749d: $03
	inc  bc                                          ; $749e: $03
	inc  b                                           ; $749f: $04
	inc  bc                                          ; $74a0: $03
	inc  bc                                          ; $74a1: $03
	inc  bc                                          ; $74a2: $03
	inc  bc                                          ; $74a3: $03
	dec  bc                                          ; $74a4: $0b
	dec  bc                                          ; $74a5: $0b
	dec  bc                                          ; $74a6: $0b
	dec  bc                                          ; $74a7: $0b
	inc  bc                                          ; $74a8: $03
	inc  bc                                          ; $74a9: $03
	inc  bc                                          ; $74aa: $03
	inc  bc                                          ; $74ab: $03
	inc  bc                                          ; $74ac: $03
	inc  bc                                          ; $74ad: $03
	inc  bc                                          ; $74ae: $03
	inc  bc                                          ; $74af: $03
	inc  bc                                          ; $74b0: $03
	inc  bc                                          ; $74b1: $03
	inc  bc                                          ; $74b2: $03
	inc  b                                           ; $74b3: $04
	inc  bc                                          ; $74b4: $03
	inc  bc                                          ; $74b5: $03
	inc  bc                                          ; $74b6: $03
	inc  bc                                          ; $74b7: $03
	dec  bc                                          ; $74b8: $0b
	dec  bc                                          ; $74b9: $0b
	dec  bc                                          ; $74ba: $0b
	dec  bc                                          ; $74bb: $0b
	inc  bc                                          ; $74bc: $03
	inc  bc                                          ; $74bd: $03
	inc  bc                                          ; $74be: $03
	inc  bc                                          ; $74bf: $03
	inc  bc                                          ; $74c0: $03
	inc  bc                                          ; $74c1: $03
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
	dec  bc                                          ; $74cf: $0b
	inc  bc                                          ; $74d0: $03
	inc  bc                                          ; $74d1: $03
	inc  bc                                          ; $74d2: $03
	inc  bc                                          ; $74d3: $03
	inc  bc                                          ; $74d4: $03
	inc  bc                                          ; $74d5: $03
	inc  bc                                          ; $74d6: $03
	inc  bc                                          ; $74d7: $03
	inc  bc                                          ; $74d8: $03
	inc  bc                                          ; $74d9: $03
	inc  bc                                          ; $74da: $03
	inc  bc                                          ; $74db: $03
	inc  bc                                          ; $74dc: $03
	inc  bc                                          ; $74dd: $03
	inc  bc                                          ; $74de: $03
	inc  bc                                          ; $74df: $03
	dec  bc                                          ; $74e0: $0b
	dec  bc                                          ; $74e1: $0b
	dec  bc                                          ; $74e2: $0b
	dec  bc                                          ; $74e3: $0b
	inc  bc                                          ; $74e4: $03
	inc  bc                                          ; $74e5: $03
	inc  bc                                          ; $74e6: $03
	inc  bc                                          ; $74e7: $03
	inc  bc                                          ; $74e8: $03
	inc  bc                                          ; $74e9: $03
	inc  bc                                          ; $74ea: $03
	inc  bc                                          ; $74eb: $03
	inc  bc                                          ; $74ec: $03
	inc  bc                                          ; $74ed: $03
	inc  bc                                          ; $74ee: $03
	inc  bc                                          ; $74ef: $03
	inc  bc                                          ; $74f0: $03
	inc  bc                                          ; $74f1: $03
	inc  bc                                          ; $74f2: $03
	inc  bc                                          ; $74f3: $03
	dec  bc                                          ; $74f4: $0b
	dec  bc                                          ; $74f5: $0b
	dec  bc                                          ; $74f6: $0b
	dec  bc                                          ; $74f7: $0b
	dec  bc                                          ; $74f8: $0b
	dec  bc                                          ; $74f9: $0b
	dec  bc                                          ; $74fa: $0b
	dec  bc                                          ; $74fb: $0b
	dec  bc                                          ; $74fc: $0b
	dec  bc                                          ; $74fd: $0b
	dec  bc                                          ; $74fe: $0b
	dec  bc                                          ; $74ff: $0b
	dec  bc                                          ; $7500: $0b
	dec  bc                                          ; $7501: $0b
	dec  bc                                          ; $7502: $0b
	dec  bc                                          ; $7503: $0b
	dec  bc                                          ; $7504: $0b
	dec  bc                                          ; $7505: $0b
	dec  bc                                          ; $7506: $0b
	dec  bc                                          ; $7507: $0b
	dec  bc                                          ; $7508: $0b
	dec  bc                                          ; $7509: $0b
	dec  bc                                          ; $750a: $0b
	dec  bc                                          ; $750b: $0b
	dec  bc                                          ; $750c: $0b
	dec  bc                                          ; $750d: $0b
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
	dec  bc                                          ; $7519: $0b
	dec  bc                                          ; $751a: $0b
	dec  bc                                          ; $751b: $0b
	dec  bc                                          ; $751c: $0b
	dec  bc                                          ; $751d: $0b
	dec  bc                                          ; $751e: $0b
	dec  bc                                          ; $751f: $0b
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
	jr   nz, jr_083_7553                             ; $7530: $20 $21

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
	jr   nc, jr_083_7577                             ; $7544: $30 $31

	ld   [hl-], a                                    ; $7546: $32
	inc  sp                                          ; $7547: $33
	jr   nz, @+$23                                   ; $7548: $20 $21

	ld   [hl+], a                                    ; $754a: $22
	inc  hl                                          ; $754b: $23
	inc  h                                           ; $754c: $24
	dec  h                                           ; $754d: $25
	ld   h, $27                                      ; $754e: $26 $27
	ld   c, b                                        ; $7550: $48
	ld   c, c                                        ; $7551: $49
	ld   c, d                                        ; $7552: $4a

jr_083_7553:
	ld   c, e                                        ; $7553: $4b
	inc  l                                           ; $7554: $2c
	dec  l                                           ; $7555: $2d
	ld   l, $2f                                      ; $7556: $2e $2f
	ld   b, b                                        ; $7558: $40
	ld   b, c                                        ; $7559: $41
	ld   b, d                                        ; $755a: $42
	ld   b, e                                        ; $755b: $43
	jr   nc, jr_083_758f                             ; $755c: $30 $31

	ld   [hl-], a                                    ; $755e: $32
	inc  sp                                          ; $755f: $33
	inc  [hl]                                        ; $7560: $34
	dec  [hl]                                        ; $7561: $35
	ld   [hl], $37                                   ; $7562: $36 $37
	ld   e, b                                        ; $7564: $58
	ld   e, c                                        ; $7565: $59
	ld   e, d                                        ; $7566: $5a
	ld   e, e                                        ; $7567: $5b
	inc  a                                           ; $7568: $3c
	dec  a                                           ; $7569: $3d
	ld   a, $3f                                      ; $756a: $3e $3f
	inc  h                                           ; $756c: $24
	dec  h                                           ; $756d: $25
	ld   h, $27                                      ; $756e: $26 $27
	ld   b, b                                        ; $7570: $40
	ld   b, c                                        ; $7571: $41
	ld   b, d                                        ; $7572: $42
	ld   b, e                                        ; $7573: $43
	ld   b, h                                        ; $7574: $44
	ld   b, l                                        ; $7575: $45
	ld   b, [hl]                                     ; $7576: $46

jr_083_7577:
	ld   b, a                                        ; $7577: $47
	ld   c, h                                        ; $7578: $4c
	ld   c, l                                        ; $7579: $4d
	ld   c, [hl]                                     ; $757a: $4e
	ld   c, a                                        ; $757b: $4f
	ld   c, h                                        ; $757c: $4c
	ld   c, l                                        ; $757d: $4d
	ld   c, [hl]                                     ; $757e: $4e
	ld   c, a                                        ; $757f: $4f
	inc  [hl]                                        ; $7580: $34
	dec  [hl]                                        ; $7581: $35
	ld   [hl], $37                                   ; $7582: $36 $37
	ld   d, b                                        ; $7584: $50
	ld   d, c                                        ; $7585: $51
	ld   d, d                                        ; $7586: $52
	ld   d, e                                        ; $7587: $53
	ld   d, h                                        ; $7588: $54
	ld   d, l                                        ; $7589: $55
	ld   d, [hl]                                     ; $758a: $56
	ld   d, a                                        ; $758b: $57
	ld   e, h                                        ; $758c: $5c
	ld   e, l                                        ; $758d: $5d
	ld   e, [hl]                                     ; $758e: $5e

jr_083_758f:
	ld   e, a                                        ; $758f: $5f
	ld   e, h                                        ; $7590: $5c
	ld   e, l                                        ; $7591: $5d
	ld   e, [hl]                                     ; $7592: $5e
	ld   e, a                                        ; $7593: $5f
	ld   b, h                                        ; $7594: $44
	ld   b, l                                        ; $7595: $45
	ld   b, [hl]                                     ; $7596: $46
	ld   b, a                                        ; $7597: $47
	ld   h, b                                        ; $7598: $60
	ld   h, c                                        ; $7599: $61
	ld   h, d                                        ; $759a: $62
	ld   h, e                                        ; $759b: $63
	ld   h, h                                        ; $759c: $64
	ld   h, l                                        ; $759d: $65
	ld   h, [hl]                                     ; $759e: $66
	ld   h, a                                        ; $759f: $67
	ld   d, b                                        ; $75a0: $50
	ld   d, c                                        ; $75a1: $51
	ld   d, d                                        ; $75a2: $52
	ld   d, e                                        ; $75a3: $53
	ld   l, h                                        ; $75a4: $6c
	ld   l, l                                        ; $75a5: $6d
	ld   l, [hl]                                     ; $75a6: $6e
	ld   l, a                                        ; $75a7: $6f
	jr   z, @+$2b                                    ; $75a8: $28 $29

	ld   a, [hl+]                                    ; $75aa: $2a
	dec  hl                                          ; $75ab: $2b
	ld   [hl], b                                     ; $75ac: $70
	ld   [hl], c                                     ; $75ad: $71
	ld   [hl], d                                     ; $75ae: $72
	ld   [hl], e                                     ; $75af: $73
	ld   [hl], h                                     ; $75b0: $74
	ld   [hl], l                                     ; $75b1: $75
	halt                                             ; $75b2: $76
	ld   [hl], a                                     ; $75b3: $77
	ld   h, b                                        ; $75b4: $60
	ld   h, c                                        ; $75b5: $61
	ld   h, d                                        ; $75b6: $62
	ld   h, e                                        ; $75b7: $63
	ld   a, h                                        ; $75b8: $7c
	ld   a, l                                        ; $75b9: $7d
	ld   a, [hl]                                     ; $75ba: $7e
	ld   a, a                                        ; $75bb: $7f
	jr   c, jr_083_75f7                              ; $75bc: $38 $39

	ld   a, [hl-]                                    ; $75be: $3a
	dec  sp                                          ; $75bf: $3b
	nop                                              ; $75c0: $00
	ld   bc, $0302                                   ; $75c1: $01 $02 $03
	inc  b                                           ; $75c4: $04
	dec  b                                           ; $75c5: $05
	ld   b, $64                                      ; $75c6: $06 $64
	ld   d, h                                        ; $75c8: $54
	ld   d, l                                        ; $75c9: $55
	ld   d, [hl]                                     ; $75ca: $56
	ld   d, a                                        ; $75cb: $57
	inc  c                                           ; $75cc: $0c
	dec  c                                           ; $75cd: $0d
	ld   c, $0f                                      ; $75ce: $0e $0f
	inc  l                                           ; $75d0: $2c
	dec  l                                           ; $75d1: $2d
	ld   l, $2f                                      ; $75d2: $2e $2f
	db   $10                                         ; $75d4: $10
	ld   de, $1312                                   ; $75d5: $11 $12 $13
	inc  d                                           ; $75d8: $14
	dec  d                                           ; $75d9: $15
	ld   d, $17                                      ; $75da: $16 $17
	jr   jr_083_75f7                                 ; $75dc: $18 $19

	ld   a, [de]                                     ; $75de: $1a
	dec  de                                          ; $75df: $1b
	inc  e                                           ; $75e0: $1c
	dec  e                                           ; $75e1: $1d
	ld   e, $1f                                      ; $75e2: $1e $1f
	inc  a                                           ; $75e4: $3c
	dec  a                                           ; $75e5: $3d
	ld   a, $3f                                      ; $75e6: $3e $3f
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

jr_083_75f7:
	inc  bc                                          ; $75f7: $03
	dec  bc                                          ; $75f8: $0b
	dec  bc                                          ; $75f9: $0b
	dec  bc                                          ; $75fa: $0b
	dec  bc                                          ; $75fb: $0b
	inc  bc                                          ; $75fc: $03
	inc  bc                                          ; $75fd: $03
	inc  bc                                          ; $75fe: $03
	inc  bc                                          ; $75ff: $03
	inc  bc                                          ; $7600: $03
	inc  bc                                          ; $7601: $03
	inc  bc                                          ; $7602: $03
	inc  bc                                          ; $7603: $03
	inc  bc                                          ; $7604: $03
	inc  bc                                          ; $7605: $03
	inc  bc                                          ; $7606: $03
	inc  bc                                          ; $7607: $03
	inc  bc                                          ; $7608: $03
	inc  bc                                          ; $7609: $03
	inc  bc                                          ; $760a: $03
	inc  bc                                          ; $760b: $03
	dec  bc                                          ; $760c: $0b
	dec  bc                                          ; $760d: $0b
	dec  bc                                          ; $760e: $0b
	dec  bc                                          ; $760f: $0b
	inc  bc                                          ; $7610: $03
	inc  bc                                          ; $7611: $03
	inc  bc                                          ; $7612: $03
	inc  bc                                          ; $7613: $03
	inc  bc                                          ; $7614: $03
	inc  bc                                          ; $7615: $03
	inc  bc                                          ; $7616: $03
	inc  bc                                          ; $7617: $03
	dec  bc                                          ; $7618: $0b
	dec  bc                                          ; $7619: $0b
	dec  bc                                          ; $761a: $0b
	dec  bc                                          ; $761b: $0b
	inc  bc                                          ; $761c: $03
	inc  bc                                          ; $761d: $03
	inc  bc                                          ; $761e: $03
	inc  bc                                          ; $761f: $03
	dec  bc                                          ; $7620: $0b
	dec  bc                                          ; $7621: $0b
	dec  bc                                          ; $7622: $0b
	dec  bc                                          ; $7623: $0b
	inc  bc                                          ; $7624: $03
	inc  bc                                          ; $7625: $03
	inc  bc                                          ; $7626: $03
	inc  b                                           ; $7627: $04
	inc  b                                           ; $7628: $04
	inc  bc                                          ; $7629: $03
	inc  bc                                          ; $762a: $03
	inc  bc                                          ; $762b: $03
	dec  bc                                          ; $762c: $0b
	dec  bc                                          ; $762d: $0b
	dec  bc                                          ; $762e: $0b
	dec  bc                                          ; $762f: $0b
	inc  bc                                          ; $7630: $03
	inc  bc                                          ; $7631: $03
	inc  bc                                          ; $7632: $03
	inc  bc                                          ; $7633: $03
	dec  bc                                          ; $7634: $0b
	dec  bc                                          ; $7635: $0b
	dec  bc                                          ; $7636: $0b
	dec  bc                                          ; $7637: $0b
	inc  bc                                          ; $7638: $03
	inc  bc                                          ; $7639: $03
	inc  bc                                          ; $763a: $03
	inc  bc                                          ; $763b: $03
	inc  bc                                          ; $763c: $03
	inc  bc                                          ; $763d: $03
	inc  bc                                          ; $763e: $03
	inc  bc                                          ; $763f: $03
	dec  bc                                          ; $7640: $0b
	dec  bc                                          ; $7641: $0b
	dec  bc                                          ; $7642: $0b
	dec  bc                                          ; $7643: $0b
	inc  bc                                          ; $7644: $03
	inc  bc                                          ; $7645: $03
	inc  bc                                          ; $7646: $03
	inc  bc                                          ; $7647: $03
	dec  bc                                          ; $7648: $0b
	dec  bc                                          ; $7649: $0b
	dec  bc                                          ; $764a: $0b
	dec  bc                                          ; $764b: $0b
	inc  bc                                          ; $764c: $03
	inc  bc                                          ; $764d: $03
	inc  bc                                          ; $764e: $03
	inc  bc                                          ; $764f: $03
	inc  bc                                          ; $7650: $03
	inc  bc                                          ; $7651: $03
	inc  bc                                          ; $7652: $03
	inc  bc                                          ; $7653: $03
	dec  bc                                          ; $7654: $0b
	dec  bc                                          ; $7655: $0b
	dec  bc                                          ; $7656: $0b
	dec  bc                                          ; $7657: $0b
	inc  bc                                          ; $7658: $03
	inc  bc                                          ; $7659: $03
	inc  bc                                          ; $765a: $03
	inc  bc                                          ; $765b: $03
	dec  bc                                          ; $765c: $0b
	dec  bc                                          ; $765d: $0b
	dec  bc                                          ; $765e: $0b
	dec  bc                                          ; $765f: $0b
	inc  bc                                          ; $7660: $03
	inc  bc                                          ; $7661: $03
	inc  bc                                          ; $7662: $03
	inc  bc                                          ; $7663: $03
	inc  bc                                          ; $7664: $03
	inc  bc                                          ; $7665: $03
	inc  bc                                          ; $7666: $03
	inc  bc                                          ; $7667: $03
	dec  bc                                          ; $7668: $0b
	dec  c                                           ; $7669: $0d
	dec  c                                           ; $766a: $0d
	dec  c                                           ; $766b: $0d
	inc  bc                                          ; $766c: $03
	inc  bc                                          ; $766d: $03
	inc  bc                                          ; $766e: $03
	inc  bc                                          ; $766f: $03
	dec  bc                                          ; $7670: $0b
	dec  bc                                          ; $7671: $0b
	dec  bc                                          ; $7672: $0b
	dec  bc                                          ; $7673: $0b
	inc  bc                                          ; $7674: $03
	inc  bc                                          ; $7675: $03
	inc  bc                                          ; $7676: $03
	inc  bc                                          ; $7677: $03
	inc  bc                                          ; $7678: $03
	inc  bc                                          ; $7679: $03
	inc  bc                                          ; $767a: $03
	inc  bc                                          ; $767b: $03
	dec  c                                           ; $767c: $0d
	dec  c                                           ; $767d: $0d
	dec  c                                           ; $767e: $0d
	dec  bc                                          ; $767f: $0b
	inc  bc                                          ; $7680: $03
	inc  bc                                          ; $7681: $03
	inc  bc                                          ; $7682: $03
	inc  bc                                          ; $7683: $03
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
	dec  c                                           ; $7690: $0d
	dec  c                                           ; $7691: $0d
	dec  c                                           ; $7692: $0d
	dec  bc                                          ; $7693: $0b
	dec  bc                                          ; $7694: $0b
	dec  bc                                          ; $7695: $0b
	dec  bc                                          ; $7696: $0b
	dec  bc                                          ; $7697: $0b
	dec  bc                                          ; $7698: $0b
	dec  bc                                          ; $7699: $0b
	dec  bc                                          ; $769a: $0b
	dec  bc                                          ; $769b: $0b
	dec  bc                                          ; $769c: $0b
	dec  bc                                          ; $769d: $0b
	dec  bc                                          ; $769e: $0b
	dec  bc                                          ; $769f: $0b
	dec  bc                                          ; $76a0: $0b
	dec  bc                                          ; $76a1: $0b
	dec  bc                                          ; $76a2: $0b
	dec  bc                                          ; $76a3: $0b
	dec  bc                                          ; $76a4: $0b
	dec  bc                                          ; $76a5: $0b
	dec  bc                                          ; $76a6: $0b
	dec  bc                                          ; $76a7: $0b
	dec  bc                                          ; $76a8: $0b
	dec  bc                                          ; $76a9: $0b
	dec  bc                                          ; $76aa: $0b
	dec  bc                                          ; $76ab: $0b
	dec  bc                                          ; $76ac: $0b
	dec  bc                                          ; $76ad: $0b
	dec  bc                                          ; $76ae: $0b
	dec  bc                                          ; $76af: $0b
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
	jr   nz, jr_083_76e3                             ; $76c0: $20 $21

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
	jr   nc, jr_083_7707                             ; $76d4: $30 $31

	ld   [hl-], a                                    ; $76d6: $32
	inc  sp                                          ; $76d7: $33
	jr   nz, @+$23                                   ; $76d8: $20 $21

	ld   [hl+], a                                    ; $76da: $22
	inc  hl                                          ; $76db: $23
	inc  h                                           ; $76dc: $24
	dec  h                                           ; $76dd: $25
	ld   h, $27                                      ; $76de: $26 $27
	jr   z, jr_083_770b                              ; $76e0: $28 $29

	ld   a, [hl+]                                    ; $76e2: $2a

jr_083_76e3:
	dec  hl                                          ; $76e3: $2b
	inc  l                                           ; $76e4: $2c
	dec  l                                           ; $76e5: $2d
	ld   l, $2f                                      ; $76e6: $2e $2f
	ld   b, b                                        ; $76e8: $40
	ld   b, c                                        ; $76e9: $41
	ld   b, d                                        ; $76ea: $42
	ld   b, e                                        ; $76eb: $43
	jr   nc, jr_083_771f                             ; $76ec: $30 $31

	ld   [hl-], a                                    ; $76ee: $32
	inc  sp                                          ; $76ef: $33
	inc  [hl]                                        ; $76f0: $34
	dec  [hl]                                        ; $76f1: $35
	ld   [hl], $37                                   ; $76f2: $36 $37
	jr   c, jr_083_772f                              ; $76f4: $38 $39

	ld   a, [hl-]                                    ; $76f6: $3a
	dec  sp                                          ; $76f7: $3b
	inc  a                                           ; $76f8: $3c
	dec  a                                           ; $76f9: $3d
	ld   a, $3f                                      ; $76fa: $3e $3f
	inc  h                                           ; $76fc: $24
	dec  h                                           ; $76fd: $25
	ld   h, $27                                      ; $76fe: $26 $27
	ld   b, b                                        ; $7700: $40
	ld   b, c                                        ; $7701: $41
	ld   b, d                                        ; $7702: $42
	ld   b, e                                        ; $7703: $43
	ld   b, h                                        ; $7704: $44
	ld   b, l                                        ; $7705: $45
	ld   b, [hl]                                     ; $7706: $46

jr_083_7707:
	ld   b, a                                        ; $7707: $47
	ld   c, b                                        ; $7708: $48
	ld   c, c                                        ; $7709: $49
	ld   c, d                                        ; $770a: $4a

jr_083_770b:
	ld   c, e                                        ; $770b: $4b
	ld   c, h                                        ; $770c: $4c
	ld   c, l                                        ; $770d: $4d
	ld   c, [hl]                                     ; $770e: $4e
	ld   c, a                                        ; $770f: $4f
	inc  [hl]                                        ; $7710: $34
	dec  [hl]                                        ; $7711: $35
	ld   [hl], $37                                   ; $7712: $36 $37
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

jr_083_771f:
	ld   e, e                                        ; $771f: $5b
	ld   e, h                                        ; $7720: $5c
	ld   e, l                                        ; $7721: $5d
	ld   e, [hl]                                     ; $7722: $5e
	ld   e, a                                        ; $7723: $5f
	ld   b, h                                        ; $7724: $44
	ld   b, l                                        ; $7725: $45
	ld   b, [hl]                                     ; $7726: $46
	ld   b, a                                        ; $7727: $47
	ld   h, b                                        ; $7728: $60
	ld   h, c                                        ; $7729: $61
	ld   h, d                                        ; $772a: $62
	ld   h, e                                        ; $772b: $63
	ld   h, h                                        ; $772c: $64
	ld   h, l                                        ; $772d: $65
	ld   h, [hl]                                     ; $772e: $66

jr_083_772f:
	ld   h, a                                        ; $772f: $67
	ld   l, b                                        ; $7730: $68
	ld   l, c                                        ; $7731: $69
	ld   l, d                                        ; $7732: $6a
	ld   l, e                                        ; $7733: $6b
	ld   l, h                                        ; $7734: $6c
	ld   l, l                                        ; $7735: $6d
	ld   l, [hl]                                     ; $7736: $6e
	ld   l, a                                        ; $7737: $6f
	jr   z, @+$2b                                    ; $7738: $28 $29

	ld   a, [hl+]                                    ; $773a: $2a
	dec  hl                                          ; $773b: $2b
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
	jr   c, jr_083_7787                              ; $774c: $38 $39

	ld   a, [hl-]                                    ; $774e: $3a
	dec  sp                                          ; $774f: $3b
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
	inc  l                                           ; $7760: $2c
	dec  l                                           ; $7761: $2d
	ld   l, $2f                                      ; $7762: $2e $2f
	db   $10                                         ; $7764: $10
	ld   de, $1312                                   ; $7765: $11 $12 $13
	inc  d                                           ; $7768: $14
	dec  d                                           ; $7769: $15
	ld   d, $17                                      ; $776a: $16 $17
	jr   jr_083_7787                                 ; $776c: $18 $19

	ld   a, [de]                                     ; $776e: $1a
	dec  de                                          ; $776f: $1b
	inc  e                                           ; $7770: $1c
	dec  e                                           ; $7771: $1d
	ld   e, $1f                                      ; $7772: $1e $1f
	inc  a                                           ; $7774: $3c
	dec  a                                           ; $7775: $3d
	ld   a, $3f                                      ; $7776: $3e $3f
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

jr_083_7787:
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
	inc  b                                           ; $779b: $04
	dec  bc                                          ; $779c: $0b
	dec  bc                                          ; $779d: $0b
	dec  bc                                          ; $779e: $0b
	dec  bc                                          ; $779f: $0b
	inc  bc                                          ; $77a0: $03
	inc  bc                                          ; $77a1: $03
	inc  bc                                          ; $77a2: $03
	inc  bc                                          ; $77a3: $03
	inc  bc                                          ; $77a4: $03
	inc  bc                                          ; $77a5: $03
	inc  bc                                          ; $77a6: $03
	inc  bc                                          ; $77a7: $03
	inc  bc                                          ; $77a8: $03
	inc  bc                                          ; $77a9: $03
	inc  bc                                          ; $77aa: $03
	inc  bc                                          ; $77ab: $03
	inc  bc                                          ; $77ac: $03
	inc  bc                                          ; $77ad: $03
	inc  bc                                          ; $77ae: $03
	inc  b                                           ; $77af: $04
	inc  c                                           ; $77b0: $0c
	dec  bc                                          ; $77b1: $0b
	dec  bc                                          ; $77b2: $0b
	dec  bc                                          ; $77b3: $0b
	inc  bc                                          ; $77b4: $03
	inc  bc                                          ; $77b5: $03
	inc  bc                                          ; $77b6: $03
	inc  bc                                          ; $77b7: $03
	inc  bc                                          ; $77b8: $03
	inc  bc                                          ; $77b9: $03
	inc  bc                                          ; $77ba: $03
	inc  bc                                          ; $77bb: $03
	inc  bc                                          ; $77bc: $03
	inc  bc                                          ; $77bd: $03
	inc  bc                                          ; $77be: $03
	inc  bc                                          ; $77bf: $03
	inc  bc                                          ; $77c0: $03
	inc  bc                                          ; $77c1: $03
	inc  bc                                          ; $77c2: $03
	inc  b                                           ; $77c3: $04
	inc  c                                           ; $77c4: $0c
	dec  bc                                          ; $77c5: $0b
	dec  bc                                          ; $77c6: $0b
	dec  bc                                          ; $77c7: $0b
	inc  bc                                          ; $77c8: $03
	inc  bc                                          ; $77c9: $03
	inc  bc                                          ; $77ca: $03
	inc  bc                                          ; $77cb: $03
	inc  bc                                          ; $77cc: $03
	inc  bc                                          ; $77cd: $03
	inc  bc                                          ; $77ce: $03
	inc  bc                                          ; $77cf: $03
	inc  bc                                          ; $77d0: $03
	inc  bc                                          ; $77d1: $03
	inc  bc                                          ; $77d2: $03
	inc  bc                                          ; $77d3: $03
	inc  bc                                          ; $77d4: $03
	inc  bc                                          ; $77d5: $03
	inc  bc                                          ; $77d6: $03
	inc  b                                           ; $77d7: $04
	inc  c                                           ; $77d8: $0c
	dec  bc                                          ; $77d9: $0b
	dec  bc                                          ; $77da: $0b
	dec  bc                                          ; $77db: $0b
	inc  bc                                          ; $77dc: $03
	inc  bc                                          ; $77dd: $03
	inc  bc                                          ; $77de: $03
	inc  bc                                          ; $77df: $03
	inc  bc                                          ; $77e0: $03
	inc  bc                                          ; $77e1: $03
	inc  bc                                          ; $77e2: $03
	inc  bc                                          ; $77e3: $03
	inc  bc                                          ; $77e4: $03
	inc  bc                                          ; $77e5: $03
	inc  bc                                          ; $77e6: $03
	inc  bc                                          ; $77e7: $03
	inc  bc                                          ; $77e8: $03
	inc  bc                                          ; $77e9: $03
	inc  bc                                          ; $77ea: $03
	inc  b                                           ; $77eb: $04
	inc  c                                           ; $77ec: $0c
	dec  bc                                          ; $77ed: $0b
	dec  bc                                          ; $77ee: $0b
	dec  bc                                          ; $77ef: $0b
	inc  bc                                          ; $77f0: $03
	inc  bc                                          ; $77f1: $03
	inc  bc                                          ; $77f2: $03
	inc  bc                                          ; $77f3: $03
	inc  bc                                          ; $77f4: $03
	inc  bc                                          ; $77f5: $03
	inc  bc                                          ; $77f6: $03
	inc  bc                                          ; $77f7: $03
	inc  bc                                          ; $77f8: $03
	inc  bc                                          ; $77f9: $03
	inc  bc                                          ; $77fa: $03
	inc  bc                                          ; $77fb: $03
	inc  bc                                          ; $77fc: $03
	inc  bc                                          ; $77fd: $03
	inc  bc                                          ; $77fe: $03
	inc  b                                           ; $77ff: $04
	inc  c                                           ; $7800: $0c
	dec  bc                                          ; $7801: $0b
	dec  bc                                          ; $7802: $0b
	dec  bc                                          ; $7803: $0b
	inc  bc                                          ; $7804: $03
	inc  bc                                          ; $7805: $03
	inc  b                                           ; $7806: $04
	inc  bc                                          ; $7807: $03
	inc  bc                                          ; $7808: $03
	inc  bc                                          ; $7809: $03
	inc  bc                                          ; $780a: $03
	inc  bc                                          ; $780b: $03
	inc  bc                                          ; $780c: $03
	inc  bc                                          ; $780d: $03
	inc  bc                                          ; $780e: $03
	inc  bc                                          ; $780f: $03
	inc  bc                                          ; $7810: $03
	inc  bc                                          ; $7811: $03
	inc  bc                                          ; $7812: $03
	inc  b                                           ; $7813: $04
	inc  c                                           ; $7814: $0c
	dec  bc                                          ; $7815: $0b
	dec  bc                                          ; $7816: $0b
	dec  bc                                          ; $7817: $0b
	dec  bc                                          ; $7818: $0b
	dec  bc                                          ; $7819: $0b
	inc  c                                           ; $781a: $0c
	dec  bc                                          ; $781b: $0b
	dec  bc                                          ; $781c: $0b
	dec  bc                                          ; $781d: $0b
	dec  bc                                          ; $781e: $0b
	dec  bc                                          ; $781f: $0b
	dec  bc                                          ; $7820: $0b
	dec  bc                                          ; $7821: $0b
	dec  bc                                          ; $7822: $0b
	dec  bc                                          ; $7823: $0b
	dec  bc                                          ; $7824: $0b
	dec  bc                                          ; $7825: $0b
	dec  bc                                          ; $7826: $0b
	inc  c                                           ; $7827: $0c
	inc  c                                           ; $7828: $0c
	dec  bc                                          ; $7829: $0b
	dec  bc                                          ; $782a: $0b
	dec  bc                                          ; $782b: $0b
	dec  bc                                          ; $782c: $0b
	dec  bc                                          ; $782d: $0b
	inc  c                                           ; $782e: $0c
	dec  bc                                          ; $782f: $0b
	dec  bc                                          ; $7830: $0b
	dec  bc                                          ; $7831: $0b
	dec  bc                                          ; $7832: $0b
	dec  bc                                          ; $7833: $0b
	dec  bc                                          ; $7834: $0b
	dec  bc                                          ; $7835: $0b
	dec  bc                                          ; $7836: $0b
	dec  bc                                          ; $7837: $0b
	dec  bc                                          ; $7838: $0b
	dec  bc                                          ; $7839: $0b
	dec  bc                                          ; $783a: $0b
	inc  c                                           ; $783b: $0c
	inc  c                                           ; $783c: $0c
	dec  bc                                          ; $783d: $0b
	dec  bc                                          ; $783e: $0b
	dec  bc                                          ; $783f: $0b
	nop                                              ; $7840: $00
	ld   bc, $0302                                   ; $7841: $01 $02 $03
	inc  b                                           ; $7844: $04
	dec  b                                           ; $7845: $05
	ld   b, $07                                      ; $7846: $06 $07
	ld   [$0a09], sp                                 ; $7848: $08 $09 $0a
	dec  bc                                          ; $784b: $0b
	inc  c                                           ; $784c: $0c
	dec  c                                           ; $784d: $0d
	ld   c, $0f                                      ; $784e: $0e $0f
	jr   nz, jr_083_7873                             ; $7850: $20 $21

	ld   [hl+], a                                    ; $7852: $22
	inc  hl                                          ; $7853: $23
	db   $10                                         ; $7854: $10
	ld   de, $1312                                   ; $7855: $11 $12 $13
	inc  d                                           ; $7858: $14
	dec  d                                           ; $7859: $15
	ld   d, $17                                      ; $785a: $16 $17
	jr   @+$1b                                       ; $785c: $18 $19

	ld   a, [de]                                     ; $785e: $1a
	dec  de                                          ; $785f: $1b
	inc  e                                           ; $7860: $1c
	dec  e                                           ; $7861: $1d
	ld   e, $1f                                      ; $7862: $1e $1f
	jr   nc, jr_083_7897                             ; $7864: $30 $31

	ld   [hl-], a                                    ; $7866: $32
	inc  sp                                          ; $7867: $33
	jr   nz, @+$23                                   ; $7868: $20 $21

	ld   [hl+], a                                    ; $786a: $22
	inc  hl                                          ; $786b: $23
	inc  h                                           ; $786c: $24
	dec  h                                           ; $786d: $25
	ld   h, $48                                      ; $786e: $26 $48
	jr   z, jr_083_789b                              ; $7870: $28 $29

	ld   a, [hl+]                                    ; $7872: $2a

jr_083_7873:
	dec  hl                                          ; $7873: $2b
	inc  l                                           ; $7874: $2c
	dec  l                                           ; $7875: $2d
	ld   l, $2f                                      ; $7876: $2e $2f
	ld   b, b                                        ; $7878: $40
	ld   b, c                                        ; $7879: $41
	ld   b, d                                        ; $787a: $42
	ld   b, e                                        ; $787b: $43
	jr   nc, jr_083_78af                             ; $787c: $30 $31

	ld   [hl-], a                                    ; $787e: $32
	inc  sp                                          ; $787f: $33
	inc  [hl]                                        ; $7880: $34
	dec  [hl]                                        ; $7881: $35
	ld   [hl], $49                                   ; $7882: $36 $49
	jr   c, jr_083_78bf                              ; $7884: $38 $39

	ld   a, [hl-]                                    ; $7886: $3a
	dec  sp                                          ; $7887: $3b
	inc  a                                           ; $7888: $3c
	dec  a                                           ; $7889: $3d
	ld   a, $3f                                      ; $788a: $3e $3f
	inc  h                                           ; $788c: $24
	dec  h                                           ; $788d: $25
	ld   h, $27                                      ; $788e: $26 $27
	ld   b, b                                        ; $7890: $40
	ld   b, c                                        ; $7891: $41
	ld   b, d                                        ; $7892: $42
	ld   b, e                                        ; $7893: $43
	ld   b, h                                        ; $7894: $44
	ld   b, l                                        ; $7895: $45
	ld   b, [hl]                                     ; $7896: $46

jr_083_7897:
	ld   c, d                                        ; $7897: $4a
	ld   c, b                                        ; $7898: $48
	ld   c, c                                        ; $7899: $49
	ld   c, d                                        ; $789a: $4a

jr_083_789b:
	ld   c, e                                        ; $789b: $4b
	ld   c, h                                        ; $789c: $4c
	ld   c, l                                        ; $789d: $4d
	ld   c, [hl]                                     ; $789e: $4e
	ld   c, a                                        ; $789f: $4f
	inc  [hl]                                        ; $78a0: $34
	dec  [hl]                                        ; $78a1: $35
	ld   [hl], $37                                   ; $78a2: $36 $37
	ld   d, b                                        ; $78a4: $50
	ld   d, c                                        ; $78a5: $51
	ld   d, d                                        ; $78a6: $52
	ld   d, e                                        ; $78a7: $53
	ld   d, h                                        ; $78a8: $54
	ld   d, l                                        ; $78a9: $55
	ld   d, [hl]                                     ; $78aa: $56
	ld   c, e                                        ; $78ab: $4b
	ld   e, b                                        ; $78ac: $58
	ld   e, c                                        ; $78ad: $59
	ld   e, d                                        ; $78ae: $5a

jr_083_78af:
	ld   e, e                                        ; $78af: $5b
	ld   e, h                                        ; $78b0: $5c
	ld   e, l                                        ; $78b1: $5d
	ld   e, [hl]                                     ; $78b2: $5e
	ld   e, a                                        ; $78b3: $5f
	ld   b, h                                        ; $78b4: $44
	ld   b, l                                        ; $78b5: $45
	ld   b, [hl]                                     ; $78b6: $46
	ld   b, a                                        ; $78b7: $47
	ld   h, b                                        ; $78b8: $60
	ld   h, c                                        ; $78b9: $61
	ld   h, d                                        ; $78ba: $62
	ld   h, e                                        ; $78bb: $63
	ld   h, h                                        ; $78bc: $64
	ld   h, l                                        ; $78bd: $65
	ld   h, [hl]                                     ; $78be: $66

jr_083_78bf:
	ld   c, h                                        ; $78bf: $4c
	ld   l, b                                        ; $78c0: $68
	ld   l, c                                        ; $78c1: $69
	ld   l, d                                        ; $78c2: $6a
	ld   l, e                                        ; $78c3: $6b
	ld   l, h                                        ; $78c4: $6c
	ld   l, l                                        ; $78c5: $6d
	ld   l, [hl]                                     ; $78c6: $6e
	ld   l, a                                        ; $78c7: $6f
	jr   z, @+$2b                                    ; $78c8: $28 $29

	ld   a, [hl+]                                    ; $78ca: $2a
	dec  hl                                          ; $78cb: $2b
	ld   [hl], b                                     ; $78cc: $70
	ld   [hl], c                                     ; $78cd: $71
	ld   [hl], d                                     ; $78ce: $72
	ld   [hl], e                                     ; $78cf: $73
	ld   [hl], h                                     ; $78d0: $74
	ld   [hl], l                                     ; $78d1: $75
	halt                                             ; $78d2: $76
	ld   c, l                                        ; $78d3: $4d
	ld   a, b                                        ; $78d4: $78
	ld   a, c                                        ; $78d5: $79
	ld   a, d                                        ; $78d6: $7a
	ld   a, e                                        ; $78d7: $7b
	ld   a, h                                        ; $78d8: $7c
	ld   a, l                                        ; $78d9: $7d
	ld   a, [hl]                                     ; $78da: $7e
	ld   a, a                                        ; $78db: $7f
	jr   c, jr_083_7917                              ; $78dc: $38 $39

	ld   a, [hl-]                                    ; $78de: $3a
	dec  sp                                          ; $78df: $3b
	nop                                              ; $78e0: $00
	ld   bc, $0302                                   ; $78e1: $01 $02 $03
	inc  b                                           ; $78e4: $04
	dec  b                                           ; $78e5: $05
	ld   b, $4e                                      ; $78e6: $06 $4e
	ld   [$0a09], sp                                 ; $78e8: $08 $09 $0a
	dec  bc                                          ; $78eb: $0b
	inc  c                                           ; $78ec: $0c
	dec  c                                           ; $78ed: $0d
	ld   c, $0f                                      ; $78ee: $0e $0f
	inc  l                                           ; $78f0: $2c
	dec  l                                           ; $78f1: $2d
	ld   l, $2f                                      ; $78f2: $2e $2f
	db   $10                                         ; $78f4: $10
	ld   de, $1312                                   ; $78f5: $11 $12 $13
	inc  d                                           ; $78f8: $14
	dec  d                                           ; $78f9: $15
	ld   d, $17                                      ; $78fa: $16 $17
	jr   jr_083_7917                                 ; $78fc: $18 $19

	ld   a, [de]                                     ; $78fe: $1a
	dec  de                                          ; $78ff: $1b
	inc  e                                           ; $7900: $1c
	dec  e                                           ; $7901: $1d
	ld   e, $1f                                      ; $7902: $1e $1f
	inc  a                                           ; $7904: $3c
	dec  a                                           ; $7905: $3d
	ld   a, $3f                                      ; $7906: $3e $3f
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

jr_083_7917:
	inc  bc                                          ; $7917: $03
	dec  bc                                          ; $7918: $0b
	dec  bc                                          ; $7919: $0b
	dec  bc                                          ; $791a: $0b
	dec  bc                                          ; $791b: $0b
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
	inc  b                                           ; $792b: $04
	dec  bc                                          ; $792c: $0b
	dec  bc                                          ; $792d: $0b
	dec  bc                                          ; $792e: $0b
	dec  bc                                          ; $792f: $0b
	inc  bc                                          ; $7930: $03
	inc  bc                                          ; $7931: $03
	inc  bc                                          ; $7932: $03
	inc  bc                                          ; $7933: $03
	inc  bc                                          ; $7934: $03
	inc  bc                                          ; $7935: $03
	inc  bc                                          ; $7936: $03
	dec  bc                                          ; $7937: $0b
	inc  bc                                          ; $7938: $03
	inc  bc                                          ; $7939: $03
	inc  bc                                          ; $793a: $03
	inc  bc                                          ; $793b: $03
	inc  bc                                          ; $793c: $03
	inc  bc                                          ; $793d: $03
	inc  bc                                          ; $793e: $03
	inc  b                                           ; $793f: $04
	inc  c                                           ; $7940: $0c
	dec  bc                                          ; $7941: $0b
	dec  bc                                          ; $7942: $0b
	dec  bc                                          ; $7943: $0b
	inc  bc                                          ; $7944: $03
	inc  bc                                          ; $7945: $03
	inc  bc                                          ; $7946: $03
	inc  bc                                          ; $7947: $03
	inc  bc                                          ; $7948: $03
	inc  bc                                          ; $7949: $03
	inc  bc                                          ; $794a: $03
	dec  bc                                          ; $794b: $0b
	inc  bc                                          ; $794c: $03
	inc  bc                                          ; $794d: $03
	inc  bc                                          ; $794e: $03
	inc  bc                                          ; $794f: $03
	inc  bc                                          ; $7950: $03
	inc  bc                                          ; $7951: $03
	inc  bc                                          ; $7952: $03
	inc  b                                           ; $7953: $04
	inc  c                                           ; $7954: $0c
	dec  bc                                          ; $7955: $0b
	dec  bc                                          ; $7956: $0b
	dec  bc                                          ; $7957: $0b
	inc  bc                                          ; $7958: $03
	inc  bc                                          ; $7959: $03
	inc  bc                                          ; $795a: $03
	inc  bc                                          ; $795b: $03
	inc  bc                                          ; $795c: $03
	inc  bc                                          ; $795d: $03
	inc  bc                                          ; $795e: $03
	dec  bc                                          ; $795f: $0b
	inc  bc                                          ; $7960: $03
	inc  bc                                          ; $7961: $03
	inc  bc                                          ; $7962: $03
	inc  bc                                          ; $7963: $03
	inc  bc                                          ; $7964: $03
	inc  bc                                          ; $7965: $03
	inc  bc                                          ; $7966: $03
	inc  b                                           ; $7967: $04
	inc  c                                           ; $7968: $0c
	dec  bc                                          ; $7969: $0b
	dec  bc                                          ; $796a: $0b
	dec  bc                                          ; $796b: $0b
	inc  bc                                          ; $796c: $03
	inc  bc                                          ; $796d: $03
	inc  bc                                          ; $796e: $03
	inc  bc                                          ; $796f: $03
	inc  bc                                          ; $7970: $03
	inc  bc                                          ; $7971: $03
	inc  bc                                          ; $7972: $03
	dec  bc                                          ; $7973: $0b
	inc  bc                                          ; $7974: $03
	inc  bc                                          ; $7975: $03
	inc  bc                                          ; $7976: $03
	inc  bc                                          ; $7977: $03
	inc  bc                                          ; $7978: $03
	inc  bc                                          ; $7979: $03
	inc  bc                                          ; $797a: $03
	inc  b                                           ; $797b: $04
	inc  c                                           ; $797c: $0c
	dec  bc                                          ; $797d: $0b
	dec  bc                                          ; $797e: $0b
	dec  bc                                          ; $797f: $0b
	inc  bc                                          ; $7980: $03
	inc  bc                                          ; $7981: $03
	inc  bc                                          ; $7982: $03
	inc  bc                                          ; $7983: $03
	inc  bc                                          ; $7984: $03
	inc  bc                                          ; $7985: $03
	inc  bc                                          ; $7986: $03
	dec  bc                                          ; $7987: $0b
	inc  bc                                          ; $7988: $03
	inc  bc                                          ; $7989: $03
	inc  bc                                          ; $798a: $03
	inc  bc                                          ; $798b: $03
	inc  bc                                          ; $798c: $03
	inc  bc                                          ; $798d: $03
	inc  bc                                          ; $798e: $03
	inc  b                                           ; $798f: $04
	inc  c                                           ; $7990: $0c
	dec  bc                                          ; $7991: $0b
	dec  bc                                          ; $7992: $0b
	dec  bc                                          ; $7993: $0b
	inc  bc                                          ; $7994: $03
	inc  bc                                          ; $7995: $03
	inc  b                                           ; $7996: $04
	inc  bc                                          ; $7997: $03
	inc  bc                                          ; $7998: $03
	inc  bc                                          ; $7999: $03
	inc  bc                                          ; $799a: $03
	dec  bc                                          ; $799b: $0b
	inc  bc                                          ; $799c: $03
	inc  bc                                          ; $799d: $03
	inc  bc                                          ; $799e: $03
	inc  bc                                          ; $799f: $03
	inc  bc                                          ; $79a0: $03
	inc  bc                                          ; $79a1: $03
	inc  bc                                          ; $79a2: $03
	inc  b                                           ; $79a3: $04
	inc  c                                           ; $79a4: $0c
	dec  bc                                          ; $79a5: $0b
	dec  bc                                          ; $79a6: $0b
	dec  bc                                          ; $79a7: $0b
	dec  bc                                          ; $79a8: $0b
	dec  bc                                          ; $79a9: $0b
	inc  c                                           ; $79aa: $0c
	dec  bc                                          ; $79ab: $0b
	dec  bc                                          ; $79ac: $0b
	dec  bc                                          ; $79ad: $0b
	dec  bc                                          ; $79ae: $0b
	dec  bc                                          ; $79af: $0b
	dec  bc                                          ; $79b0: $0b
	dec  bc                                          ; $79b1: $0b
	dec  bc                                          ; $79b2: $0b
	dec  bc                                          ; $79b3: $0b
	dec  bc                                          ; $79b4: $0b
	dec  bc                                          ; $79b5: $0b
	dec  bc                                          ; $79b6: $0b
	inc  c                                           ; $79b7: $0c
	inc  c                                           ; $79b8: $0c
	dec  bc                                          ; $79b9: $0b
	dec  bc                                          ; $79ba: $0b
	dec  bc                                          ; $79bb: $0b
	dec  bc                                          ; $79bc: $0b
	dec  bc                                          ; $79bd: $0b
	inc  c                                           ; $79be: $0c
	dec  bc                                          ; $79bf: $0b
	dec  bc                                          ; $79c0: $0b
	dec  bc                                          ; $79c1: $0b
	dec  bc                                          ; $79c2: $0b
	dec  bc                                          ; $79c3: $0b
	dec  bc                                          ; $79c4: $0b
	dec  bc                                          ; $79c5: $0b
	dec  bc                                          ; $79c6: $0b
	dec  bc                                          ; $79c7: $0b
	dec  bc                                          ; $79c8: $0b
	dec  bc                                          ; $79c9: $0b
	dec  bc                                          ; $79ca: $0b
	inc  c                                           ; $79cb: $0c
	inc  c                                           ; $79cc: $0c
	dec  bc                                          ; $79cd: $0b
	dec  bc                                          ; $79ce: $0b
	dec  bc                                          ; $79cf: $0b
	nop                                              ; $79d0: $00
	ld   bc, $0302                                   ; $79d1: $01 $02 $03
	inc  b                                           ; $79d4: $04
	dec  b                                           ; $79d5: $05
	ld   b, $07                                      ; $79d6: $06 $07
	ld   [$0a09], sp                                 ; $79d8: $08 $09 $0a
	dec  bc                                          ; $79db: $0b
	inc  c                                           ; $79dc: $0c
	dec  c                                           ; $79dd: $0d
	ld   c, $0f                                      ; $79de: $0e $0f
	jr   nz, jr_083_7a03                             ; $79e0: $20 $21

	ld   [hl+], a                                    ; $79e2: $22
	inc  hl                                          ; $79e3: $23
	db   $10                                         ; $79e4: $10
	ld   de, $1312                                   ; $79e5: $11 $12 $13
	inc  d                                           ; $79e8: $14
	dec  d                                           ; $79e9: $15
	ld   d, $17                                      ; $79ea: $16 $17
	jr   @+$1b                                       ; $79ec: $18 $19

	ld   a, [de]                                     ; $79ee: $1a
	dec  de                                          ; $79ef: $1b
	inc  e                                           ; $79f0: $1c
	dec  e                                           ; $79f1: $1d
	ld   e, $56                                      ; $79f2: $1e $56
	ld   d, a                                        ; $79f4: $57
	ld   sp, $3332                                   ; $79f5: $31 $32 $33
	jr   nz, @+$23                                   ; $79f8: $20 $21

	ld   [hl+], a                                    ; $79fa: $22
	inc  hl                                          ; $79fb: $23
	inc  h                                           ; $79fc: $24
	dec  h                                           ; $79fd: $25
	ld   h, $27                                      ; $79fe: $26 $27
	jr   z, jr_083_7a2b                              ; $7a00: $28 $29

	ld   a, [hl+]                                    ; $7a02: $2a

jr_083_7a03:
	dec  hl                                          ; $7a03: $2b
	inc  l                                           ; $7a04: $2c
	dec  l                                           ; $7a05: $2d
	ld   l, $66                                      ; $7a06: $2e $66
	ld   h, a                                        ; $7a08: $67
	ld   b, c                                        ; $7a09: $41
	ld   b, d                                        ; $7a0a: $42
	ld   b, e                                        ; $7a0b: $43
	jr   nc, jr_083_7a3f                             ; $7a0c: $30 $31

	ld   [hl-], a                                    ; $7a0e: $32
	inc  sp                                          ; $7a0f: $33
	inc  [hl]                                        ; $7a10: $34
	dec  [hl]                                        ; $7a11: $35
	ld   [hl], $37                                   ; $7a12: $36 $37
	jr   c, jr_083_7a4f                              ; $7a14: $38 $39

	ld   a, [hl-]                                    ; $7a16: $3a
	dec  sp                                          ; $7a17: $3b
	inc  a                                           ; $7a18: $3c
	dec  a                                           ; $7a19: $3d
	ld   a, $58                                      ; $7a1a: $3e $58
	ld   e, c                                        ; $7a1c: $59
	dec  h                                           ; $7a1d: $25
	ld   h, $27                                      ; $7a1e: $26 $27
	ld   b, b                                        ; $7a20: $40
	ld   b, c                                        ; $7a21: $41
	ld   b, d                                        ; $7a22: $42
	ld   b, e                                        ; $7a23: $43
	ld   b, h                                        ; $7a24: $44
	ld   b, l                                        ; $7a25: $45
	ld   b, [hl]                                     ; $7a26: $46
	ld   b, a                                        ; $7a27: $47
	ld   c, b                                        ; $7a28: $48
	ld   c, c                                        ; $7a29: $49
	ld   c, d                                        ; $7a2a: $4a

jr_083_7a2b:
	ld   c, e                                        ; $7a2b: $4b
	ld   c, h                                        ; $7a2c: $4c
	ld   c, l                                        ; $7a2d: $4d
	ld   c, [hl]                                     ; $7a2e: $4e
	ld   l, b                                        ; $7a2f: $68
	ld   l, c                                        ; $7a30: $69
	dec  [hl]                                        ; $7a31: $35
	ld   [hl], $37                                   ; $7a32: $36 $37
	ld   d, b                                        ; $7a34: $50
	ld   d, c                                        ; $7a35: $51
	ld   d, d                                        ; $7a36: $52
	ld   d, e                                        ; $7a37: $53
	ld   d, h                                        ; $7a38: $54
	ld   d, l                                        ; $7a39: $55
	ld   d, [hl]                                     ; $7a3a: $56
	ld   d, a                                        ; $7a3b: $57
	ld   e, b                                        ; $7a3c: $58
	ld   e, c                                        ; $7a3d: $59
	ld   e, d                                        ; $7a3e: $5a

jr_083_7a3f:
	ld   e, e                                        ; $7a3f: $5b
	ld   e, h                                        ; $7a40: $5c
	ld   e, l                                        ; $7a41: $5d
	ld   e, [hl]                                     ; $7a42: $5e
	ld   e, d                                        ; $7a43: $5a
	ld   e, e                                        ; $7a44: $5b
	ld   b, l                                        ; $7a45: $45
	ld   b, [hl]                                     ; $7a46: $46
	ld   b, a                                        ; $7a47: $47
	ld   h, b                                        ; $7a48: $60
	ld   h, c                                        ; $7a49: $61
	ld   h, d                                        ; $7a4a: $62
	ld   h, e                                        ; $7a4b: $63
	ld   h, h                                        ; $7a4c: $64
	ld   h, l                                        ; $7a4d: $65
	ld   h, [hl]                                     ; $7a4e: $66

jr_083_7a4f:
	ld   h, a                                        ; $7a4f: $67
	ld   l, b                                        ; $7a50: $68
	ld   l, c                                        ; $7a51: $69
	ld   l, d                                        ; $7a52: $6a
	ld   l, e                                        ; $7a53: $6b
	ld   l, h                                        ; $7a54: $6c
	ld   l, l                                        ; $7a55: $6d
	ld   l, [hl]                                     ; $7a56: $6e
	ld   l, d                                        ; $7a57: $6a
	ld   l, e                                        ; $7a58: $6b
	add  hl, hl                                      ; $7a59: $29
	ld   a, [hl+]                                    ; $7a5a: $2a
	dec  hl                                          ; $7a5b: $2b
	ld   [hl], b                                     ; $7a5c: $70
	ld   [hl], c                                     ; $7a5d: $71
	ld   [hl], d                                     ; $7a5e: $72
	ld   [hl], e                                     ; $7a5f: $73
	ld   [hl], h                                     ; $7a60: $74
	ld   [hl], l                                     ; $7a61: $75
	halt                                             ; $7a62: $76
	ld   [hl], a                                     ; $7a63: $77
	ld   a, b                                        ; $7a64: $78
	ld   a, c                                        ; $7a65: $79
	ld   a, d                                        ; $7a66: $7a
	ld   a, e                                        ; $7a67: $7b
	ld   a, h                                        ; $7a68: $7c
	ld   a, l                                        ; $7a69: $7d
	ld   a, [hl]                                     ; $7a6a: $7e
	ld   e, h                                        ; $7a6b: $5c
	ld   e, l                                        ; $7a6c: $5d
	add  hl, sp                                      ; $7a6d: $39
	ld   a, [hl-]                                    ; $7a6e: $3a
	dec  sp                                          ; $7a6f: $3b
	nop                                              ; $7a70: $00
	ld   bc, $0302                                   ; $7a71: $01 $02 $03
	inc  b                                           ; $7a74: $04
	dec  b                                           ; $7a75: $05
	ld   b, $07                                      ; $7a76: $06 $07
	ld   [$0a09], sp                                 ; $7a78: $08 $09 $0a
	dec  bc                                          ; $7a7b: $0b
	inc  c                                           ; $7a7c: $0c
	dec  c                                           ; $7a7d: $0d
	ld   c, $6c                                      ; $7a7e: $0e $6c
	ld   l, l                                        ; $7a80: $6d
	dec  l                                           ; $7a81: $2d
	ld   l, $2f                                      ; $7a82: $2e $2f
	db   $10                                         ; $7a84: $10
	ld   de, $1312                                   ; $7a85: $11 $12 $13
	inc  d                                           ; $7a88: $14
	dec  d                                           ; $7a89: $15
	ld   d, $17                                      ; $7a8a: $16 $17
	jr   jr_083_7aa7                                 ; $7a8c: $18 $19

	ld   a, [de]                                     ; $7a8e: $1a
	dec  de                                          ; $7a8f: $1b
	inc  e                                           ; $7a90: $1c
	dec  e                                           ; $7a91: $1d
	ld   e, $6c                                      ; $7a92: $1e $6c
	ld   l, l                                        ; $7a94: $6d
	dec  a                                           ; $7a95: $3d
	ld   a, $3f                                      ; $7a96: $3e $3f
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

jr_083_7aa7:
	inc  bc                                          ; $7aa7: $03
	dec  bc                                          ; $7aa8: $0b
	dec  bc                                          ; $7aa9: $0b
	dec  bc                                          ; $7aaa: $0b
	dec  bc                                          ; $7aab: $0b
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
	inc  c                                           ; $7abb: $0c
	dec  bc                                          ; $7abc: $0b
	dec  bc                                          ; $7abd: $0b
	dec  bc                                          ; $7abe: $0b
	dec  bc                                          ; $7abf: $0b
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
	inc  c                                           ; $7acf: $0c
	inc  c                                           ; $7ad0: $0c
	dec  bc                                          ; $7ad1: $0b
	dec  bc                                          ; $7ad2: $0b
	dec  bc                                          ; $7ad3: $0b
	inc  bc                                          ; $7ad4: $03
	inc  bc                                          ; $7ad5: $03
	inc  bc                                          ; $7ad6: $03
	inc  bc                                          ; $7ad7: $03
	inc  bc                                          ; $7ad8: $03
	inc  bc                                          ; $7ad9: $03
	inc  bc                                          ; $7ada: $03
	inc  bc                                          ; $7adb: $03
	inc  bc                                          ; $7adc: $03
	inc  bc                                          ; $7add: $03
	inc  bc                                          ; $7ade: $03
	inc  bc                                          ; $7adf: $03
	inc  bc                                          ; $7ae0: $03
	inc  bc                                          ; $7ae1: $03
	inc  bc                                          ; $7ae2: $03
	inc  c                                           ; $7ae3: $0c
	inc  c                                           ; $7ae4: $0c
	dec  bc                                          ; $7ae5: $0b
	dec  bc                                          ; $7ae6: $0b
	dec  bc                                          ; $7ae7: $0b
	inc  bc                                          ; $7ae8: $03
	inc  bc                                          ; $7ae9: $03
	inc  bc                                          ; $7aea: $03
	inc  bc                                          ; $7aeb: $03
	inc  bc                                          ; $7aec: $03
	inc  bc                                          ; $7aed: $03
	inc  bc                                          ; $7aee: $03
	inc  bc                                          ; $7aef: $03
	inc  bc                                          ; $7af0: $03
	inc  bc                                          ; $7af1: $03
	inc  bc                                          ; $7af2: $03
	inc  bc                                          ; $7af3: $03
	inc  bc                                          ; $7af4: $03
	inc  bc                                          ; $7af5: $03
	inc  bc                                          ; $7af6: $03
	inc  c                                           ; $7af7: $0c
	inc  c                                           ; $7af8: $0c
	dec  bc                                          ; $7af9: $0b
	dec  bc                                          ; $7afa: $0b
	dec  bc                                          ; $7afb: $0b
	inc  bc                                          ; $7afc: $03
	inc  bc                                          ; $7afd: $03
	inc  bc                                          ; $7afe: $03
	inc  bc                                          ; $7aff: $03
	inc  bc                                          ; $7b00: $03
	inc  bc                                          ; $7b01: $03
	inc  bc                                          ; $7b02: $03
	inc  bc                                          ; $7b03: $03
	inc  bc                                          ; $7b04: $03
	inc  bc                                          ; $7b05: $03
	inc  bc                                          ; $7b06: $03
	inc  bc                                          ; $7b07: $03
	inc  bc                                          ; $7b08: $03
	inc  bc                                          ; $7b09: $03
	inc  bc                                          ; $7b0a: $03
	inc  c                                           ; $7b0b: $0c
	inc  c                                           ; $7b0c: $0c
	dec  bc                                          ; $7b0d: $0b
	dec  bc                                          ; $7b0e: $0b
	dec  bc                                          ; $7b0f: $0b
	inc  bc                                          ; $7b10: $03
	inc  bc                                          ; $7b11: $03
	inc  bc                                          ; $7b12: $03
	inc  bc                                          ; $7b13: $03
	inc  bc                                          ; $7b14: $03
	inc  bc                                          ; $7b15: $03
	inc  bc                                          ; $7b16: $03
	inc  bc                                          ; $7b17: $03
	inc  bc                                          ; $7b18: $03
	inc  bc                                          ; $7b19: $03
	inc  bc                                          ; $7b1a: $03
	inc  bc                                          ; $7b1b: $03
	inc  bc                                          ; $7b1c: $03
	inc  bc                                          ; $7b1d: $03
	inc  bc                                          ; $7b1e: $03
	inc  c                                           ; $7b1f: $0c
	inc  c                                           ; $7b20: $0c
	dec  bc                                          ; $7b21: $0b
	dec  bc                                          ; $7b22: $0b
	dec  bc                                          ; $7b23: $0b
	inc  bc                                          ; $7b24: $03
	inc  bc                                          ; $7b25: $03
	inc  b                                           ; $7b26: $04
	inc  bc                                          ; $7b27: $03
	inc  bc                                          ; $7b28: $03
	inc  bc                                          ; $7b29: $03
	inc  bc                                          ; $7b2a: $03
	inc  bc                                          ; $7b2b: $03
	inc  bc                                          ; $7b2c: $03
	inc  bc                                          ; $7b2d: $03
	inc  bc                                          ; $7b2e: $03
	inc  bc                                          ; $7b2f: $03
	inc  bc                                          ; $7b30: $03
	inc  bc                                          ; $7b31: $03
	inc  bc                                          ; $7b32: $03
	inc  c                                           ; $7b33: $0c
	inc  c                                           ; $7b34: $0c
	dec  bc                                          ; $7b35: $0b
	dec  bc                                          ; $7b36: $0b
	dec  bc                                          ; $7b37: $0b
	dec  bc                                          ; $7b38: $0b
	dec  bc                                          ; $7b39: $0b
	inc  c                                           ; $7b3a: $0c
	dec  bc                                          ; $7b3b: $0b
	dec  bc                                          ; $7b3c: $0b
	dec  bc                                          ; $7b3d: $0b
	dec  bc                                          ; $7b3e: $0b
	dec  bc                                          ; $7b3f: $0b
	dec  bc                                          ; $7b40: $0b
	dec  bc                                          ; $7b41: $0b
	dec  bc                                          ; $7b42: $0b
	dec  bc                                          ; $7b43: $0b
	dec  bc                                          ; $7b44: $0b
	dec  bc                                          ; $7b45: $0b
	dec  bc                                          ; $7b46: $0b
	inc  c                                           ; $7b47: $0c
	inc  c                                           ; $7b48: $0c
	dec  bc                                          ; $7b49: $0b
	dec  bc                                          ; $7b4a: $0b
	dec  bc                                          ; $7b4b: $0b
	dec  bc                                          ; $7b4c: $0b
	dec  bc                                          ; $7b4d: $0b
	inc  c                                           ; $7b4e: $0c
	dec  bc                                          ; $7b4f: $0b
	dec  bc                                          ; $7b50: $0b
	dec  bc                                          ; $7b51: $0b
	dec  bc                                          ; $7b52: $0b
	dec  bc                                          ; $7b53: $0b
	dec  bc                                          ; $7b54: $0b
	dec  bc                                          ; $7b55: $0b
	dec  bc                                          ; $7b56: $0b
	dec  bc                                          ; $7b57: $0b
	dec  bc                                          ; $7b58: $0b
	dec  bc                                          ; $7b59: $0b
	dec  bc                                          ; $7b5a: $0b
	inc  c                                           ; $7b5b: $0c
	inc  c                                           ; $7b5c: $0c
	dec  bc                                          ; $7b5d: $0b
	dec  bc                                          ; $7b5e: $0b
	dec  bc                                          ; $7b5f: $0b
	nop                                              ; $7b60: $00
	ld   bc, $0302                                   ; $7b61: $01 $02 $03
	inc  b                                           ; $7b64: $04
	dec  b                                           ; $7b65: $05
	ld   b, $07                                      ; $7b66: $06 $07
	ld   [$0a09], sp                                 ; $7b68: $08 $09 $0a
	dec  bc                                          ; $7b6b: $0b
	inc  c                                           ; $7b6c: $0c
	dec  c                                           ; $7b6d: $0d
	ld   c, $0f                                      ; $7b6e: $0e $0f
	jr   nz, jr_083_7b93                             ; $7b70: $20 $21

	ld   [hl+], a                                    ; $7b72: $22
	inc  hl                                          ; $7b73: $23
	db   $10                                         ; $7b74: $10
	ld   de, $1312                                   ; $7b75: $11 $12 $13
	inc  d                                           ; $7b78: $14
	dec  d                                           ; $7b79: $15
	ld   d, $17                                      ; $7b7a: $16 $17
	jr   @+$1b                                       ; $7b7c: $18 $19

	ld   a, [de]                                     ; $7b7e: $1a
	dec  de                                          ; $7b7f: $1b
	inc  e                                           ; $7b80: $1c
	dec  e                                           ; $7b81: $1d
	ld   e, $1f                                      ; $7b82: $1e $1f
	jr   nc, jr_083_7bb7                             ; $7b84: $30 $31

	ld   [hl-], a                                    ; $7b86: $32
	inc  sp                                          ; $7b87: $33
	jr   nz, @+$23                                   ; $7b88: $20 $21

	ld   [hl+], a                                    ; $7b8a: $22
	inc  hl                                          ; $7b8b: $23
	inc  h                                           ; $7b8c: $24
	dec  h                                           ; $7b8d: $25
	ld   h, $27                                      ; $7b8e: $26 $27
	jr   z, jr_083_7be2                              ; $7b90: $28 $50

	ld   d, c                                        ; $7b92: $51

jr_083_7b93:
	dec  hl                                          ; $7b93: $2b
	inc  l                                           ; $7b94: $2c
	dec  l                                           ; $7b95: $2d
	ld   l, $2f                                      ; $7b96: $2e $2f
	ld   b, b                                        ; $7b98: $40
	ld   b, c                                        ; $7b99: $41
	ld   b, d                                        ; $7b9a: $42
	ld   b, e                                        ; $7b9b: $43
	jr   nc, jr_083_7bcf                             ; $7b9c: $30 $31

	ld   [hl-], a                                    ; $7b9e: $32
	inc  sp                                          ; $7b9f: $33
	inc  [hl]                                        ; $7ba0: $34
	dec  [hl]                                        ; $7ba1: $35
	ld   [hl], $37                                   ; $7ba2: $36 $37
	jr   c, jr_083_7c06                              ; $7ba4: $38 $60

	ld   h, c                                        ; $7ba6: $61
	dec  sp                                          ; $7ba7: $3b
	inc  a                                           ; $7ba8: $3c
	dec  a                                           ; $7ba9: $3d
	ld   a, $3f                                      ; $7baa: $3e $3f
	inc  h                                           ; $7bac: $24
	dec  h                                           ; $7bad: $25
	ld   h, $27                                      ; $7bae: $26 $27
	ld   b, b                                        ; $7bb0: $40
	ld   b, c                                        ; $7bb1: $41
	ld   b, d                                        ; $7bb2: $42
	ld   b, e                                        ; $7bb3: $43
	ld   b, h                                        ; $7bb4: $44
	ld   b, l                                        ; $7bb5: $45
	ld   b, [hl]                                     ; $7bb6: $46

jr_083_7bb7:
	ld   b, a                                        ; $7bb7: $47
	ld   c, b                                        ; $7bb8: $48
	ld   d, d                                        ; $7bb9: $52
	ld   d, e                                        ; $7bba: $53
	ld   c, e                                        ; $7bbb: $4b
	ld   c, h                                        ; $7bbc: $4c
	ld   c, l                                        ; $7bbd: $4d
	ld   c, [hl]                                     ; $7bbe: $4e
	ld   c, a                                        ; $7bbf: $4f
	inc  [hl]                                        ; $7bc0: $34
	dec  [hl]                                        ; $7bc1: $35
	ld   [hl], $37                                   ; $7bc2: $36 $37
	ld   d, b                                        ; $7bc4: $50
	ld   d, c                                        ; $7bc5: $51
	ld   d, d                                        ; $7bc6: $52
	ld   d, e                                        ; $7bc7: $53
	ld   d, h                                        ; $7bc8: $54
	ld   d, l                                        ; $7bc9: $55
	ld   d, [hl]                                     ; $7bca: $56
	ld   d, a                                        ; $7bcb: $57
	ld   e, b                                        ; $7bcc: $58
	ld   h, d                                        ; $7bcd: $62
	ld   h, e                                        ; $7bce: $63

jr_083_7bcf:
	ld   e, e                                        ; $7bcf: $5b
	ld   e, h                                        ; $7bd0: $5c
	ld   e, l                                        ; $7bd1: $5d
	ld   e, [hl]                                     ; $7bd2: $5e
	ld   e, a                                        ; $7bd3: $5f
	ld   b, h                                        ; $7bd4: $44
	ld   b, l                                        ; $7bd5: $45
	ld   b, [hl]                                     ; $7bd6: $46
	ld   b, a                                        ; $7bd7: $47
	ld   h, b                                        ; $7bd8: $60
	ld   h, c                                        ; $7bd9: $61
	ld   h, d                                        ; $7bda: $62
	ld   h, e                                        ; $7bdb: $63
	ld   h, h                                        ; $7bdc: $64
	ld   h, l                                        ; $7bdd: $65
	ld   h, [hl]                                     ; $7bde: $66
	ld   h, a                                        ; $7bdf: $67
	ld   l, b                                        ; $7be0: $68
	ld   d, h                                        ; $7be1: $54

jr_083_7be2:
	ld   d, l                                        ; $7be2: $55
	ld   l, e                                        ; $7be3: $6b
	ld   l, h                                        ; $7be4: $6c
	ld   l, l                                        ; $7be5: $6d
	ld   l, [hl]                                     ; $7be6: $6e
	ld   l, a                                        ; $7be7: $6f
	jr   z, @+$2b                                    ; $7be8: $28 $29

	ld   a, [hl+]                                    ; $7bea: $2a
	dec  hl                                          ; $7beb: $2b
	ld   [hl], b                                     ; $7bec: $70
	ld   [hl], c                                     ; $7bed: $71
	ld   [hl], d                                     ; $7bee: $72
	ld   [hl], e                                     ; $7bef: $73
	ld   [hl], h                                     ; $7bf0: $74
	ld   [hl], l                                     ; $7bf1: $75
	halt                                             ; $7bf2: $76
	ld   [hl], a                                     ; $7bf3: $77
	ld   a, b                                        ; $7bf4: $78
	ld   a, c                                        ; $7bf5: $79
	ld   a, d                                        ; $7bf6: $7a
	ld   a, e                                        ; $7bf7: $7b
	ld   a, h                                        ; $7bf8: $7c
	ld   a, l                                        ; $7bf9: $7d
	ld   a, [hl]                                     ; $7bfa: $7e
	ld   a, a                                        ; $7bfb: $7f
	jr   c, jr_083_7c37                              ; $7bfc: $38 $39

	ld   a, [hl-]                                    ; $7bfe: $3a
	dec  sp                                          ; $7bff: $3b
	nop                                              ; $7c00: $00
	ld   bc, $0302                                   ; $7c01: $01 $02 $03
	inc  b                                           ; $7c04: $04
	dec  b                                           ; $7c05: $05

jr_083_7c06:
	ld   b, $07                                      ; $7c06: $06 $07
	ld   [$0a09], sp                                 ; $7c08: $08 $09 $0a
	dec  bc                                          ; $7c0b: $0b
	inc  c                                           ; $7c0c: $0c
	dec  c                                           ; $7c0d: $0d
	ld   c, $0f                                      ; $7c0e: $0e $0f
	inc  l                                           ; $7c10: $2c
	dec  l                                           ; $7c11: $2d
	ld   l, $2f                                      ; $7c12: $2e $2f
	db   $10                                         ; $7c14: $10
	ld   de, $1312                                   ; $7c15: $11 $12 $13
	inc  d                                           ; $7c18: $14
	dec  d                                           ; $7c19: $15
	ld   d, $17                                      ; $7c1a: $16 $17
	jr   jr_083_7c37                                 ; $7c1c: $18 $19

	ld   a, [de]                                     ; $7c1e: $1a
	dec  de                                          ; $7c1f: $1b
	inc  e                                           ; $7c20: $1c
	dec  e                                           ; $7c21: $1d
	ld   e, $1f                                      ; $7c22: $1e $1f
	inc  a                                           ; $7c24: $3c
	dec  a                                           ; $7c25: $3d
	ld   a, $3f                                      ; $7c26: $3e $3f
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

jr_083_7c37:
	inc  bc                                          ; $7c37: $03
	dec  bc                                          ; $7c38: $0b
	dec  bc                                          ; $7c39: $0b
	dec  bc                                          ; $7c3a: $0b
	dec  bc                                          ; $7c3b: $0b
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
	inc  b                                           ; $7c4b: $04
	dec  bc                                          ; $7c4c: $0b
	dec  bc                                          ; $7c4d: $0b
	dec  bc                                          ; $7c4e: $0b
	dec  bc                                          ; $7c4f: $0b
	inc  bc                                          ; $7c50: $03
	inc  bc                                          ; $7c51: $03
	inc  bc                                          ; $7c52: $03
	inc  bc                                          ; $7c53: $03
	inc  bc                                          ; $7c54: $03
	inc  bc                                          ; $7c55: $03
	inc  bc                                          ; $7c56: $03
	inc  bc                                          ; $7c57: $03
	inc  bc                                          ; $7c58: $03
	dec  bc                                          ; $7c59: $0b
	dec  bc                                          ; $7c5a: $0b
	inc  bc                                          ; $7c5b: $03
	inc  bc                                          ; $7c5c: $03
	inc  bc                                          ; $7c5d: $03
	inc  bc                                          ; $7c5e: $03
	inc  b                                           ; $7c5f: $04
	inc  c                                           ; $7c60: $0c
	dec  bc                                          ; $7c61: $0b
	dec  bc                                          ; $7c62: $0b
	dec  bc                                          ; $7c63: $0b
	inc  bc                                          ; $7c64: $03
	inc  bc                                          ; $7c65: $03
	inc  bc                                          ; $7c66: $03
	inc  bc                                          ; $7c67: $03
	inc  bc                                          ; $7c68: $03
	inc  bc                                          ; $7c69: $03
	inc  bc                                          ; $7c6a: $03
	inc  bc                                          ; $7c6b: $03
	inc  bc                                          ; $7c6c: $03
	dec  bc                                          ; $7c6d: $0b
	dec  bc                                          ; $7c6e: $0b
	inc  bc                                          ; $7c6f: $03
	inc  bc                                          ; $7c70: $03
	inc  bc                                          ; $7c71: $03
	inc  bc                                          ; $7c72: $03
	inc  b                                           ; $7c73: $04
	inc  c                                           ; $7c74: $0c
	dec  bc                                          ; $7c75: $0b
	dec  bc                                          ; $7c76: $0b
	dec  bc                                          ; $7c77: $0b
	inc  bc                                          ; $7c78: $03
	inc  bc                                          ; $7c79: $03
	inc  bc                                          ; $7c7a: $03
	inc  bc                                          ; $7c7b: $03
	inc  bc                                          ; $7c7c: $03
	inc  bc                                          ; $7c7d: $03
	inc  bc                                          ; $7c7e: $03
	inc  bc                                          ; $7c7f: $03
	inc  bc                                          ; $7c80: $03
	dec  bc                                          ; $7c81: $0b
	dec  bc                                          ; $7c82: $0b
	inc  bc                                          ; $7c83: $03
	inc  bc                                          ; $7c84: $03
	inc  bc                                          ; $7c85: $03
	inc  bc                                          ; $7c86: $03
	inc  b                                           ; $7c87: $04
	inc  c                                           ; $7c88: $0c
	dec  bc                                          ; $7c89: $0b
	dec  bc                                          ; $7c8a: $0b
	dec  bc                                          ; $7c8b: $0b
	inc  bc                                          ; $7c8c: $03
	inc  bc                                          ; $7c8d: $03
	inc  bc                                          ; $7c8e: $03
	inc  bc                                          ; $7c8f: $03
	inc  bc                                          ; $7c90: $03
	inc  bc                                          ; $7c91: $03
	inc  bc                                          ; $7c92: $03
	inc  bc                                          ; $7c93: $03
	inc  bc                                          ; $7c94: $03
	dec  bc                                          ; $7c95: $0b
	dec  bc                                          ; $7c96: $0b
	inc  bc                                          ; $7c97: $03
	inc  bc                                          ; $7c98: $03
	inc  bc                                          ; $7c99: $03
	inc  bc                                          ; $7c9a: $03
	inc  b                                           ; $7c9b: $04
	inc  c                                           ; $7c9c: $0c
	dec  bc                                          ; $7c9d: $0b
	dec  bc                                          ; $7c9e: $0b
	dec  bc                                          ; $7c9f: $0b
	inc  bc                                          ; $7ca0: $03
	inc  bc                                          ; $7ca1: $03
	inc  bc                                          ; $7ca2: $03
	inc  bc                                          ; $7ca3: $03
	inc  bc                                          ; $7ca4: $03
	inc  bc                                          ; $7ca5: $03
	inc  bc                                          ; $7ca6: $03
	inc  bc                                          ; $7ca7: $03
	inc  bc                                          ; $7ca8: $03
	dec  bc                                          ; $7ca9: $0b
	dec  bc                                          ; $7caa: $0b
	inc  bc                                          ; $7cab: $03
	inc  bc                                          ; $7cac: $03
	inc  bc                                          ; $7cad: $03
	inc  bc                                          ; $7cae: $03
	inc  b                                           ; $7caf: $04
	inc  c                                           ; $7cb0: $0c
	dec  bc                                          ; $7cb1: $0b
	dec  bc                                          ; $7cb2: $0b
	dec  bc                                          ; $7cb3: $0b
	inc  bc                                          ; $7cb4: $03
	inc  bc                                          ; $7cb5: $03
	inc  b                                           ; $7cb6: $04
	inc  bc                                          ; $7cb7: $03
	inc  bc                                          ; $7cb8: $03
	inc  bc                                          ; $7cb9: $03
	inc  bc                                          ; $7cba: $03
	inc  bc                                          ; $7cbb: $03
	inc  bc                                          ; $7cbc: $03
	inc  bc                                          ; $7cbd: $03
	inc  bc                                          ; $7cbe: $03
	inc  bc                                          ; $7cbf: $03
	inc  bc                                          ; $7cc0: $03
	inc  bc                                          ; $7cc1: $03
	inc  bc                                          ; $7cc2: $03
	inc  b                                           ; $7cc3: $04
	inc  c                                           ; $7cc4: $0c
	dec  bc                                          ; $7cc5: $0b
	dec  bc                                          ; $7cc6: $0b
	dec  bc                                          ; $7cc7: $0b
	dec  bc                                          ; $7cc8: $0b
	dec  bc                                          ; $7cc9: $0b
	inc  c                                           ; $7cca: $0c
	dec  bc                                          ; $7ccb: $0b
	dec  bc                                          ; $7ccc: $0b
	dec  bc                                          ; $7ccd: $0b
	dec  bc                                          ; $7cce: $0b
	dec  bc                                          ; $7ccf: $0b
	dec  bc                                          ; $7cd0: $0b
	dec  bc                                          ; $7cd1: $0b
	dec  bc                                          ; $7cd2: $0b
	dec  bc                                          ; $7cd3: $0b
	dec  bc                                          ; $7cd4: $0b
	dec  bc                                          ; $7cd5: $0b
	dec  bc                                          ; $7cd6: $0b
	inc  c                                           ; $7cd7: $0c
	inc  c                                           ; $7cd8: $0c
	dec  bc                                          ; $7cd9: $0b
	dec  bc                                          ; $7cda: $0b
	dec  bc                                          ; $7cdb: $0b
	dec  bc                                          ; $7cdc: $0b
	dec  bc                                          ; $7cdd: $0b
	inc  c                                           ; $7cde: $0c
	dec  bc                                          ; $7cdf: $0b
	dec  bc                                          ; $7ce0: $0b
	dec  bc                                          ; $7ce1: $0b
	dec  bc                                          ; $7ce2: $0b
	dec  bc                                          ; $7ce3: $0b
	dec  bc                                          ; $7ce4: $0b
	dec  bc                                          ; $7ce5: $0b
	dec  bc                                          ; $7ce6: $0b
	dec  bc                                          ; $7ce7: $0b
	dec  bc                                          ; $7ce8: $0b
	dec  bc                                          ; $7ce9: $0b
	dec  bc                                          ; $7cea: $0b
	inc  c                                           ; $7ceb: $0c
	inc  c                                           ; $7cec: $0c
	dec  bc                                          ; $7ced: $0b
	dec  bc                                          ; $7cee: $0b
	dec  bc                                          ; $7cef: $0b
	nop                                              ; $7cf0: $00
	ld   bc, $0302                                   ; $7cf1: $01 $02 $03
	inc  b                                           ; $7cf4: $04
	dec  b                                           ; $7cf5: $05
	ld   b, $07                                      ; $7cf6: $06 $07
	ld   [$0a09], sp                                 ; $7cf8: $08 $09 $0a
	dec  bc                                          ; $7cfb: $0b
	inc  c                                           ; $7cfc: $0c
	dec  c                                           ; $7cfd: $0d
	ld   c, $0f                                      ; $7cfe: $0e $0f
	jr   nz, jr_083_7d23                             ; $7d00: $20 $21

	ld   [hl+], a                                    ; $7d02: $22
	inc  hl                                          ; $7d03: $23
	db   $10                                         ; $7d04: $10
	ld   de, $1312                                   ; $7d05: $11 $12 $13
	inc  d                                           ; $7d08: $14
	dec  d                                           ; $7d09: $15
	ld   d, $17                                      ; $7d0a: $16 $17
	jr   @+$1b                                       ; $7d0c: $18 $19

	ld   a, [de]                                     ; $7d0e: $1a
	dec  de                                          ; $7d0f: $1b
	inc  e                                           ; $7d10: $1c
	dec  e                                           ; $7d11: $1d
	ld   e, $1f                                      ; $7d12: $1e $1f
	jr   nc, jr_083_7d47                             ; $7d14: $30 $31

	ld   [hl-], a                                    ; $7d16: $32
	inc  sp                                          ; $7d17: $33
	jr   nz, @+$23                                   ; $7d18: $20 $21

	ld   [hl+], a                                    ; $7d1a: $22
	inc  hl                                          ; $7d1b: $23
	inc  h                                           ; $7d1c: $24
	dec  h                                           ; $7d1d: $25
	ld   h, $27                                      ; $7d1e: $26 $27
	jr   z, jr_083_7d4b                              ; $7d20: $28 $29

	ld   a, [hl+]                                    ; $7d22: $2a

jr_083_7d23:
	dec  hl                                          ; $7d23: $2b
	inc  l                                           ; $7d24: $2c
	dec  l                                           ; $7d25: $2d
	ld   l, $2f                                      ; $7d26: $2e $2f
	ld   b, b                                        ; $7d28: $40
	ld   b, c                                        ; $7d29: $41
	ld   b, d                                        ; $7d2a: $42
	ld   b, e                                        ; $7d2b: $43
	jr   nc, jr_083_7d5f                             ; $7d2c: $30 $31

	ld   [hl-], a                                    ; $7d2e: $32
	inc  sp                                          ; $7d2f: $33
	inc  [hl]                                        ; $7d30: $34
	dec  [hl]                                        ; $7d31: $35
	ld   [hl], $37                                   ; $7d32: $36 $37
	jr   c, jr_083_7d6f                              ; $7d34: $38 $39

	ld   a, [hl-]                                    ; $7d36: $3a
	dec  sp                                          ; $7d37: $3b
	inc  a                                           ; $7d38: $3c
	dec  a                                           ; $7d39: $3d
	ld   a, $3f                                      ; $7d3a: $3e $3f
	inc  h                                           ; $7d3c: $24
	dec  h                                           ; $7d3d: $25
	ld   h, $27                                      ; $7d3e: $26 $27
	ld   b, b                                        ; $7d40: $40
	ld   b, c                                        ; $7d41: $41
	ld   b, d                                        ; $7d42: $42
	ld   b, e                                        ; $7d43: $43
	ld   b, h                                        ; $7d44: $44
	ld   b, l                                        ; $7d45: $45
	ld   b, [hl]                                     ; $7d46: $46

jr_083_7d47:
	ld   b, a                                        ; $7d47: $47
	ld   c, b                                        ; $7d48: $48
	ld   c, c                                        ; $7d49: $49
	ld   c, d                                        ; $7d4a: $4a

jr_083_7d4b:
	ld   c, e                                        ; $7d4b: $4b
	ld   c, h                                        ; $7d4c: $4c
	ld   c, l                                        ; $7d4d: $4d
	ld   c, [hl]                                     ; $7d4e: $4e
	ld   c, a                                        ; $7d4f: $4f
	inc  [hl]                                        ; $7d50: $34
	dec  [hl]                                        ; $7d51: $35
	ld   [hl], $37                                   ; $7d52: $36 $37
	ld   d, b                                        ; $7d54: $50
	ld   d, c                                        ; $7d55: $51
	ld   d, d                                        ; $7d56: $52
	ld   d, e                                        ; $7d57: $53
	ld   d, h                                        ; $7d58: $54
	ld   d, l                                        ; $7d59: $55
	ld   d, [hl]                                     ; $7d5a: $56
	ld   d, a                                        ; $7d5b: $57
	ld   e, b                                        ; $7d5c: $58
	ld   e, c                                        ; $7d5d: $59
	ld   e, d                                        ; $7d5e: $5a

jr_083_7d5f:
	ld   e, e                                        ; $7d5f: $5b
	ld   e, h                                        ; $7d60: $5c
	ld   e, l                                        ; $7d61: $5d
	ld   e, [hl]                                     ; $7d62: $5e
	ld   e, a                                        ; $7d63: $5f
	ld   b, h                                        ; $7d64: $44
	ld   b, l                                        ; $7d65: $45
	ld   b, [hl]                                     ; $7d66: $46
	ld   b, a                                        ; $7d67: $47
	ld   h, b                                        ; $7d68: $60
	ld   h, c                                        ; $7d69: $61
	ld   h, d                                        ; $7d6a: $62
	ld   h, e                                        ; $7d6b: $63
	ld   h, h                                        ; $7d6c: $64
	ld   h, l                                        ; $7d6d: $65
	ld   h, [hl]                                     ; $7d6e: $66

jr_083_7d6f:
	ld   h, a                                        ; $7d6f: $67
	ld   l, b                                        ; $7d70: $68
	ld   l, c                                        ; $7d71: $69
	ld   l, d                                        ; $7d72: $6a
	ld   l, e                                        ; $7d73: $6b
	ld   l, h                                        ; $7d74: $6c
	ld   l, l                                        ; $7d75: $6d
	ld   l, [hl]                                     ; $7d76: $6e
	ld   l, a                                        ; $7d77: $6f
	jr   z, @+$2b                                    ; $7d78: $28 $29

	ld   a, [hl+]                                    ; $7d7a: $2a
	dec  hl                                          ; $7d7b: $2b
	ld   [hl], b                                     ; $7d7c: $70
	ld   [hl], c                                     ; $7d7d: $71
	ld   [hl], d                                     ; $7d7e: $72
	ld   [hl], e                                     ; $7d7f: $73
	ld   [hl], h                                     ; $7d80: $74
	ld   [hl], l                                     ; $7d81: $75
	halt                                             ; $7d82: $76
	ld   [hl], a                                     ; $7d83: $77
	ld   a, b                                        ; $7d84: $78
	ld   a, c                                        ; $7d85: $79
	ld   a, d                                        ; $7d86: $7a
	ld   a, e                                        ; $7d87: $7b
	ld   a, h                                        ; $7d88: $7c
	ld   a, l                                        ; $7d89: $7d
	ld   a, [hl]                                     ; $7d8a: $7e
	ld   a, a                                        ; $7d8b: $7f
	jr   c, jr_083_7dc7                              ; $7d8c: $38 $39

	ld   a, [hl-]                                    ; $7d8e: $3a
	dec  sp                                          ; $7d8f: $3b
	nop                                              ; $7d90: $00
	ld   bc, $0302                                   ; $7d91: $01 $02 $03
	inc  b                                           ; $7d94: $04
	dec  b                                           ; $7d95: $05
	ld   b, $07                                      ; $7d96: $06 $07
	ld   [$0a09], sp                                 ; $7d98: $08 $09 $0a
	dec  bc                                          ; $7d9b: $0b
	inc  c                                           ; $7d9c: $0c
	dec  c                                           ; $7d9d: $0d
	ld   c, $0f                                      ; $7d9e: $0e $0f
	inc  l                                           ; $7da0: $2c
	dec  l                                           ; $7da1: $2d
	ld   l, $2f                                      ; $7da2: $2e $2f
	db   $10                                         ; $7da4: $10
	ld   de, $1312                                   ; $7da5: $11 $12 $13
	inc  d                                           ; $7da8: $14
	dec  d                                           ; $7da9: $15
	ld   d, $17                                      ; $7daa: $16 $17
	jr   jr_083_7dc7                                 ; $7dac: $18 $19

	ld   a, [de]                                     ; $7dae: $1a
	dec  de                                          ; $7daf: $1b
	inc  e                                           ; $7db0: $1c
	dec  e                                           ; $7db1: $1d
	ld   e, $1f                                      ; $7db2: $1e $1f
	inc  a                                           ; $7db4: $3c
	dec  a                                           ; $7db5: $3d
	ld   a, $3f                                      ; $7db6: $3e $3f
	dec  b                                           ; $7db8: $05
	dec  b                                           ; $7db9: $05
	dec  b                                           ; $7dba: $05
	dec  b                                           ; $7dbb: $05
	dec  b                                           ; $7dbc: $05
	dec  b                                           ; $7dbd: $05
	dec  b                                           ; $7dbe: $05
	dec  b                                           ; $7dbf: $05
	dec  b                                           ; $7dc0: $05
	dec  b                                           ; $7dc1: $05
	dec  b                                           ; $7dc2: $05
	dec  b                                           ; $7dc3: $05
	dec  b                                           ; $7dc4: $05
	dec  b                                           ; $7dc5: $05
	dec  b                                           ; $7dc6: $05

jr_083_7dc7:
	dec  b                                           ; $7dc7: $05
	dec  bc                                          ; $7dc8: $0b
	dec  c                                           ; $7dc9: $0d
	dec  bc                                          ; $7dca: $0b
	dec  bc                                          ; $7dcb: $0b
	dec  b                                           ; $7dcc: $05
	dec  b                                           ; $7dcd: $05
	dec  b                                           ; $7dce: $05
	dec  b                                           ; $7dcf: $05
	dec  b                                           ; $7dd0: $05
	dec  b                                           ; $7dd1: $05
	dec  b                                           ; $7dd2: $05
	dec  b                                           ; $7dd3: $05
	dec  b                                           ; $7dd4: $05
	dec  b                                           ; $7dd5: $05
	dec  b                                           ; $7dd6: $05
	dec  b                                           ; $7dd7: $05
	dec  b                                           ; $7dd8: $05
	dec  b                                           ; $7dd9: $05
	dec  b                                           ; $7dda: $05
	dec  b                                           ; $7ddb: $05
	dec  bc                                          ; $7ddc: $0b
	dec  bc                                          ; $7ddd: $0b
	dec  bc                                          ; $7dde: $0b
	dec  bc                                          ; $7ddf: $0b
	inc  bc                                          ; $7de0: $03
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
	dec  bc                                          ; $7df0: $0b
	dec  bc                                          ; $7df1: $0b
	dec  bc                                          ; $7df2: $0b
	dec  bc                                          ; $7df3: $0b
	inc  bc                                          ; $7df4: $03
	inc  bc                                          ; $7df5: $03
	inc  bc                                          ; $7df6: $03
	inc  bc                                          ; $7df7: $03
	inc  bc                                          ; $7df8: $03
	inc  bc                                          ; $7df9: $03
	inc  bc                                          ; $7dfa: $03
	inc  bc                                          ; $7dfb: $03
	inc  bc                                          ; $7dfc: $03
	inc  bc                                          ; $7dfd: $03
	inc  bc                                          ; $7dfe: $03
	inc  bc                                          ; $7dff: $03
	inc  bc                                          ; $7e00: $03
	inc  bc                                          ; $7e01: $03
	inc  bc                                          ; $7e02: $03
	inc  bc                                          ; $7e03: $03
	dec  bc                                          ; $7e04: $0b
	dec  bc                                          ; $7e05: $0b
	dec  bc                                          ; $7e06: $0b
	dec  bc                                          ; $7e07: $0b
	inc  bc                                          ; $7e08: $03
	inc  bc                                          ; $7e09: $03
	inc  bc                                          ; $7e0a: $03
	inc  bc                                          ; $7e0b: $03
	inc  bc                                          ; $7e0c: $03
	inc  bc                                          ; $7e0d: $03
	inc  bc                                          ; $7e0e: $03
	inc  bc                                          ; $7e0f: $03
	inc  bc                                          ; $7e10: $03
	inc  bc                                          ; $7e11: $03
	inc  bc                                          ; $7e12: $03
	inc  bc                                          ; $7e13: $03
	inc  bc                                          ; $7e14: $03
	inc  bc                                          ; $7e15: $03
	inc  bc                                          ; $7e16: $03
	inc  bc                                          ; $7e17: $03
	dec  bc                                          ; $7e18: $0b
	dec  bc                                          ; $7e19: $0b
	dec  bc                                          ; $7e1a: $0b
	dec  bc                                          ; $7e1b: $0b
	inc  bc                                          ; $7e1c: $03
	inc  bc                                          ; $7e1d: $03
	inc  bc                                          ; $7e1e: $03
	inc  bc                                          ; $7e1f: $03
	inc  bc                                          ; $7e20: $03
	inc  bc                                          ; $7e21: $03
	inc  bc                                          ; $7e22: $03
	inc  bc                                          ; $7e23: $03
	inc  bc                                          ; $7e24: $03
	inc  bc                                          ; $7e25: $03
	inc  bc                                          ; $7e26: $03
	inc  bc                                          ; $7e27: $03
	inc  bc                                          ; $7e28: $03
	inc  bc                                          ; $7e29: $03
	inc  bc                                          ; $7e2a: $03
	inc  bc                                          ; $7e2b: $03
	dec  bc                                          ; $7e2c: $0b
	dec  bc                                          ; $7e2d: $0b
	dec  bc                                          ; $7e2e: $0b
	dec  bc                                          ; $7e2f: $0b
	dec  b                                           ; $7e30: $05
	dec  b                                           ; $7e31: $05
	dec  b                                           ; $7e32: $05
	dec  b                                           ; $7e33: $05
	dec  b                                           ; $7e34: $05
	dec  b                                           ; $7e35: $05
	dec  b                                           ; $7e36: $05
	dec  b                                           ; $7e37: $05
	dec  b                                           ; $7e38: $05
	dec  b                                           ; $7e39: $05
	dec  b                                           ; $7e3a: $05
	dec  b                                           ; $7e3b: $05
	dec  b                                           ; $7e3c: $05
	dec  b                                           ; $7e3d: $05
	dec  b                                           ; $7e3e: $05
	dec  b                                           ; $7e3f: $05
	dec  c                                           ; $7e40: $0d
	dec  bc                                          ; $7e41: $0b
	dec  bc                                          ; $7e42: $0b
	dec  bc                                          ; $7e43: $0b
	inc  b                                           ; $7e44: $04
	inc  b                                           ; $7e45: $04
	inc  b                                           ; $7e46: $04
	inc  b                                           ; $7e47: $04
	inc  b                                           ; $7e48: $04
	inc  b                                           ; $7e49: $04
	inc  b                                           ; $7e4a: $04
	inc  b                                           ; $7e4b: $04
	inc  b                                           ; $7e4c: $04
	inc  b                                           ; $7e4d: $04
	inc  b                                           ; $7e4e: $04
	inc  b                                           ; $7e4f: $04
	dec  b                                           ; $7e50: $05
	dec  b                                           ; $7e51: $05

jr_083_7e52:
	dec  b                                           ; $7e52: $05
	dec  b                                           ; $7e53: $05
	dec  c                                           ; $7e54: $0d
	dec  c                                           ; $7e55: $0d
	dec  c                                           ; $7e56: $0d
	dec  bc                                          ; $7e57: $0b
	inc  c                                           ; $7e58: $0c
	inc  c                                           ; $7e59: $0c
	inc  c                                           ; $7e5a: $0c
	inc  c                                           ; $7e5b: $0c

jr_083_7e5c:
	inc  c                                           ; $7e5c: $0c
	inc  c                                           ; $7e5d: $0c
	inc  c                                           ; $7e5e: $0c
	inc  c                                           ; $7e5f: $0c
	inc  c                                           ; $7e60: $0c
	inc  c                                           ; $7e61: $0c
	inc  c                                           ; $7e62: $0c
	inc  c                                           ; $7e63: $0c
	inc  c                                           ; $7e64: $0c
	inc  c                                           ; $7e65: $0c
	dec  c                                           ; $7e66: $0d
	dec  c                                           ; $7e67: $0d
	dec  c                                           ; $7e68: $0d
	dec  c                                           ; $7e69: $0d
	dec  c                                           ; $7e6a: $0d
	dec  c                                           ; $7e6b: $0d
	inc  c                                           ; $7e6c: $0c
	inc  c                                           ; $7e6d: $0c
	inc  c                                           ; $7e6e: $0c
	inc  c                                           ; $7e6f: $0c
	inc  c                                           ; $7e70: $0c
	inc  c                                           ; $7e71: $0c
	inc  c                                           ; $7e72: $0c
	inc  c                                           ; $7e73: $0c
	inc  c                                           ; $7e74: $0c
	inc  c                                           ; $7e75: $0c
	inc  c                                           ; $7e76: $0c
	inc  c                                           ; $7e77: $0c
	inc  c                                           ; $7e78: $0c
	inc  c                                           ; $7e79: $0c
	inc  c                                           ; $7e7a: $0c
	dec  c                                           ; $7e7b: $0d
	dec  c                                           ; $7e7c: $0d
	dec  c                                           ; $7e7d: $0d
	dec  c                                           ; $7e7e: $0d
	dec  c                                           ; $7e7f: $0d
	ld   [hl], l                                     ; $7e80: $75
	nop                                              ; $7e81: $00
	ld   a, [bc]                                     ; $7e82: $0a
	dec  sp                                          ; $7e83: $3b
	push de                                          ; $7e84: $d5
	ld   d, l                                        ; $7e85: $55
	push de                                          ; $7e86: $d5
	sub  l                                           ; $7e87: $95
	dec  d                                           ; $7e88: $15
	sub  l                                           ; $7e89: $95
	push af                                          ; $7e8a: $f5
	ld   [hl], l                                     ; $7e8b: $75
	push af                                          ; $7e8c: $f5
	dec  [hl]                                        ; $7e8d: $35
	add  c                                           ; $7e8e: $81
	push de                                          ; $7e8f: $d5
	add  b                                           ; $7e90: $80
	or   l                                           ; $7e91: $b5
	nop                                              ; $7e92: $00
	pop  de                                          ; $7e93: $d1
	adc  e                                           ; $7e94: $8b
	inc  l                                           ; $7e95: $2c
	ld   [bc], a                                     ; $7e96: $02
	db   $ec                                         ; $7e97: $ec
	xor  h                                           ; $7e98: $ac
	call c, $018d                                    ; $7e99: $dc $8d $01
	nop                                              ; $7e9c: $00
	nop                                              ; $7e9d: $00
	adc  c                                           ; $7e9e: $89
	rst  $30                                         ; $7e9f: $f7

jr_083_7ea0:
	add  b                                           ; $7ea0: $80
	or   $0a                                         ; $7ea1: $f6 $0a
	db   $f4                                         ; $7ea3: $f4
	or   $30                                         ; $7ea4: $f6 $30
	or   h                                           ; $7ea6: $b4
	and  h                                           ; $7ea7: $a4
	or   l                                           ; $7ea8: $b5
	add  l                                           ; $7ea9: $85
	or   l                                           ; $7eaa: $b5
	add  l                                           ; $7eab: $85
	or   l                                           ; $7eac: $b5
	sub  l                                           ; $7ead: $95
	add  l                                           ; $7eae: $85
	or   l                                           ; $7eaf: $b5
	ld   bc, $7151                                   ; $7eb0: $01 $51 $71
	add  b                                           ; $7eb3: $80
	pop  af                                          ; $7eb4: $f1
	ld   [$f1e1], sp                                 ; $7eb5: $08 $e1 $f1
	pop  bc                                          ; $7eb8: $c1
	pop  de                                          ; $7eb9: $d1
	pop  bc                                          ; $7eba: $c1
	pop  de                                          ; $7ebb: $d1
	pop  bc                                          ; $7ebc: $c1
	pop  de                                          ; $7ebd: $d1
	pop  bc                                          ; $7ebe: $c1
	add  c                                           ; $7ebf: $81
	pop  de                                          ; $7ec0: $d1
	ld   bc, $2c01                                   ; $7ec1: $01 $01 $2c
	add  b                                           ; $7ec4: $80
	xor  h                                           ; $7ec5: $ac
	add  d                                           ; $7ec6: $82
	inc  l                                           ; $7ec7: $2c
	add  b                                           ; $7ec8: $80

jr_083_7ec9:
	xor  h                                           ; $7ec9: $ac
	add  h                                           ; $7eca: $84
	db   $ec                                         ; $7ecb: $ec
	ld   bc, $500c                                   ; $7ecc: $01 $0c $50
	add  b                                           ; $7ecf: $80
	jr   nz, jr_083_7e52                             ; $7ed0: $20 $80

	ld   d, b                                        ; $7ed2: $50
	add  b                                           ; $7ed3: $80
	jr   nz, jr_083_7e5c                             ; $7ed4: $20 $86

	ld   [hl], b                                     ; $7ed6: $70
	nop                                              ; $7ed7: $00
	ld   b, [hl]                                     ; $7ed8: $46
	add  c                                           ; $7ed9: $81
	ld   d, [hl]                                     ; $7eda: $56
	ld   bc, $5636                                   ; $7edb: $01 $36 $56
	add  c                                           ; $7ede: $81
	ld   d, $03                                      ; $7edf: $16 $03
	sub  $d0                                         ; $7ee1: $d6 $d0
	stop                                             ; $7ee3: $10 $00
	add  b                                           ; $7ee5: $80
	ld   c, $03                                      ; $7ee6: $0e $03
	rra                                              ; $7ee8: $1f
	sbc  e                                           ; $7ee9: $9b
	or   l                                           ; $7eea: $b5
	or   h                                           ; $7eeb: $b4
	add  e                                           ; $7eec: $83
	or   l                                           ; $7eed: $b5
	add  hl, bc                                      ; $7eee: $09
	and  l                                           ; $7eef: $a5
	or   l                                           ; $7ef0: $b5
	and  h                                           ; $7ef1: $a4
	or   h                                           ; $7ef2: $b4
	add  b                                           ; $7ef3: $80
	or   e                                           ; $7ef4: $b3
	inc  de                                          ; $7ef5: $13
	scf                                              ; $7ef6: $37
	rst  $30                                         ; $7ef7: $f7
	pop  de                                          ; $7ef8: $d1
	adc  b                                           ; $7ef9: $88
	ld   d, c                                        ; $7efa: $51
	add  b                                           ; $7efb: $80
	sub  l                                           ; $7efc: $95
	ld   [bc], a                                     ; $7efd: $02
	dec  d                                           ; $7efe: $15
	sub  l                                           ; $7eff: $95
	ld   b, c                                        ; $7f00: $41
	adc  l                                           ; $7f01: $8d
	db   $ec                                         ; $7f02: $ec
	nop                                              ; $7f03: $00
	dec  l                                           ; $7f04: $2d
	adc  l                                           ; $7f05: $8d
	ld   [hl], c                                     ; $7f06: $71
	rlca                                             ; $7f07: $07
	ld   c, a                                        ; $7f08: $4f
	cp   a                                           ; $7f09: $bf
	add  c                                           ; $7f0a: $81
	rst  $38                                         ; $7f0b: $ff
	db   $fc                                         ; $7f0c: $fc
	rst  $38                                         ; $7f0d: $ff
	jp   nz, $82bf                                   ; $7f0e: $c2 $bf $82

	rst  JumpTable                                         ; $7f11: $df
	add  b                                           ; $7f12: $80
	xor  $80                                         ; $7f13: $ee $80
	ldh  a, [rTIMA]                                  ; $7f15: $f0 $05
	jr   nc, jr_083_7ec9                             ; $7f17: $30 $b0

	ld   a, a                                        ; $7f19: $7f
	rst  $38                                         ; $7f1a: $ff
	ld   a, a                                        ; $7f1b: $7f
	rst  $38                                         ; $7f1c: $ff
	add  b                                           ; $7f1d: $80
	jr   nc, jr_083_7ea0                             ; $7f1e: $30 $80

	scf                                              ; $7f20: $37
	add  b                                           ; $7f21: $80
	inc  sp                                          ; $7f22: $33
	add  b                                           ; $7f23: $80
	or   h                                           ; $7f24: $b4
	add  b                                           ; $7f25: $80
	or   l                                           ; $7f26: $b5
	ld   bc, $1514                                   ; $7f27: $01 $14 $15
	add  d                                           ; $7f2a: $82
	push af                                          ; $7f2b: $f5
	add  b                                           ; $7f2c: $80
	dec  d                                           ; $7f2d: $15
	add  b                                           ; $7f2e: $80
	push de                                          ; $7f2f: $d5
	add  b                                           ; $7f30: $80
	sub  l                                           ; $7f31: $95
	add  d                                           ; $7f32: $82
	ld   d, c                                        ; $7f33: $51
	ld   [$f770], sp                                 ; $7f34: $08 $70 $f7
	ld   [hl], a                                     ; $7f37: $77
	rst  $30                                         ; $7f38: $f7
	or   l                                           ; $7f39: $b5
	or   a                                           ; $7f3a: $b7
	or   l                                           ; $7f3b: $b5
	or   a                                           ; $7f3c: $b7
	or   h                                           ; $7f3d: $b4
	add  c                                           ; $7f3e: $81
	or   [hl]                                        ; $7f3f: $b6
	ld   bc, $b6b2                                   ; $7f40: $01 $b2 $b6
	add  b                                           ; $7f43: $80
	or   b                                           ; $7f44: $b0
	adc  d                                           ; $7f45: $8a
	or   l                                           ; $7f46: $b5
	add  b                                           ; $7f47: $80
	or   h                                           ; $7f48: $b4
	add  b                                           ; $7f49: $80
	or   e                                           ; $7f4a: $b3
	nop                                              ; $7f4b: $00
	ld   d, b                                        ; $7f4c: $50
	adc  e                                           ; $7f4d: $8b
	ld   d, c                                        ; $7f4e: $51
	add  b                                           ; $7f4f: $80
	sub  c                                           ; $7f50: $91
	nop                                              ; $7f51: $00
	dec  l                                           ; $7f52: $2d
	add  a                                           ; $7f53: $87
	inc  l                                           ; $7f54: $2c
	add  c                                           ; $7f55: $81
	nop                                              ; $7f56: $00
	add  c                                           ; $7f57: $81
	rst  $38                                         ; $7f58: $ff
	nop                                              ; $7f59: $00
	cp   $88                                         ; $7f5a: $fe $88
	ld   [hl], c                                     ; $7f5c: $71
	add  b                                           ; $7f5d: $80
	ld   bc, $f100                                   ; $7f5e: $01 $00 $f1
	add  c                                           ; $7f61: $81
	ldh  a, [$80]                                    ; $7f62: $f0 $80
	xor  a                                           ; $7f64: $af
	add  b                                           ; $7f65: $80
	sbc  a                                           ; $7f66: $9f
	add  b                                           ; $7f67: $80
	sbc  b                                           ; $7f68: $98
	add  b                                           ; $7f69: $80
	add  a                                           ; $7f6a: $87
	add  d                                           ; $7f6b: $82
	rst  $38                                         ; $7f6c: $ff
	add  b                                           ; $7f6d: $80
	ldh  [$80], a                                    ; $7f6e: $e0 $80
	rra                                              ; $7f70: $1f
	add  b                                           ; $7f71: $80
	ld   [hl], $80                                   ; $7f72: $36 $80
	or   c                                           ; $7f74: $b1
	add  b                                           ; $7f75: $80
	ccf                                              ; $7f76: $3f
	add  b                                           ; $7f77: $80
	rst  $38                                         ; $7f78: $ff
	add  b                                           ; $7f79: $80
	ldh  a, [$80]                                    ; $7f7a: $f0 $80
	adc  a                                           ; $7f7c: $8f
	inc  bc                                          ; $7f7d: $03
	ldh  a, [$f7]                                    ; $7f7e: $f0 $f7
	rlca                                             ; $7f80: $07
	nop                                              ; $7f81: $00
	add  b                                           ; $7f82: $80
	ld   de, $f182                                   ; $7f83: $11 $82 $f1
	add  b                                           ; $7f86: $80
	ld   b, c                                        ; $7f87: $41
	add  b                                           ; $7f88: $80
	pop  af                                          ; $7f89: $f1
	ld   [bc], a                                     ; $7f8a: $02
	add  b                                           ; $7f8b: $80
	rst  $38                                         ; $7f8c: $ff
	ld   a, a                                        ; $7f8d: $7f
	add  b                                           ; $7f8e: $80
	rst  $38                                         ; $7f8f: $ff
	nop                                              ; $7f90: $00
	ldh  a, [$80]                                    ; $7f91: $f0 $80
	pop  af                                          ; $7f93: $f1
	nop                                              ; $7f94: $00
	ldh  a, [$80]                                    ; $7f95: $f0 $80
	pop  af                                          ; $7f97: $f1
	add  b                                           ; $7f98: $80
	ei                                               ; $7f99: $fb
	add  [hl]                                        ; $7f9a: $86
	rst  $38                                         ; $7f9b: $ff
	inc  bc                                          ; $7f9c: $03
	nop                                              ; $7f9d: $00
	ldh  [rIE], a                                    ; $7f9e: $e0 $ff
	rra                                              ; $7fa0: $1f
	adc  e                                           ; $7fa1: $8b
	rst  $38                                         ; $7fa2: $ff
	rst  $38                                         ; $7fa3: $ff
	nop                                              ; $7fa4: $00
	rst  $38                                         ; $7fa5: $ff
	nop                                              ; $7fa6: $00
	rst  $38                                         ; $7fa7: $ff
	nop                                              ; $7fa8: $00
	rst  $38                                         ; $7fa9: $ff
	nop                                              ; $7faa: $00
	rst  $38                                         ; $7fab: $ff
	nop                                              ; $7fac: $00
	rst  $38                                         ; $7fad: $ff
	nop                                              ; $7fae: $00
	rst  $38                                         ; $7faf: $ff
	nop                                              ; $7fb0: $00
	rst  $38                                         ; $7fb1: $ff
	nop                                              ; $7fb2: $00
	rst  $38                                         ; $7fb3: $ff
	nop                                              ; $7fb4: $00
	rst  $38                                         ; $7fb5: $ff
	nop                                              ; $7fb6: $00
	rst  $38                                         ; $7fb7: $ff
	nop                                              ; $7fb8: $00
	rst  $38                                         ; $7fb9: $ff
	nop                                              ; $7fba: $00
	pop  de                                          ; $7fbb: $d1
	nop                                              ; $7fbc: $00
	stop                                             ; $7fbd: $10 $00
	rst  $38                                         ; $7fbf: $ff
	nop                                              ; $7fc0: $00
	rst  $38                                         ; $7fc1: $ff
	nop                                              ; $7fc2: $00
	rst  $38                                         ; $7fc3: $ff
	nop                                              ; $7fc4: $00
	rst  $38                                         ; $7fc5: $ff
	nop                                              ; $7fc6: $00
	rst  $38                                         ; $7fc7: $ff
	nop                                              ; $7fc8: $00
	rst  $38                                         ; $7fc9: $ff
	nop                                              ; $7fca: $00
	rst  $38                                         ; $7fcb: $ff
	nop                                              ; $7fcc: $00
	rst  $38                                         ; $7fcd: $ff
	nop                                              ; $7fce: $00
	rst  $38                                         ; $7fcf: $ff
	nop                                              ; $7fd0: $00
	rst  $38                                         ; $7fd1: $ff
	nop                                              ; $7fd2: $00
	rst  $38                                         ; $7fd3: $ff
	nop                                              ; $7fd4: $00
	rst  $38                                         ; $7fd5: $ff
	nop                                              ; $7fd6: $00
	rst  $38                                         ; $7fd7: $ff
	nop                                              ; $7fd8: $00
	rst  $38                                         ; $7fd9: $ff
	nop                                              ; $7fda: $00
	rst  $38                                         ; $7fdb: $ff
	nop                                              ; $7fdc: $00
	rst  $28                                         ; $7fdd: $ef
	nop                                              ; $7fde: $00
	rst  $38                                         ; $7fdf: $ff
	ld   a, a                                        ; $7fe0: $7f
	ld   d, l                                        ; $7fe1: $55
	ld   a, a                                        ; $7fe2: $7f
	xor  d                                           ; $7fe3: $aa
	dec  l                                           ; $7fe4: $2d
	add  sp, $30                                     ; $7fe5: $e8 $30
	rst  $38                                         ; $7fe7: $ff
	ld   a, a                                        ; $7fe8: $7f
	scf                                              ; $7fe9: $37
	ld   d, a                                        ; $7fea: $57
	pop  af                                          ; $7feb: $f1
	ld   sp, $210d                                   ; $7fec: $31 $0d $21
	rst  $38                                         ; $7fef: $ff
	ld   a, a                                        ; $7ff0: $7f
	ld   a, $23                                      ; $7ff1: $3e $23
	dec  sp                                          ; $7ff3: $3b
	add  hl, hl                                      ; $7ff4: $29
	dec  bc                                          ; $7ff5: $0b
	ld   de, $0000                                   ; $7ff6: $11 $00 $00
	nop                                              ; $7ff9: $00
	nop                                              ; $7ffa: $00
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
