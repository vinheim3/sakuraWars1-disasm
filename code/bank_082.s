; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $082", ROMX[$4000], BANK[$82]

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
	inc  l                                           ; $4010: $2c
	dec  l                                           ; $4011: $2d
	ld   l, $16                                      ; $4012: $2e $16
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
	add  hl, hl                                      ; $4024: $29
	ld   a, [hl+]                                    ; $4025: $2a
	dec  hl                                          ; $4026: $2b
	ld   d, $10                                      ; $4027: $16 $10
	ld   hl, $2322                                   ; $4029: $21 $22 $23
	inc  h                                           ; $402c: $24
	ld   d, $16                                      ; $402d: $16 $16
	rla                                              ; $402f: $17
	jr   z, jr_082_405b                              ; $4030: $28 $29

	ld   a, [hl+]                                    ; $4032: $2a
	dec  hl                                          ; $4033: $2b
	inc  l                                           ; $4034: $2c
	dec  l                                           ; $4035: $2d
	ld   l, $2f                                      ; $4036: $2e $2f
	ld   h, $27                                      ; $4038: $26 $27
	jr   z, jr_082_4052                              ; $403a: $28 $16

	db   $10                                         ; $403c: $10
	ld   sp, $3332                                   ; $403d: $31 $32 $33
	inc  [hl]                                        ; $4040: $34
	ld   d, $16                                      ; $4041: $16 $16
	rla                                              ; $4043: $17
	jr   c, jr_082_407f                              ; $4044: $38 $39

	ld   a, [hl-]                                    ; $4046: $3a
	dec  sp                                          ; $4047: $3b
	inc  a                                           ; $4048: $3c
	dec  a                                           ; $4049: $3d
	ld   a, $3f                                      ; $404a: $3e $3f
	ld   [hl+], a                                    ; $404c: $22
	inc  hl                                          ; $404d: $23
	inc  h                                           ; $404e: $24
	dec  h                                           ; $404f: $25
	ld   b, b                                        ; $4050: $40
	ld   b, c                                        ; $4051: $41

jr_082_4052:
	ld   b, d                                        ; $4052: $42
	ld   b, e                                        ; $4053: $43
	ld   b, h                                        ; $4054: $44
	ld   b, l                                        ; $4055: $45
	ld   b, [hl]                                     ; $4056: $46
	ld   b, a                                        ; $4057: $47
	ld   c, b                                        ; $4058: $48
	ld   c, c                                        ; $4059: $49
	ld   c, d                                        ; $405a: $4a

jr_082_405b:
	ld   c, e                                        ; $405b: $4b
	ld   c, h                                        ; $405c: $4c
	ld   c, l                                        ; $405d: $4d
	ld   c, [hl]                                     ; $405e: $4e
	ld   c, a                                        ; $405f: $4f
	jr   nz, jr_082_4083                             ; $4060: $20 $21

	ld   e, $1c                                      ; $4062: $1e $1c
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
	ld   e, e                                        ; $406f: $5b
	ld   e, h                                        ; $4070: $5c
	ld   e, l                                        ; $4071: $5d
	ld   e, [hl]                                     ; $4072: $5e
	ld   e, a                                        ; $4073: $5f
	dec  d                                           ; $4074: $15
	ld   d, $17                                      ; $4075: $16 $17
	jr   jr_082_40c9                                 ; $4077: $18 $50

	ld   h, c                                        ; $4079: $61
	ld   h, d                                        ; $407a: $62
	ld   h, e                                        ; $407b: $63
	ld   h, h                                        ; $407c: $64
	ld   h, l                                        ; $407d: $65
	ld   h, [hl]                                     ; $407e: $66

jr_082_407f:
	ld   h, a                                        ; $407f: $67
	ld   l, b                                        ; $4080: $68
	ld   l, c                                        ; $4081: $69
	ld   l, d                                        ; $4082: $6a

jr_082_4083:
	ld   l, e                                        ; $4083: $6b
	ld   l, h                                        ; $4084: $6c
	ld   l, l                                        ; $4085: $6d
	ld   l, [hl]                                     ; $4086: $6e
	ld   l, a                                        ; $4087: $6f
	ld   [de], a                                     ; $4088: $12
	inc  de                                          ; $4089: $13
	inc  d                                           ; $408a: $14
	ld   b, $50                                      ; $408b: $06 $50
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
	ld   a, d                                        ; $4097: $7a
	ld   a, h                                        ; $4098: $7c
	ld   a, l                                        ; $4099: $7d
	ld   a, [hl]                                     ; $409a: $7e
	ld   a, a                                        ; $409b: $7f
	ld   [bc], a                                     ; $409c: $02
	ld   a, e                                        ; $409d: $7b
	ld   [hl], b                                     ; $409e: $70
	ld   h, b                                        ; $409f: $60
	nop                                              ; $40a0: $00
	ld   bc, $0311                                   ; $40a1: $01 $11 $03
	inc  b                                           ; $40a4: $04
	dec  b                                           ; $40a5: $05
	ld   de, $0807                                   ; $40a6: $11 $07 $08
	add  hl, bc                                      ; $40a9: $09
	ld   a, [bc]                                     ; $40aa: $0a
	dec  bc                                          ; $40ab: $0b
	inc  c                                           ; $40ac: $0c
	dec  c                                           ; $40ad: $0d
	ld   c, $0f                                      ; $40ae: $0e $0f
	jr   nz, jr_082_40d7                             ; $40b0: $20 $25

	ld   h, $27                                      ; $40b2: $26 $27
	db   $10                                         ; $40b4: $10
	ld   de, $1111                                   ; $40b5: $11 $11 $11
	ld   de, $1111                                   ; $40b8: $11 $11 $11
	ld   de, $1911                                   ; $40bb: $11 $11 $19
	ld   a, [de]                                     ; $40be: $1a
	dec  de                                          ; $40bf: $1b
	dec  de                                          ; $40c0: $1b
	dec  e                                           ; $40c1: $1d
	dec  e                                           ; $40c2: $1d
	rra                                              ; $40c3: $1f
	jr   nc, jr_082_40fb                             ; $40c4: $30 $35

	ld   [hl], $37                                   ; $40c6: $36 $37
	inc  b                                           ; $40c8: $04

jr_082_40c9:
	inc  b                                           ; $40c9: $04
	inc  b                                           ; $40ca: $04
	inc  b                                           ; $40cb: $04
	inc  b                                           ; $40cc: $04
	inc  b                                           ; $40cd: $04
	inc  b                                           ; $40ce: $04
	inc  b                                           ; $40cf: $04
	inc  b                                           ; $40d0: $04
	inc  b                                           ; $40d1: $04
	inc  b                                           ; $40d2: $04
	inc  b                                           ; $40d3: $04
	inc  b                                           ; $40d4: $04
	inc  b                                           ; $40d5: $04
	inc  b                                           ; $40d6: $04

jr_082_40d7:
	inc  b                                           ; $40d7: $04
	dec  bc                                          ; $40d8: $0b
	dec  bc                                          ; $40d9: $0b
	dec  bc                                          ; $40da: $0b
	inc  b                                           ; $40db: $04
	inc  b                                           ; $40dc: $04
	inc  b                                           ; $40dd: $04
	inc  b                                           ; $40de: $04
	inc  b                                           ; $40df: $04
	inc  b                                           ; $40e0: $04
	inc  b                                           ; $40e1: $04
	inc  b                                           ; $40e2: $04
	inc  b                                           ; $40e3: $04
	inc  b                                           ; $40e4: $04
	inc  b                                           ; $40e5: $04
	inc  b                                           ; $40e6: $04
	inc  b                                           ; $40e7: $04
	inc  bc                                          ; $40e8: $03
	inc  b                                           ; $40e9: $04
	inc  b                                           ; $40ea: $04
	inc  b                                           ; $40eb: $04
	dec  bc                                          ; $40ec: $0b
	dec  bc                                          ; $40ed: $0b
	dec  bc                                          ; $40ee: $0b
	inc  b                                           ; $40ef: $04
	inc  b                                           ; $40f0: $04
	inc  b                                           ; $40f1: $04
	inc  b                                           ; $40f2: $04
	inc  b                                           ; $40f3: $04
	inc  b                                           ; $40f4: $04
	inc  b                                           ; $40f5: $04
	inc  b                                           ; $40f6: $04
	inc  b                                           ; $40f7: $04
	inc  b                                           ; $40f8: $04
	inc  b                                           ; $40f9: $04
	inc  b                                           ; $40fa: $04

jr_082_40fb:
	inc  b                                           ; $40fb: $04
	inc  bc                                          ; $40fc: $03
	inc  bc                                          ; $40fd: $03
	inc  b                                           ; $40fe: $04
	inc  b                                           ; $40ff: $04
	dec  bc                                          ; $4100: $0b
	dec  bc                                          ; $4101: $0b
	dec  bc                                          ; $4102: $0b
	inc  b                                           ; $4103: $04
	inc  b                                           ; $4104: $04
	inc  b                                           ; $4105: $04
	inc  b                                           ; $4106: $04
	inc  bc                                          ; $4107: $03
	inc  b                                           ; $4108: $04
	inc  b                                           ; $4109: $04
	inc  b                                           ; $410a: $04
	inc  b                                           ; $410b: $04
	inc  b                                           ; $410c: $04
	inc  b                                           ; $410d: $04
	inc  b                                           ; $410e: $04
	inc  b                                           ; $410f: $04
	inc  bc                                          ; $4110: $03
	inc  bc                                          ; $4111: $03
	inc  bc                                          ; $4112: $03
	inc  bc                                          ; $4113: $03
	dec  bc                                          ; $4114: $0b
	dec  bc                                          ; $4115: $0b
	dec  bc                                          ; $4116: $0b
	dec  bc                                          ; $4117: $0b
	inc  bc                                          ; $4118: $03
	inc  b                                           ; $4119: $04
	inc  b                                           ; $411a: $04
	inc  bc                                          ; $411b: $03
	inc  bc                                          ; $411c: $03
	inc  bc                                          ; $411d: $03
	inc  bc                                          ; $411e: $03
	inc  bc                                          ; $411f: $03
	inc  b                                           ; $4120: $04
	inc  b                                           ; $4121: $04
	inc  b                                           ; $4122: $04
	inc  b                                           ; $4123: $04
	inc  bc                                          ; $4124: $03
	inc  bc                                          ; $4125: $03
	inc  bc                                          ; $4126: $03
	inc  bc                                          ; $4127: $03
	dec  bc                                          ; $4128: $0b
	dec  bc                                          ; $4129: $0b
	dec  bc                                          ; $412a: $0b
	dec  bc                                          ; $412b: $0b
	inc  bc                                          ; $412c: $03
	inc  b                                           ; $412d: $04
	inc  b                                           ; $412e: $04
	inc  bc                                          ; $412f: $03
	inc  bc                                          ; $4130: $03
	inc  bc                                          ; $4131: $03
	inc  bc                                          ; $4132: $03
	inc  bc                                          ; $4133: $03
	inc  b                                           ; $4134: $04
	inc  b                                           ; $4135: $04
	inc  b                                           ; $4136: $04
	inc  b                                           ; $4137: $04
	inc  bc                                          ; $4138: $03
	inc  bc                                          ; $4139: $03
	inc  bc                                          ; $413a: $03
	inc  bc                                          ; $413b: $03
	dec  bc                                          ; $413c: $0b
	dec  bc                                          ; $413d: $0b
	dec  bc                                          ; $413e: $0b
	dec  bc                                          ; $413f: $0b
	inc  bc                                          ; $4140: $03
	inc  b                                           ; $4141: $04
	inc  b                                           ; $4142: $04
	dec  b                                           ; $4143: $05
	dec  b                                           ; $4144: $05
	dec  b                                           ; $4145: $05
	dec  b                                           ; $4146: $05
	dec  b                                           ; $4147: $05
	dec  b                                           ; $4148: $05
	dec  b                                           ; $4149: $05
	dec  b                                           ; $414a: $05
	dec  b                                           ; $414b: $05
	dec  b                                           ; $414c: $05
	dec  b                                           ; $414d: $05
	inc  bc                                          ; $414e: $03
	inc  bc                                          ; $414f: $03
	dec  bc                                          ; $4150: $0b
	dec  c                                           ; $4151: $0d
	dec  bc                                          ; $4152: $0b
	dec  bc                                          ; $4153: $0b
	inc  bc                                          ; $4154: $03
	inc  b                                           ; $4155: $04
	dec  b                                           ; $4156: $05
	dec  b                                           ; $4157: $05
	dec  b                                           ; $4158: $05
	dec  b                                           ; $4159: $05
	dec  b                                           ; $415a: $05
	dec  b                                           ; $415b: $05
	dec  b                                           ; $415c: $05
	dec  b                                           ; $415d: $05
	dec  b                                           ; $415e: $05
	dec  b                                           ; $415f: $05
	dec  b                                           ; $4160: $05
	dec  b                                           ; $4161: $05
	dec  b                                           ; $4162: $05
	inc  bc                                          ; $4163: $03
	dec  bc                                          ; $4164: $0b
	inc  bc                                          ; $4165: $03
	inc  bc                                          ; $4166: $03
	inc  bc                                          ; $4167: $03
	dec  c                                           ; $4168: $0d
	dec  c                                           ; $4169: $0d
	dec  c                                           ; $416a: $0d
	dec  c                                           ; $416b: $0d
	dec  c                                           ; $416c: $0d
	dec  c                                           ; $416d: $0d
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
	inc  bc                                          ; $4178: $03
	inc  bc                                          ; $4179: $03
	inc  bc                                          ; $417a: $03
	inc  bc                                          ; $417b: $03
	dec  c                                           ; $417c: $0d
	dec  c                                           ; $417d: $0d
	dec  c                                           ; $417e: $0d
	dec  c                                           ; $417f: $0d
	dec  c                                           ; $4180: $0d
	dec  c                                           ; $4181: $0d
	dec  c                                           ; $4182: $0d
	dec  c                                           ; $4183: $0d
	dec  c                                           ; $4184: $0d
	dec  c                                           ; $4185: $0d
	dec  c                                           ; $4186: $0d
	dec  c                                           ; $4187: $0d
	dec  c                                           ; $4188: $0d
	dec  c                                           ; $4189: $0d
	dec  c                                           ; $418a: $0d
	dec  c                                           ; $418b: $0d
	dec  b                                           ; $418c: $05
	inc  bc                                          ; $418d: $03
	inc  bc                                          ; $418e: $03
	inc  bc                                          ; $418f: $03
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
	inc  l                                           ; $41a0: $2c
	dec  l                                           ; $41a1: $2d
	ld   l, $16                                      ; $41a2: $2e $16
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
	add  hl, hl                                      ; $41b4: $29
	ld   a, [hl+]                                    ; $41b5: $2a
	dec  hl                                          ; $41b6: $2b
	ld   d, $10                                      ; $41b7: $16 $10
	ld   hl, $2322                                   ; $41b9: $21 $22 $23
	inc  h                                           ; $41bc: $24
	ld   d, $16                                      ; $41bd: $16 $16
	rla                                              ; $41bf: $17
	jr   z, jr_082_41eb                              ; $41c0: $28 $29

	ld   a, [hl+]                                    ; $41c2: $2a
	dec  hl                                          ; $41c3: $2b
	inc  l                                           ; $41c4: $2c
	dec  l                                           ; $41c5: $2d
	ld   l, $2f                                      ; $41c6: $2e $2f
	ld   h, $27                                      ; $41c8: $26 $27
	jr   z, jr_082_41e2                              ; $41ca: $28 $16

	db   $10                                         ; $41cc: $10
	ld   sp, $3332                                   ; $41cd: $31 $32 $33
	ld   d, e                                        ; $41d0: $53
	ld   d, h                                        ; $41d1: $54
	ld   d, l                                        ; $41d2: $55
	ld   d, [hl]                                     ; $41d3: $56
	jr   c, jr_082_420f                              ; $41d4: $38 $39

	ld   a, [hl-]                                    ; $41d6: $3a
	dec  sp                                          ; $41d7: $3b
	inc  a                                           ; $41d8: $3c
	dec  a                                           ; $41d9: $3d
	ld   a, $3f                                      ; $41da: $3e $3f
	ld   [hl+], a                                    ; $41dc: $22
	inc  hl                                          ; $41dd: $23
	inc  h                                           ; $41de: $24
	dec  h                                           ; $41df: $25
	ld   b, b                                        ; $41e0: $40
	ld   b, c                                        ; $41e1: $41

jr_082_41e2:
	ld   d, a                                        ; $41e2: $57
	ld   b, e                                        ; $41e3: $43
	ld   a, $58                                      ; $41e4: $3e $58
	ld   d, $59                                      ; $41e6: $16 $59
	ld   c, b                                        ; $41e8: $48
	ld   c, c                                        ; $41e9: $49
	ld   c, d                                        ; $41ea: $4a

jr_082_41eb:
	ld   c, e                                        ; $41eb: $4b
	ld   c, h                                        ; $41ec: $4c
	ld   c, l                                        ; $41ed: $4d
	ld   c, [hl]                                     ; $41ee: $4e
	ld   c, a                                        ; $41ef: $4f
	jr   nz, jr_082_4213                             ; $41f0: $20 $21

	ld   e, $1c                                      ; $41f2: $1e $1c
	ld   d, b                                        ; $41f4: $50
	ld   e, d                                        ; $41f5: $5a
	ld   e, e                                        ; $41f6: $5b
	ld   e, h                                        ; $41f7: $5c
	ld   e, l                                        ; $41f8: $5d
	ld   e, [hl]                                     ; $41f9: $5e
	ld   e, a                                        ; $41fa: $5f
	ld   h, b                                        ; $41fb: $60
	ld   e, b                                        ; $41fc: $58
	ld   e, c                                        ; $41fd: $59
	ld   e, d                                        ; $41fe: $5a
	ld   e, e                                        ; $41ff: $5b
	ld   e, h                                        ; $4200: $5c
	ld   e, l                                        ; $4201: $5d
	ld   e, [hl]                                     ; $4202: $5e
	ld   e, a                                        ; $4203: $5f
	dec  d                                           ; $4204: $15
	ld   d, $17                                      ; $4205: $16 $17
	jr   jr_082_4259                                 ; $4207: $18 $50

	ld   h, c                                        ; $4209: $61
	ld   h, d                                        ; $420a: $62
	ld   h, e                                        ; $420b: $63
	ld   h, h                                        ; $420c: $64
	ld   h, l                                        ; $420d: $65
	ld   h, [hl]                                     ; $420e: $66

jr_082_420f:
	ld   h, a                                        ; $420f: $67
	ld   l, b                                        ; $4210: $68
	ld   l, c                                        ; $4211: $69
	ld   l, d                                        ; $4212: $6a

jr_082_4213:
	ld   l, e                                        ; $4213: $6b
	ld   l, h                                        ; $4214: $6c
	ld   l, l                                        ; $4215: $6d
	ld   l, [hl]                                     ; $4216: $6e
	ld   l, a                                        ; $4217: $6f
	ld   [de], a                                     ; $4218: $12
	inc  de                                          ; $4219: $13
	inc  d                                           ; $421a: $14
	ld   b, $6b                                      ; $421b: $06 $6b
	ld   l, h                                        ; $421d: $6c
	ld   l, l                                        ; $421e: $6d
	ld   l, [hl]                                     ; $421f: $6e
	ld   l, a                                        ; $4220: $6f
	ld   [hl], b                                     ; $4221: $70
	ld   [hl], c                                     ; $4222: $71
	ld   [hl], d                                     ; $4223: $72
	ld   [hl], e                                     ; $4224: $73
	ld   [hl], h                                     ; $4225: $74
	ld   [hl], l                                     ; $4226: $75
	ld   a, d                                        ; $4227: $7a
	ld   a, h                                        ; $4228: $7c
	ld   a, l                                        ; $4229: $7d
	ld   a, [hl]                                     ; $422a: $7e
	ld   a, a                                        ; $422b: $7f
	ld   [bc], a                                     ; $422c: $02
	ld   a, e                                        ; $422d: $7b
	ld   [hl], b                                     ; $422e: $70
	ld   h, b                                        ; $422f: $60
	halt                                             ; $4230: $76
	ld   [hl], a                                     ; $4231: $77
	ld   a, b                                        ; $4232: $78
	ld   a, b                                        ; $4233: $78
	ld   a, b                                        ; $4234: $78
	ld   a, b                                        ; $4235: $78
	ld   a, b                                        ; $4236: $78
	ld   a, c                                        ; $4237: $79
	ld   a, d                                        ; $4238: $7a
	add  hl, bc                                      ; $4239: $09
	ld   a, [bc]                                     ; $423a: $0a
	dec  bc                                          ; $423b: $0b
	inc  c                                           ; $423c: $0c
	dec  c                                           ; $423d: $0d
	ld   c, $0f                                      ; $423e: $0e $0f
	jr   nz, jr_082_4267                             ; $4240: $20 $25

	ld   h, $27                                      ; $4242: $26 $27
	db   $10                                         ; $4244: $10
	ld   de, $1111                                   ; $4245: $11 $11 $11
	ld   de, $1111                                   ; $4248: $11 $11 $11
	ld   de, $1911                                   ; $424b: $11 $11 $19
	ld   a, [de]                                     ; $424e: $1a
	dec  de                                          ; $424f: $1b
	dec  de                                          ; $4250: $1b
	dec  e                                           ; $4251: $1d
	dec  e                                           ; $4252: $1d
	rra                                              ; $4253: $1f
	jr   nc, jr_082_428b                             ; $4254: $30 $35

	ld   [hl], $37                                   ; $4256: $36 $37
	inc  b                                           ; $4258: $04

jr_082_4259:
	inc  b                                           ; $4259: $04
	inc  b                                           ; $425a: $04
	inc  b                                           ; $425b: $04
	inc  b                                           ; $425c: $04
	inc  b                                           ; $425d: $04
	inc  b                                           ; $425e: $04
	inc  b                                           ; $425f: $04
	inc  b                                           ; $4260: $04
	inc  b                                           ; $4261: $04
	inc  b                                           ; $4262: $04
	inc  b                                           ; $4263: $04
	inc  b                                           ; $4264: $04
	inc  b                                           ; $4265: $04
	inc  b                                           ; $4266: $04

jr_082_4267:
	inc  b                                           ; $4267: $04
	dec  bc                                          ; $4268: $0b
	dec  bc                                          ; $4269: $0b
	dec  bc                                          ; $426a: $0b
	inc  b                                           ; $426b: $04
	inc  b                                           ; $426c: $04
	inc  b                                           ; $426d: $04
	inc  b                                           ; $426e: $04
	inc  b                                           ; $426f: $04
	inc  b                                           ; $4270: $04
	inc  b                                           ; $4271: $04
	inc  b                                           ; $4272: $04
	inc  b                                           ; $4273: $04
	inc  b                                           ; $4274: $04
	inc  b                                           ; $4275: $04
	inc  b                                           ; $4276: $04
	inc  b                                           ; $4277: $04
	inc  bc                                          ; $4278: $03
	inc  b                                           ; $4279: $04
	inc  b                                           ; $427a: $04
	inc  b                                           ; $427b: $04
	dec  bc                                          ; $427c: $0b
	dec  bc                                          ; $427d: $0b
	dec  bc                                          ; $427e: $0b
	inc  b                                           ; $427f: $04
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

jr_082_428b:
	inc  b                                           ; $428b: $04
	inc  bc                                          ; $428c: $03
	inc  bc                                          ; $428d: $03
	inc  b                                           ; $428e: $04
	inc  b                                           ; $428f: $04
	dec  bc                                          ; $4290: $0b
	dec  bc                                          ; $4291: $0b
	dec  bc                                          ; $4292: $0b
	inc  b                                           ; $4293: $04
	inc  b                                           ; $4294: $04
	inc  b                                           ; $4295: $04
	inc  b                                           ; $4296: $04
	inc  bc                                          ; $4297: $03
	dec  bc                                          ; $4298: $0b
	dec  bc                                          ; $4299: $0b
	dec  bc                                          ; $429a: $0b
	dec  bc                                          ; $429b: $0b
	inc  b                                           ; $429c: $04
	inc  b                                           ; $429d: $04
	inc  b                                           ; $429e: $04
	inc  b                                           ; $429f: $04
	inc  bc                                          ; $42a0: $03
	inc  bc                                          ; $42a1: $03
	inc  bc                                          ; $42a2: $03
	inc  bc                                          ; $42a3: $03
	dec  bc                                          ; $42a4: $0b
	dec  bc                                          ; $42a5: $0b
	dec  bc                                          ; $42a6: $0b
	dec  bc                                          ; $42a7: $0b
	inc  bc                                          ; $42a8: $03
	inc  b                                           ; $42a9: $04
	inc  c                                           ; $42aa: $0c
	inc  bc                                          ; $42ab: $03
	inc  bc                                          ; $42ac: $03
	dec  bc                                          ; $42ad: $0b
	inc  b                                           ; $42ae: $04
	dec  bc                                          ; $42af: $0b
	inc  b                                           ; $42b0: $04
	inc  b                                           ; $42b1: $04
	inc  b                                           ; $42b2: $04
	inc  b                                           ; $42b3: $04
	inc  bc                                          ; $42b4: $03
	inc  bc                                          ; $42b5: $03
	inc  bc                                          ; $42b6: $03
	inc  bc                                          ; $42b7: $03
	dec  bc                                          ; $42b8: $0b
	dec  bc                                          ; $42b9: $0b
	dec  bc                                          ; $42ba: $0b
	dec  bc                                          ; $42bb: $0b
	inc  bc                                          ; $42bc: $03
	inc  c                                           ; $42bd: $0c
	inc  c                                           ; $42be: $0c
	inc  c                                           ; $42bf: $0c
	dec  bc                                          ; $42c0: $0b
	dec  bc                                          ; $42c1: $0b
	dec  bc                                          ; $42c2: $0b
	dec  bc                                          ; $42c3: $0b
	inc  b                                           ; $42c4: $04
	inc  b                                           ; $42c5: $04
	inc  b                                           ; $42c6: $04
	inc  b                                           ; $42c7: $04
	inc  bc                                          ; $42c8: $03
	inc  bc                                          ; $42c9: $03
	inc  bc                                          ; $42ca: $03
	inc  bc                                          ; $42cb: $03
	dec  bc                                          ; $42cc: $0b
	dec  bc                                          ; $42cd: $0b
	dec  bc                                          ; $42ce: $0b
	dec  bc                                          ; $42cf: $0b
	inc  bc                                          ; $42d0: $03
	inc  c                                           ; $42d1: $0c
	inc  c                                           ; $42d2: $0c
	inc  c                                           ; $42d3: $0c
	dec  bc                                          ; $42d4: $0b
	dec  bc                                          ; $42d5: $0b
	dec  bc                                          ; $42d6: $0b
	dec  bc                                          ; $42d7: $0b
	dec  c                                           ; $42d8: $0d
	dec  c                                           ; $42d9: $0d
	dec  c                                           ; $42da: $0d
	dec  b                                           ; $42db: $05
	dec  b                                           ; $42dc: $05
	dec  b                                           ; $42dd: $05
	inc  bc                                          ; $42de: $03
	inc  bc                                          ; $42df: $03
	dec  bc                                          ; $42e0: $0b
	dec  c                                           ; $42e1: $0d
	dec  bc                                          ; $42e2: $0b
	dec  bc                                          ; $42e3: $0b
	dec  bc                                          ; $42e4: $0b
	dec  bc                                          ; $42e5: $0b
	dec  bc                                          ; $42e6: $0b
	dec  bc                                          ; $42e7: $0b
	dec  bc                                          ; $42e8: $0b
	dec  bc                                          ; $42e9: $0b
	dec  bc                                          ; $42ea: $0b
	dec  bc                                          ; $42eb: $0b
	dec  c                                           ; $42ec: $0d
	dec  c                                           ; $42ed: $0d
	dec  c                                           ; $42ee: $0d
	dec  b                                           ; $42ef: $05
	dec  b                                           ; $42f0: $05
	dec  b                                           ; $42f1: $05
	dec  b                                           ; $42f2: $05
	inc  bc                                          ; $42f3: $03
	dec  bc                                          ; $42f4: $0b
	inc  bc                                          ; $42f5: $03
	inc  bc                                          ; $42f6: $03
	inc  bc                                          ; $42f7: $03
	dec  bc                                          ; $42f8: $0b
	dec  bc                                          ; $42f9: $0b
	dec  bc                                          ; $42fa: $0b
	dec  bc                                          ; $42fb: $0b
	dec  bc                                          ; $42fc: $0b
	dec  bc                                          ; $42fd: $0b
	dec  bc                                          ; $42fe: $0b
	dec  bc                                          ; $42ff: $0b
	dec  c                                           ; $4300: $0d
	dec  c                                           ; $4301: $0d
	dec  c                                           ; $4302: $0d
	dec  c                                           ; $4303: $0d
	dec  c                                           ; $4304: $0d
	dec  c                                           ; $4305: $0d
	dec  c                                           ; $4306: $0d
	dec  c                                           ; $4307: $0d
	inc  bc                                          ; $4308: $03
	inc  bc                                          ; $4309: $03
	inc  bc                                          ; $430a: $03
	inc  bc                                          ; $430b: $03
	dec  c                                           ; $430c: $0d
	dec  c                                           ; $430d: $0d
	dec  c                                           ; $430e: $0d
	dec  c                                           ; $430f: $0d
	dec  c                                           ; $4310: $0d
	dec  c                                           ; $4311: $0d
	dec  c                                           ; $4312: $0d
	dec  c                                           ; $4313: $0d
	dec  c                                           ; $4314: $0d
	dec  c                                           ; $4315: $0d
	dec  c                                           ; $4316: $0d
	dec  c                                           ; $4317: $0d
	dec  c                                           ; $4318: $0d
	dec  c                                           ; $4319: $0d
	dec  c                                           ; $431a: $0d
	dec  c                                           ; $431b: $0d
	dec  b                                           ; $431c: $05
	inc  bc                                          ; $431d: $03
	inc  bc                                          ; $431e: $03
	inc  bc                                          ; $431f: $03
	nop                                              ; $4320: $00
	ld   bc, $032f                                   ; $4321: $01 $2f $03
	inc  b                                           ; $4324: $04
	dec  b                                           ; $4325: $05
	ld   b, $07                                      ; $4326: $06 $07
	dec  a                                           ; $4328: $3d
	ld   a, $3f                                      ; $4329: $3e $3f
	ld   b, b                                        ; $432b: $40
	inc  c                                           ; $432c: $0c
	dec  c                                           ; $432d: $0d
	ld   c, $0f                                      ; $432e: $0e $0f
	inc  l                                           ; $4330: $2c
	dec  l                                           ; $4331: $2d
	ld   l, $16                                      ; $4332: $2e $16
	db   $10                                         ; $4334: $10
	ld   sp, $1330                                   ; $4335: $31 $30 $13
	inc  d                                           ; $4338: $14
	dec  d                                           ; $4339: $15
	ld   d, $17                                      ; $433a: $16 $17
	ld   b, c                                        ; $433c: $41
	ld   b, d                                        ; $433d: $42
	ld   b, e                                        ; $433e: $43
	ld   b, h                                        ; $433f: $44
	inc  e                                           ; $4340: $1c
	dec  e                                           ; $4341: $1d
	ld   e, $1f                                      ; $4342: $1e $1f
	add  hl, hl                                      ; $4344: $29
	ld   a, [hl+]                                    ; $4345: $2a
	dec  hl                                          ; $4346: $2b
	ld   d, $10                                      ; $4347: $16 $10
	ld   sp, $2332                                   ; $4349: $31 $32 $23
	inc  h                                           ; $434c: $24
	ld   d, $16                                      ; $434d: $16 $16
	rla                                              ; $434f: $17
	ld   sp, $4645                                   ; $4350: $31 $45 $46
	ld   b, h                                        ; $4353: $44
	inc  l                                           ; $4354: $2c
	dec  l                                           ; $4355: $2d
	ld   l, $2f                                      ; $4356: $2e $2f
	ld   h, $27                                      ; $4358: $26 $27
	jr   z, jr_082_4372                              ; $435a: $28 $16

	db   $10                                         ; $435c: $10
	inc  sp                                          ; $435d: $33
	inc  [hl]                                        ; $435e: $34
	inc  sp                                          ; $435f: $33
	inc  [hl]                                        ; $4360: $34
	ld   d, $16                                      ; $4361: $16 $16
	rla                                              ; $4363: $17
	ld   b, a                                        ; $4364: $47
	ld   c, b                                        ; $4365: $48
	ld   c, c                                        ; $4366: $49
	ld   c, d                                        ; $4367: $4a
	inc  a                                           ; $4368: $3c
	dec  a                                           ; $4369: $3d
	ld   a, $3f                                      ; $436a: $3e $3f
	ld   [hl+], a                                    ; $436c: $22
	inc  hl                                          ; $436d: $23
	inc  h                                           ; $436e: $24
	dec  h                                           ; $436f: $25
	ld   b, b                                        ; $4370: $40
	dec  [hl]                                        ; $4371: $35

jr_082_4372:
	ld   [hl], $43                                   ; $4372: $36 $43
	ld   b, h                                        ; $4374: $44
	ld   b, l                                        ; $4375: $45
	ld   b, [hl]                                     ; $4376: $46
	ld   c, e                                        ; $4377: $4b
	ld   c, h                                        ; $4378: $4c
	ld   c, l                                        ; $4379: $4d
	ld   c, [hl]                                     ; $437a: $4e
	ld   c, a                                        ; $437b: $4f
	ld   c, h                                        ; $437c: $4c
	ld   c, l                                        ; $437d: $4d
	ld   c, [hl]                                     ; $437e: $4e
	ld   c, a                                        ; $437f: $4f
	jr   nz, jr_082_43a3                             ; $4380: $20 $21

	ld   e, $1c                                      ; $4382: $1e $1c
	ld   d, b                                        ; $4384: $50
	scf                                              ; $4385: $37
	jr   c, jr_082_43db                              ; $4386: $38 $53

	ld   d, h                                        ; $4388: $54
	ld   d, l                                        ; $4389: $55
	ld   d, [hl]                                     ; $438a: $56
	ld   c, e                                        ; $438b: $4b
	ld   d, b                                        ; $438c: $50
	ld   d, c                                        ; $438d: $51
	ld   d, d                                        ; $438e: $52
	ld   e, e                                        ; $438f: $5b
	ld   e, h                                        ; $4390: $5c
	ld   e, l                                        ; $4391: $5d
	ld   e, [hl]                                     ; $4392: $5e
	ld   e, a                                        ; $4393: $5f
	dec  d                                           ; $4394: $15
	ld   d, $17                                      ; $4395: $16 $17
	jr   jr_082_43e9                                 ; $4397: $18 $50

	add  hl, sp                                      ; $4399: $39
	ld   a, [hl-]                                    ; $439a: $3a
	ld   h, e                                        ; $439b: $63
	ld   h, h                                        ; $439c: $64
	ld   h, l                                        ; $439d: $65
	ld   h, [hl]                                     ; $439e: $66
	ld   h, a                                        ; $439f: $67
	ld   l, b                                        ; $43a0: $68
	ld   l, c                                        ; $43a1: $69
	ld   l, d                                        ; $43a2: $6a

jr_082_43a3:
	ld   l, e                                        ; $43a3: $6b
	ld   l, h                                        ; $43a4: $6c
	ld   l, l                                        ; $43a5: $6d
	ld   l, [hl]                                     ; $43a6: $6e
	ld   l, a                                        ; $43a7: $6f
	ld   [de], a                                     ; $43a8: $12
	inc  de                                          ; $43a9: $13
	inc  d                                           ; $43aa: $14
	ld   b, $50                                      ; $43ab: $06 $50
	dec  sp                                          ; $43ad: $3b
	inc  a                                           ; $43ae: $3c
	ld   [hl], e                                     ; $43af: $73
	ld   [hl], h                                     ; $43b0: $74
	ld   [hl], l                                     ; $43b1: $75
	halt                                             ; $43b2: $76
	ld   [hl], a                                     ; $43b3: $77
	ld   a, b                                        ; $43b4: $78
	ld   a, c                                        ; $43b5: $79
	ld   a, d                                        ; $43b6: $7a
	ld   a, d                                        ; $43b7: $7a
	ld   a, h                                        ; $43b8: $7c
	ld   a, l                                        ; $43b9: $7d
	ld   a, [hl]                                     ; $43ba: $7e
	ld   a, a                                        ; $43bb: $7f
	ld   [bc], a                                     ; $43bc: $02
	ld   a, e                                        ; $43bd: $7b
	ld   [hl], b                                     ; $43be: $70
	ld   h, b                                        ; $43bf: $60
	nop                                              ; $43c0: $00
	ld   bc, $0311                                   ; $43c1: $01 $11 $03
	inc  b                                           ; $43c4: $04
	dec  b                                           ; $43c5: $05
	ld   de, $0807                                   ; $43c6: $11 $07 $08
	add  hl, bc                                      ; $43c9: $09
	ld   a, [bc]                                     ; $43ca: $0a
	dec  bc                                          ; $43cb: $0b
	inc  c                                           ; $43cc: $0c
	dec  c                                           ; $43cd: $0d
	ld   c, $0f                                      ; $43ce: $0e $0f
	jr   nz, jr_082_43f7                             ; $43d0: $20 $25

	ld   h, $27                                      ; $43d2: $26 $27
	db   $10                                         ; $43d4: $10
	ld   de, $1111                                   ; $43d5: $11 $11 $11
	ld   de, $1111                                   ; $43d8: $11 $11 $11

jr_082_43db:
	ld   de, $1911                                   ; $43db: $11 $11 $19
	ld   a, [de]                                     ; $43de: $1a
	dec  de                                          ; $43df: $1b
	dec  de                                          ; $43e0: $1b
	dec  e                                           ; $43e1: $1d
	dec  e                                           ; $43e2: $1d
	rra                                              ; $43e3: $1f
	jr   nc, jr_082_441b                             ; $43e4: $30 $35

	ld   [hl], $37                                   ; $43e6: $36 $37
	inc  b                                           ; $43e8: $04

jr_082_43e9:
	inc  b                                           ; $43e9: $04
	inc  c                                           ; $43ea: $0c
	inc  b                                           ; $43eb: $04
	inc  b                                           ; $43ec: $04
	inc  b                                           ; $43ed: $04
	inc  b                                           ; $43ee: $04
	inc  b                                           ; $43ef: $04
	inc  c                                           ; $43f0: $0c
	inc  c                                           ; $43f1: $0c
	inc  c                                           ; $43f2: $0c
	inc  c                                           ; $43f3: $0c
	inc  b                                           ; $43f4: $04
	inc  b                                           ; $43f5: $04
	inc  b                                           ; $43f6: $04

jr_082_43f7:
	inc  b                                           ; $43f7: $04
	dec  bc                                          ; $43f8: $0b
	dec  bc                                          ; $43f9: $0b
	dec  bc                                          ; $43fa: $0b
	inc  b                                           ; $43fb: $04
	inc  b                                           ; $43fc: $04
	inc  c                                           ; $43fd: $0c
	inc  c                                           ; $43fe: $0c
	inc  b                                           ; $43ff: $04
	inc  b                                           ; $4400: $04
	inc  b                                           ; $4401: $04
	inc  b                                           ; $4402: $04
	inc  b                                           ; $4403: $04
	inc  c                                           ; $4404: $0c
	inc  c                                           ; $4405: $0c
	inc  c                                           ; $4406: $0c
	inc  c                                           ; $4407: $0c
	inc  bc                                          ; $4408: $03
	inc  b                                           ; $4409: $04
	inc  b                                           ; $440a: $04
	inc  b                                           ; $440b: $04
	dec  bc                                          ; $440c: $0b
	dec  bc                                          ; $440d: $0b
	dec  bc                                          ; $440e: $0b
	inc  b                                           ; $440f: $04
	inc  b                                           ; $4410: $04
	inc  c                                           ; $4411: $0c
	inc  c                                           ; $4412: $0c
	inc  b                                           ; $4413: $04
	inc  b                                           ; $4414: $04
	inc  b                                           ; $4415: $04
	inc  b                                           ; $4416: $04
	inc  b                                           ; $4417: $04
	inc  c                                           ; $4418: $0c
	inc  c                                           ; $4419: $0c
	inc  c                                           ; $441a: $0c

jr_082_441b:
	inc  c                                           ; $441b: $0c
	inc  bc                                          ; $441c: $03
	inc  bc                                          ; $441d: $03
	inc  b                                           ; $441e: $04
	inc  b                                           ; $441f: $04
	dec  bc                                          ; $4420: $0b
	dec  bc                                          ; $4421: $0b
	dec  bc                                          ; $4422: $0b
	inc  b                                           ; $4423: $04
	inc  b                                           ; $4424: $04
	inc  c                                           ; $4425: $0c
	inc  c                                           ; $4426: $0c
	inc  bc                                          ; $4427: $03
	inc  b                                           ; $4428: $04
	inc  b                                           ; $4429: $04
	inc  b                                           ; $442a: $04
	inc  b                                           ; $442b: $04
	inc  c                                           ; $442c: $0c
	inc  c                                           ; $442d: $0c
	inc  c                                           ; $442e: $0c
	inc  c                                           ; $442f: $0c
	inc  bc                                          ; $4430: $03
	inc  bc                                          ; $4431: $03
	inc  bc                                          ; $4432: $03
	inc  bc                                          ; $4433: $03
	dec  bc                                          ; $4434: $0b
	dec  bc                                          ; $4435: $0b
	dec  bc                                          ; $4436: $0b
	dec  bc                                          ; $4437: $0b
	inc  bc                                          ; $4438: $03
	inc  c                                           ; $4439: $0c
	inc  c                                           ; $443a: $0c
	inc  bc                                          ; $443b: $03
	inc  bc                                          ; $443c: $03
	inc  bc                                          ; $443d: $03
	inc  bc                                          ; $443e: $03
	dec  bc                                          ; $443f: $0b
	inc  c                                           ; $4440: $0c
	inc  c                                           ; $4441: $0c
	inc  c                                           ; $4442: $0c
	inc  c                                           ; $4443: $0c
	inc  bc                                          ; $4444: $03
	inc  bc                                          ; $4445: $03
	inc  bc                                          ; $4446: $03
	inc  bc                                          ; $4447: $03
	dec  bc                                          ; $4448: $0b
	dec  bc                                          ; $4449: $0b
	dec  bc                                          ; $444a: $0b
	dec  bc                                          ; $444b: $0b
	inc  bc                                          ; $444c: $03
	inc  c                                           ; $444d: $0c
	inc  c                                           ; $444e: $0c
	inc  bc                                          ; $444f: $03
	inc  bc                                          ; $4450: $03
	inc  bc                                          ; $4451: $03
	inc  bc                                          ; $4452: $03
	dec  bc                                          ; $4453: $0b
	inc  c                                           ; $4454: $0c
	inc  c                                           ; $4455: $0c
	inc  c                                           ; $4456: $0c
	inc  b                                           ; $4457: $04
	inc  bc                                          ; $4458: $03
	inc  bc                                          ; $4459: $03
	inc  bc                                          ; $445a: $03
	inc  bc                                          ; $445b: $03
	dec  bc                                          ; $445c: $0b
	dec  bc                                          ; $445d: $0b
	dec  bc                                          ; $445e: $0b
	dec  bc                                          ; $445f: $0b
	inc  bc                                          ; $4460: $03
	inc  c                                           ; $4461: $0c
	inc  c                                           ; $4462: $0c
	dec  b                                           ; $4463: $05
	dec  b                                           ; $4464: $05
	dec  b                                           ; $4465: $05
	dec  b                                           ; $4466: $05
	dec  b                                           ; $4467: $05
	dec  b                                           ; $4468: $05
	dec  b                                           ; $4469: $05
	dec  b                                           ; $446a: $05
	dec  b                                           ; $446b: $05
	dec  b                                           ; $446c: $05
	dec  b                                           ; $446d: $05
	inc  bc                                          ; $446e: $03
	inc  bc                                          ; $446f: $03
	dec  bc                                          ; $4470: $0b
	dec  c                                           ; $4471: $0d
	dec  bc                                          ; $4472: $0b
	dec  bc                                          ; $4473: $0b
	inc  bc                                          ; $4474: $03
	inc  c                                           ; $4475: $0c
	dec  c                                           ; $4476: $0d
	dec  b                                           ; $4477: $05
	dec  b                                           ; $4478: $05
	dec  b                                           ; $4479: $05
	dec  b                                           ; $447a: $05
	dec  b                                           ; $447b: $05
	dec  b                                           ; $447c: $05
	dec  b                                           ; $447d: $05
	dec  b                                           ; $447e: $05
	dec  b                                           ; $447f: $05
	dec  b                                           ; $4480: $05
	dec  b                                           ; $4481: $05
	dec  b                                           ; $4482: $05
	inc  bc                                          ; $4483: $03
	dec  bc                                          ; $4484: $0b
	inc  bc                                          ; $4485: $03
	inc  bc                                          ; $4486: $03
	inc  bc                                          ; $4487: $03
	dec  c                                           ; $4488: $0d
	dec  c                                           ; $4489: $0d
	dec  c                                           ; $448a: $0d
	dec  c                                           ; $448b: $0d
	dec  c                                           ; $448c: $0d
	dec  c                                           ; $448d: $0d
	dec  c                                           ; $448e: $0d
	dec  c                                           ; $448f: $0d
	dec  c                                           ; $4490: $0d
	dec  c                                           ; $4491: $0d
	dec  c                                           ; $4492: $0d
	dec  c                                           ; $4493: $0d
	dec  c                                           ; $4494: $0d
	dec  c                                           ; $4495: $0d
	dec  c                                           ; $4496: $0d
	dec  c                                           ; $4497: $0d
	inc  bc                                          ; $4498: $03
	inc  bc                                          ; $4499: $03
	inc  bc                                          ; $449a: $03
	inc  bc                                          ; $449b: $03
	dec  c                                           ; $449c: $0d
	dec  c                                           ; $449d: $0d
	dec  c                                           ; $449e: $0d
	dec  c                                           ; $449f: $0d
	dec  c                                           ; $44a0: $0d
	dec  c                                           ; $44a1: $0d
	dec  c                                           ; $44a2: $0d
	dec  c                                           ; $44a3: $0d
	dec  c                                           ; $44a4: $0d
	dec  c                                           ; $44a5: $0d
	dec  c                                           ; $44a6: $0d
	dec  c                                           ; $44a7: $0d
	dec  c                                           ; $44a8: $0d
	dec  c                                           ; $44a9: $0d
	dec  c                                           ; $44aa: $0d
	dec  c                                           ; $44ab: $0d
	dec  b                                           ; $44ac: $05
	inc  bc                                          ; $44ad: $03
	inc  bc                                          ; $44ae: $03
	inc  bc                                          ; $44af: $03
	nop                                              ; $44b0: $00
	ld   bc, $032f                                   ; $44b1: $01 $2f $03
	inc  b                                           ; $44b4: $04
	dec  b                                           ; $44b5: $05
	ld   b, $07                                      ; $44b6: $06 $07
	dec  a                                           ; $44b8: $3d
	ld   a, $3f                                      ; $44b9: $3e $3f
	ld   b, b                                        ; $44bb: $40
	inc  c                                           ; $44bc: $0c
	dec  c                                           ; $44bd: $0d
	ld   c, $0f                                      ; $44be: $0e $0f
	inc  l                                           ; $44c0: $2c
	dec  l                                           ; $44c1: $2d
	ld   l, $16                                      ; $44c2: $2e $16
	db   $10                                         ; $44c4: $10
	ld   sp, $1330                                   ; $44c5: $31 $30 $13
	inc  d                                           ; $44c8: $14
	dec  d                                           ; $44c9: $15
	ld   d, $17                                      ; $44ca: $16 $17
	ld   b, c                                        ; $44cc: $41
	ld   b, d                                        ; $44cd: $42
	ld   b, e                                        ; $44ce: $43
	ld   b, h                                        ; $44cf: $44
	inc  e                                           ; $44d0: $1c
	dec  e                                           ; $44d1: $1d
	ld   e, $1f                                      ; $44d2: $1e $1f
	add  hl, hl                                      ; $44d4: $29
	ld   a, [hl+]                                    ; $44d5: $2a
	dec  hl                                          ; $44d6: $2b
	ld   d, $10                                      ; $44d7: $16 $10
	ld   sp, $2332                                   ; $44d9: $31 $32 $23
	inc  h                                           ; $44dc: $24
	ld   d, $16                                      ; $44dd: $16 $16
	rla                                              ; $44df: $17
	ld   sp, $4645                                   ; $44e0: $31 $45 $46
	ld   b, h                                        ; $44e3: $44
	inc  l                                           ; $44e4: $2c
	dec  l                                           ; $44e5: $2d
	ld   l, $2f                                      ; $44e6: $2e $2f
	ld   h, $27                                      ; $44e8: $26 $27
	jr   z, jr_082_4502                              ; $44ea: $28 $16

	db   $10                                         ; $44ec: $10
	inc  sp                                          ; $44ed: $33
	inc  [hl]                                        ; $44ee: $34
	inc  sp                                          ; $44ef: $33
	ld   d, e                                        ; $44f0: $53
	ld   d, h                                        ; $44f1: $54
	ld   d, l                                        ; $44f2: $55
	ld   d, [hl]                                     ; $44f3: $56
	ld   b, a                                        ; $44f4: $47
	ld   c, b                                        ; $44f5: $48
	ld   c, c                                        ; $44f6: $49
	ld   c, d                                        ; $44f7: $4a
	inc  a                                           ; $44f8: $3c
	dec  a                                           ; $44f9: $3d
	ld   a, $3f                                      ; $44fa: $3e $3f
	ld   [hl+], a                                    ; $44fc: $22
	inc  hl                                          ; $44fd: $23
	inc  h                                           ; $44fe: $24
	dec  h                                           ; $44ff: $25
	ld   b, b                                        ; $4500: $40
	dec  [hl]                                        ; $4501: $35

jr_082_4502:
	ld   [hl], $43                                   ; $4502: $36 $43
	ld   a, $58                                      ; $4504: $3e $58
	ld   d, $59                                      ; $4506: $16 $59
	ld   c, h                                        ; $4508: $4c
	ld   c, l                                        ; $4509: $4d
	ld   c, [hl]                                     ; $450a: $4e
	ld   c, a                                        ; $450b: $4f
	ld   c, h                                        ; $450c: $4c
	ld   c, l                                        ; $450d: $4d
	ld   c, [hl]                                     ; $450e: $4e
	ld   c, a                                        ; $450f: $4f
	jr   nz, jr_082_4533                             ; $4510: $20 $21

	ld   e, $1c                                      ; $4512: $1e $1c
	ld   d, b                                        ; $4514: $50
	ld   a, h                                        ; $4515: $7c
	ld   a, l                                        ; $4516: $7d
	ld   e, h                                        ; $4517: $5c
	ld   e, l                                        ; $4518: $5d
	ld   e, [hl]                                     ; $4519: $5e
	ld   e, a                                        ; $451a: $5f
	ld   h, b                                        ; $451b: $60
	ld   d, b                                        ; $451c: $50
	ld   d, c                                        ; $451d: $51
	ld   d, d                                        ; $451e: $52
	ld   e, e                                        ; $451f: $5b
	ld   e, h                                        ; $4520: $5c
	ld   e, l                                        ; $4521: $5d
	ld   e, [hl]                                     ; $4522: $5e
	ld   e, a                                        ; $4523: $5f
	dec  d                                           ; $4524: $15
	ld   d, $17                                      ; $4525: $16 $17
	jr   jr_082_4579                                 ; $4527: $18 $50

	ld   a, [hl]                                     ; $4529: $7e
	ld   h, d                                        ; $452a: $62
	ld   h, e                                        ; $452b: $63
	ld   h, h                                        ; $452c: $64
	ld   h, l                                        ; $452d: $65
	ld   h, [hl]                                     ; $452e: $66
	ld   h, a                                        ; $452f: $67
	ld   l, b                                        ; $4530: $68
	ld   l, c                                        ; $4531: $69
	ld   l, d                                        ; $4532: $6a

jr_082_4533:
	ld   l, e                                        ; $4533: $6b
	ld   l, h                                        ; $4534: $6c
	ld   l, l                                        ; $4535: $6d
	ld   l, [hl]                                     ; $4536: $6e
	ld   l, a                                        ; $4537: $6f
	ld   [de], a                                     ; $4538: $12
	inc  de                                          ; $4539: $13
	inc  d                                           ; $453a: $14
	ld   b, $6b                                      ; $453b: $06 $6b
	ld   l, h                                        ; $453d: $6c
	ld   l, l                                        ; $453e: $6d
	ld   l, [hl]                                     ; $453f: $6e
	ld   l, a                                        ; $4540: $6f
	ld   [hl], b                                     ; $4541: $70
	ld   [hl], c                                     ; $4542: $71
	ld   [hl], d                                     ; $4543: $72
	ld   [hl], e                                     ; $4544: $73
	ld   [hl], h                                     ; $4545: $74
	ld   [hl], l                                     ; $4546: $75
	ld   a, d                                        ; $4547: $7a
	ld   a, h                                        ; $4548: $7c
	ld   a, l                                        ; $4549: $7d
	ld   a, [hl]                                     ; $454a: $7e
	ld   a, a                                        ; $454b: $7f
	ld   [bc], a                                     ; $454c: $02
	ld   a, e                                        ; $454d: $7b
	ld   [hl], b                                     ; $454e: $70
	ld   h, b                                        ; $454f: $60
	halt                                             ; $4550: $76
	ld   [hl], a                                     ; $4551: $77
	ld   a, b                                        ; $4552: $78
	ld   a, b                                        ; $4553: $78
	ld   a, b                                        ; $4554: $78
	ld   a, b                                        ; $4555: $78
	ld   a, b                                        ; $4556: $78
	ld   a, c                                        ; $4557: $79
	ld   a, d                                        ; $4558: $7a
	add  hl, bc                                      ; $4559: $09
	ld   a, [bc]                                     ; $455a: $0a
	dec  bc                                          ; $455b: $0b
	inc  c                                           ; $455c: $0c
	dec  c                                           ; $455d: $0d
	ld   c, $0f                                      ; $455e: $0e $0f
	jr   nz, jr_082_4587                             ; $4560: $20 $25

	ld   h, $27                                      ; $4562: $26 $27
	db   $10                                         ; $4564: $10
	ld   de, $1111                                   ; $4565: $11 $11 $11
	ld   de, $1111                                   ; $4568: $11 $11 $11
	ld   de, $1911                                   ; $456b: $11 $11 $19
	ld   a, [de]                                     ; $456e: $1a
	dec  de                                          ; $456f: $1b
	dec  de                                          ; $4570: $1b
	dec  e                                           ; $4571: $1d
	dec  e                                           ; $4572: $1d
	rra                                              ; $4573: $1f
	jr   nc, jr_082_45ab                             ; $4574: $30 $35

	ld   [hl], $37                                   ; $4576: $36 $37
	inc  b                                           ; $4578: $04

jr_082_4579:
	inc  b                                           ; $4579: $04
	inc  c                                           ; $457a: $0c
	inc  b                                           ; $457b: $04
	inc  b                                           ; $457c: $04
	inc  b                                           ; $457d: $04
	inc  b                                           ; $457e: $04
	inc  b                                           ; $457f: $04
	inc  c                                           ; $4580: $0c
	inc  c                                           ; $4581: $0c
	inc  c                                           ; $4582: $0c
	inc  c                                           ; $4583: $0c
	inc  b                                           ; $4584: $04
	inc  b                                           ; $4585: $04
	inc  b                                           ; $4586: $04

jr_082_4587:
	inc  b                                           ; $4587: $04
	dec  bc                                          ; $4588: $0b
	dec  bc                                          ; $4589: $0b
	dec  bc                                          ; $458a: $0b
	inc  b                                           ; $458b: $04
	inc  b                                           ; $458c: $04
	inc  c                                           ; $458d: $0c
	inc  c                                           ; $458e: $0c
	inc  b                                           ; $458f: $04
	inc  b                                           ; $4590: $04
	inc  b                                           ; $4591: $04
	inc  b                                           ; $4592: $04
	inc  b                                           ; $4593: $04
	inc  c                                           ; $4594: $0c
	inc  c                                           ; $4595: $0c
	inc  c                                           ; $4596: $0c
	inc  c                                           ; $4597: $0c
	inc  bc                                          ; $4598: $03
	inc  b                                           ; $4599: $04
	inc  b                                           ; $459a: $04
	inc  b                                           ; $459b: $04
	dec  bc                                          ; $459c: $0b
	dec  bc                                          ; $459d: $0b
	dec  bc                                          ; $459e: $0b
	inc  b                                           ; $459f: $04
	inc  b                                           ; $45a0: $04
	inc  c                                           ; $45a1: $0c
	inc  c                                           ; $45a2: $0c
	inc  b                                           ; $45a3: $04
	inc  b                                           ; $45a4: $04
	inc  b                                           ; $45a5: $04
	inc  b                                           ; $45a6: $04
	inc  b                                           ; $45a7: $04
	inc  c                                           ; $45a8: $0c
	inc  c                                           ; $45a9: $0c
	inc  c                                           ; $45aa: $0c

jr_082_45ab:
	inc  c                                           ; $45ab: $0c
	inc  bc                                          ; $45ac: $03
	inc  bc                                          ; $45ad: $03
	inc  b                                           ; $45ae: $04
	inc  b                                           ; $45af: $04
	dec  bc                                          ; $45b0: $0b
	dec  bc                                          ; $45b1: $0b
	dec  bc                                          ; $45b2: $0b
	inc  b                                           ; $45b3: $04
	inc  b                                           ; $45b4: $04
	inc  c                                           ; $45b5: $0c
	inc  c                                           ; $45b6: $0c
	inc  bc                                          ; $45b7: $03
	dec  bc                                          ; $45b8: $0b
	dec  bc                                          ; $45b9: $0b
	dec  bc                                          ; $45ba: $0b
	dec  bc                                          ; $45bb: $0b
	inc  c                                           ; $45bc: $0c
	inc  c                                           ; $45bd: $0c
	inc  c                                           ; $45be: $0c
	inc  c                                           ; $45bf: $0c
	inc  bc                                          ; $45c0: $03
	inc  bc                                          ; $45c1: $03
	inc  bc                                          ; $45c2: $03
	inc  bc                                          ; $45c3: $03
	dec  bc                                          ; $45c4: $0b
	dec  bc                                          ; $45c5: $0b
	dec  bc                                          ; $45c6: $0b
	dec  bc                                          ; $45c7: $0b
	inc  bc                                          ; $45c8: $03
	inc  c                                           ; $45c9: $0c
	inc  c                                           ; $45ca: $0c
	inc  bc                                          ; $45cb: $03
	inc  bc                                          ; $45cc: $03
	dec  bc                                          ; $45cd: $0b
	inc  b                                           ; $45ce: $04
	dec  bc                                          ; $45cf: $0b
	inc  c                                           ; $45d0: $0c
	inc  c                                           ; $45d1: $0c
	inc  c                                           ; $45d2: $0c
	inc  c                                           ; $45d3: $0c
	inc  bc                                          ; $45d4: $03
	inc  bc                                          ; $45d5: $03
	inc  bc                                          ; $45d6: $03
	inc  bc                                          ; $45d7: $03
	dec  bc                                          ; $45d8: $0b
	dec  bc                                          ; $45d9: $0b
	dec  bc                                          ; $45da: $0b
	dec  bc                                          ; $45db: $0b
	inc  bc                                          ; $45dc: $03
	inc  c                                           ; $45dd: $0c
	inc  c                                           ; $45de: $0c
	inc  c                                           ; $45df: $0c
	dec  bc                                          ; $45e0: $0b
	dec  bc                                          ; $45e1: $0b
	dec  bc                                          ; $45e2: $0b
	dec  bc                                          ; $45e3: $0b
	inc  c                                           ; $45e4: $0c
	inc  c                                           ; $45e5: $0c
	inc  c                                           ; $45e6: $0c
	inc  b                                           ; $45e7: $04
	inc  bc                                          ; $45e8: $03
	inc  bc                                          ; $45e9: $03
	inc  bc                                          ; $45ea: $03
	inc  bc                                          ; $45eb: $03
	dec  bc                                          ; $45ec: $0b
	dec  bc                                          ; $45ed: $0b
	dec  bc                                          ; $45ee: $0b
	dec  bc                                          ; $45ef: $0b
	inc  bc                                          ; $45f0: $03
	inc  c                                           ; $45f1: $0c
	inc  c                                           ; $45f2: $0c
	inc  c                                           ; $45f3: $0c
	dec  bc                                          ; $45f4: $0b
	dec  bc                                          ; $45f5: $0b
	dec  bc                                          ; $45f6: $0b
	dec  bc                                          ; $45f7: $0b
	dec  c                                           ; $45f8: $0d
	dec  c                                           ; $45f9: $0d
	dec  c                                           ; $45fa: $0d
	dec  b                                           ; $45fb: $05
	dec  b                                           ; $45fc: $05
	dec  b                                           ; $45fd: $05
	inc  bc                                          ; $45fe: $03
	inc  bc                                          ; $45ff: $03
	dec  bc                                          ; $4600: $0b
	dec  c                                           ; $4601: $0d
	dec  bc                                          ; $4602: $0b
	dec  bc                                          ; $4603: $0b
	dec  bc                                          ; $4604: $0b
	dec  bc                                          ; $4605: $0b
	dec  bc                                          ; $4606: $0b
	dec  bc                                          ; $4607: $0b
	dec  bc                                          ; $4608: $0b
	dec  bc                                          ; $4609: $0b
	dec  bc                                          ; $460a: $0b
	dec  bc                                          ; $460b: $0b
	dec  c                                           ; $460c: $0d
	dec  c                                           ; $460d: $0d
	dec  c                                           ; $460e: $0d
	dec  b                                           ; $460f: $05
	dec  b                                           ; $4610: $05
	dec  b                                           ; $4611: $05
	dec  b                                           ; $4612: $05
	inc  bc                                          ; $4613: $03
	dec  bc                                          ; $4614: $0b
	inc  bc                                          ; $4615: $03
	inc  bc                                          ; $4616: $03
	inc  bc                                          ; $4617: $03
	dec  bc                                          ; $4618: $0b
	dec  bc                                          ; $4619: $0b
	dec  bc                                          ; $461a: $0b
	dec  bc                                          ; $461b: $0b
	dec  bc                                          ; $461c: $0b
	dec  bc                                          ; $461d: $0b
	dec  bc                                          ; $461e: $0b
	dec  bc                                          ; $461f: $0b
	dec  c                                           ; $4620: $0d
	dec  c                                           ; $4621: $0d
	dec  c                                           ; $4622: $0d
	dec  c                                           ; $4623: $0d
	dec  c                                           ; $4624: $0d
	dec  c                                           ; $4625: $0d
	dec  c                                           ; $4626: $0d
	dec  c                                           ; $4627: $0d
	inc  bc                                          ; $4628: $03
	inc  bc                                          ; $4629: $03
	inc  bc                                          ; $462a: $03
	inc  bc                                          ; $462b: $03
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
	dec  b                                           ; $463c: $05
	inc  bc                                          ; $463d: $03
	inc  bc                                          ; $463e: $03
	inc  bc                                          ; $463f: $03
	nop                                              ; $4640: $00
	ld   bc, $0302                                   ; $4641: $01 $02 $03
	inc  b                                           ; $4644: $04
	dec  b                                           ; $4645: $05
	dec  b                                           ; $4646: $05
	dec  b                                           ; $4647: $05
	dec  b                                           ; $4648: $05
	add  hl, bc                                      ; $4649: $09
	ld   a, [bc]                                     ; $464a: $0a
	dec  b                                           ; $464b: $05
	dec  b                                           ; $464c: $05
	dec  b                                           ; $464d: $05
	dec  b                                           ; $464e: $05
	dec  b                                           ; $464f: $05
	nop                                              ; $4650: $00
	ld   bc, $0302                                   ; $4651: $01 $02 $03
	db   $10                                         ; $4654: $10
	ld   de, $1312                                   ; $4655: $11 $12 $13
	inc  d                                           ; $4658: $14
	dec  d                                           ; $4659: $15
	ld   d, $16                                      ; $465a: $16 $16
	ld   d, $19                                      ; $465c: $16 $19
	ld   a, [de]                                     ; $465e: $1a
	ld   d, $16                                      ; $465f: $16 $16
	ld   d, $1e                                      ; $4661: $16 $1e
	rra                                              ; $4663: $1f
	db   $10                                         ; $4664: $10
	ld   de, $1312                                   ; $4665: $11 $12 $13
	jr   nz, @+$23                                   ; $4668: $20 $21

	ld   [hl+], a                                    ; $466a: $22
	inc  hl                                          ; $466b: $23
	inc  h                                           ; $466c: $24
	dec  h                                           ; $466d: $25
	ld   h, $27                                      ; $466e: $26 $27
	jr   z, jr_082_469b                              ; $4670: $28 $29

	ld   a, [hl+]                                    ; $4672: $2a
	dec  hl                                          ; $4673: $2b
	inc  l                                           ; $4674: $2c
	dec  l                                           ; $4675: $2d
	ld   l, $2f                                      ; $4676: $2e $2f
	inc  b                                           ; $4678: $04
	dec  b                                           ; $4679: $05
	ld   b, $07                                      ; $467a: $06 $07
	jr   nc, jr_082_46af                             ; $467c: $30 $31

	ld   [hl-], a                                    ; $467e: $32
	inc  sp                                          ; $467f: $33
	inc  [hl]                                        ; $4680: $34
	dec  [hl]                                        ; $4681: $35
	ld   [hl], $37                                   ; $4682: $36 $37
	jr   c, jr_082_46bf                              ; $4684: $38 $39

	ld   a, [hl-]                                    ; $4686: $3a
	dec  sp                                          ; $4687: $3b
	inc  a                                           ; $4688: $3c
	dec  a                                           ; $4689: $3d
	ld   a, $3f                                      ; $468a: $3e $3f
	inc  d                                           ; $468c: $14
	dec  d                                           ; $468d: $15
	ld   d, $17                                      ; $468e: $16 $17
	ld   b, b                                        ; $4690: $40
	ld   b, c                                        ; $4691: $41
	ld   b, d                                        ; $4692: $42
	ld   b, e                                        ; $4693: $43
	inc  [hl]                                        ; $4694: $34
	ld   b, l                                        ; $4695: $45
	ld   b, [hl]                                     ; $4696: $46
	ld   b, a                                        ; $4697: $47
	ld   c, b                                        ; $4698: $48
	ld   c, c                                        ; $4699: $49
	ld   c, d                                        ; $469a: $4a

jr_082_469b:
	ld   c, e                                        ; $469b: $4b
	ld   c, h                                        ; $469c: $4c
	ld   c, l                                        ; $469d: $4d
	ld   c, [hl]                                     ; $469e: $4e
	ld   c, a                                        ; $469f: $4f
	ld   [$0a09], sp                                 ; $46a0: $08 $09 $0a
	dec  bc                                          ; $46a3: $0b
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

jr_082_46af:
	ld   e, e                                        ; $46af: $5b
	ld   e, h                                        ; $46b0: $5c
	ld   e, l                                        ; $46b1: $5d
	ld   e, [hl]                                     ; $46b2: $5e
	ld   e, a                                        ; $46b3: $5f
	jr   jr_082_46cf                                 ; $46b4: $18 $19

	ld   a, [de]                                     ; $46b6: $1a
	dec  de                                          ; $46b7: $1b
	ld   h, b                                        ; $46b8: $60
	ld   h, c                                        ; $46b9: $61
	ld   h, d                                        ; $46ba: $62
	ld   h, e                                        ; $46bb: $63
	ld   h, h                                        ; $46bc: $64
	ld   h, l                                        ; $46bd: $65
	ld   h, [hl]                                     ; $46be: $66

jr_082_46bf:
	ld   h, h                                        ; $46bf: $64
	ld   l, b                                        ; $46c0: $68
	ld   l, c                                        ; $46c1: $69
	ld   l, d                                        ; $46c2: $6a
	ld   l, e                                        ; $46c3: $6b
	ld   h, h                                        ; $46c4: $64
	ld   l, l                                        ; $46c5: $6d
	ld   l, [hl]                                     ; $46c6: $6e
	ld   l, a                                        ; $46c7: $6f
	inc  c                                           ; $46c8: $0c
	dec  c                                           ; $46c9: $0d
	ld   c, $0f                                      ; $46ca: $0e $0f
	ld   [hl], b                                     ; $46cc: $70
	ld   [hl], c                                     ; $46cd: $71
	ld   [hl], d                                     ; $46ce: $72

jr_082_46cf:
	ld   [hl], e                                     ; $46cf: $73
	ld   [hl], h                                     ; $46d0: $74
	ld   [hl], l                                     ; $46d1: $75
	halt                                             ; $46d2: $76
	ld   [hl], h                                     ; $46d3: $74
	ld   a, b                                        ; $46d4: $78
	ld   a, c                                        ; $46d5: $79
	ld   a, d                                        ; $46d6: $7a
	ld   a, e                                        ; $46d7: $7b
	ld   [hl], h                                     ; $46d8: $74
	ld   a, l                                        ; $46d9: $7d
	ld   a, [hl]                                     ; $46da: $7e
	ld   a, a                                        ; $46db: $7f
	inc  e                                           ; $46dc: $1c
	dec  e                                           ; $46dd: $1d
	ld   e, $1f                                      ; $46de: $1e $1f
	ld   b, $07                                      ; $46e0: $06 $07
	ld   [$0c0b], sp                                 ; $46e2: $08 $0b $0c
	dec  c                                           ; $46e5: $0d
	ld   c, $0f                                      ; $46e6: $0e $0f
	rla                                              ; $46e8: $17
	jr   jr_082_4706                                 ; $46e9: $18 $1b

	inc  e                                           ; $46eb: $1c
	rrca                                             ; $46ec: $0f
	dec  e                                           ; $46ed: $1d
	ld   b, h                                        ; $46ee: $44
	ld   b, h                                        ; $46ef: $44
	jr   nz, jr_082_4713                             ; $46f0: $20 $21

	ld   [hl+], a                                    ; $46f2: $22
	inc  hl                                          ; $46f3: $23
	ld   h, a                                        ; $46f4: $67
	ld   l, h                                        ; $46f5: $6c
	ld   [hl], a                                     ; $46f6: $77
	ld   a, h                                        ; $46f7: $7c
	jr   z, jr_082_4709                              ; $46f8: $28 $0f

	rrca                                             ; $46fa: $0f
	rrca                                             ; $46fb: $0f
	rrca                                             ; $46fc: $0f
	rrca                                             ; $46fd: $0f
	rrca                                             ; $46fe: $0f
	rrca                                             ; $46ff: $0f
	rrca                                             ; $4700: $0f
	rrca                                             ; $4701: $0f
	rrca                                             ; $4702: $0f
	rrca                                             ; $4703: $0f
	inc  h                                           ; $4704: $24
	dec  h                                           ; $4705: $25

jr_082_4706:
	ld   h, $27                                      ; $4706: $26 $27
	inc  bc                                          ; $4708: $03

jr_082_4709:
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

jr_082_4713:
	inc  bc                                          ; $4713: $03
	inc  bc                                          ; $4714: $03
	inc  bc                                          ; $4715: $03
	inc  bc                                          ; $4716: $03
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
	inc  b                                           ; $4735: $04
	inc  b                                           ; $4736: $04
	inc  b                                           ; $4737: $04
	inc  b                                           ; $4738: $04
	inc  b                                           ; $4739: $04
	inc  b                                           ; $473a: $04
	inc  b                                           ; $473b: $04
	inc  b                                           ; $473c: $04
	inc  b                                           ; $473d: $04
	inc  b                                           ; $473e: $04
	inc  bc                                          ; $473f: $03
	dec  bc                                          ; $4740: $0b
	dec  bc                                          ; $4741: $0b
	dec  bc                                          ; $4742: $0b
	dec  bc                                          ; $4743: $0b
	dec  b                                           ; $4744: $05
	dec  b                                           ; $4745: $05
	inc  b                                           ; $4746: $04
	inc  bc                                          ; $4747: $03
	inc  bc                                          ; $4748: $03
	inc  b                                           ; $4749: $04
	inc  b                                           ; $474a: $04
	inc  b                                           ; $474b: $04
	inc  b                                           ; $474c: $04
	inc  b                                           ; $474d: $04
	inc  b                                           ; $474e: $04
	inc  b                                           ; $474f: $04
	inc  b                                           ; $4750: $04
	inc  b                                           ; $4751: $04
	inc  bc                                          ; $4752: $03
	inc  bc                                          ; $4753: $03
	dec  bc                                          ; $4754: $0b
	dec  bc                                          ; $4755: $0b
	dec  bc                                          ; $4756: $0b
	dec  bc                                          ; $4757: $0b
	dec  b                                           ; $4758: $05
	dec  b                                           ; $4759: $05
	inc  b                                           ; $475a: $04
	inc  bc                                          ; $475b: $03
	inc  bc                                          ; $475c: $03
	inc  b                                           ; $475d: $04
	inc  b                                           ; $475e: $04
	inc  b                                           ; $475f: $04
	inc  b                                           ; $4760: $04
	inc  b                                           ; $4761: $04
	inc  b                                           ; $4762: $04
	inc  b                                           ; $4763: $04
	inc  b                                           ; $4764: $04
	inc  b                                           ; $4765: $04
	inc  bc                                          ; $4766: $03
	inc  bc                                          ; $4767: $03
	dec  bc                                          ; $4768: $0b
	dec  bc                                          ; $4769: $0b
	dec  bc                                          ; $476a: $0b
	dec  bc                                          ; $476b: $0b
	dec  b                                           ; $476c: $05
	dec  b                                           ; $476d: $05
	inc  b                                           ; $476e: $04
	inc  b                                           ; $476f: $04
	inc  b                                           ; $4770: $04
	inc  b                                           ; $4771: $04
	inc  b                                           ; $4772: $04
	inc  b                                           ; $4773: $04
	inc  b                                           ; $4774: $04
	inc  b                                           ; $4775: $04
	inc  b                                           ; $4776: $04
	inc  b                                           ; $4777: $04
	inc  b                                           ; $4778: $04
	inc  b                                           ; $4779: $04
	inc  bc                                          ; $477a: $03
	inc  bc                                          ; $477b: $03
	dec  bc                                          ; $477c: $0b
	dec  bc                                          ; $477d: $0b
	dec  c                                           ; $477e: $0d
	dec  c                                           ; $477f: $0d
	dec  b                                           ; $4780: $05
	dec  b                                           ; $4781: $05
	inc  b                                           ; $4782: $04
	inc  b                                           ; $4783: $04
	inc  bc                                          ; $4784: $03
	inc  b                                           ; $4785: $04
	inc  b                                           ; $4786: $04
	inc  bc                                          ; $4787: $03
	inc  b                                           ; $4788: $04
	inc  b                                           ; $4789: $04
	inc  b                                           ; $478a: $04
	inc  b                                           ; $478b: $04
	inc  bc                                          ; $478c: $03
	inc  bc                                          ; $478d: $03
	inc  bc                                          ; $478e: $03
	inc  bc                                          ; $478f: $03
	dec  bc                                          ; $4790: $0b
	dec  bc                                          ; $4791: $0b
	dec  bc                                          ; $4792: $0b
	dec  bc                                          ; $4793: $0b
	dec  b                                           ; $4794: $05
	inc  bc                                          ; $4795: $03
	inc  b                                           ; $4796: $04
	inc  b                                           ; $4797: $04
	inc  bc                                          ; $4798: $03
	inc  b                                           ; $4799: $04
	inc  b                                           ; $479a: $04
	inc  bc                                          ; $479b: $03
	inc  b                                           ; $479c: $04
	inc  b                                           ; $479d: $04
	inc  b                                           ; $479e: $04
	inc  b                                           ; $479f: $04
	inc  bc                                          ; $47a0: $03
	inc  bc                                          ; $47a1: $03
	inc  bc                                          ; $47a2: $03
	inc  bc                                          ; $47a3: $03
	dec  bc                                          ; $47a4: $0b
	dec  bc                                          ; $47a5: $0b
	dec  bc                                          ; $47a6: $0b
	dec  bc                                          ; $47a7: $0b
	inc  bc                                          ; $47a8: $03
	inc  bc                                          ; $47a9: $03
	inc  bc                                          ; $47aa: $03
	inc  bc                                          ; $47ab: $03
	inc  bc                                          ; $47ac: $03
	dec  b                                           ; $47ad: $05
	dec  b                                           ; $47ae: $05
	dec  b                                           ; $47af: $05
	dec  b                                           ; $47b0: $05
	dec  b                                           ; $47b1: $05
	dec  b                                           ; $47b2: $05
	dec  b                                           ; $47b3: $05
	dec  b                                           ; $47b4: $05
	dec  b                                           ; $47b5: $05
	dec  b                                           ; $47b6: $05
	dec  b                                           ; $47b7: $05
	dec  c                                           ; $47b8: $0d
	dec  bc                                          ; $47b9: $0b
	dec  bc                                          ; $47ba: $0b
	dec  bc                                          ; $47bb: $0b
	dec  b                                           ; $47bc: $05
	dec  b                                           ; $47bd: $05
	dec  b                                           ; $47be: $05
	dec  b                                           ; $47bf: $05
	dec  c                                           ; $47c0: $0d
	dec  b                                           ; $47c1: $05
	dec  b                                           ; $47c2: $05
	dec  b                                           ; $47c3: $05
	dec  b                                           ; $47c4: $05
	dec  b                                           ; $47c5: $05
	dec  b                                           ; $47c6: $05
	dec  b                                           ; $47c7: $05
	dec  b                                           ; $47c8: $05
	dec  b                                           ; $47c9: $05
	dec  b                                           ; $47ca: $05
	dec  b                                           ; $47cb: $05
	dec  c                                           ; $47cc: $0d
	dec  c                                           ; $47cd: $0d
	dec  c                                           ; $47ce: $0d
	dec  c                                           ; $47cf: $0d
	nop                                              ; $47d0: $00
	ld   bc, $0302                                   ; $47d1: $01 $02 $03
	inc  b                                           ; $47d4: $04
	dec  b                                           ; $47d5: $05
	dec  b                                           ; $47d6: $05
	dec  b                                           ; $47d7: $05
	dec  b                                           ; $47d8: $05
	add  hl, bc                                      ; $47d9: $09
	ld   a, [bc]                                     ; $47da: $0a
	dec  b                                           ; $47db: $05
	dec  b                                           ; $47dc: $05
	dec  b                                           ; $47dd: $05
	dec  b                                           ; $47de: $05
	dec  b                                           ; $47df: $05
	nop                                              ; $47e0: $00
	ld   bc, $0302                                   ; $47e1: $01 $02 $03
	db   $10                                         ; $47e4: $10
	ld   de, $1312                                   ; $47e5: $11 $12 $13
	inc  d                                           ; $47e8: $14
	dec  d                                           ; $47e9: $15
	ld   d, $16                                      ; $47ea: $16 $16
	ld   d, $60                                      ; $47ec: $16 $60
	ld   h, c                                        ; $47ee: $61
	ld   d, $16                                      ; $47ef: $16 $16
	ld   d, $1e                                      ; $47f1: $16 $1e
	rra                                              ; $47f3: $1f
	db   $10                                         ; $47f4: $10
	ld   de, $1312                                   ; $47f5: $11 $12 $13
	jr   nz, @+$23                                   ; $47f8: $20 $21

	ld   [hl+], a                                    ; $47fa: $22
	inc  hl                                          ; $47fb: $23
	inc  h                                           ; $47fc: $24
	add  hl, hl                                      ; $47fd: $29
	ld   a, [hl+]                                    ; $47fe: $2a
	dec  hl                                          ; $47ff: $2b
	inc  l                                           ; $4800: $2c
	dec  l                                           ; $4801: $2d
	ld   c, c                                        ; $4802: $49
	ld   c, d                                        ; $4803: $4a
	ld   c, e                                        ; $4804: $4b
	ld   c, h                                        ; $4805: $4c
	ld   c, l                                        ; $4806: $4d
	cpl                                              ; $4807: $2f
	inc  b                                           ; $4808: $04
	dec  b                                           ; $4809: $05
	ld   b, $07                                      ; $480a: $06 $07
	jr   nc, jr_082_483f                             ; $480c: $30 $31

	ld   [hl-], a                                    ; $480e: $32
	inc  sp                                          ; $480f: $33
	inc  [hl]                                        ; $4810: $34
	ld   l, $2f                                      ; $4811: $2e $2f
	jr   nc, jr_082_4846                             ; $4813: $30 $31

	ld   [hl-], a                                    ; $4815: $32
	ld   c, [hl]                                     ; $4816: $4e
	ld   c, a                                        ; $4817: $4f
	ld   d, b                                        ; $4818: $50
	ld   d, c                                        ; $4819: $51
	ld   a, $3f                                      ; $481a: $3e $3f
	inc  d                                           ; $481c: $14
	dec  d                                           ; $481d: $15
	ld   d, $17                                      ; $481e: $16 $17
	ld   b, b                                        ; $4820: $40
	ld   b, c                                        ; $4821: $41
	ld   b, d                                        ; $4822: $42
	ld   b, e                                        ; $4823: $43
	inc  [hl]                                        ; $4824: $34
	inc  sp                                          ; $4825: $33
	inc  [hl]                                        ; $4826: $34
	jr   nc, jr_082_485e                             ; $4827: $30 $35

	ld   [hl-], a                                    ; $4829: $32
	ld   c, [hl]                                     ; $482a: $4e
	ld   d, d                                        ; $482b: $52
	ld   d, b                                        ; $482c: $50
	ld   d, e                                        ; $482d: $53
	ld   c, [hl]                                     ; $482e: $4e
	ld   c, a                                        ; $482f: $4f
	ld   [$0a09], sp                                 ; $4830: $08 $09 $0a
	dec  bc                                          ; $4833: $0b
	ld   d, b                                        ; $4834: $50
	ld   d, c                                        ; $4835: $51
	ld   d, d                                        ; $4836: $52
	ld   d, e                                        ; $4837: $53
	ld   d, h                                        ; $4838: $54
	ld   [hl], $37                                   ; $4839: $36 $37
	jr   nc, jr_082_4875                             ; $483b: $30 $38

	add  hl, sp                                      ; $483d: $39
	ld   d, h                                        ; $483e: $54

jr_082_483f:
	ld   d, l                                        ; $483f: $55
	ld   d, b                                        ; $4840: $50
	ld   d, e                                        ; $4841: $53
	ld   e, [hl]                                     ; $4842: $5e
	ld   e, a                                        ; $4843: $5f
	jr   jr_082_485f                                 ; $4844: $18 $19

jr_082_4846:
	ld   a, [de]                                     ; $4846: $1a
	dec  de                                          ; $4847: $1b
	ld   h, b                                        ; $4848: $60
	ld   h, c                                        ; $4849: $61
	ld   h, d                                        ; $484a: $62
	ld   h, e                                        ; $484b: $63
	ld   h, h                                        ; $484c: $64
	ld   a, [hl-]                                    ; $484d: $3a
	dec  sp                                          ; $484e: $3b
	inc  a                                           ; $484f: $3c
	dec  a                                           ; $4850: $3d
	ld   a, $56                                      ; $4851: $3e $56
	ld   d, a                                        ; $4853: $57
	ld   d, b                                        ; $4854: $50
	ld   e, b                                        ; $4855: $58
	ld   l, [hl]                                     ; $4856: $6e
	ld   l, a                                        ; $4857: $6f
	inc  c                                           ; $4858: $0c
	dec  c                                           ; $4859: $0d
	ld   c, $0f                                      ; $485a: $0e $0f
	ld   [hl], b                                     ; $485c: $70
	ld   [hl], c                                     ; $485d: $71

jr_082_485e:
	ld   [hl], d                                     ; $485e: $72

jr_082_485f:
	ld   [hl], e                                     ; $485f: $73
	ld   [hl], h                                     ; $4860: $74
	ccf                                              ; $4861: $3f
	ld   b, b                                        ; $4862: $40
	ld   b, c                                        ; $4863: $41
	ld   b, d                                        ; $4864: $42
	ld   b, e                                        ; $4865: $43
	ld   e, c                                        ; $4866: $59
	ld   e, d                                        ; $4867: $5a
	ld   d, b                                        ; $4868: $50
	ld   e, e                                        ; $4869: $5b
	ld   a, [hl]                                     ; $486a: $7e
	ld   a, a                                        ; $486b: $7f
	inc  e                                           ; $486c: $1c
	dec  e                                           ; $486d: $1d
	ld   e, $1f                                      ; $486e: $1e $1f
	ld   b, $07                                      ; $4870: $06 $07
	ld   [$0c0b], sp                                 ; $4872: $08 $0b $0c

jr_082_4875:
	ld   b, h                                        ; $4875: $44
	ld   b, l                                        ; $4876: $45
	ld   b, [hl]                                     ; $4877: $46
	ld   b, a                                        ; $4878: $47
	ld   c, b                                        ; $4879: $48
	ld   e, h                                        ; $487a: $5c
	ld   e, l                                        ; $487b: $5d
	ld   e, [hl]                                     ; $487c: $5e
	ld   e, a                                        ; $487d: $5f
	ld   b, h                                        ; $487e: $44
	ld   b, h                                        ; $487f: $44
	jr   nz, jr_082_48a3                             ; $4880: $20 $21

	ld   [hl+], a                                    ; $4882: $22
	inc  hl                                          ; $4883: $23
	ld   h, a                                        ; $4884: $67
	ld   l, h                                        ; $4885: $6c
	ld   [hl], a                                     ; $4886: $77
	ld   a, h                                        ; $4887: $7c
	jr   z, jr_082_4899                              ; $4888: $28 $0f

	rrca                                             ; $488a: $0f
	rrca                                             ; $488b: $0f
	rrca                                             ; $488c: $0f
	rrca                                             ; $488d: $0f
	rrca                                             ; $488e: $0f
	rrca                                             ; $488f: $0f
	rrca                                             ; $4890: $0f
	rrca                                             ; $4891: $0f
	rrca                                             ; $4892: $0f
	rrca                                             ; $4893: $0f
	inc  h                                           ; $4894: $24
	dec  h                                           ; $4895: $25
	ld   h, $27                                      ; $4896: $26 $27
	inc  bc                                          ; $4898: $03

jr_082_4899:
	inc  bc                                          ; $4899: $03
	inc  bc                                          ; $489a: $03
	inc  bc                                          ; $489b: $03
	inc  bc                                          ; $489c: $03
	inc  bc                                          ; $489d: $03
	inc  bc                                          ; $489e: $03
	inc  bc                                          ; $489f: $03
	inc  bc                                          ; $48a0: $03
	inc  bc                                          ; $48a1: $03
	inc  bc                                          ; $48a2: $03

jr_082_48a3:
	inc  bc                                          ; $48a3: $03
	inc  bc                                          ; $48a4: $03
	inc  bc                                          ; $48a5: $03
	inc  bc                                          ; $48a6: $03
	inc  bc                                          ; $48a7: $03
	dec  bc                                          ; $48a8: $0b
	dec  bc                                          ; $48a9: $0b
	dec  bc                                          ; $48aa: $0b
	dec  bc                                          ; $48ab: $0b
	inc  bc                                          ; $48ac: $03
	inc  bc                                          ; $48ad: $03
	inc  bc                                          ; $48ae: $03
	inc  bc                                          ; $48af: $03
	inc  bc                                          ; $48b0: $03
	inc  bc                                          ; $48b1: $03
	inc  bc                                          ; $48b2: $03
	inc  bc                                          ; $48b3: $03
	inc  bc                                          ; $48b4: $03
	dec  bc                                          ; $48b5: $0b
	dec  bc                                          ; $48b6: $0b
	inc  bc                                          ; $48b7: $03
	inc  bc                                          ; $48b8: $03
	inc  bc                                          ; $48b9: $03
	inc  bc                                          ; $48ba: $03
	inc  bc                                          ; $48bb: $03
	dec  bc                                          ; $48bc: $0b
	dec  bc                                          ; $48bd: $0b
	dec  bc                                          ; $48be: $0b
	dec  bc                                          ; $48bf: $0b
	inc  bc                                          ; $48c0: $03
	inc  bc                                          ; $48c1: $03
	inc  bc                                          ; $48c2: $03
	inc  bc                                          ; $48c3: $03
	inc  bc                                          ; $48c4: $03
	inc  c                                           ; $48c5: $0c
	inc  c                                           ; $48c6: $0c
	inc  c                                           ; $48c7: $0c
	inc  c                                           ; $48c8: $0c
	inc  c                                           ; $48c9: $0c
	inc  c                                           ; $48ca: $0c
	inc  c                                           ; $48cb: $0c
	inc  c                                           ; $48cc: $0c
	inc  c                                           ; $48cd: $0c
	inc  c                                           ; $48ce: $0c
	inc  bc                                          ; $48cf: $03
	dec  bc                                          ; $48d0: $0b
	dec  bc                                          ; $48d1: $0b
	dec  bc                                          ; $48d2: $0b
	dec  bc                                          ; $48d3: $0b
	dec  b                                           ; $48d4: $05
	dec  b                                           ; $48d5: $05
	inc  b                                           ; $48d6: $04
	inc  bc                                          ; $48d7: $03
	inc  bc                                          ; $48d8: $03
	inc  c                                           ; $48d9: $0c
	inc  c                                           ; $48da: $0c
	inc  c                                           ; $48db: $0c
	inc  c                                           ; $48dc: $0c
	inc  c                                           ; $48dd: $0c
	inc  c                                           ; $48de: $0c
	inc  c                                           ; $48df: $0c
	inc  c                                           ; $48e0: $0c
	inc  c                                           ; $48e1: $0c
	inc  bc                                          ; $48e2: $03
	inc  bc                                          ; $48e3: $03
	dec  bc                                          ; $48e4: $0b
	dec  bc                                          ; $48e5: $0b
	dec  bc                                          ; $48e6: $0b
	dec  bc                                          ; $48e7: $0b
	dec  b                                           ; $48e8: $05
	dec  b                                           ; $48e9: $05
	inc  b                                           ; $48ea: $04
	inc  bc                                          ; $48eb: $03
	inc  bc                                          ; $48ec: $03
	inc  c                                           ; $48ed: $0c
	inc  c                                           ; $48ee: $0c
	inc  c                                           ; $48ef: $0c
	inc  c                                           ; $48f0: $0c
	inc  c                                           ; $48f1: $0c
	inc  c                                           ; $48f2: $0c
	inc  c                                           ; $48f3: $0c
	inc  c                                           ; $48f4: $0c
	inc  c                                           ; $48f5: $0c
	inc  bc                                          ; $48f6: $03
	inc  bc                                          ; $48f7: $03
	dec  bc                                          ; $48f8: $0b
	dec  bc                                          ; $48f9: $0b
	dec  bc                                          ; $48fa: $0b
	dec  bc                                          ; $48fb: $0b
	dec  b                                           ; $48fc: $05
	dec  b                                           ; $48fd: $05
	inc  b                                           ; $48fe: $04
	inc  b                                           ; $48ff: $04
	inc  b                                           ; $4900: $04
	inc  c                                           ; $4901: $0c
	inc  c                                           ; $4902: $0c
	inc  c                                           ; $4903: $0c
	inc  c                                           ; $4904: $0c
	inc  c                                           ; $4905: $0c
	inc  c                                           ; $4906: $0c
	inc  c                                           ; $4907: $0c
	inc  c                                           ; $4908: $0c
	inc  c                                           ; $4909: $0c
	inc  bc                                          ; $490a: $03
	inc  bc                                          ; $490b: $03
	dec  bc                                          ; $490c: $0b
	dec  bc                                          ; $490d: $0b
	dec  c                                           ; $490e: $0d
	dec  c                                           ; $490f: $0d
	dec  b                                           ; $4910: $05
	dec  b                                           ; $4911: $05
	inc  b                                           ; $4912: $04
	inc  b                                           ; $4913: $04
	inc  bc                                          ; $4914: $03
	inc  c                                           ; $4915: $0c
	inc  c                                           ; $4916: $0c
	inc  c                                           ; $4917: $0c
	inc  c                                           ; $4918: $0c
	inc  c                                           ; $4919: $0c
	inc  c                                           ; $491a: $0c
	inc  c                                           ; $491b: $0c
	inc  c                                           ; $491c: $0c
	inc  c                                           ; $491d: $0c
	inc  bc                                          ; $491e: $03
	inc  bc                                          ; $491f: $03
	dec  bc                                          ; $4920: $0b
	dec  bc                                          ; $4921: $0b
	dec  bc                                          ; $4922: $0b
	dec  bc                                          ; $4923: $0b
	dec  b                                           ; $4924: $05
	inc  bc                                          ; $4925: $03
	inc  b                                           ; $4926: $04
	inc  b                                           ; $4927: $04
	inc  bc                                          ; $4928: $03
	inc  c                                           ; $4929: $0c
	inc  c                                           ; $492a: $0c
	inc  c                                           ; $492b: $0c
	inc  c                                           ; $492c: $0c
	inc  c                                           ; $492d: $0c
	inc  c                                           ; $492e: $0c
	inc  c                                           ; $492f: $0c
	inc  c                                           ; $4930: $0c
	inc  c                                           ; $4931: $0c
	inc  bc                                          ; $4932: $03
	inc  bc                                          ; $4933: $03
	dec  bc                                          ; $4934: $0b
	dec  bc                                          ; $4935: $0b
	dec  bc                                          ; $4936: $0b
	dec  bc                                          ; $4937: $0b
	inc  bc                                          ; $4938: $03
	inc  bc                                          ; $4939: $03
	inc  bc                                          ; $493a: $03
	inc  bc                                          ; $493b: $03
	inc  bc                                          ; $493c: $03
	dec  c                                           ; $493d: $0d
	dec  c                                           ; $493e: $0d
	dec  c                                           ; $493f: $0d
	dec  c                                           ; $4940: $0d
	dec  c                                           ; $4941: $0d
	dec  c                                           ; $4942: $0d
	dec  c                                           ; $4943: $0d
	dec  c                                           ; $4944: $0d
	dec  c                                           ; $4945: $0d
	dec  b                                           ; $4946: $05
	dec  b                                           ; $4947: $05
	dec  c                                           ; $4948: $0d
	dec  bc                                          ; $4949: $0b
	dec  bc                                          ; $494a: $0b
	dec  bc                                          ; $494b: $0b
	dec  b                                           ; $494c: $05
	dec  b                                           ; $494d: $05
	dec  b                                           ; $494e: $05
	dec  b                                           ; $494f: $05
	dec  c                                           ; $4950: $0d
	dec  b                                           ; $4951: $05
	dec  b                                           ; $4952: $05
	dec  b                                           ; $4953: $05
	dec  b                                           ; $4954: $05
	dec  b                                           ; $4955: $05
	dec  b                                           ; $4956: $05
	dec  b                                           ; $4957: $05
	dec  b                                           ; $4958: $05
	dec  b                                           ; $4959: $05
	dec  b                                           ; $495a: $05
	dec  b                                           ; $495b: $05
	dec  c                                           ; $495c: $0d
	dec  c                                           ; $495d: $0d
	dec  c                                           ; $495e: $0d
	dec  c                                           ; $495f: $0d
	nop                                              ; $4960: $00
	ld   bc, $0302                                   ; $4961: $01 $02 $03
	inc  b                                           ; $4964: $04
	inc  b                                           ; $4965: $04
	inc  b                                           ; $4966: $04
	rlca                                             ; $4967: $07
	ld   [$0a09], sp                                 ; $4968: $08 $09 $0a
	dec  bc                                          ; $496b: $0b
	inc  c                                           ; $496c: $0c
	dec  c                                           ; $496d: $0d
	ld   c, $0f                                      ; $496e: $0e $0f
	jr   nz, jr_082_4993                             ; $4970: $20 $21

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
	ld   [hl-], a                                    ; $4984: $32
	inc  sp                                          ; $4985: $33
	inc  [hl]                                        ; $4986: $34
	dec  [hl]                                        ; $4987: $35
	db   $10                                         ; $4988: $10
	ld   hl, $2322                                   ; $4989: $21 $22 $23
	inc  h                                           ; $498c: $24
	dec  h                                           ; $498d: $25
	ld   h, $27                                      ; $498e: $26 $27
	jr   z, jr_082_49bb                              ; $4990: $28 $29

	ld   a, [hl+]                                    ; $4992: $2a

jr_082_4993:
	dec  hl                                          ; $4993: $2b
	inc  l                                           ; $4994: $2c
	dec  l                                           ; $4995: $2d
	ld   l, $2f                                      ; $4996: $2e $2f
	inc  h                                           ; $4998: $24
	dec  sp                                          ; $4999: $3b
	dec  h                                           ; $499a: $25
	ld   h, $10                                      ; $499b: $26 $10
	ld   sp, $3322                                   ; $499d: $31 $22 $33
	inc  [hl]                                        ; $49a0: $34
	dec  [hl]                                        ; $49a1: $35
	ld   [hl], $37                                   ; $49a2: $36 $37
	jr   c, jr_082_49df                              ; $49a4: $38 $39

	ld   a, [hl-]                                    ; $49a6: $3a
	dec  sp                                          ; $49a7: $3b
	inc  a                                           ; $49a8: $3c
	dec  a                                           ; $49a9: $3d
	ld   a, $3f                                      ; $49aa: $3e $3f
	daa                                              ; $49ac: $27
	dec  sp                                          ; $49ad: $3b
	jr   z, jr_082_49d9                              ; $49ae: $28 $29

	db   $10                                         ; $49b0: $10
	ld   b, c                                        ; $49b1: $41
	ld   [hl+], a                                    ; $49b2: $22
	ld   b, e                                        ; $49b3: $43
	ld   b, h                                        ; $49b4: $44
	ld   b, l                                        ; $49b5: $45
	ld   b, [hl]                                     ; $49b6: $46
	ld   b, a                                        ; $49b7: $47
	jr   c, jr_082_49f3                              ; $49b8: $38 $39

	ld   c, d                                        ; $49ba: $4a

jr_082_49bb:
	dec  sp                                          ; $49bb: $3b
	ld   c, h                                        ; $49bc: $4c
	ld   c, l                                        ; $49bd: $4d
	ld   c, [hl]                                     ; $49be: $4e
	ld   c, a                                        ; $49bf: $4f
	ld   a, [hl+]                                    ; $49c0: $2a
	dec  sp                                          ; $49c1: $3b
	dec  hl                                          ; $49c2: $2b
	inc  l                                           ; $49c3: $2c
	db   $10                                         ; $49c4: $10
	ld   d, c                                        ; $49c5: $51
	ld   [hl+], a                                    ; $49c6: $22
	ld   d, e                                        ; $49c7: $53
	ld   d, h                                        ; $49c8: $54
	ld   d, l                                        ; $49c9: $55
	ld   d, [hl]                                     ; $49ca: $56
	ld   d, a                                        ; $49cb: $57
	ld   e, b                                        ; $49cc: $58
	ld   e, c                                        ; $49cd: $59
	ld   e, d                                        ; $49ce: $5a
	dec  sp                                          ; $49cf: $3b
	ld   e, h                                        ; $49d0: $5c
	ld   e, l                                        ; $49d1: $5d
	ld   e, [hl]                                     ; $49d2: $5e
	ld   e, a                                        ; $49d3: $5f
	dec  l                                           ; $49d4: $2d
	dec  sp                                          ; $49d5: $3b
	ld   l, $2f                                      ; $49d6: $2e $2f
	ld   h, b                                        ; $49d8: $60

jr_082_49d9:
	ld   h, c                                        ; $49d9: $61
	ld   h, d                                        ; $49da: $62
	ld   h, e                                        ; $49db: $63
	ld   h, h                                        ; $49dc: $64
	ld   h, l                                        ; $49dd: $65
	ld   h, [hl]                                     ; $49de: $66

jr_082_49df:
	ld   h, a                                        ; $49df: $67
	ld   l, b                                        ; $49e0: $68
	ld   l, c                                        ; $49e1: $69
	ld   l, d                                        ; $49e2: $6a
	ld   l, e                                        ; $49e3: $6b
	ld   l, h                                        ; $49e4: $6c
	ld   l, l                                        ; $49e5: $6d
	ld   l, [hl]                                     ; $49e6: $6e
	ld   l, a                                        ; $49e7: $6f
	jr   nc, @+$33                                   ; $49e8: $30 $31

	ld   e, e                                        ; $49ea: $5b
	ld   d, d                                        ; $49eb: $52
	ld   [hl], b                                     ; $49ec: $70
	ld   [hl], c                                     ; $49ed: $71
	ld   [hl], d                                     ; $49ee: $72
	ld   [hl], e                                     ; $49ef: $73
	ld   [hl], h                                     ; $49f0: $74
	ld   [hl], l                                     ; $49f1: $75
	halt                                             ; $49f2: $76

jr_082_49f3:
	ld   [hl], a                                     ; $49f3: $77
	ld   a, b                                        ; $49f4: $78
	ld   a, c                                        ; $49f5: $79
	ld   a, d                                        ; $49f6: $7a
	ld   a, e                                        ; $49f7: $7b
	ld   a, h                                        ; $49f8: $7c
	ld   a, l                                        ; $49f9: $7d
	ld   a, [hl]                                     ; $49fa: $7e
	ld   a, a                                        ; $49fb: $7f
	ld   d, b                                        ; $49fc: $50
	ld   c, e                                        ; $49fd: $4b
	ld   c, c                                        ; $49fe: $49
	stop                                             ; $49ff: $10 $00
	ld   bc, $0302                                   ; $4a01: $01 $02 $03
	inc  b                                           ; $4a04: $04
	dec  b                                           ; $4a05: $05
	ld   b, $07                                      ; $4a06: $06 $07
	ld   [$0a09], sp                                 ; $4a08: $08 $09 $0a
	dec  bc                                          ; $4a0b: $0b
	inc  c                                           ; $4a0c: $0c
	dec  c                                           ; $4a0d: $0d
	ld   c, $0f                                      ; $4a0e: $0e $0f
	ld   c, b                                        ; $4a10: $48
	ld   b, d                                        ; $4a11: $42
	ld   b, b                                        ; $4a12: $40
	ld   [hl-], a                                    ; $4a13: $32
	db   $10                                         ; $4a14: $10
	ld   de, $1312                                   ; $4a15: $11 $12 $13
	inc  d                                           ; $4a18: $14
	dec  d                                           ; $4a19: $15
	ld   d, $17                                      ; $4a1a: $16 $17
	jr   jr_082_4a37                                 ; $4a1c: $18 $19

	ld   a, [de]                                     ; $4a1e: $1a
	ld   a, [de]                                     ; $4a1f: $1a
	inc  e                                           ; $4a20: $1c
	dec  e                                           ; $4a21: $1d
	ld   e, $1f                                      ; $4a22: $1e $1f
	jr   nc, jr_082_4a46                             ; $4a24: $30 $20

	ld   b, $05                                      ; $4a26: $06 $05
	inc  b                                           ; $4a28: $04
	inc  b                                           ; $4a29: $04
	inc  b                                           ; $4a2a: $04
	dec  b                                           ; $4a2b: $05
	dec  b                                           ; $4a2c: $05
	dec  b                                           ; $4a2d: $05
	dec  b                                           ; $4a2e: $05
	dec  b                                           ; $4a2f: $05
	dec  b                                           ; $4a30: $05
	dec  b                                           ; $4a31: $05
	dec  b                                           ; $4a32: $05
	dec  b                                           ; $4a33: $05
	inc  bc                                          ; $4a34: $03
	inc  bc                                          ; $4a35: $03
	inc  bc                                          ; $4a36: $03

jr_082_4a37:
	inc  bc                                          ; $4a37: $03
	dec  bc                                          ; $4a38: $0b
	dec  c                                           ; $4a39: $0d
	dec  c                                           ; $4a3a: $0d
	dec  c                                           ; $4a3b: $0d
	dec  b                                           ; $4a3c: $05
	inc  b                                           ; $4a3d: $04
	inc  b                                           ; $4a3e: $04
	dec  b                                           ; $4a3f: $05
	inc  bc                                          ; $4a40: $03
	inc  bc                                          ; $4a41: $03
	inc  bc                                          ; $4a42: $03
	inc  bc                                          ; $4a43: $03
	dec  b                                           ; $4a44: $05
	dec  b                                           ; $4a45: $05

jr_082_4a46:
	dec  b                                           ; $4a46: $05
	dec  b                                           ; $4a47: $05
	inc  bc                                          ; $4a48: $03
	inc  bc                                          ; $4a49: $03
	inc  bc                                          ; $4a4a: $03
	inc  bc                                          ; $4a4b: $03
	dec  bc                                          ; $4a4c: $0b
	dec  c                                           ; $4a4d: $0d
	inc  c                                           ; $4a4e: $0c
	inc  c                                           ; $4a4f: $0c
	dec  b                                           ; $4a50: $05
	inc  b                                           ; $4a51: $04
	inc  b                                           ; $4a52: $04
	dec  b                                           ; $4a53: $05
	inc  bc                                          ; $4a54: $03
	inc  bc                                          ; $4a55: $03
	inc  bc                                          ; $4a56: $03
	inc  bc                                          ; $4a57: $03
	dec  b                                           ; $4a58: $05
	dec  b                                           ; $4a59: $05
	dec  b                                           ; $4a5a: $05
	dec  b                                           ; $4a5b: $05
	inc  bc                                          ; $4a5c: $03
	inc  bc                                          ; $4a5d: $03
	inc  bc                                          ; $4a5e: $03
	inc  bc                                          ; $4a5f: $03
	dec  bc                                          ; $4a60: $0b
	dec  b                                           ; $4a61: $05
	inc  c                                           ; $4a62: $0c
	inc  c                                           ; $4a63: $0c
	dec  b                                           ; $4a64: $05
	inc  b                                           ; $4a65: $04
	inc  b                                           ; $4a66: $04
	dec  b                                           ; $4a67: $05
	inc  bc                                          ; $4a68: $03
	inc  bc                                          ; $4a69: $03
	inc  bc                                          ; $4a6a: $03
	inc  bc                                          ; $4a6b: $03
	dec  b                                           ; $4a6c: $05
	dec  b                                           ; $4a6d: $05
	dec  b                                           ; $4a6e: $05
	dec  b                                           ; $4a6f: $05
	inc  bc                                          ; $4a70: $03
	inc  bc                                          ; $4a71: $03
	inc  bc                                          ; $4a72: $03
	inc  bc                                          ; $4a73: $03
	dec  bc                                          ; $4a74: $0b
	dec  b                                           ; $4a75: $05
	inc  c                                           ; $4a76: $0c
	inc  c                                           ; $4a77: $0c
	dec  b                                           ; $4a78: $05
	inc  b                                           ; $4a79: $04
	inc  b                                           ; $4a7a: $04
	dec  b                                           ; $4a7b: $05
	inc  bc                                          ; $4a7c: $03
	inc  bc                                          ; $4a7d: $03
	inc  bc                                          ; $4a7e: $03
	inc  bc                                          ; $4a7f: $03
	dec  b                                           ; $4a80: $05
	dec  b                                           ; $4a81: $05
	dec  b                                           ; $4a82: $05
	dec  b                                           ; $4a83: $05
	inc  bc                                          ; $4a84: $03
	inc  bc                                          ; $4a85: $03
	inc  b                                           ; $4a86: $04
	inc  bc                                          ; $4a87: $03
	dec  bc                                          ; $4a88: $0b
	dec  b                                           ; $4a89: $05
	inc  c                                           ; $4a8a: $0c
	dec  c                                           ; $4a8b: $0d
	dec  b                                           ; $4a8c: $05
	inc  b                                           ; $4a8d: $04
	inc  b                                           ; $4a8e: $04
	dec  b                                           ; $4a8f: $05
	inc  bc                                          ; $4a90: $03
	inc  b                                           ; $4a91: $04
	inc  b                                           ; $4a92: $04
	inc  bc                                          ; $4a93: $03
	dec  b                                           ; $4a94: $05
	dec  b                                           ; $4a95: $05
	dec  b                                           ; $4a96: $05
	dec  b                                           ; $4a97: $05
	inc  bc                                          ; $4a98: $03
	inc  bc                                          ; $4a99: $03
	inc  b                                           ; $4a9a: $04
	inc  bc                                          ; $4a9b: $03
	dec  bc                                          ; $4a9c: $0b
	dec  b                                           ; $4a9d: $05
	inc  c                                           ; $4a9e: $0c
	dec  c                                           ; $4a9f: $0d
	inc  b                                           ; $4aa0: $04
	inc  b                                           ; $4aa1: $04
	inc  b                                           ; $4aa2: $04
	inc  b                                           ; $4aa3: $04
	inc  b                                           ; $4aa4: $04
	inc  b                                           ; $4aa5: $04
	inc  b                                           ; $4aa6: $04
	inc  b                                           ; $4aa7: $04
	inc  b                                           ; $4aa8: $04
	inc  b                                           ; $4aa9: $04
	inc  b                                           ; $4aaa: $04
	inc  b                                           ; $4aab: $04
	inc  b                                           ; $4aac: $04
	inc  b                                           ; $4aad: $04
	inc  bc                                          ; $4aae: $03
	inc  b                                           ; $4aaf: $04
	inc  c                                           ; $4ab0: $0c
	inc  c                                           ; $4ab1: $0c
	inc  b                                           ; $4ab2: $04
	inc  b                                           ; $4ab3: $04
	inc  b                                           ; $4ab4: $04
	inc  b                                           ; $4ab5: $04
	inc  b                                           ; $4ab6: $04
	inc  b                                           ; $4ab7: $04
	inc  b                                           ; $4ab8: $04
	inc  b                                           ; $4ab9: $04
	inc  b                                           ; $4aba: $04
	inc  b                                           ; $4abb: $04
	inc  b                                           ; $4abc: $04
	inc  b                                           ; $4abd: $04
	inc  b                                           ; $4abe: $04
	inc  b                                           ; $4abf: $04
	inc  b                                           ; $4ac0: $04
	inc  b                                           ; $4ac1: $04
	inc  b                                           ; $4ac2: $04
	inc  b                                           ; $4ac3: $04
	inc  b                                           ; $4ac4: $04
	inc  b                                           ; $4ac5: $04
	inc  b                                           ; $4ac6: $04
	dec  h                                           ; $4ac7: $25
	inc  c                                           ; $4ac8: $0c
	inc  c                                           ; $4ac9: $0c
	inc  c                                           ; $4aca: $0c
	inc  c                                           ; $4acb: $0c
	inc  c                                           ; $4acc: $0c
	inc  c                                           ; $4acd: $0c
	inc  c                                           ; $4ace: $0c
	inc  c                                           ; $4acf: $0c
	inc  c                                           ; $4ad0: $0c
	inc  c                                           ; $4ad1: $0c
	inc  c                                           ; $4ad2: $0c
	inc  c                                           ; $4ad3: $0c
	inc  c                                           ; $4ad4: $0c
	inc  c                                           ; $4ad5: $0c
	inc  c                                           ; $4ad6: $0c
	inc  c                                           ; $4ad7: $0c
	inc  b                                           ; $4ad8: $04
	inc  b                                           ; $4ad9: $04
	inc  b                                           ; $4ada: $04
	inc  b                                           ; $4adb: $04
	inc  c                                           ; $4adc: $0c
	inc  c                                           ; $4add: $0c
	inc  c                                           ; $4ade: $0c
	inc  c                                           ; $4adf: $0c
	inc  c                                           ; $4ae0: $0c
	inc  c                                           ; $4ae1: $0c
	inc  c                                           ; $4ae2: $0c
	inc  c                                           ; $4ae3: $0c
	inc  c                                           ; $4ae4: $0c
	inc  c                                           ; $4ae5: $0c
	inc  c                                           ; $4ae6: $0c
	inc  c                                           ; $4ae7: $0c
	inc  c                                           ; $4ae8: $0c
	inc  c                                           ; $4ae9: $0c
	inc  c                                           ; $4aea: $0c
	inc  c                                           ; $4aeb: $0c
	inc  b                                           ; $4aec: $04
	inc  b                                           ; $4aed: $04
	inc  b                                           ; $4aee: $04
	inc  b                                           ; $4aef: $04
	nop                                              ; $4af0: $00
	ld   bc, $0302                                   ; $4af1: $01 $02 $03
	inc  b                                           ; $4af4: $04
	inc  b                                           ; $4af5: $04
	inc  b                                           ; $4af6: $04
	rlca                                             ; $4af7: $07
	ld   [$0a09], sp                                 ; $4af8: $08 $09 $0a
	dec  bc                                          ; $4afb: $0b
	inc  c                                           ; $4afc: $0c
	dec  c                                           ; $4afd: $0d
	ld   c, $0f                                      ; $4afe: $0e $0f
	jr   nz, jr_082_4b23                             ; $4b00: $20 $21

	ld   [hl+], a                                    ; $4b02: $22
	inc  hl                                          ; $4b03: $23
	db   $10                                         ; $4b04: $10
	ld   de, $1312                                   ; $4b05: $11 $12 $13
	inc  d                                           ; $4b08: $14
	dec  d                                           ; $4b09: $15
	ld   d, $17                                      ; $4b0a: $16 $17
	ld   c, b                                        ; $4b0c: $48
	ld   c, c                                        ; $4b0d: $49
	ld   a, [de]                                     ; $4b0e: $1a
	dec  de                                          ; $4b0f: $1b
	ld   c, h                                        ; $4b10: $4c
	ld   c, l                                        ; $4b11: $4d
	ld   c, [hl]                                     ; $4b12: $4e
	ld   c, a                                        ; $4b13: $4f
	ld   d, b                                        ; $4b14: $50
	inc  sp                                          ; $4b15: $33
	inc  [hl]                                        ; $4b16: $34
	dec  [hl]                                        ; $4b17: $35
	db   $10                                         ; $4b18: $10
	ld   hl, $2322                                   ; $4b19: $21 $22 $23
	ld   [hl], $37                                   ; $4b1c: $36 $37
	jr   c, jr_082_4b59                              ; $4b1e: $38 $39

	ld   c, d                                        ; $4b20: $4a
	ld   c, e                                        ; $4b21: $4b
	ld   a, [hl+]                                    ; $4b22: $2a

jr_082_4b23:
	dec  hl                                          ; $4b23: $2b
	ld   d, c                                        ; $4b24: $51
	ld   d, d                                        ; $4b25: $52
	ld   d, e                                        ; $4b26: $53
	ld   d, h                                        ; $4b27: $54
	ld   d, l                                        ; $4b28: $55
	dec  sp                                          ; $4b29: $3b
	dec  h                                           ; $4b2a: $25
	ld   h, $10                                      ; $4b2b: $26 $10
	ld   sp, $3322                                   ; $4b2d: $31 $22 $33
	ld   a, [hl-]                                    ; $4b30: $3a
	dec  sp                                          ; $4b31: $3b
	inc  a                                           ; $4b32: $3c
	dec  a                                           ; $4b33: $3d
	jr   c, jr_082_4b6f                              ; $4b34: $38 $39

	ld   a, [hl-]                                    ; $4b36: $3a
	dec  sp                                          ; $4b37: $3b
	ld   d, [hl]                                     ; $4b38: $56
	ld   d, a                                        ; $4b39: $57
	ld   e, b                                        ; $4b3a: $58
	ld   e, c                                        ; $4b3b: $59
	ld   e, d                                        ; $4b3c: $5a
	dec  sp                                          ; $4b3d: $3b
	jr   z, jr_082_4b69                              ; $4b3e: $28 $29

	db   $10                                         ; $4b40: $10
	ld   b, c                                        ; $4b41: $41
	ld   [hl+], a                                    ; $4b42: $22
	ld   b, e                                        ; $4b43: $43
	ld   a, $3f                                      ; $4b44: $3e $3f
	ld   b, b                                        ; $4b46: $40
	ld   b, c                                        ; $4b47: $41
	jr   c, jr_082_4b83                              ; $4b48: $38 $39

	ld   c, d                                        ; $4b4a: $4a
	dec  sp                                          ; $4b4b: $3b
	ld   e, e                                        ; $4b4c: $5b
	ld   e, h                                        ; $4b4d: $5c
	ld   e, l                                        ; $4b4e: $5d
	ld   e, [hl]                                     ; $4b4f: $5e
	ld   e, a                                        ; $4b50: $5f
	dec  sp                                          ; $4b51: $3b
	dec  hl                                          ; $4b52: $2b
	inc  l                                           ; $4b53: $2c
	db   $10                                         ; $4b54: $10
	ld   d, c                                        ; $4b55: $51
	ld   [hl+], a                                    ; $4b56: $22
	ld   d, e                                        ; $4b57: $53
	ld   b, d                                        ; $4b58: $42

jr_082_4b59:
	ld   b, e                                        ; $4b59: $43
	ld   b, h                                        ; $4b5a: $44
	ld   b, l                                        ; $4b5b: $45
	dec  de                                          ; $4b5c: $1b
	ld   e, c                                        ; $4b5d: $59
	ld   e, d                                        ; $4b5e: $5a
	dec  sp                                          ; $4b5f: $3b
	ld   h, b                                        ; $4b60: $60
	ld   h, c                                        ; $4b61: $61
	ld   h, d                                        ; $4b62: $62
	ld   h, e                                        ; $4b63: $63
	ld   h, h                                        ; $4b64: $64
	dec  sp                                          ; $4b65: $3b
	ld   l, $2f                                      ; $4b66: $2e $2f
	ld   h, b                                        ; $4b68: $60

jr_082_4b69:
	ld   h, c                                        ; $4b69: $61
	ld   h, d                                        ; $4b6a: $62
	ld   h, e                                        ; $4b6b: $63
	ld   b, [hl]                                     ; $4b6c: $46
	ld   h, l                                        ; $4b6d: $65
	ld   h, [hl]                                     ; $4b6e: $66

jr_082_4b6f:
	ld   b, a                                        ; $4b6f: $47
	ld   l, b                                        ; $4b70: $68
	ld   l, c                                        ; $4b71: $69
	ld   l, d                                        ; $4b72: $6a
	ld   l, e                                        ; $4b73: $6b
	ld   h, l                                        ; $4b74: $65
	ld   h, [hl]                                     ; $4b75: $66
	ld   l, [hl]                                     ; $4b76: $6e
	ld   h, a                                        ; $4b77: $67
	ld   l, b                                        ; $4b78: $68
	ld   sp, $525b                                   ; $4b79: $31 $5b $52
	ld   [hl], b                                     ; $4b7c: $70
	ld   [hl], c                                     ; $4b7d: $71
	ld   [hl], d                                     ; $4b7e: $72
	ld   [hl], e                                     ; $4b7f: $73
	ld   [hl], h                                     ; $4b80: $74
	ld   [hl], l                                     ; $4b81: $75
	halt                                             ; $4b82: $76

jr_082_4b83:
	ld   [hl], a                                     ; $4b83: $77
	ld   a, b                                        ; $4b84: $78
	ld   a, c                                        ; $4b85: $79
	ld   a, d                                        ; $4b86: $7a
	ld   a, e                                        ; $4b87: $7b
	ld   a, h                                        ; $4b88: $7c
	ld   a, l                                        ; $4b89: $7d
	ld   a, [hl]                                     ; $4b8a: $7e
	ld   a, a                                        ; $4b8b: $7f
	ld   d, b                                        ; $4b8c: $50
	ld   c, e                                        ; $4b8d: $4b
	ld   c, c                                        ; $4b8e: $49
	stop                                             ; $4b8f: $10 $00
	ld   bc, $0302                                   ; $4b91: $01 $02 $03
	inc  b                                           ; $4b94: $04
	dec  b                                           ; $4b95: $05
	ld   b, $07                                      ; $4b96: $06 $07
	ld   [$0a09], sp                                 ; $4b98: $08 $09 $0a
	dec  bc                                          ; $4b9b: $0b
	inc  c                                           ; $4b9c: $0c
	dec  c                                           ; $4b9d: $0d
	ld   c, $0f                                      ; $4b9e: $0e $0f
	ld   c, b                                        ; $4ba0: $48
	ld   b, d                                        ; $4ba1: $42
	ld   b, b                                        ; $4ba2: $40
	ld   [hl-], a                                    ; $4ba3: $32
	db   $10                                         ; $4ba4: $10
	ld   de, $1312                                   ; $4ba5: $11 $12 $13
	inc  d                                           ; $4ba8: $14
	dec  d                                           ; $4ba9: $15
	ld   d, $17                                      ; $4baa: $16 $17
	jr   jr_082_4bc7                                 ; $4bac: $18 $19

	ld   a, [de]                                     ; $4bae: $1a
	ld   a, [de]                                     ; $4baf: $1a
	inc  e                                           ; $4bb0: $1c
	dec  e                                           ; $4bb1: $1d
	ld   e, $1f                                      ; $4bb2: $1e $1f
	jr   nc, jr_082_4bd6                             ; $4bb4: $30 $20

	ld   b, $05                                      ; $4bb6: $06 $05
	inc  b                                           ; $4bb8: $04
	inc  b                                           ; $4bb9: $04
	inc  b                                           ; $4bba: $04
	dec  b                                           ; $4bbb: $05
	dec  b                                           ; $4bbc: $05
	dec  b                                           ; $4bbd: $05
	dec  b                                           ; $4bbe: $05
	dec  b                                           ; $4bbf: $05
	dec  b                                           ; $4bc0: $05
	dec  b                                           ; $4bc1: $05
	dec  b                                           ; $4bc2: $05
	dec  b                                           ; $4bc3: $05
	inc  bc                                          ; $4bc4: $03
	inc  bc                                          ; $4bc5: $03
	inc  bc                                          ; $4bc6: $03

jr_082_4bc7:
	inc  bc                                          ; $4bc7: $03
	dec  bc                                          ; $4bc8: $0b
	dec  c                                           ; $4bc9: $0d
	dec  c                                           ; $4bca: $0d
	dec  c                                           ; $4bcb: $0d
	dec  b                                           ; $4bcc: $05
	inc  b                                           ; $4bcd: $04
	inc  b                                           ; $4bce: $04
	dec  b                                           ; $4bcf: $05
	inc  bc                                          ; $4bd0: $03
	inc  bc                                          ; $4bd1: $03
	inc  bc                                          ; $4bd2: $03
	inc  bc                                          ; $4bd3: $03
	dec  c                                           ; $4bd4: $0d
	dec  c                                           ; $4bd5: $0d

jr_082_4bd6:
	dec  b                                           ; $4bd6: $05
	dec  b                                           ; $4bd7: $05
	dec  bc                                          ; $4bd8: $0b
	dec  bc                                          ; $4bd9: $0b
	dec  bc                                          ; $4bda: $0b
	dec  bc                                          ; $4bdb: $0b
	dec  bc                                          ; $4bdc: $0b
	dec  c                                           ; $4bdd: $0d
	inc  c                                           ; $4bde: $0c
	inc  c                                           ; $4bdf: $0c
	dec  b                                           ; $4be0: $05
	inc  b                                           ; $4be1: $04
	inc  b                                           ; $4be2: $04
	dec  b                                           ; $4be3: $05
	dec  bc                                          ; $4be4: $0b
	dec  bc                                          ; $4be5: $0b
	dec  bc                                          ; $4be6: $0b
	dec  bc                                          ; $4be7: $0b
	dec  c                                           ; $4be8: $0d
	dec  c                                           ; $4be9: $0d
	dec  b                                           ; $4bea: $05
	dec  b                                           ; $4beb: $05
	dec  bc                                          ; $4bec: $0b
	dec  bc                                          ; $4bed: $0b
	dec  bc                                          ; $4bee: $0b
	dec  bc                                          ; $4bef: $0b
	dec  bc                                          ; $4bf0: $0b
	dec  b                                           ; $4bf1: $05
	inc  c                                           ; $4bf2: $0c
	inc  c                                           ; $4bf3: $0c
	dec  b                                           ; $4bf4: $05
	inc  b                                           ; $4bf5: $04
	inc  b                                           ; $4bf6: $04
	dec  b                                           ; $4bf7: $05
	dec  bc                                          ; $4bf8: $0b
	dec  bc                                          ; $4bf9: $0b
	dec  bc                                          ; $4bfa: $0b
	dec  bc                                          ; $4bfb: $0b
	dec  b                                           ; $4bfc: $05
	dec  b                                           ; $4bfd: $05
	dec  b                                           ; $4bfe: $05
	dec  b                                           ; $4bff: $05
	dec  bc                                          ; $4c00: $0b
	dec  bc                                          ; $4c01: $0b
	dec  bc                                          ; $4c02: $0b
	dec  bc                                          ; $4c03: $0b
	dec  bc                                          ; $4c04: $0b
	dec  b                                           ; $4c05: $05
	inc  c                                           ; $4c06: $0c
	inc  c                                           ; $4c07: $0c
	dec  b                                           ; $4c08: $05
	inc  b                                           ; $4c09: $04
	inc  b                                           ; $4c0a: $04
	dec  b                                           ; $4c0b: $05
	dec  bc                                          ; $4c0c: $0b
	dec  bc                                          ; $4c0d: $0b
	dec  bc                                          ; $4c0e: $0b
	dec  bc                                          ; $4c0f: $0b
	dec  b                                           ; $4c10: $05
	dec  b                                           ; $4c11: $05
	dec  b                                           ; $4c12: $05
	dec  b                                           ; $4c13: $05
	dec  bc                                          ; $4c14: $0b
	dec  bc                                          ; $4c15: $0b
	dec  bc                                          ; $4c16: $0b
	dec  bc                                          ; $4c17: $0b
	dec  bc                                          ; $4c18: $0b
	dec  b                                           ; $4c19: $05
	inc  c                                           ; $4c1a: $0c
	dec  c                                           ; $4c1b: $0d
	dec  b                                           ; $4c1c: $05
	inc  b                                           ; $4c1d: $04
	inc  b                                           ; $4c1e: $04
	dec  b                                           ; $4c1f: $05
	dec  bc                                          ; $4c20: $0b
	inc  c                                           ; $4c21: $0c
	inc  c                                           ; $4c22: $0c
	dec  bc                                          ; $4c23: $0b
	dec  c                                           ; $4c24: $0d
	dec  b                                           ; $4c25: $05
	dec  b                                           ; $4c26: $05
	dec  b                                           ; $4c27: $05
	dec  bc                                          ; $4c28: $0b
	dec  bc                                          ; $4c29: $0b
	dec  bc                                          ; $4c2a: $0b
	dec  bc                                          ; $4c2b: $0b
	dec  bc                                          ; $4c2c: $0b
	dec  b                                           ; $4c2d: $05
	inc  c                                           ; $4c2e: $0c
	dec  c                                           ; $4c2f: $0d
	inc  b                                           ; $4c30: $04
	inc  b                                           ; $4c31: $04
	inc  b                                           ; $4c32: $04
	inc  b                                           ; $4c33: $04
	inc  c                                           ; $4c34: $0c
	inc  b                                           ; $4c35: $04
	inc  b                                           ; $4c36: $04
	inc  c                                           ; $4c37: $0c
	inc  b                                           ; $4c38: $04
	inc  b                                           ; $4c39: $04
	inc  b                                           ; $4c3a: $04
	inc  b                                           ; $4c3b: $04
	dec  bc                                          ; $4c3c: $0b
	inc  c                                           ; $4c3d: $0c
	inc  bc                                          ; $4c3e: $03
	dec  bc                                          ; $4c3f: $0b
	inc  c                                           ; $4c40: $0c
	inc  c                                           ; $4c41: $0c
	inc  b                                           ; $4c42: $04
	inc  b                                           ; $4c43: $04
	inc  b                                           ; $4c44: $04
	inc  b                                           ; $4c45: $04
	inc  b                                           ; $4c46: $04
	inc  b                                           ; $4c47: $04
	inc  b                                           ; $4c48: $04
	inc  b                                           ; $4c49: $04
	inc  b                                           ; $4c4a: $04
	inc  b                                           ; $4c4b: $04
	inc  b                                           ; $4c4c: $04
	inc  b                                           ; $4c4d: $04
	inc  b                                           ; $4c4e: $04
	inc  b                                           ; $4c4f: $04
	inc  b                                           ; $4c50: $04
	inc  b                                           ; $4c51: $04
	inc  b                                           ; $4c52: $04
	inc  b                                           ; $4c53: $04
	inc  b                                           ; $4c54: $04
	inc  b                                           ; $4c55: $04
	inc  b                                           ; $4c56: $04
	dec  h                                           ; $4c57: $25
	inc  c                                           ; $4c58: $0c
	inc  c                                           ; $4c59: $0c
	inc  c                                           ; $4c5a: $0c
	inc  c                                           ; $4c5b: $0c
	inc  c                                           ; $4c5c: $0c
	inc  c                                           ; $4c5d: $0c
	inc  c                                           ; $4c5e: $0c
	inc  c                                           ; $4c5f: $0c
	inc  c                                           ; $4c60: $0c
	inc  c                                           ; $4c61: $0c
	inc  c                                           ; $4c62: $0c
	inc  c                                           ; $4c63: $0c
	inc  c                                           ; $4c64: $0c
	inc  c                                           ; $4c65: $0c
	inc  c                                           ; $4c66: $0c
	inc  c                                           ; $4c67: $0c
	inc  b                                           ; $4c68: $04
	inc  b                                           ; $4c69: $04
	inc  b                                           ; $4c6a: $04
	inc  b                                           ; $4c6b: $04
	inc  c                                           ; $4c6c: $0c
	inc  c                                           ; $4c6d: $0c
	inc  c                                           ; $4c6e: $0c
	inc  c                                           ; $4c6f: $0c
	inc  c                                           ; $4c70: $0c
	inc  c                                           ; $4c71: $0c
	inc  c                                           ; $4c72: $0c
	inc  c                                           ; $4c73: $0c
	inc  c                                           ; $4c74: $0c
	inc  c                                           ; $4c75: $0c
	inc  c                                           ; $4c76: $0c
	inc  c                                           ; $4c77: $0c
	inc  c                                           ; $4c78: $0c
	inc  c                                           ; $4c79: $0c
	inc  c                                           ; $4c7a: $0c
	inc  c                                           ; $4c7b: $0c
	inc  b                                           ; $4c7c: $04
	inc  b                                           ; $4c7d: $04
	inc  b                                           ; $4c7e: $04
	inc  b                                           ; $4c7f: $04
	nop                                              ; $4c80: $00
	ld   bc, $0302                                   ; $4c81: $01 $02 $03
	inc  b                                           ; $4c84: $04
	dec  b                                           ; $4c85: $05
	ld   b, $07                                      ; $4c86: $06 $07
	ld   [$0908], sp                                 ; $4c88: $08 $08 $09
	ld   [$0908], sp                                 ; $4c8b: $08 $08 $09
	ld   a, [bc]                                     ; $4c8e: $0a
	dec  bc                                          ; $4c8f: $0b
	inc  c                                           ; $4c90: $0c
	ld   [$0e0d], sp                                 ; $4c91: $08 $0d $0e
	rrca                                             ; $4c94: $0f
	db   $10                                         ; $4c95: $10
	ld   de, $1312                                   ; $4c96: $11 $12 $13
	inc  d                                           ; $4c99: $14
	dec  d                                           ; $4c9a: $15
	ld   d, $17                                      ; $4c9b: $16 $17
	jr   jr_082_4cb8                                 ; $4c9d: $18 $19

	ld   a, [de]                                     ; $4c9f: $1a
	dec  de                                          ; $4ca0: $1b
	inc  e                                           ; $4ca1: $1c
	dec  e                                           ; $4ca2: $1d
	ld   e, $1f                                      ; $4ca3: $1e $1f
	jr   nz, jr_082_4cc8                             ; $4ca5: $20 $21

	ld   [hl+], a                                    ; $4ca7: $22
	inc  hl                                          ; $4ca8: $23
	inc  h                                           ; $4ca9: $24
	dec  h                                           ; $4caa: $25
	ld   h, $27                                      ; $4cab: $26 $27
	jr   z, jr_082_4cd8                              ; $4cad: $28 $29

	ld   a, [hl+]                                    ; $4caf: $2a
	dec  hl                                          ; $4cb0: $2b
	inc  l                                           ; $4cb1: $2c
	dec  l                                           ; $4cb2: $2d
	ld   l, $2f                                      ; $4cb3: $2e $2f
	jr   nc, jr_082_4ce8                             ; $4cb5: $30 $31

	ld   [hl-], a                                    ; $4cb7: $32

jr_082_4cb8:
	inc  sp                                          ; $4cb8: $33
	inc  [hl]                                        ; $4cb9: $34
	dec  [hl]                                        ; $4cba: $35
	ld   [hl], $37                                   ; $4cbb: $36 $37
	jr   c, jr_082_4cf8                              ; $4cbd: $38 $39

	ld   a, [hl-]                                    ; $4cbf: $3a
	dec  sp                                          ; $4cc0: $3b
	inc  a                                           ; $4cc1: $3c
	dec  a                                           ; $4cc2: $3d
	ld   a, $3f                                      ; $4cc3: $3e $3f
	ld   b, b                                        ; $4cc5: $40
	ld   b, c                                        ; $4cc6: $41
	ld   b, d                                        ; $4cc7: $42

jr_082_4cc8:
	ld   b, b                                        ; $4cc8: $40
	ld   b, e                                        ; $4cc9: $43
	ld   b, h                                        ; $4cca: $44
	ld   b, l                                        ; $4ccb: $45
	ld   b, [hl]                                     ; $4ccc: $46
	ld   b, a                                        ; $4ccd: $47
	ld   c, b                                        ; $4cce: $48
	ld   c, c                                        ; $4ccf: $49
	ld   c, d                                        ; $4cd0: $4a
	ld   c, e                                        ; $4cd1: $4b
	ld   c, h                                        ; $4cd2: $4c
	ld   c, l                                        ; $4cd3: $4d
	ld   c, [hl]                                     ; $4cd4: $4e
	ld   c, a                                        ; $4cd5: $4f
	ld   d, b                                        ; $4cd6: $50
	ld   d, c                                        ; $4cd7: $51

jr_082_4cd8:
	ld   d, d                                        ; $4cd8: $52
	ld   d, e                                        ; $4cd9: $53
	ld   d, h                                        ; $4cda: $54
	ld   d, l                                        ; $4cdb: $55
	ld   d, [hl]                                     ; $4cdc: $56
	ld   d, a                                        ; $4cdd: $57
	ld   e, b                                        ; $4cde: $58
	ld   e, c                                        ; $4cdf: $59
	ld   e, d                                        ; $4ce0: $5a
	ld   e, e                                        ; $4ce1: $5b
	ld   e, h                                        ; $4ce2: $5c
	ld   e, l                                        ; $4ce3: $5d
	ld   e, [hl]                                     ; $4ce4: $5e
	ld   e, a                                        ; $4ce5: $5f
	ld   h, b                                        ; $4ce6: $60
	ld   h, c                                        ; $4ce7: $61

jr_082_4ce8:
	ld   h, d                                        ; $4ce8: $62
	ld   h, e                                        ; $4ce9: $63
	ld   h, h                                        ; $4cea: $64
	ld   h, l                                        ; $4ceb: $65
	ld   h, [hl]                                     ; $4cec: $66
	ld   h, a                                        ; $4ced: $67
	ld   l, b                                        ; $4cee: $68
	ld   l, c                                        ; $4cef: $69
	ld   l, d                                        ; $4cf0: $6a
	ld   l, e                                        ; $4cf1: $6b
	ld   l, h                                        ; $4cf2: $6c
	ld   l, l                                        ; $4cf3: $6d
	ld   l, [hl]                                     ; $4cf4: $6e
	ld   l, a                                        ; $4cf5: $6f
	ld   [hl], b                                     ; $4cf6: $70
	ld   [hl], c                                     ; $4cf7: $71

jr_082_4cf8:
	ld   [hl], d                                     ; $4cf8: $72
	ld   [hl], e                                     ; $4cf9: $73
	ld   [hl], h                                     ; $4cfa: $74
	ld   [hl], l                                     ; $4cfb: $75
	halt                                             ; $4cfc: $76
	ld   [hl], a                                     ; $4cfd: $77
	ld   a, b                                        ; $4cfe: $78
	ld   a, c                                        ; $4cff: $79
	ld   a, d                                        ; $4d00: $7a
	ld   a, e                                        ; $4d01: $7b
	ld   a, h                                        ; $4d02: $7c
	ld   a, l                                        ; $4d03: $7d
	ld   a, [hl]                                     ; $4d04: $7e
	ld   a, a                                        ; $4d05: $7f
	nop                                              ; $4d06: $00
	ld   bc, $0302                                   ; $4d07: $01 $02 $03
	inc  b                                           ; $4d0a: $04
	dec  b                                           ; $4d0b: $05
	ld   b, $07                                      ; $4d0c: $06 $07
	ld   [$0808], sp                                 ; $4d0e: $08 $08 $08
	ld   [$0808], sp                                 ; $4d11: $08 $08 $08
	ld   [$0808], sp                                 ; $4d14: $08 $08 $08
	ld   [$0808], sp                                 ; $4d17: $08 $08 $08
	ld   [$0808], sp                                 ; $4d1a: $08 $08 $08
	ld   [$0a09], sp                                 ; $4d1d: $08 $09 $0a
	dec  bc                                          ; $4d20: $0b
	inc  c                                           ; $4d21: $0c
	dec  c                                           ; $4d22: $0d
	dec  c                                           ; $4d23: $0d
	dec  c                                           ; $4d24: $0d
	dec  c                                           ; $4d25: $0d
	dec  c                                           ; $4d26: $0d
	dec  c                                           ; $4d27: $0d
	dec  c                                           ; $4d28: $0d
	dec  c                                           ; $4d29: $0d
	dec  c                                           ; $4d2a: $0d
	dec  c                                           ; $4d2b: $0d
	dec  c                                           ; $4d2c: $0d
	dec  c                                           ; $4d2d: $0d
	dec  c                                           ; $4d2e: $0d
	dec  c                                           ; $4d2f: $0d
	dec  c                                           ; $4d30: $0d
	dec  c                                           ; $4d31: $0d
	ld   c, $0f                                      ; $4d32: $0e $0f
	db   $10                                         ; $4d34: $10
	ld   de, $1111                                   ; $4d35: $11 $11 $11
	ld   de, $1111                                   ; $4d38: $11 $11 $11
	ld   de, $1111                                   ; $4d3b: $11 $11 $11
	ld   de, $1111                                   ; $4d3e: $11 $11 $11
	ld   de, $1111                                   ; $4d41: $11 $11 $11
	ld   de, $1211                                   ; $4d44: $11 $11 $12
	inc  de                                          ; $4d47: $13
	inc  bc                                          ; $4d48: $03
	inc  bc                                          ; $4d49: $03
	inc  bc                                          ; $4d4a: $03
	inc  bc                                          ; $4d4b: $03
	inc  bc                                          ; $4d4c: $03
	inc  bc                                          ; $4d4d: $03
	inc  bc                                          ; $4d4e: $03
	dec  b                                           ; $4d4f: $05
	dec  b                                           ; $4d50: $05
	dec  b                                           ; $4d51: $05
	dec  b                                           ; $4d52: $05
	dec  b                                           ; $4d53: $05
	dec  b                                           ; $4d54: $05
	dec  b                                           ; $4d55: $05
	dec  b                                           ; $4d56: $05
	dec  b                                           ; $4d57: $05
	dec  b                                           ; $4d58: $05
	dec  b                                           ; $4d59: $05
	dec  b                                           ; $4d5a: $05
	inc  bc                                          ; $4d5b: $03
	inc  bc                                          ; $4d5c: $03
	inc  bc                                          ; $4d5d: $03
	inc  bc                                          ; $4d5e: $03
	inc  bc                                          ; $4d5f: $03
	inc  bc                                          ; $4d60: $03
	inc  bc                                          ; $4d61: $03
	inc  bc                                          ; $4d62: $03
	dec  b                                           ; $4d63: $05
	dec  b                                           ; $4d64: $05
	dec  b                                           ; $4d65: $05
	dec  b                                           ; $4d66: $05
	dec  b                                           ; $4d67: $05
	dec  b                                           ; $4d68: $05
	dec  b                                           ; $4d69: $05
	dec  b                                           ; $4d6a: $05
	dec  b                                           ; $4d6b: $05
	dec  b                                           ; $4d6c: $05
	dec  b                                           ; $4d6d: $05
	dec  b                                           ; $4d6e: $05
	inc  bc                                          ; $4d6f: $03
	inc  bc                                          ; $4d70: $03
	inc  bc                                          ; $4d71: $03
	inc  bc                                          ; $4d72: $03
	inc  bc                                          ; $4d73: $03
	inc  bc                                          ; $4d74: $03
	inc  bc                                          ; $4d75: $03
	inc  bc                                          ; $4d76: $03
	inc  bc                                          ; $4d77: $03
	dec  b                                           ; $4d78: $05
	dec  b                                           ; $4d79: $05
	dec  b                                           ; $4d7a: $05
	dec  b                                           ; $4d7b: $05
	dec  b                                           ; $4d7c: $05
	dec  b                                           ; $4d7d: $05
	dec  b                                           ; $4d7e: $05
	dec  b                                           ; $4d7f: $05
	dec  b                                           ; $4d80: $05
	dec  b                                           ; $4d81: $05
	dec  b                                           ; $4d82: $05
	inc  bc                                          ; $4d83: $03
	inc  bc                                          ; $4d84: $03
	inc  bc                                          ; $4d85: $03
	inc  bc                                          ; $4d86: $03
	inc  bc                                          ; $4d87: $03
	inc  bc                                          ; $4d88: $03
	inc  bc                                          ; $4d89: $03
	inc  bc                                          ; $4d8a: $03
	inc  bc                                          ; $4d8b: $03
	inc  bc                                          ; $4d8c: $03
	dec  b                                           ; $4d8d: $05
	dec  b                                           ; $4d8e: $05
	dec  b                                           ; $4d8f: $05
	dec  b                                           ; $4d90: $05
	dec  b                                           ; $4d91: $05
	inc  bc                                          ; $4d92: $03
	inc  bc                                          ; $4d93: $03
	inc  bc                                          ; $4d94: $03
	inc  b                                           ; $4d95: $04
	inc  b                                           ; $4d96: $04
	inc  b                                           ; $4d97: $04
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
	inc  bc                                          ; $4da8: $03
	inc  b                                           ; $4da9: $04
	inc  b                                           ; $4daa: $04
	inc  b                                           ; $4dab: $04
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
	inc  bc                                          ; $4dbc: $03
	inc  b                                           ; $4dbd: $04
	inc  b                                           ; $4dbe: $04
	inc  b                                           ; $4dbf: $04
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
	dec  bc                                          ; $4dce: $0b
	dec  bc                                          ; $4dcf: $0b
	dec  bc                                          ; $4dd0: $0b
	dec  bc                                          ; $4dd1: $0b
	inc  c                                           ; $4dd2: $0c
	inc  c                                           ; $4dd3: $0c
	dec  bc                                          ; $4dd4: $0b
	dec  bc                                          ; $4dd5: $0b
	dec  bc                                          ; $4dd6: $0b
	dec  bc                                          ; $4dd7: $0b
	dec  bc                                          ; $4dd8: $0b
	dec  bc                                          ; $4dd9: $0b
	dec  bc                                          ; $4dda: $0b
	dec  bc                                          ; $4ddb: $0b
	dec  bc                                          ; $4ddc: $0b
	dec  bc                                          ; $4ddd: $0b
	dec  bc                                          ; $4dde: $0b
	dec  bc                                          ; $4ddf: $0b
	dec  bc                                          ; $4de0: $0b
	dec  bc                                          ; $4de1: $0b
	dec  bc                                          ; $4de2: $0b
	dec  bc                                          ; $4de3: $0b
	dec  bc                                          ; $4de4: $0b
	dec  bc                                          ; $4de5: $0b
	inc  c                                           ; $4de6: $0c
	inc  c                                           ; $4de7: $0c
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
	dec  c                                           ; $4dfc: $0d
	dec  c                                           ; $4dfd: $0d
	dec  c                                           ; $4dfe: $0d
	dec  c                                           ; $4dff: $0d
	dec  c                                           ; $4e00: $0d
	dec  c                                           ; $4e01: $0d
	dec  c                                           ; $4e02: $0d
	dec  c                                           ; $4e03: $0d
	dec  c                                           ; $4e04: $0d
	dec  c                                           ; $4e05: $0d
	dec  c                                           ; $4e06: $0d
	dec  c                                           ; $4e07: $0d
	dec  c                                           ; $4e08: $0d
	dec  c                                           ; $4e09: $0d
	dec  c                                           ; $4e0a: $0d
	dec  c                                           ; $4e0b: $0d
	dec  c                                           ; $4e0c: $0d
	dec  c                                           ; $4e0d: $0d
	dec  c                                           ; $4e0e: $0d
	dec  c                                           ; $4e0f: $0d
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
	db   $10                                         ; $4e20: $10
	ld   de, $1312                                   ; $4e21: $11 $12 $13
	inc  d                                           ; $4e24: $14
	dec  d                                           ; $4e25: $15
	ld   d, $17                                      ; $4e26: $16 $17
	jr   jr_082_4e43                                 ; $4e28: $18 $19

	ld   a, [de]                                     ; $4e2a: $1a
	dec  de                                          ; $4e2b: $1b
	inc  e                                           ; $4e2c: $1c
	dec  e                                           ; $4e2d: $1d
	ld   e, $1f                                      ; $4e2e: $1e $1f
	jr   nz, @+$23                                   ; $4e30: $20 $21

	ld   [hl+], a                                    ; $4e32: $22
	inc  hl                                          ; $4e33: $23
	inc  h                                           ; $4e34: $24
	dec  h                                           ; $4e35: $25
	ld   h, $27                                      ; $4e36: $26 $27
	jr   z, jr_082_4e63                              ; $4e38: $28 $29

	ld   a, [hl+]                                    ; $4e3a: $2a
	dec  hl                                          ; $4e3b: $2b
	inc  l                                           ; $4e3c: $2c
	dec  l                                           ; $4e3d: $2d
	ld   l, $2f                                      ; $4e3e: $2e $2f
	jr   nc, jr_082_4e73                             ; $4e40: $30 $31

	ld   [hl-], a                                    ; $4e42: $32

jr_082_4e43:
	inc  sp                                          ; $4e43: $33
	inc  [hl]                                        ; $4e44: $34
	dec  [hl]                                        ; $4e45: $35
	ld   [hl], $24                                   ; $4e46: $36 $24
	inc  h                                           ; $4e48: $24
	dec  h                                           ; $4e49: $25
	ld   h, $37                                      ; $4e4a: $26 $37
	jr   c, jr_082_4e87                              ; $4e4c: $38 $39

	ld   a, [hl-]                                    ; $4e4e: $3a
	dec  sp                                          ; $4e4f: $3b
	inc  a                                           ; $4e50: $3c
	dec  a                                           ; $4e51: $3d
	ld   a, $3f                                      ; $4e52: $3e $3f
	ld   b, b                                        ; $4e54: $40
	ld   b, c                                        ; $4e55: $41
	ld   b, d                                        ; $4e56: $42
	ld   b, e                                        ; $4e57: $43
	ld   b, h                                        ; $4e58: $44
	ld   b, l                                        ; $4e59: $45
	ld   b, [hl]                                     ; $4e5a: $46
	ld   b, a                                        ; $4e5b: $47
	ld   c, b                                        ; $4e5c: $48
	ld   c, c                                        ; $4e5d: $49
	ld   c, d                                        ; $4e5e: $4a
	ld   c, e                                        ; $4e5f: $4b
	ld   c, h                                        ; $4e60: $4c
	ld   c, l                                        ; $4e61: $4d
	ld   c, [hl]                                     ; $4e62: $4e

jr_082_4e63:
	ld   c, a                                        ; $4e63: $4f
	ld   d, b                                        ; $4e64: $50
	ld   d, c                                        ; $4e65: $51
	ld   d, d                                        ; $4e66: $52
	ld   d, e                                        ; $4e67: $53
	ld   d, h                                        ; $4e68: $54
	ld   d, l                                        ; $4e69: $55
	ld   d, [hl]                                     ; $4e6a: $56
	ld   d, a                                        ; $4e6b: $57
	ld   e, b                                        ; $4e6c: $58
	ld   e, c                                        ; $4e6d: $59
	ld   e, d                                        ; $4e6e: $5a
	ld   e, e                                        ; $4e6f: $5b
	ld   e, h                                        ; $4e70: $5c
	ld   e, l                                        ; $4e71: $5d
	ld   e, [hl]                                     ; $4e72: $5e

jr_082_4e73:
	ld   e, a                                        ; $4e73: $5f
	ld   h, b                                        ; $4e74: $60
	ld   h, c                                        ; $4e75: $61
	ld   h, d                                        ; $4e76: $62
	ld   h, e                                        ; $4e77: $63
	ld   h, h                                        ; $4e78: $64
	ld   h, l                                        ; $4e79: $65
	ld   h, [hl]                                     ; $4e7a: $66
	ld   h, a                                        ; $4e7b: $67
	ld   l, b                                        ; $4e7c: $68
	ld   l, c                                        ; $4e7d: $69
	ld   l, d                                        ; $4e7e: $6a
	ld   l, e                                        ; $4e7f: $6b
	ld   l, h                                        ; $4e80: $6c
	ld   l, l                                        ; $4e81: $6d
	ld   l, [hl]                                     ; $4e82: $6e
	ld   l, a                                        ; $4e83: $6f
	ld   [hl], b                                     ; $4e84: $70
	ld   [hl], c                                     ; $4e85: $71
	ld   [hl], d                                     ; $4e86: $72

jr_082_4e87:
	ld   [hl], e                                     ; $4e87: $73
	ld   [hl], h                                     ; $4e88: $74
	ld   [hl], l                                     ; $4e89: $75
	halt                                             ; $4e8a: $76
	ld   [hl], a                                     ; $4e8b: $77
	ld   a, b                                        ; $4e8c: $78
	ld   a, c                                        ; $4e8d: $79
	ld   a, d                                        ; $4e8e: $7a
	ld   a, e                                        ; $4e8f: $7b
	ld   a, h                                        ; $4e90: $7c
	ld   a, l                                        ; $4e91: $7d
	ld   a, [hl]                                     ; $4e92: $7e
	ld   a, a                                        ; $4e93: $7f
	nop                                              ; $4e94: $00
	ld   bc, $0302                                   ; $4e95: $01 $02 $03
	inc  b                                           ; $4e98: $04
	dec  b                                           ; $4e99: $05
	ld   b, $07                                      ; $4e9a: $06 $07
	ld   [$0a09], sp                                 ; $4e9c: $08 $09 $0a
	ld   a, [bc]                                     ; $4e9f: $0a
	ld   a, [bc]                                     ; $4ea0: $0a
	ld   a, [bc]                                     ; $4ea1: $0a
	ld   a, [bc]                                     ; $4ea2: $0a
	ld   a, [bc]                                     ; $4ea3: $0a
	ld   a, [bc]                                     ; $4ea4: $0a
	ld   a, [bc]                                     ; $4ea5: $0a
	ld   a, [bc]                                     ; $4ea6: $0a
	ld   a, [bc]                                     ; $4ea7: $0a
	ld   a, [bc]                                     ; $4ea8: $0a
	ld   a, [bc]                                     ; $4ea9: $0a
	ld   a, [bc]                                     ; $4eaa: $0a
	ld   a, [bc]                                     ; $4eab: $0a
	ld   a, [bc]                                     ; $4eac: $0a
	dec  bc                                          ; $4ead: $0b
	inc  c                                           ; $4eae: $0c
	dec  c                                           ; $4eaf: $0d
	ld   c, $0f                                      ; $4eb0: $0e $0f
	db   $10                                         ; $4eb2: $10
	db   $10                                         ; $4eb3: $10
	db   $10                                         ; $4eb4: $10
	db   $10                                         ; $4eb5: $10
	db   $10                                         ; $4eb6: $10
	db   $10                                         ; $4eb7: $10
	db   $10                                         ; $4eb8: $10
	db   $10                                         ; $4eb9: $10
	db   $10                                         ; $4eba: $10
	db   $10                                         ; $4ebb: $10
	db   $10                                         ; $4ebc: $10
	db   $10                                         ; $4ebd: $10
	db   $10                                         ; $4ebe: $10
	db   $10                                         ; $4ebf: $10
	db   $10                                         ; $4ec0: $10
	db   $10                                         ; $4ec1: $10
	ld   de, $1312                                   ; $4ec2: $11 $12 $13
	inc  d                                           ; $4ec5: $14
	inc  d                                           ; $4ec6: $14
	inc  d                                           ; $4ec7: $14
	inc  d                                           ; $4ec8: $14
	inc  d                                           ; $4ec9: $14
	inc  d                                           ; $4eca: $14
	inc  d                                           ; $4ecb: $14
	inc  d                                           ; $4ecc: $14
	inc  d                                           ; $4ecd: $14
	inc  d                                           ; $4ece: $14
	inc  d                                           ; $4ecf: $14
	inc  d                                           ; $4ed0: $14
	inc  d                                           ; $4ed1: $14
	inc  d                                           ; $4ed2: $14
	inc  d                                           ; $4ed3: $14
	inc  d                                           ; $4ed4: $14
	inc  d                                           ; $4ed5: $14
	dec  d                                           ; $4ed6: $15
	ld   d, $03                                      ; $4ed7: $16 $03
	inc  bc                                          ; $4ed9: $03
	inc  bc                                          ; $4eda: $03
	inc  bc                                          ; $4edb: $03
	inc  bc                                          ; $4edc: $03
	inc  bc                                          ; $4edd: $03
	inc  bc                                          ; $4ede: $03
	dec  b                                           ; $4edf: $05
	dec  b                                           ; $4ee0: $05
	dec  b                                           ; $4ee1: $05
	dec  b                                           ; $4ee2: $05
	dec  b                                           ; $4ee3: $05
	dec  b                                           ; $4ee4: $05
	dec  b                                           ; $4ee5: $05
	dec  b                                           ; $4ee6: $05
	dec  b                                           ; $4ee7: $05
	dec  b                                           ; $4ee8: $05
	dec  b                                           ; $4ee9: $05
	dec  b                                           ; $4eea: $05
	inc  bc                                          ; $4eeb: $03
	inc  bc                                          ; $4eec: $03
	inc  bc                                          ; $4eed: $03
	inc  bc                                          ; $4eee: $03
	inc  bc                                          ; $4eef: $03
	inc  bc                                          ; $4ef0: $03
	inc  bc                                          ; $4ef1: $03
	inc  bc                                          ; $4ef2: $03
	dec  b                                           ; $4ef3: $05
	dec  b                                           ; $4ef4: $05
	dec  b                                           ; $4ef5: $05
	dec  b                                           ; $4ef6: $05
	dec  b                                           ; $4ef7: $05
	dec  b                                           ; $4ef8: $05
	dec  b                                           ; $4ef9: $05
	dec  b                                           ; $4efa: $05
	dec  b                                           ; $4efb: $05
	dec  b                                           ; $4efc: $05
	dec  b                                           ; $4efd: $05
	dec  b                                           ; $4efe: $05
	inc  bc                                          ; $4eff: $03
	inc  bc                                          ; $4f00: $03
	inc  bc                                          ; $4f01: $03
	inc  bc                                          ; $4f02: $03
	inc  bc                                          ; $4f03: $03
	inc  bc                                          ; $4f04: $03
	inc  bc                                          ; $4f05: $03
	inc  bc                                          ; $4f06: $03
	inc  bc                                          ; $4f07: $03
	inc  bc                                          ; $4f08: $03
	dec  b                                           ; $4f09: $05
	dec  b                                           ; $4f0a: $05
	dec  b                                           ; $4f0b: $05
	dec  b                                           ; $4f0c: $05
	dec  b                                           ; $4f0d: $05
	dec  b                                           ; $4f0e: $05
	dec  h                                           ; $4f0f: $25
	dec  b                                           ; $4f10: $05
	dec  b                                           ; $4f11: $05
	dec  b                                           ; $4f12: $05
	inc  bc                                          ; $4f13: $03
	inc  bc                                          ; $4f14: $03
	inc  bc                                          ; $4f15: $03
	inc  bc                                          ; $4f16: $03
	inc  bc                                          ; $4f17: $03
	inc  bc                                          ; $4f18: $03
	inc  bc                                          ; $4f19: $03
	inc  bc                                          ; $4f1a: $03
	inc  bc                                          ; $4f1b: $03
	inc  bc                                          ; $4f1c: $03
	dec  b                                           ; $4f1d: $05
	dec  b                                           ; $4f1e: $05
	dec  b                                           ; $4f1f: $05
	dec  b                                           ; $4f20: $05
	dec  b                                           ; $4f21: $05
	inc  bc                                          ; $4f22: $03
	inc  bc                                          ; $4f23: $03
	inc  bc                                          ; $4f24: $03
	inc  b                                           ; $4f25: $04
	inc  b                                           ; $4f26: $04
	inc  b                                           ; $4f27: $04
	inc  bc                                          ; $4f28: $03
	inc  bc                                          ; $4f29: $03
	inc  bc                                          ; $4f2a: $03
	inc  bc                                          ; $4f2b: $03
	inc  bc                                          ; $4f2c: $03
	inc  bc                                          ; $4f2d: $03
	inc  bc                                          ; $4f2e: $03
	inc  bc                                          ; $4f2f: $03
	inc  bc                                          ; $4f30: $03
	inc  bc                                          ; $4f31: $03
	inc  bc                                          ; $4f32: $03
	inc  bc                                          ; $4f33: $03
	inc  bc                                          ; $4f34: $03
	inc  bc                                          ; $4f35: $03
	inc  bc                                          ; $4f36: $03
	inc  bc                                          ; $4f37: $03
	inc  bc                                          ; $4f38: $03
	inc  b                                           ; $4f39: $04
	inc  b                                           ; $4f3a: $04
	inc  b                                           ; $4f3b: $04
	inc  bc                                          ; $4f3c: $03
	inc  bc                                          ; $4f3d: $03
	inc  bc                                          ; $4f3e: $03
	inc  bc                                          ; $4f3f: $03
	inc  bc                                          ; $4f40: $03
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
	inc  bc                                          ; $4f4c: $03
	inc  b                                           ; $4f4d: $04
	inc  b                                           ; $4f4e: $04
	inc  b                                           ; $4f4f: $04
	inc  bc                                          ; $4f50: $03
	inc  bc                                          ; $4f51: $03
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
	dec  bc                                          ; $4f5c: $0b
	dec  bc                                          ; $4f5d: $0b
	dec  bc                                          ; $4f5e: $0b
	dec  bc                                          ; $4f5f: $0b
	dec  bc                                          ; $4f60: $0b
	inc  c                                           ; $4f61: $0c
	inc  c                                           ; $4f62: $0c
	inc  c                                           ; $4f63: $0c
	dec  bc                                          ; $4f64: $0b
	dec  bc                                          ; $4f65: $0b
	dec  bc                                          ; $4f66: $0b
	dec  bc                                          ; $4f67: $0b
	dec  bc                                          ; $4f68: $0b
	dec  bc                                          ; $4f69: $0b
	dec  bc                                          ; $4f6a: $0b
	dec  bc                                          ; $4f6b: $0b
	dec  bc                                          ; $4f6c: $0b
	dec  bc                                          ; $4f6d: $0b
	dec  bc                                          ; $4f6e: $0b
	dec  bc                                          ; $4f6f: $0b
	dec  bc                                          ; $4f70: $0b
	dec  bc                                          ; $4f71: $0b
	dec  bc                                          ; $4f72: $0b
	dec  bc                                          ; $4f73: $0b
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
	dec  bc                                          ; $4f85: $0b
	dec  bc                                          ; $4f86: $0b
	dec  bc                                          ; $4f87: $0b
	dec  bc                                          ; $4f88: $0b
	dec  bc                                          ; $4f89: $0b
	dec  bc                                          ; $4f8a: $0b
	dec  bc                                          ; $4f8b: $0b
	dec  c                                           ; $4f8c: $0d
	dec  c                                           ; $4f8d: $0d
	dec  c                                           ; $4f8e: $0d
	dec  c                                           ; $4f8f: $0d
	dec  c                                           ; $4f90: $0d
	dec  c                                           ; $4f91: $0d
	dec  c                                           ; $4f92: $0d
	dec  c                                           ; $4f93: $0d
	dec  c                                           ; $4f94: $0d
	dec  c                                           ; $4f95: $0d
	dec  c                                           ; $4f96: $0d
	dec  c                                           ; $4f97: $0d
	dec  c                                           ; $4f98: $0d
	dec  c                                           ; $4f99: $0d
	dec  c                                           ; $4f9a: $0d
	dec  c                                           ; $4f9b: $0d
	dec  c                                           ; $4f9c: $0d
	dec  c                                           ; $4f9d: $0d
	dec  c                                           ; $4f9e: $0d
	dec  c                                           ; $4f9f: $0d
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
	jr   nz, jr_082_4fd3                             ; $4fb0: $20 $21

	ld   [hl+], a                                    ; $4fb2: $22
	inc  hl                                          ; $4fb3: $23
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
	jr   nc, jr_082_4ff7                             ; $4fc4: $30 $31

	ld   [hl-], a                                    ; $4fc6: $32
	inc  sp                                          ; $4fc7: $33
	jr   nz, @+$23                                   ; $4fc8: $20 $21

	ld   [hl+], a                                    ; $4fca: $22
	inc  hl                                          ; $4fcb: $23
	inc  h                                           ; $4fcc: $24
	dec  h                                           ; $4fcd: $25
	ld   h, $27                                      ; $4fce: $26 $27
	jr   z, jr_082_4ffb                              ; $4fd0: $28 $29

	ld   a, [hl+]                                    ; $4fd2: $2a

jr_082_4fd3:
	dec  hl                                          ; $4fd3: $2b
	inc  l                                           ; $4fd4: $2c
	dec  l                                           ; $4fd5: $2d
	ld   l, $2f                                      ; $4fd6: $2e $2f
	inc  h                                           ; $4fd8: $24
	dec  h                                           ; $4fd9: $25
	ld   h, $27                                      ; $4fda: $26 $27
	jr   nc, jr_082_500f                             ; $4fdc: $30 $31

	ld   [hl-], a                                    ; $4fde: $32
	inc  sp                                          ; $4fdf: $33
	inc  [hl]                                        ; $4fe0: $34
	dec  [hl]                                        ; $4fe1: $35
	ld   [hl], $37                                   ; $4fe2: $36 $37
	jr   c, jr_082_501f                              ; $4fe4: $38 $39

	ld   a, [hl-]                                    ; $4fe6: $3a
	dec  sp                                          ; $4fe7: $3b
	inc  a                                           ; $4fe8: $3c
	dec  a                                           ; $4fe9: $3d
	ld   a, $3f                                      ; $4fea: $3e $3f
	inc  [hl]                                        ; $4fec: $34
	dec  [hl]                                        ; $4fed: $35
	ld   [hl], $37                                   ; $4fee: $36 $37
	ld   b, b                                        ; $4ff0: $40
	ld   b, c                                        ; $4ff1: $41
	ld   b, d                                        ; $4ff2: $42
	ld   b, e                                        ; $4ff3: $43
	ld   b, h                                        ; $4ff4: $44
	ld   b, l                                        ; $4ff5: $45
	ld   b, [hl]                                     ; $4ff6: $46

jr_082_4ff7:
	ld   b, a                                        ; $4ff7: $47
	ld   c, b                                        ; $4ff8: $48
	ld   c, c                                        ; $4ff9: $49
	ld   c, d                                        ; $4ffa: $4a

jr_082_4ffb:
	ld   c, e                                        ; $4ffb: $4b
	ld   c, h                                        ; $4ffc: $4c
	ld   c, l                                        ; $4ffd: $4d
	ld   c, [hl]                                     ; $4ffe: $4e
	ld   c, a                                        ; $4fff: $4f
	jr   z, @+$2b                                    ; $5000: $28 $29

	ld   a, [hl+]                                    ; $5002: $2a
	dec  hl                                          ; $5003: $2b
	ld   d, b                                        ; $5004: $50
	ld   d, c                                        ; $5005: $51
	ld   d, d                                        ; $5006: $52
	ld   d, e                                        ; $5007: $53
	ld   d, h                                        ; $5008: $54
	ld   d, l                                        ; $5009: $55
	ld   d, [hl]                                     ; $500a: $56
	ld   d, a                                        ; $500b: $57
	ld   e, b                                        ; $500c: $58
	ld   e, c                                        ; $500d: $59
	ld   e, d                                        ; $500e: $5a

jr_082_500f:
	ld   e, e                                        ; $500f: $5b
	ld   e, h                                        ; $5010: $5c
	ld   e, l                                        ; $5011: $5d
	ld   e, [hl]                                     ; $5012: $5e
	ld   e, a                                        ; $5013: $5f
	jr   c, @+$3b                                    ; $5014: $38 $39

	ld   a, [hl-]                                    ; $5016: $3a
	dec  sp                                          ; $5017: $3b
	ld   h, b                                        ; $5018: $60
	ld   h, c                                        ; $5019: $61
	ld   h, d                                        ; $501a: $62
	ld   h, e                                        ; $501b: $63
	ld   h, h                                        ; $501c: $64
	ld   h, l                                        ; $501d: $65
	ld   h, [hl]                                     ; $501e: $66

jr_082_501f:
	ld   h, a                                        ; $501f: $67
	ld   l, b                                        ; $5020: $68
	ld   l, c                                        ; $5021: $69
	ld   l, d                                        ; $5022: $6a
	ld   l, e                                        ; $5023: $6b
	ld   l, h                                        ; $5024: $6c
	ld   l, l                                        ; $5025: $6d
	ld   l, [hl]                                     ; $5026: $6e
	ld   l, a                                        ; $5027: $6f
	inc  l                                           ; $5028: $2c
	dec  l                                           ; $5029: $2d
	ld   l, $2f                                      ; $502a: $2e $2f
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
	ld   a, l                                        ; $5039: $7d
	ld   a, [hl]                                     ; $503a: $7e
	ld   a, a                                        ; $503b: $7f
	inc  a                                           ; $503c: $3c
	dec  a                                           ; $503d: $3d
	ld   a, $3f                                      ; $503e: $3e $3f
	nop                                              ; $5040: $00
	ld   bc, $0302                                   ; $5041: $01 $02 $03
	inc  b                                           ; $5044: $04
	dec  b                                           ; $5045: $05
	ld   b, $07                                      ; $5046: $06 $07
	ld   [$0a09], sp                                 ; $5048: $08 $09 $0a
	dec  bc                                          ; $504b: $0b
	inc  c                                           ; $504c: $0c
	dec  c                                           ; $504d: $0d
	ld   c, $0f                                      ; $504e: $0e $0f
	ld   b, b                                        ; $5050: $40
	ld   b, c                                        ; $5051: $41
	ld   b, d                                        ; $5052: $42
	ld   b, e                                        ; $5053: $43
	db   $10                                         ; $5054: $10
	ld   de, $1312                                   ; $5055: $11 $12 $13
	inc  d                                           ; $5058: $14
	dec  d                                           ; $5059: $15
	ld   d, $17                                      ; $505a: $16 $17
	jr   jr_082_5077                                 ; $505c: $18 $19

	ld   a, [de]                                     ; $505e: $1a
	dec  de                                          ; $505f: $1b
	inc  e                                           ; $5060: $1c
	dec  e                                           ; $5061: $1d
	ld   e, $1f                                      ; $5062: $1e $1f
	ld   b, h                                        ; $5064: $44
	ld   b, l                                        ; $5065: $45
	ld   b, [hl]                                     ; $5066: $46
	ld   b, a                                        ; $5067: $47
	inc  bc                                          ; $5068: $03
	inc  bc                                          ; $5069: $03
	inc  bc                                          ; $506a: $03
	inc  bc                                          ; $506b: $03
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

jr_082_5077:
	inc  bc                                          ; $5077: $03
	dec  bc                                          ; $5078: $0b
	dec  bc                                          ; $5079: $0b
	dec  bc                                          ; $507a: $0b
	dec  bc                                          ; $507b: $0b
	inc  bc                                          ; $507c: $03
	inc  bc                                          ; $507d: $03
	inc  bc                                          ; $507e: $03
	inc  bc                                          ; $507f: $03
	inc  bc                                          ; $5080: $03
	inc  bc                                          ; $5081: $03
	inc  bc                                          ; $5082: $03
	inc  bc                                          ; $5083: $03
	inc  bc                                          ; $5084: $03
	inc  bc                                          ; $5085: $03
	inc  bc                                          ; $5086: $03
	inc  bc                                          ; $5087: $03
	inc  bc                                          ; $5088: $03
	inc  bc                                          ; $5089: $03
	inc  bc                                          ; $508a: $03
	inc  bc                                          ; $508b: $03
	dec  bc                                          ; $508c: $0b
	dec  bc                                          ; $508d: $0b
	dec  bc                                          ; $508e: $0b
	dec  bc                                          ; $508f: $0b
	inc  bc                                          ; $5090: $03
	inc  bc                                          ; $5091: $03
	inc  bc                                          ; $5092: $03
	inc  bc                                          ; $5093: $03
	inc  bc                                          ; $5094: $03
	inc  bc                                          ; $5095: $03
	inc  bc                                          ; $5096: $03
	inc  bc                                          ; $5097: $03
	inc  bc                                          ; $5098: $03
	inc  bc                                          ; $5099: $03
	inc  bc                                          ; $509a: $03
	inc  bc                                          ; $509b: $03
	inc  bc                                          ; $509c: $03
	inc  bc                                          ; $509d: $03
	inc  bc                                          ; $509e: $03
	inc  bc                                          ; $509f: $03
	dec  bc                                          ; $50a0: $0b
	dec  bc                                          ; $50a1: $0b
	dec  bc                                          ; $50a2: $0b
	dec  bc                                          ; $50a3: $0b
	inc  bc                                          ; $50a4: $03
	inc  bc                                          ; $50a5: $03
	inc  bc                                          ; $50a6: $03
	inc  bc                                          ; $50a7: $03
	inc  bc                                          ; $50a8: $03
	inc  bc                                          ; $50a9: $03
	inc  bc                                          ; $50aa: $03
	inc  bc                                          ; $50ab: $03
	inc  bc                                          ; $50ac: $03
	inc  bc                                          ; $50ad: $03
	inc  bc                                          ; $50ae: $03
	inc  bc                                          ; $50af: $03
	inc  bc                                          ; $50b0: $03
	inc  bc                                          ; $50b1: $03
	inc  bc                                          ; $50b2: $03
	inc  bc                                          ; $50b3: $03
	dec  bc                                          ; $50b4: $0b
	dec  bc                                          ; $50b5: $0b
	dec  c                                           ; $50b6: $0d
	dec  c                                           ; $50b7: $0d
	inc  bc                                          ; $50b8: $03
	inc  bc                                          ; $50b9: $03
	inc  bc                                          ; $50ba: $03
	inc  bc                                          ; $50bb: $03
	inc  bc                                          ; $50bc: $03
	inc  bc                                          ; $50bd: $03
	inc  bc                                          ; $50be: $03
	inc  bc                                          ; $50bf: $03
	inc  bc                                          ; $50c0: $03
	inc  bc                                          ; $50c1: $03
	inc  bc                                          ; $50c2: $03
	inc  bc                                          ; $50c3: $03
	inc  bc                                          ; $50c4: $03
	inc  bc                                          ; $50c5: $03
	inc  bc                                          ; $50c6: $03
	inc  bc                                          ; $50c7: $03
	dec  bc                                          ; $50c8: $0b
	dec  bc                                          ; $50c9: $0b
	dec  c                                           ; $50ca: $0d
	dec  c                                           ; $50cb: $0d
	inc  bc                                          ; $50cc: $03
	inc  bc                                          ; $50cd: $03
	inc  bc                                          ; $50ce: $03
	inc  bc                                          ; $50cf: $03
	inc  bc                                          ; $50d0: $03
	inc  bc                                          ; $50d1: $03
	inc  bc                                          ; $50d2: $03
	inc  bc                                          ; $50d3: $03
	inc  bc                                          ; $50d4: $03
	inc  bc                                          ; $50d5: $03
	inc  bc                                          ; $50d6: $03
	inc  bc                                          ; $50d7: $03
	inc  bc                                          ; $50d8: $03
	inc  bc                                          ; $50d9: $03
	inc  bc                                          ; $50da: $03
	inc  bc                                          ; $50db: $03
	dec  bc                                          ; $50dc: $0b
	dec  bc                                          ; $50dd: $0b
	dec  c                                           ; $50de: $0d
	dec  c                                           ; $50df: $0d
	inc  bc                                          ; $50e0: $03
	inc  bc                                          ; $50e1: $03
	inc  bc                                          ; $50e2: $03
	inc  bc                                          ; $50e3: $03
	inc  bc                                          ; $50e4: $03
	inc  bc                                          ; $50e5: $03
	inc  bc                                          ; $50e6: $03
	inc  bc                                          ; $50e7: $03
	inc  bc                                          ; $50e8: $03
	inc  bc                                          ; $50e9: $03
	inc  bc                                          ; $50ea: $03
	inc  bc                                          ; $50eb: $03
	inc  bc                                          ; $50ec: $03
	inc  bc                                          ; $50ed: $03
	inc  bc                                          ; $50ee: $03
	inc  bc                                          ; $50ef: $03
	dec  bc                                          ; $50f0: $0b
	dec  bc                                          ; $50f1: $0b
	dec  c                                           ; $50f2: $0d
	dec  c                                           ; $50f3: $0d
	inc  bc                                          ; $50f4: $03
	inc  b                                           ; $50f5: $04
	inc  b                                           ; $50f6: $04
	inc  b                                           ; $50f7: $04
	inc  b                                           ; $50f8: $04
	inc  b                                           ; $50f9: $04
	inc  bc                                          ; $50fa: $03
	inc  bc                                          ; $50fb: $03
	inc  bc                                          ; $50fc: $03
	inc  bc                                          ; $50fd: $03
	inc  bc                                          ; $50fe: $03
	inc  bc                                          ; $50ff: $03
	inc  bc                                          ; $5100: $03
	inc  bc                                          ; $5101: $03
	inc  b                                           ; $5102: $04
	inc  b                                           ; $5103: $04
	inc  c                                           ; $5104: $0c
	inc  c                                           ; $5105: $0c
	dec  c                                           ; $5106: $0d
	dec  c                                           ; $5107: $0d
	dec  bc                                          ; $5108: $0b
	inc  c                                           ; $5109: $0c
	inc  c                                           ; $510a: $0c
	inc  c                                           ; $510b: $0c
	inc  c                                           ; $510c: $0c
	inc  c                                           ; $510d: $0c
	inc  c                                           ; $510e: $0c
	inc  c                                           ; $510f: $0c
	inc  c                                           ; $5110: $0c
	inc  c                                           ; $5111: $0c
	inc  c                                           ; $5112: $0c
	inc  c                                           ; $5113: $0c
	inc  c                                           ; $5114: $0c
	inc  c                                           ; $5115: $0c
	inc  c                                           ; $5116: $0c
	inc  c                                           ; $5117: $0c
	inc  c                                           ; $5118: $0c
	inc  c                                           ; $5119: $0c
	inc  c                                           ; $511a: $0c
	inc  c                                           ; $511b: $0c
	dec  bc                                          ; $511c: $0b
	dec  bc                                          ; $511d: $0b
	dec  bc                                          ; $511e: $0b
	dec  bc                                          ; $511f: $0b
	inc  c                                           ; $5120: $0c
	inc  c                                           ; $5121: $0c
	inc  c                                           ; $5122: $0c
	inc  c                                           ; $5123: $0c
	inc  c                                           ; $5124: $0c
	inc  c                                           ; $5125: $0c
	inc  c                                           ; $5126: $0c
	inc  c                                           ; $5127: $0c
	inc  c                                           ; $5128: $0c
	inc  c                                           ; $5129: $0c
	inc  c                                           ; $512a: $0c
	inc  c                                           ; $512b: $0c
	inc  c                                           ; $512c: $0c
	inc  c                                           ; $512d: $0c
	inc  c                                           ; $512e: $0c
	inc  c                                           ; $512f: $0c
	nop                                              ; $5130: $00
	ld   bc, $0302                                   ; $5131: $01 $02 $03
	inc  b                                           ; $5134: $04
	dec  b                                           ; $5135: $05
	ld   b, $07                                      ; $5136: $06 $07
	ld   [$0a09], sp                                 ; $5138: $08 $09 $0a
	dec  bc                                          ; $513b: $0b
	inc  c                                           ; $513c: $0c
	dec  c                                           ; $513d: $0d
	ld   c, $0f                                      ; $513e: $0e $0f
	jr   nz, jr_082_5163                             ; $5140: $20 $21

	ld   [hl+], a                                    ; $5142: $22
	inc  hl                                          ; $5143: $23
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
	jr   nc, jr_082_5187                             ; $5154: $30 $31

	ld   [hl-], a                                    ; $5156: $32
	inc  sp                                          ; $5157: $33
	jr   nz, @+$23                                   ; $5158: $20 $21

	ld   [hl+], a                                    ; $515a: $22
	inc  hl                                          ; $515b: $23
	inc  h                                           ; $515c: $24
	dec  h                                           ; $515d: $25
	ld   h, $27                                      ; $515e: $26 $27
	jr   z, jr_082_518b                              ; $5160: $28 $29

	ld   a, [hl+]                                    ; $5162: $2a

jr_082_5163:
	dec  hl                                          ; $5163: $2b
	inc  l                                           ; $5164: $2c
	dec  l                                           ; $5165: $2d
	ld   l, $2f                                      ; $5166: $2e $2f
	inc  h                                           ; $5168: $24
	dec  h                                           ; $5169: $25
	ld   h, $27                                      ; $516a: $26 $27
	jr   nc, jr_082_519f                             ; $516c: $30 $31

	ld   [hl-], a                                    ; $516e: $32
	inc  sp                                          ; $516f: $33
	inc  [hl]                                        ; $5170: $34
	dec  [hl]                                        ; $5171: $35
	ld   [hl], $37                                   ; $5172: $36 $37
	jr   c, jr_082_51af                              ; $5174: $38 $39

	ld   a, [hl-]                                    ; $5176: $3a
	dec  sp                                          ; $5177: $3b
	inc  a                                           ; $5178: $3c
	dec  a                                           ; $5179: $3d
	ld   a, $3f                                      ; $517a: $3e $3f
	inc  [hl]                                        ; $517c: $34
	dec  [hl]                                        ; $517d: $35
	ld   [hl], $37                                   ; $517e: $36 $37
	ld   b, b                                        ; $5180: $40
	ld   b, c                                        ; $5181: $41
	ld   b, d                                        ; $5182: $42
	ld   b, e                                        ; $5183: $43
	ld   b, h                                        ; $5184: $44
	ld   b, l                                        ; $5185: $45
	ld   b, [hl]                                     ; $5186: $46

jr_082_5187:
	ld   b, a                                        ; $5187: $47
	ld   c, b                                        ; $5188: $48
	ld   c, c                                        ; $5189: $49
	ld   c, d                                        ; $518a: $4a

jr_082_518b:
	ld   c, e                                        ; $518b: $4b
	ld   c, h                                        ; $518c: $4c
	ld   c, l                                        ; $518d: $4d
	ld   c, [hl]                                     ; $518e: $4e
	ld   c, a                                        ; $518f: $4f
	jr   z, @+$2b                                    ; $5190: $28 $29

	ld   a, [hl+]                                    ; $5192: $2a
	dec  hl                                          ; $5193: $2b
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

jr_082_519f:
	ld   e, e                                        ; $519f: $5b
	ld   e, h                                        ; $51a0: $5c
	ld   e, l                                        ; $51a1: $5d
	ld   e, [hl]                                     ; $51a2: $5e
	ld   e, a                                        ; $51a3: $5f
	jr   c, @+$3b                                    ; $51a4: $38 $39

	ld   a, [hl-]                                    ; $51a6: $3a
	dec  sp                                          ; $51a7: $3b
	ld   h, b                                        ; $51a8: $60
	ld   h, c                                        ; $51a9: $61
	ld   h, d                                        ; $51aa: $62
	ld   h, e                                        ; $51ab: $63
	ld   h, h                                        ; $51ac: $64
	ld   h, l                                        ; $51ad: $65
	ld   h, [hl]                                     ; $51ae: $66

jr_082_51af:
	ld   h, a                                        ; $51af: $67
	ld   l, b                                        ; $51b0: $68
	ld   l, c                                        ; $51b1: $69
	ld   l, d                                        ; $51b2: $6a
	ld   l, e                                        ; $51b3: $6b
	ld   l, h                                        ; $51b4: $6c
	ld   l, l                                        ; $51b5: $6d
	ld   l, [hl]                                     ; $51b6: $6e
	ld   l, a                                        ; $51b7: $6f
	inc  l                                           ; $51b8: $2c
	dec  l                                           ; $51b9: $2d
	ld   l, $2f                                      ; $51ba: $2e $2f
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
	ld   a, d                                        ; $51c6: $7a
	ld   a, e                                        ; $51c7: $7b
	ld   a, h                                        ; $51c8: $7c
	ld   a, l                                        ; $51c9: $7d
	ld   a, [hl]                                     ; $51ca: $7e
	ld   a, a                                        ; $51cb: $7f
	inc  a                                           ; $51cc: $3c
	dec  a                                           ; $51cd: $3d
	ld   a, $3f                                      ; $51ce: $3e $3f
	nop                                              ; $51d0: $00
	ld   bc, $0302                                   ; $51d1: $01 $02 $03
	inc  b                                           ; $51d4: $04
	dec  b                                           ; $51d5: $05
	ld   b, $07                                      ; $51d6: $06 $07
	ld   [$0a09], sp                                 ; $51d8: $08 $09 $0a
	dec  bc                                          ; $51db: $0b
	inc  c                                           ; $51dc: $0c
	dec  c                                           ; $51dd: $0d
	ld   c, $0f                                      ; $51de: $0e $0f
	ld   b, b                                        ; $51e0: $40
	ld   b, c                                        ; $51e1: $41
	ld   b, d                                        ; $51e2: $42
	ld   b, e                                        ; $51e3: $43
	db   $10                                         ; $51e4: $10
	ld   de, $1312                                   ; $51e5: $11 $12 $13
	inc  d                                           ; $51e8: $14
	dec  d                                           ; $51e9: $15
	ld   d, $17                                      ; $51ea: $16 $17
	jr   jr_082_5207                                 ; $51ec: $18 $19

	ld   a, [de]                                     ; $51ee: $1a
	dec  de                                          ; $51ef: $1b
	inc  e                                           ; $51f0: $1c
	dec  e                                           ; $51f1: $1d
	ld   e, $1f                                      ; $51f2: $1e $1f
	ld   b, h                                        ; $51f4: $44
	ld   b, l                                        ; $51f5: $45
	ld   b, [hl]                                     ; $51f6: $46
	ld   b, a                                        ; $51f7: $47
	inc  bc                                          ; $51f8: $03
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

jr_082_5207:
	inc  bc                                          ; $5207: $03
	dec  bc                                          ; $5208: $0b
	dec  bc                                          ; $5209: $0b
	dec  bc                                          ; $520a: $0b
	dec  bc                                          ; $520b: $0b
	inc  bc                                          ; $520c: $03
	inc  bc                                          ; $520d: $03
	inc  bc                                          ; $520e: $03
	inc  bc                                          ; $520f: $03
	inc  bc                                          ; $5210: $03
	inc  bc                                          ; $5211: $03
	inc  bc                                          ; $5212: $03
	inc  bc                                          ; $5213: $03
	inc  bc                                          ; $5214: $03
	inc  bc                                          ; $5215: $03
	inc  bc                                          ; $5216: $03
	inc  bc                                          ; $5217: $03
	inc  bc                                          ; $5218: $03
	inc  bc                                          ; $5219: $03
	inc  bc                                          ; $521a: $03
	inc  bc                                          ; $521b: $03
	dec  bc                                          ; $521c: $0b
	dec  bc                                          ; $521d: $0b
	dec  bc                                          ; $521e: $0b
	dec  bc                                          ; $521f: $0b
	inc  bc                                          ; $5220: $03
	inc  bc                                          ; $5221: $03
	inc  bc                                          ; $5222: $03
	inc  bc                                          ; $5223: $03
	inc  bc                                          ; $5224: $03
	inc  bc                                          ; $5225: $03
	inc  bc                                          ; $5226: $03
	inc  bc                                          ; $5227: $03
	inc  bc                                          ; $5228: $03
	inc  bc                                          ; $5229: $03
	inc  bc                                          ; $522a: $03
	inc  bc                                          ; $522b: $03
	inc  bc                                          ; $522c: $03
	inc  bc                                          ; $522d: $03
	inc  bc                                          ; $522e: $03
	inc  bc                                          ; $522f: $03
	dec  bc                                          ; $5230: $0b
	dec  bc                                          ; $5231: $0b
	dec  bc                                          ; $5232: $0b
	dec  bc                                          ; $5233: $0b
	inc  bc                                          ; $5234: $03
	inc  bc                                          ; $5235: $03
	inc  bc                                          ; $5236: $03
	inc  bc                                          ; $5237: $03
	inc  bc                                          ; $5238: $03
	inc  bc                                          ; $5239: $03
	inc  bc                                          ; $523a: $03
	inc  bc                                          ; $523b: $03
	inc  bc                                          ; $523c: $03
	inc  bc                                          ; $523d: $03
	inc  bc                                          ; $523e: $03
	inc  bc                                          ; $523f: $03
	inc  bc                                          ; $5240: $03
	inc  bc                                          ; $5241: $03
	inc  bc                                          ; $5242: $03
	inc  bc                                          ; $5243: $03
	dec  bc                                          ; $5244: $0b
	dec  bc                                          ; $5245: $0b
	dec  c                                           ; $5246: $0d
	dec  c                                           ; $5247: $0d
	inc  bc                                          ; $5248: $03
	inc  bc                                          ; $5249: $03
	inc  bc                                          ; $524a: $03
	inc  bc                                          ; $524b: $03
	inc  bc                                          ; $524c: $03
	inc  bc                                          ; $524d: $03
	inc  bc                                          ; $524e: $03
	inc  bc                                          ; $524f: $03
	inc  bc                                          ; $5250: $03
	inc  bc                                          ; $5251: $03
	inc  bc                                          ; $5252: $03
	inc  bc                                          ; $5253: $03
	inc  bc                                          ; $5254: $03
	inc  bc                                          ; $5255: $03
	inc  bc                                          ; $5256: $03
	inc  bc                                          ; $5257: $03
	dec  bc                                          ; $5258: $0b
	dec  bc                                          ; $5259: $0b
	dec  c                                           ; $525a: $0d
	dec  c                                           ; $525b: $0d
	inc  bc                                          ; $525c: $03
	inc  bc                                          ; $525d: $03
	inc  bc                                          ; $525e: $03
	inc  bc                                          ; $525f: $03
	inc  bc                                          ; $5260: $03
	inc  bc                                          ; $5261: $03
	inc  bc                                          ; $5262: $03
	inc  bc                                          ; $5263: $03
	inc  bc                                          ; $5264: $03
	inc  bc                                          ; $5265: $03
	inc  bc                                          ; $5266: $03
	inc  bc                                          ; $5267: $03
	inc  bc                                          ; $5268: $03
	inc  bc                                          ; $5269: $03
	inc  bc                                          ; $526a: $03
	inc  bc                                          ; $526b: $03
	dec  bc                                          ; $526c: $0b
	dec  bc                                          ; $526d: $0b
	dec  c                                           ; $526e: $0d
	dec  c                                           ; $526f: $0d
	inc  bc                                          ; $5270: $03
	inc  bc                                          ; $5271: $03
	inc  bc                                          ; $5272: $03
	inc  bc                                          ; $5273: $03
	inc  bc                                          ; $5274: $03
	inc  bc                                          ; $5275: $03
	inc  bc                                          ; $5276: $03
	inc  bc                                          ; $5277: $03
	inc  bc                                          ; $5278: $03
	inc  bc                                          ; $5279: $03
	inc  bc                                          ; $527a: $03
	inc  bc                                          ; $527b: $03
	inc  bc                                          ; $527c: $03
	inc  bc                                          ; $527d: $03
	inc  bc                                          ; $527e: $03
	inc  bc                                          ; $527f: $03
	dec  c                                           ; $5280: $0d
	dec  c                                           ; $5281: $0d
	dec  c                                           ; $5282: $0d
	dec  c                                           ; $5283: $0d
	inc  b                                           ; $5284: $04
	inc  b                                           ; $5285: $04
	inc  b                                           ; $5286: $04
	inc  b                                           ; $5287: $04
	inc  b                                           ; $5288: $04
	inc  bc                                          ; $5289: $03
	inc  bc                                          ; $528a: $03
	inc  bc                                          ; $528b: $03
	inc  bc                                          ; $528c: $03
	inc  bc                                          ; $528d: $03
	inc  bc                                          ; $528e: $03
	inc  bc                                          ; $528f: $03
	inc  bc                                          ; $5290: $03
	inc  bc                                          ; $5291: $03
	inc  bc                                          ; $5292: $03
	inc  bc                                          ; $5293: $03
	dec  c                                           ; $5294: $0d
	dec  c                                           ; $5295: $0d
	dec  c                                           ; $5296: $0d
	dec  c                                           ; $5297: $0d
	inc  c                                           ; $5298: $0c
	inc  c                                           ; $5299: $0c
	inc  c                                           ; $529a: $0c
	inc  c                                           ; $529b: $0c
	inc  c                                           ; $529c: $0c
	inc  c                                           ; $529d: $0c
	inc  c                                           ; $529e: $0c
	inc  c                                           ; $529f: $0c
	inc  c                                           ; $52a0: $0c
	inc  c                                           ; $52a1: $0c
	inc  c                                           ; $52a2: $0c
	inc  c                                           ; $52a3: $0c
	inc  c                                           ; $52a4: $0c
	inc  c                                           ; $52a5: $0c
	inc  c                                           ; $52a6: $0c
	inc  c                                           ; $52a7: $0c
	dec  c                                           ; $52a8: $0d
	dec  c                                           ; $52a9: $0d
	dec  c                                           ; $52aa: $0d
	dec  c                                           ; $52ab: $0d
	inc  c                                           ; $52ac: $0c
	inc  c                                           ; $52ad: $0c
	inc  c                                           ; $52ae: $0c
	inc  c                                           ; $52af: $0c
	inc  c                                           ; $52b0: $0c
	inc  c                                           ; $52b1: $0c
	inc  c                                           ; $52b2: $0c
	inc  c                                           ; $52b3: $0c
	inc  c                                           ; $52b4: $0c
	inc  c                                           ; $52b5: $0c
	inc  c                                           ; $52b6: $0c
	inc  c                                           ; $52b7: $0c
	inc  c                                           ; $52b8: $0c
	inc  c                                           ; $52b9: $0c
	inc  c                                           ; $52ba: $0c
	inc  c                                           ; $52bb: $0c
	dec  c                                           ; $52bc: $0d
	dec  c                                           ; $52bd: $0d
	dec  c                                           ; $52be: $0d
	dec  c                                           ; $52bf: $0d
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
	jr   nz, jr_082_52f3                             ; $52d0: $20 $21

	ld   [hl+], a                                    ; $52d2: $22
	inc  hl                                          ; $52d3: $23
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
	ld   e, $1f                                      ; $52e2: $1e $1f
	jr   nc, jr_082_5317                             ; $52e4: $30 $31

	ld   [hl-], a                                    ; $52e6: $32
	inc  sp                                          ; $52e7: $33
	jr   nz, @+$23                                   ; $52e8: $20 $21

	ld   [hl+], a                                    ; $52ea: $22
	inc  hl                                          ; $52eb: $23
	inc  h                                           ; $52ec: $24
	dec  h                                           ; $52ed: $25
	ld   h, $27                                      ; $52ee: $26 $27
	jr   z, jr_082_531b                              ; $52f0: $28 $29

	ld   a, [hl+]                                    ; $52f2: $2a

jr_082_52f3:
	dec  hl                                          ; $52f3: $2b
	inc  l                                           ; $52f4: $2c
	dec  l                                           ; $52f5: $2d
	ld   l, $2f                                      ; $52f6: $2e $2f
	inc  h                                           ; $52f8: $24
	dec  h                                           ; $52f9: $25
	ld   h, $27                                      ; $52fa: $26 $27
	jr   nc, jr_082_532f                             ; $52fc: $30 $31

	ld   [hl-], a                                    ; $52fe: $32
	inc  sp                                          ; $52ff: $33
	inc  [hl]                                        ; $5300: $34
	dec  [hl]                                        ; $5301: $35
	ld   [hl], $37                                   ; $5302: $36 $37
	jr   c, jr_082_533f                              ; $5304: $38 $39

	ld   a, [hl-]                                    ; $5306: $3a
	dec  sp                                          ; $5307: $3b
	inc  a                                           ; $5308: $3c
	dec  a                                           ; $5309: $3d
	ld   a, $3f                                      ; $530a: $3e $3f
	inc  [hl]                                        ; $530c: $34
	dec  [hl]                                        ; $530d: $35
	ld   [hl], $37                                   ; $530e: $36 $37
	ld   b, b                                        ; $5310: $40
	ld   b, c                                        ; $5311: $41
	ld   b, d                                        ; $5312: $42
	ld   b, e                                        ; $5313: $43
	ld   b, h                                        ; $5314: $44
	ld   b, l                                        ; $5315: $45
	ld   b, [hl]                                     ; $5316: $46

jr_082_5317:
	ld   b, a                                        ; $5317: $47
	ld   c, b                                        ; $5318: $48
	ld   c, c                                        ; $5319: $49
	ld   c, d                                        ; $531a: $4a

jr_082_531b:
	ld   c, e                                        ; $531b: $4b
	ld   c, h                                        ; $531c: $4c
	ld   c, l                                        ; $531d: $4d
	ld   c, [hl]                                     ; $531e: $4e
	ld   c, a                                        ; $531f: $4f
	jr   z, @+$2b                                    ; $5320: $28 $29

	ld   a, [hl+]                                    ; $5322: $2a
	dec  hl                                          ; $5323: $2b
	ld   d, b                                        ; $5324: $50
	ld   d, c                                        ; $5325: $51
	ld   d, d                                        ; $5326: $52
	ld   d, e                                        ; $5327: $53
	ld   d, h                                        ; $5328: $54
	ld   d, l                                        ; $5329: $55
	ld   d, [hl]                                     ; $532a: $56
	ld   d, a                                        ; $532b: $57
	ld   e, b                                        ; $532c: $58
	ld   e, c                                        ; $532d: $59
	ld   e, d                                        ; $532e: $5a

jr_082_532f:
	ld   e, e                                        ; $532f: $5b
	ld   e, h                                        ; $5330: $5c
	ld   e, l                                        ; $5331: $5d
	ld   e, [hl]                                     ; $5332: $5e
	ld   e, a                                        ; $5333: $5f
	jr   c, @+$3b                                    ; $5334: $38 $39

	ld   a, [hl-]                                    ; $5336: $3a
	dec  sp                                          ; $5337: $3b
	ld   h, b                                        ; $5338: $60
	ld   h, c                                        ; $5339: $61
	ld   h, d                                        ; $533a: $62
	ld   h, e                                        ; $533b: $63
	ld   h, h                                        ; $533c: $64
	ld   h, l                                        ; $533d: $65
	ld   h, [hl]                                     ; $533e: $66

jr_082_533f:
	ld   h, a                                        ; $533f: $67
	ld   l, b                                        ; $5340: $68
	ld   l, c                                        ; $5341: $69
	ld   l, d                                        ; $5342: $6a
	ld   l, e                                        ; $5343: $6b
	ld   l, h                                        ; $5344: $6c
	ld   l, l                                        ; $5345: $6d
	ld   l, [hl]                                     ; $5346: $6e
	ld   l, a                                        ; $5347: $6f
	inc  l                                           ; $5348: $2c
	dec  l                                           ; $5349: $2d
	ld   l, $2f                                      ; $534a: $2e $2f
	ld   [hl], b                                     ; $534c: $70
	ld   [hl], c                                     ; $534d: $71
	ld   [hl], d                                     ; $534e: $72
	ld   [hl], e                                     ; $534f: $73
	ld   [hl], h                                     ; $5350: $74
	ld   [hl], l                                     ; $5351: $75
	halt                                             ; $5352: $76
	ld   [hl], a                                     ; $5353: $77
	ld   a, b                                        ; $5354: $78
	ld   a, c                                        ; $5355: $79
	ld   a, d                                        ; $5356: $7a
	ld   a, e                                        ; $5357: $7b
	ld   a, h                                        ; $5358: $7c
	ld   a, l                                        ; $5359: $7d
	ld   a, [hl]                                     ; $535a: $7e
	ld   a, a                                        ; $535b: $7f
	inc  a                                           ; $535c: $3c
	dec  a                                           ; $535d: $3d
	ld   a, $3f                                      ; $535e: $3e $3f
	nop                                              ; $5360: $00
	ld   bc, $0302                                   ; $5361: $01 $02 $03
	inc  b                                           ; $5364: $04
	dec  b                                           ; $5365: $05
	ld   b, $07                                      ; $5366: $06 $07
	ld   [$0a09], sp                                 ; $5368: $08 $09 $0a
	dec  bc                                          ; $536b: $0b
	inc  c                                           ; $536c: $0c
	dec  c                                           ; $536d: $0d
	ld   c, $0f                                      ; $536e: $0e $0f
	ld   b, b                                        ; $5370: $40
	ld   b, c                                        ; $5371: $41
	ld   b, d                                        ; $5372: $42
	ld   b, e                                        ; $5373: $43
	db   $10                                         ; $5374: $10
	ld   de, $1312                                   ; $5375: $11 $12 $13
	inc  d                                           ; $5378: $14
	dec  d                                           ; $5379: $15
	ld   d, $17                                      ; $537a: $16 $17
	jr   jr_082_5397                                 ; $537c: $18 $19

	ld   a, [de]                                     ; $537e: $1a
	dec  de                                          ; $537f: $1b
	inc  e                                           ; $5380: $1c
	dec  e                                           ; $5381: $1d
	ld   e, $1f                                      ; $5382: $1e $1f
	ld   b, h                                        ; $5384: $44
	ld   b, l                                        ; $5385: $45
	ld   b, [hl]                                     ; $5386: $46
	ld   b, a                                        ; $5387: $47
	inc  bc                                          ; $5388: $03
	inc  bc                                          ; $5389: $03
	inc  bc                                          ; $538a: $03
	inc  bc                                          ; $538b: $03
	inc  bc                                          ; $538c: $03
	inc  bc                                          ; $538d: $03
	inc  bc                                          ; $538e: $03
	inc  bc                                          ; $538f: $03
	inc  bc                                          ; $5390: $03
	inc  b                                           ; $5391: $04
	inc  b                                           ; $5392: $04
	inc  bc                                          ; $5393: $03
	inc  bc                                          ; $5394: $03
	inc  bc                                          ; $5395: $03
	inc  bc                                          ; $5396: $03

jr_082_5397:
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
	inc  bc                                          ; $53a1: $03
	inc  bc                                          ; $53a2: $03
	inc  bc                                          ; $53a3: $03
	dec  b                                           ; $53a4: $05
	dec  b                                           ; $53a5: $05
	dec  b                                           ; $53a6: $05
	dec  b                                           ; $53a7: $05
	inc  bc                                          ; $53a8: $03
	inc  bc                                          ; $53a9: $03
	inc  bc                                          ; $53aa: $03
	inc  bc                                          ; $53ab: $03
	dec  bc                                          ; $53ac: $0b
	dec  bc                                          ; $53ad: $0b
	dec  bc                                          ; $53ae: $0b
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
	inc  bc                                          ; $53ba: $03
	inc  bc                                          ; $53bb: $03
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
	inc  bc                                          ; $53d3: $03
	dec  bc                                          ; $53d4: $0b
	dec  bc                                          ; $53d5: $0b
	dec  c                                           ; $53d6: $0d
	dec  c                                           ; $53d7: $0d
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
	inc  bc                                          ; $53e7: $03
	dec  bc                                          ; $53e8: $0b
	dec  bc                                          ; $53e9: $0b
	dec  c                                           ; $53ea: $0d
	dec  c                                           ; $53eb: $0d
	inc  bc                                          ; $53ec: $03
	inc  bc                                          ; $53ed: $03
	inc  bc                                          ; $53ee: $03
	inc  bc                                          ; $53ef: $03
	inc  bc                                          ; $53f0: $03
	inc  bc                                          ; $53f1: $03
	inc  bc                                          ; $53f2: $03
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
	dec  c                                           ; $53fe: $0d
	dec  c                                           ; $53ff: $0d
	inc  bc                                          ; $5400: $03
	inc  bc                                          ; $5401: $03
	inc  bc                                          ; $5402: $03
	inc  bc                                          ; $5403: $03
	inc  bc                                          ; $5404: $03
	inc  bc                                          ; $5405: $03
	inc  bc                                          ; $5406: $03
	inc  bc                                          ; $5407: $03
	inc  bc                                          ; $5408: $03
	inc  bc                                          ; $5409: $03
	inc  bc                                          ; $540a: $03
	inc  bc                                          ; $540b: $03
	inc  bc                                          ; $540c: $03
	inc  bc                                          ; $540d: $03
	inc  bc                                          ; $540e: $03
	inc  bc                                          ; $540f: $03
	dec  bc                                          ; $5410: $0b
	dec  bc                                          ; $5411: $0b
	dec  c                                           ; $5412: $0d
	dec  c                                           ; $5413: $0d
	inc  bc                                          ; $5414: $03
	inc  b                                           ; $5415: $04
	inc  b                                           ; $5416: $04
	inc  b                                           ; $5417: $04
	inc  b                                           ; $5418: $04
	inc  b                                           ; $5419: $04
	inc  bc                                          ; $541a: $03
	inc  bc                                          ; $541b: $03
	inc  bc                                          ; $541c: $03
	inc  bc                                          ; $541d: $03
	inc  bc                                          ; $541e: $03
	inc  bc                                          ; $541f: $03
	inc  bc                                          ; $5420: $03
	inc  bc                                          ; $5421: $03
	inc  b                                           ; $5422: $04
	inc  b                                           ; $5423: $04
	inc  c                                           ; $5424: $0c
	inc  c                                           ; $5425: $0c
	dec  c                                           ; $5426: $0d
	dec  c                                           ; $5427: $0d
	inc  c                                           ; $5428: $0c
	inc  c                                           ; $5429: $0c
	inc  c                                           ; $542a: $0c
	inc  c                                           ; $542b: $0c
	inc  c                                           ; $542c: $0c
	inc  c                                           ; $542d: $0c
	inc  c                                           ; $542e: $0c
	inc  c                                           ; $542f: $0c
	inc  c                                           ; $5430: $0c
	inc  c                                           ; $5431: $0c
	inc  c                                           ; $5432: $0c
	inc  c                                           ; $5433: $0c
	inc  c                                           ; $5434: $0c
	inc  c                                           ; $5435: $0c
	inc  c                                           ; $5436: $0c
	inc  c                                           ; $5437: $0c
	dec  c                                           ; $5438: $0d
	dec  c                                           ; $5439: $0d
	dec  c                                           ; $543a: $0d
	dec  c                                           ; $543b: $0d
	dec  c                                           ; $543c: $0d
	dec  c                                           ; $543d: $0d
	dec  c                                           ; $543e: $0d
	inc  c                                           ; $543f: $0c
	dec  c                                           ; $5440: $0d
	inc  c                                           ; $5441: $0c
	inc  c                                           ; $5442: $0c
	inc  c                                           ; $5443: $0c
	inc  c                                           ; $5444: $0c
	inc  c                                           ; $5445: $0c
	inc  c                                           ; $5446: $0c
	inc  c                                           ; $5447: $0c
	inc  c                                           ; $5448: $0c
	inc  c                                           ; $5449: $0c
	inc  c                                           ; $544a: $0c
	inc  c                                           ; $544b: $0c
	dec  c                                           ; $544c: $0d
	dec  c                                           ; $544d: $0d
	dec  c                                           ; $544e: $0d
	dec  c                                           ; $544f: $0d
	nop                                              ; $5450: $00
	ld   bc, $0302                                   ; $5451: $01 $02 $03
	inc  b                                           ; $5454: $04
	dec  b                                           ; $5455: $05
	ld   b, $07                                      ; $5456: $06 $07
	ld   [$0a09], sp                                 ; $5458: $08 $09 $0a
	dec  bc                                          ; $545b: $0b
	inc  c                                           ; $545c: $0c
	dec  c                                           ; $545d: $0d
	ld   c, $04                                      ; $545e: $0e $04
	inc  bc                                          ; $5460: $03
	ld   [bc], a                                     ; $5461: $02
	ld   bc, $1000                                   ; $5462: $01 $00 $10
	ld   de, $1312                                   ; $5465: $11 $12 $13
	inc  d                                           ; $5468: $14
	dec  d                                           ; $5469: $15
	ld   d, $17                                      ; $546a: $16 $17
	jr   @+$1b                                       ; $546c: $18 $19

	ld   a, [de]                                     ; $546e: $1a
	dec  de                                          ; $546f: $1b
	inc  e                                           ; $5470: $1c
	dec  e                                           ; $5471: $1d
	ld   e, $14                                      ; $5472: $1e $14
	inc  de                                          ; $5474: $13
	ld   [de], a                                     ; $5475: $12
	ld   de, $2010                                   ; $5476: $11 $10 $20
	ld   hl, $2322                                   ; $5479: $21 $22 $23
	inc  h                                           ; $547c: $24
	dec  h                                           ; $547d: $25
	ld   h, $27                                      ; $547e: $26 $27
	jr   z, jr_082_54ab                              ; $5480: $28 $29

	ld   a, [hl+]                                    ; $5482: $2a
	dec  hl                                          ; $5483: $2b
	inc  l                                           ; $5484: $2c
	dec  l                                           ; $5485: $2d
	ld   l, $24                                      ; $5486: $2e $24
	inc  hl                                          ; $5488: $23
	ld   [hl+], a                                    ; $5489: $22
	ld   hl, $3020                                   ; $548a: $21 $20 $30
	ld   sp, $3332                                   ; $548d: $31 $32 $33
	inc  [hl]                                        ; $5490: $34
	dec  [hl]                                        ; $5491: $35
	ld   [hl], $37                                   ; $5492: $36 $37
	jr   c, jr_082_54cf                              ; $5494: $38 $39

	ld   a, [hl-]                                    ; $5496: $3a
	dec  sp                                          ; $5497: $3b
	inc  a                                           ; $5498: $3c
	dec  a                                           ; $5499: $3d
	ld   a, $34                                      ; $549a: $3e $34
	inc  sp                                          ; $549c: $33
	ld   [hl-], a                                    ; $549d: $32
	ld   sp, $4030                                   ; $549e: $31 $30 $40
	ld   b, c                                        ; $54a1: $41
	ld   b, d                                        ; $54a2: $42
	ld   b, e                                        ; $54a3: $43
	ld   b, h                                        ; $54a4: $44
	ld   b, l                                        ; $54a5: $45
	ld   b, [hl]                                     ; $54a6: $46
	ld   b, a                                        ; $54a7: $47
	ld   c, b                                        ; $54a8: $48
	ld   c, c                                        ; $54a9: $49
	ld   c, d                                        ; $54aa: $4a

jr_082_54ab:
	ld   c, e                                        ; $54ab: $4b
	ld   c, h                                        ; $54ac: $4c
	ld   c, l                                        ; $54ad: $4d
	ld   c, [hl]                                     ; $54ae: $4e
	ld   b, h                                        ; $54af: $44
	ld   b, e                                        ; $54b0: $43
	ld   b, d                                        ; $54b1: $42
	ld   b, c                                        ; $54b2: $41
	ld   b, b                                        ; $54b3: $40
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
	ld   e, e                                        ; $54bf: $5b
	ld   e, h                                        ; $54c0: $5c
	ld   e, l                                        ; $54c1: $5d
	ld   e, [hl]                                     ; $54c2: $5e
	ld   d, h                                        ; $54c3: $54
	ld   d, e                                        ; $54c4: $53
	ld   d, d                                        ; $54c5: $52
	ld   d, c                                        ; $54c6: $51
	ld   d, b                                        ; $54c7: $50
	ld   h, b                                        ; $54c8: $60
	ld   h, c                                        ; $54c9: $61
	ld   h, d                                        ; $54ca: $62
	ld   h, e                                        ; $54cb: $63
	ld   h, h                                        ; $54cc: $64
	ld   h, l                                        ; $54cd: $65
	ld   h, [hl]                                     ; $54ce: $66

jr_082_54cf:
	ld   h, a                                        ; $54cf: $67
	ld   l, b                                        ; $54d0: $68
	ld   l, c                                        ; $54d1: $69
	ld   l, d                                        ; $54d2: $6a
	ld   l, e                                        ; $54d3: $6b
	ld   l, h                                        ; $54d4: $6c
	ld   l, l                                        ; $54d5: $6d
	ld   l, [hl]                                     ; $54d6: $6e
	ld   h, h                                        ; $54d7: $64
	ld   h, e                                        ; $54d8: $63
	ld   h, d                                        ; $54d9: $62
	ld   h, c                                        ; $54da: $61
	ld   h, b                                        ; $54db: $60
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
	ld   a, c                                        ; $54e6: $79
	ld   a, b                                        ; $54e7: $78
	ld   [hl], a                                     ; $54e8: $77
	halt                                             ; $54e9: $76
	ld   [hl], l                                     ; $54ea: $75
	ld   [hl], h                                     ; $54eb: $74
	ld   [hl], e                                     ; $54ec: $73
	ld   [hl], d                                     ; $54ed: $72
	ld   [hl], c                                     ; $54ee: $71
	ld   [hl], b                                     ; $54ef: $70
	ld   a, d                                        ; $54f0: $7a
	ld   a, e                                        ; $54f1: $7b
	ld   a, h                                        ; $54f2: $7c
	ld   a, l                                        ; $54f3: $7d
	ld   a, [hl]                                     ; $54f4: $7e
	ld   a, a                                        ; $54f5: $7f
	rrca                                             ; $54f6: $0f
	rra                                              ; $54f7: $1f
	cpl                                              ; $54f8: $2f
	ccf                                              ; $54f9: $3f
	ccf                                              ; $54fa: $3f
	cpl                                              ; $54fb: $2f
	rra                                              ; $54fc: $1f
	rrca                                             ; $54fd: $0f
	ld   a, a                                        ; $54fe: $7f
	ld   a, [hl]                                     ; $54ff: $7e
	ld   a, l                                        ; $5500: $7d
	ld   a, h                                        ; $5501: $7c
	ld   a, e                                        ; $5502: $7b
	ld   a, d                                        ; $5503: $7a
	ld   c, a                                        ; $5504: $4f
	ld   e, a                                        ; $5505: $5f
	ld   l, a                                        ; $5506: $6f
	nop                                              ; $5507: $00
	ld   bc, $0302                                   ; $5508: $01 $02 $03
	inc  b                                           ; $550b: $04
	dec  b                                           ; $550c: $05
	ld   b, $06                                      ; $550d: $06 $06
	dec  b                                           ; $550f: $05
	inc  b                                           ; $5510: $04
	inc  bc                                          ; $5511: $03
	ld   [bc], a                                     ; $5512: $02
	ld   bc, $6f00                                   ; $5513: $01 $00 $6f
	ld   e, a                                        ; $5516: $5f
	ld   c, a                                        ; $5517: $4f
	inc  bc                                          ; $5518: $03
	inc  bc                                          ; $5519: $03
	inc  bc                                          ; $551a: $03
	inc  bc                                          ; $551b: $03
	inc  bc                                          ; $551c: $03
	inc  bc                                          ; $551d: $03
	inc  bc                                          ; $551e: $03
	inc  bc                                          ; $551f: $03
	inc  bc                                          ; $5520: $03
	inc  bc                                          ; $5521: $03
	inc  bc                                          ; $5522: $03
	inc  bc                                          ; $5523: $03
	inc  bc                                          ; $5524: $03
	inc  bc                                          ; $5525: $03
	inc  bc                                          ; $5526: $03
	inc  hl                                          ; $5527: $23
	inc  hl                                          ; $5528: $23
	inc  hl                                          ; $5529: $23
	inc  hl                                          ; $552a: $23
	inc  hl                                          ; $552b: $23
	inc  bc                                          ; $552c: $03
	inc  bc                                          ; $552d: $03
	inc  bc                                          ; $552e: $03
	inc  bc                                          ; $552f: $03
	inc  bc                                          ; $5530: $03
	inc  bc                                          ; $5531: $03
	inc  bc                                          ; $5532: $03
	inc  bc                                          ; $5533: $03
	inc  bc                                          ; $5534: $03
	inc  bc                                          ; $5535: $03
	inc  bc                                          ; $5536: $03
	inc  bc                                          ; $5537: $03
	inc  bc                                          ; $5538: $03
	inc  bc                                          ; $5539: $03
	inc  bc                                          ; $553a: $03
	inc  hl                                          ; $553b: $23
	inc  hl                                          ; $553c: $23
	inc  hl                                          ; $553d: $23
	inc  hl                                          ; $553e: $23
	inc  hl                                          ; $553f: $23
	inc  bc                                          ; $5540: $03
	inc  bc                                          ; $5541: $03
	inc  bc                                          ; $5542: $03
	inc  bc                                          ; $5543: $03
	inc  bc                                          ; $5544: $03
	inc  bc                                          ; $5545: $03
	inc  bc                                          ; $5546: $03
	inc  bc                                          ; $5547: $03
	inc  bc                                          ; $5548: $03
	inc  bc                                          ; $5549: $03
	inc  bc                                          ; $554a: $03
	inc  bc                                          ; $554b: $03
	inc  bc                                          ; $554c: $03
	inc  bc                                          ; $554d: $03
	inc  bc                                          ; $554e: $03
	inc  hl                                          ; $554f: $23
	inc  hl                                          ; $5550: $23
	inc  hl                                          ; $5551: $23
	inc  hl                                          ; $5552: $23
	inc  hl                                          ; $5553: $23
	inc  bc                                          ; $5554: $03
	inc  bc                                          ; $5555: $03
	inc  bc                                          ; $5556: $03
	inc  bc                                          ; $5557: $03
	inc  bc                                          ; $5558: $03
	inc  bc                                          ; $5559: $03
	inc  b                                           ; $555a: $04
	inc  b                                           ; $555b: $04
	inc  b                                           ; $555c: $04
	inc  b                                           ; $555d: $04
	inc  b                                           ; $555e: $04
	inc  b                                           ; $555f: $04
	inc  b                                           ; $5560: $04
	inc  b                                           ; $5561: $04
	inc  bc                                          ; $5562: $03
	inc  hl                                          ; $5563: $23
	inc  hl                                          ; $5564: $23
	inc  hl                                          ; $5565: $23
	inc  hl                                          ; $5566: $23
	inc  hl                                          ; $5567: $23
	inc  bc                                          ; $5568: $03
	inc  bc                                          ; $5569: $03
	inc  bc                                          ; $556a: $03
	inc  bc                                          ; $556b: $03
	inc  bc                                          ; $556c: $03
	inc  bc                                          ; $556d: $03
	inc  b                                           ; $556e: $04
	inc  b                                           ; $556f: $04
	inc  b                                           ; $5570: $04
	inc  b                                           ; $5571: $04
	inc  b                                           ; $5572: $04
	inc  b                                           ; $5573: $04
	inc  b                                           ; $5574: $04
	inc  b                                           ; $5575: $04
	inc  bc                                          ; $5576: $03
	inc  hl                                          ; $5577: $23
	inc  hl                                          ; $5578: $23
	inc  hl                                          ; $5579: $23
	inc  hl                                          ; $557a: $23
	inc  hl                                          ; $557b: $23
	inc  bc                                          ; $557c: $03
	inc  bc                                          ; $557d: $03
	inc  bc                                          ; $557e: $03
	inc  bc                                          ; $557f: $03
	inc  bc                                          ; $5580: $03
	inc  bc                                          ; $5581: $03
	inc  b                                           ; $5582: $04
	inc  b                                           ; $5583: $04
	inc  b                                           ; $5584: $04
	inc  b                                           ; $5585: $04
	inc  b                                           ; $5586: $04
	inc  b                                           ; $5587: $04
	inc  b                                           ; $5588: $04
	inc  b                                           ; $5589: $04
	inc  bc                                          ; $558a: $03
	inc  hl                                          ; $558b: $23
	inc  hl                                          ; $558c: $23
	inc  hl                                          ; $558d: $23
	inc  hl                                          ; $558e: $23
	inc  hl                                          ; $558f: $23
	inc  bc                                          ; $5590: $03
	inc  bc                                          ; $5591: $03
	inc  bc                                          ; $5592: $03
	inc  bc                                          ; $5593: $03
	inc  bc                                          ; $5594: $03
	inc  bc                                          ; $5595: $03
	inc  b                                           ; $5596: $04
	inc  b                                           ; $5597: $04
	inc  b                                           ; $5598: $04
	inc  b                                           ; $5599: $04
	inc  b                                           ; $559a: $04
	inc  b                                           ; $559b: $04
	inc  b                                           ; $559c: $04
	inc  b                                           ; $559d: $04
	inc  bc                                          ; $559e: $03
	inc  hl                                          ; $559f: $23
	inc  hl                                          ; $55a0: $23
	inc  hl                                          ; $55a1: $23
	inc  hl                                          ; $55a2: $23
	inc  hl                                          ; $55a3: $23
	dec  b                                           ; $55a4: $05
	dec  b                                           ; $55a5: $05
	dec  b                                           ; $55a6: $05
	dec  b                                           ; $55a7: $05
	dec  b                                           ; $55a8: $05
	dec  b                                           ; $55a9: $05
	dec  b                                           ; $55aa: $05
	dec  b                                           ; $55ab: $05
	dec  b                                           ; $55ac: $05
	dec  b                                           ; $55ad: $05
	dec  h                                           ; $55ae: $25
	dec  h                                           ; $55af: $25
	dec  h                                           ; $55b0: $25
	dec  h                                           ; $55b1: $25
	dec  h                                           ; $55b2: $25
	dec  h                                           ; $55b3: $25
	dec  h                                           ; $55b4: $25
	dec  h                                           ; $55b5: $25
	dec  h                                           ; $55b6: $25
	dec  h                                           ; $55b7: $25
	dec  b                                           ; $55b8: $05
	dec  b                                           ; $55b9: $05
	dec  b                                           ; $55ba: $05
	dec  b                                           ; $55bb: $05
	dec  b                                           ; $55bc: $05
	dec  b                                           ; $55bd: $05
	dec  b                                           ; $55be: $05
	dec  b                                           ; $55bf: $05
	dec  b                                           ; $55c0: $05
	dec  b                                           ; $55c1: $05
	dec  h                                           ; $55c2: $25
	dec  h                                           ; $55c3: $25
	dec  h                                           ; $55c4: $25
	dec  h                                           ; $55c5: $25
	dec  h                                           ; $55c6: $25
	dec  h                                           ; $55c7: $25
	dec  h                                           ; $55c8: $25
	dec  h                                           ; $55c9: $25
	dec  h                                           ; $55ca: $25
	dec  h                                           ; $55cb: $25
	dec  b                                           ; $55cc: $05
	dec  b                                           ; $55cd: $05
	dec  b                                           ; $55ce: $05
	dec  c                                           ; $55cf: $0d
	dec  c                                           ; $55d0: $0d
	dec  c                                           ; $55d1: $0d
	dec  c                                           ; $55d2: $0d
	dec  c                                           ; $55d3: $0d
	dec  c                                           ; $55d4: $0d
	dec  c                                           ; $55d5: $0d
	dec  l                                           ; $55d6: $2d
	dec  l                                           ; $55d7: $2d
	dec  l                                           ; $55d8: $2d
	dec  l                                           ; $55d9: $2d
	dec  l                                           ; $55da: $2d
	dec  l                                           ; $55db: $2d
	dec  l                                           ; $55dc: $2d
	dec  h                                           ; $55dd: $25
	dec  h                                           ; $55de: $25
	dec  h                                           ; $55df: $25
	nop                                              ; $55e0: $00
	ld   bc, $0302                                   ; $55e1: $01 $02 $03
	inc  b                                           ; $55e4: $04
	dec  b                                           ; $55e5: $05
	ld   b, $07                                      ; $55e6: $06 $07
	ld   [$0a09], sp                                 ; $55e8: $08 $09 $0a
	dec  bc                                          ; $55eb: $0b
	inc  c                                           ; $55ec: $0c
	dec  c                                           ; $55ed: $0d
	ld   c, $04                                      ; $55ee: $0e $04
	inc  bc                                          ; $55f0: $03
	ld   [bc], a                                     ; $55f1: $02
	ld   bc, $1000                                   ; $55f2: $01 $00 $10
	ld   de, $1312                                   ; $55f5: $11 $12 $13
	inc  d                                           ; $55f8: $14
	dec  d                                           ; $55f9: $15
	ld   d, $17                                      ; $55fa: $16 $17
	jr   @+$1b                                       ; $55fc: $18 $19

	ld   a, [de]                                     ; $55fe: $1a
	dec  de                                          ; $55ff: $1b
	inc  e                                           ; $5600: $1c
	dec  e                                           ; $5601: $1d
	ld   e, $14                                      ; $5602: $1e $14
	inc  de                                          ; $5604: $13
	ld   [de], a                                     ; $5605: $12
	ld   de, $2010                                   ; $5606: $11 $10 $20
	ld   hl, $2322                                   ; $5609: $21 $22 $23
	inc  h                                           ; $560c: $24
	dec  h                                           ; $560d: $25
	ld   h, $27                                      ; $560e: $26 $27
	jr   z, jr_082_563b                              ; $5610: $28 $29

	ld   a, [hl+]                                    ; $5612: $2a
	dec  hl                                          ; $5613: $2b
	inc  l                                           ; $5614: $2c
	dec  l                                           ; $5615: $2d
	ld   l, $24                                      ; $5616: $2e $24
	inc  hl                                          ; $5618: $23
	ld   [hl+], a                                    ; $5619: $22
	ld   hl, $3020                                   ; $561a: $21 $20 $30
	ld   sp, $3332                                   ; $561d: $31 $32 $33
	inc  [hl]                                        ; $5620: $34
	dec  [hl]                                        ; $5621: $35
	ld   [hl], $37                                   ; $5622: $36 $37
	jr   c, jr_082_565f                              ; $5624: $38 $39

	ld   a, [hl-]                                    ; $5626: $3a
	dec  sp                                          ; $5627: $3b
	inc  a                                           ; $5628: $3c
	dec  a                                           ; $5629: $3d
	ld   a, $34                                      ; $562a: $3e $34
	inc  sp                                          ; $562c: $33
	ld   [hl-], a                                    ; $562d: $32
	ld   sp, $4030                                   ; $562e: $31 $30 $40
	ld   b, c                                        ; $5631: $41
	ld   b, d                                        ; $5632: $42
	ld   b, e                                        ; $5633: $43
	ld   b, h                                        ; $5634: $44
	ld   b, l                                        ; $5635: $45
	ld   b, [hl]                                     ; $5636: $46
	ld   b, a                                        ; $5637: $47
	ld   c, b                                        ; $5638: $48
	ld   c, c                                        ; $5639: $49
	ld   c, d                                        ; $563a: $4a

jr_082_563b:
	ld   c, e                                        ; $563b: $4b
	ld   c, h                                        ; $563c: $4c
	ld   c, l                                        ; $563d: $4d
	ld   c, [hl]                                     ; $563e: $4e
	ld   b, h                                        ; $563f: $44
	ld   b, e                                        ; $5640: $43
	ld   b, d                                        ; $5641: $42
	ld   b, c                                        ; $5642: $41
	ld   b, b                                        ; $5643: $40
	ld   d, b                                        ; $5644: $50
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
	ld   e, e                                        ; $564f: $5b
	ld   e, h                                        ; $5650: $5c
	ld   e, l                                        ; $5651: $5d
	ld   e, [hl]                                     ; $5652: $5e
	ld   d, h                                        ; $5653: $54
	ld   d, e                                        ; $5654: $53
	ld   d, d                                        ; $5655: $52
	ld   d, c                                        ; $5656: $51
	ld   d, b                                        ; $5657: $50
	ld   h, b                                        ; $5658: $60
	ld   h, c                                        ; $5659: $61
	ld   h, d                                        ; $565a: $62
	ld   h, e                                        ; $565b: $63
	ld   h, h                                        ; $565c: $64
	ld   h, l                                        ; $565d: $65
	ld   h, [hl]                                     ; $565e: $66

jr_082_565f:
	ld   h, a                                        ; $565f: $67
	ld   l, b                                        ; $5660: $68
	ld   l, c                                        ; $5661: $69
	ld   l, d                                        ; $5662: $6a
	ld   l, e                                        ; $5663: $6b
	ld   l, h                                        ; $5664: $6c
	ld   l, l                                        ; $5665: $6d
	ld   l, [hl]                                     ; $5666: $6e
	ld   h, h                                        ; $5667: $64
	ld   h, e                                        ; $5668: $63
	ld   h, d                                        ; $5669: $62
	ld   h, c                                        ; $566a: $61
	ld   h, b                                        ; $566b: $60
	rlca                                             ; $566c: $07
	ld   [$0a09], sp                                 ; $566d: $08 $09 $0a
	dec  bc                                          ; $5670: $0b
	inc  c                                           ; $5671: $0c
	dec  c                                           ; $5672: $0d
	ld   c, $0f                                      ; $5673: $0e $0f
	ld   a, c                                        ; $5675: $79
	ld   a, c                                        ; $5676: $79
	jr   nz, jr_082_569a                             ; $5677: $20 $21

	ld   [hl+], a                                    ; $5679: $22
	inc  hl                                          ; $567a: $23
	inc  h                                           ; $567b: $24
	dec  h                                           ; $567c: $25
	ld   h, $27                                      ; $567d: $26 $27
	jr   z, jr_082_5691                              ; $567f: $28 $10

	ld   de, $1312                                   ; $5681: $11 $12 $13
	inc  d                                           ; $5684: $14
	dec  d                                           ; $5685: $15
	ld   d, $17                                      ; $5686: $16 $17
	cpl                                              ; $5688: $2f
	ccf                                              ; $5689: $3f
	ccf                                              ; $568a: $3f
	cpl                                              ; $568b: $2f
	add  hl, hl                                      ; $568c: $29
	ld   a, [hl+]                                    ; $568d: $2a
	dec  hl                                          ; $568e: $2b
	inc  l                                           ; $568f: $2c
	dec  l                                           ; $5690: $2d

jr_082_5691:
	ld   l, $2f                                      ; $5691: $2e $2f
	jr   nc, jr_082_56ad                             ; $5693: $30 $18

	add  hl, de                                      ; $5695: $19
	ld   a, [de]                                     ; $5696: $1a
	dec  de                                          ; $5697: $1b
	inc  e                                           ; $5698: $1c
	dec  e                                           ; $5699: $1d

jr_082_569a:
	ld   e, $1f                                      ; $569a: $1e $1f
	dec  b                                           ; $569c: $05
	ld   b, $06                                      ; $569d: $06 $06
	dec  b                                           ; $569f: $05
	ld   sp, $3332                                   ; $56a0: $31 $32 $33
	inc  [hl]                                        ; $56a3: $34
	dec  [hl]                                        ; $56a4: $35
	ld   [hl], $37                                   ; $56a5: $36 $37
	jr   c, jr_082_56ac                              ; $56a7: $38 $03

	inc  bc                                          ; $56a9: $03
	inc  bc                                          ; $56aa: $03
	inc  bc                                          ; $56ab: $03

jr_082_56ac:
	inc  bc                                          ; $56ac: $03

jr_082_56ad:
	inc  bc                                          ; $56ad: $03
	inc  bc                                          ; $56ae: $03
	inc  bc                                          ; $56af: $03
	inc  bc                                          ; $56b0: $03
	inc  bc                                          ; $56b1: $03
	inc  bc                                          ; $56b2: $03
	inc  bc                                          ; $56b3: $03
	inc  bc                                          ; $56b4: $03
	inc  bc                                          ; $56b5: $03
	inc  bc                                          ; $56b6: $03
	inc  hl                                          ; $56b7: $23
	inc  hl                                          ; $56b8: $23
	inc  hl                                          ; $56b9: $23
	inc  hl                                          ; $56ba: $23
	inc  hl                                          ; $56bb: $23
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
	inc  hl                                          ; $56cb: $23
	inc  hl                                          ; $56cc: $23
	inc  hl                                          ; $56cd: $23
	inc  hl                                          ; $56ce: $23
	inc  hl                                          ; $56cf: $23
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
	inc  bc                                          ; $56dd: $03
	inc  bc                                          ; $56de: $03
	inc  hl                                          ; $56df: $23
	inc  hl                                          ; $56e0: $23
	inc  hl                                          ; $56e1: $23
	inc  hl                                          ; $56e2: $23
	inc  hl                                          ; $56e3: $23
	inc  bc                                          ; $56e4: $03
	inc  bc                                          ; $56e5: $03
	inc  bc                                          ; $56e6: $03
	inc  bc                                          ; $56e7: $03
	inc  bc                                          ; $56e8: $03
	inc  bc                                          ; $56e9: $03
	inc  b                                           ; $56ea: $04
	inc  b                                           ; $56eb: $04
	inc  b                                           ; $56ec: $04
	inc  b                                           ; $56ed: $04
	inc  b                                           ; $56ee: $04
	inc  b                                           ; $56ef: $04
	inc  b                                           ; $56f0: $04
	inc  b                                           ; $56f1: $04
	inc  bc                                          ; $56f2: $03
	inc  hl                                          ; $56f3: $23
	inc  hl                                          ; $56f4: $23
	inc  hl                                          ; $56f5: $23
	inc  hl                                          ; $56f6: $23
	inc  hl                                          ; $56f7: $23
	inc  bc                                          ; $56f8: $03
	inc  bc                                          ; $56f9: $03
	inc  bc                                          ; $56fa: $03
	inc  bc                                          ; $56fb: $03
	inc  bc                                          ; $56fc: $03
	inc  bc                                          ; $56fd: $03
	inc  b                                           ; $56fe: $04
	inc  b                                           ; $56ff: $04
	inc  b                                           ; $5700: $04
	inc  b                                           ; $5701: $04
	inc  b                                           ; $5702: $04
	inc  b                                           ; $5703: $04
	inc  b                                           ; $5704: $04
	inc  b                                           ; $5705: $04
	inc  bc                                          ; $5706: $03
	inc  hl                                          ; $5707: $23
	inc  hl                                          ; $5708: $23
	inc  hl                                          ; $5709: $23
	inc  hl                                          ; $570a: $23
	inc  hl                                          ; $570b: $23
	inc  bc                                          ; $570c: $03
	inc  bc                                          ; $570d: $03
	inc  bc                                          ; $570e: $03
	inc  bc                                          ; $570f: $03
	inc  bc                                          ; $5710: $03
	inc  bc                                          ; $5711: $03
	inc  b                                           ; $5712: $04
	inc  b                                           ; $5713: $04
	inc  b                                           ; $5714: $04
	inc  b                                           ; $5715: $04
	inc  b                                           ; $5716: $04
	inc  b                                           ; $5717: $04
	inc  b                                           ; $5718: $04
	inc  b                                           ; $5719: $04
	inc  bc                                          ; $571a: $03
	inc  hl                                          ; $571b: $23
	inc  hl                                          ; $571c: $23
	inc  hl                                          ; $571d: $23
	inc  hl                                          ; $571e: $23
	inc  hl                                          ; $571f: $23
	inc  bc                                          ; $5720: $03
	inc  bc                                          ; $5721: $03
	inc  bc                                          ; $5722: $03
	inc  bc                                          ; $5723: $03
	inc  bc                                          ; $5724: $03
	inc  bc                                          ; $5725: $03
	inc  b                                           ; $5726: $04
	inc  b                                           ; $5727: $04
	inc  b                                           ; $5728: $04
	inc  b                                           ; $5729: $04
	inc  b                                           ; $572a: $04
	inc  b                                           ; $572b: $04
	inc  b                                           ; $572c: $04
	inc  b                                           ; $572d: $04
	inc  bc                                          ; $572e: $03
	inc  hl                                          ; $572f: $23
	inc  hl                                          ; $5730: $23
	inc  hl                                          ; $5731: $23
	inc  hl                                          ; $5732: $23
	inc  hl                                          ; $5733: $23
	dec  bc                                          ; $5734: $0b
	dec  bc                                          ; $5735: $0b
	inc  c                                           ; $5736: $0c
	inc  c                                           ; $5737: $0c
	dec  bc                                          ; $5738: $0b
	inc  c                                           ; $5739: $0c
	dec  bc                                          ; $573a: $0b
	dec  bc                                          ; $573b: $0b
	inc  c                                           ; $573c: $0c
	dec  b                                           ; $573d: $05
	dec  h                                           ; $573e: $25
	inc  c                                           ; $573f: $0c
	dec  bc                                          ; $5740: $0b
	dec  bc                                          ; $5741: $0b
	dec  c                                           ; $5742: $0d
	dec  bc                                          ; $5743: $0b
	dec  bc                                          ; $5744: $0b
	dec  bc                                          ; $5745: $0b
	dec  bc                                          ; $5746: $0b
	dec  bc                                          ; $5747: $0b
	dec  c                                           ; $5748: $0d
	dec  c                                           ; $5749: $0d
	inc  c                                           ; $574a: $0c
	inc  c                                           ; $574b: $0c
	inc  c                                           ; $574c: $0c
	dec  c                                           ; $574d: $0d
	dec  c                                           ; $574e: $0d
	inc  c                                           ; $574f: $0c
	dec  b                                           ; $5750: $05
	dec  b                                           ; $5751: $05
	dec  h                                           ; $5752: $25
	dec  h                                           ; $5753: $25
	inc  c                                           ; $5754: $0c
	inc  c                                           ; $5755: $0c
	dec  c                                           ; $5756: $0d
	inc  c                                           ; $5757: $0c
	dec  c                                           ; $5758: $0d
	dec  c                                           ; $5759: $0d
	inc  c                                           ; $575a: $0c
	dec  c                                           ; $575b: $0d
	dec  c                                           ; $575c: $0d
	dec  c                                           ; $575d: $0d
	dec  c                                           ; $575e: $0d
	dec  c                                           ; $575f: $0d
	inc  c                                           ; $5760: $0c
	dec  c                                           ; $5761: $0d
	dec  c                                           ; $5762: $0d
	dec  c                                           ; $5763: $0d
	dec  c                                           ; $5764: $0d
	dec  c                                           ; $5765: $0d
	dec  l                                           ; $5766: $2d
	dec  l                                           ; $5767: $2d
	dec  c                                           ; $5768: $0d
	dec  c                                           ; $5769: $0d
	dec  c                                           ; $576a: $0d
	dec  c                                           ; $576b: $0d
	dec  c                                           ; $576c: $0d
	dec  c                                           ; $576d: $0d
	dec  c                                           ; $576e: $0d
	dec  c                                           ; $576f: $0d
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
	inc  bc                                          ; $5780: $03
	ld   [bc], a                                     ; $5781: $02
	ld   bc, $1000                                   ; $5782: $01 $00 $10
	ld   de, $1312                                   ; $5785: $11 $12 $13
	inc  d                                           ; $5788: $14
	dec  d                                           ; $5789: $15
	ld   d, $17                                      ; $578a: $16 $17
	jr   @+$1b                                       ; $578c: $18 $19

	ld   a, [de]                                     ; $578e: $1a
	dec  de                                          ; $578f: $1b
	inc  e                                           ; $5790: $1c
	dec  e                                           ; $5791: $1d
	ld   e, $14                                      ; $5792: $1e $14
	inc  de                                          ; $5794: $13
	ld   [de], a                                     ; $5795: $12
	ld   de, $2010                                   ; $5796: $11 $10 $20
	ld   hl, $2322                                   ; $5799: $21 $22 $23
	inc  h                                           ; $579c: $24
	dec  h                                           ; $579d: $25
	ld   h, $27                                      ; $579e: $26 $27
	jr   z, jr_082_57cb                              ; $57a0: $28 $29

	ld   a, [hl+]                                    ; $57a2: $2a
	dec  hl                                          ; $57a3: $2b
	inc  l                                           ; $57a4: $2c
	dec  l                                           ; $57a5: $2d
	ld   l, $24                                      ; $57a6: $2e $24
	inc  hl                                          ; $57a8: $23
	ld   [hl+], a                                    ; $57a9: $22
	ld   hl, $3020                                   ; $57aa: $21 $20 $30
	ld   sp, $3332                                   ; $57ad: $31 $32 $33
	inc  [hl]                                        ; $57b0: $34
	dec  [hl]                                        ; $57b1: $35
	ld   [hl], $37                                   ; $57b2: $36 $37
	jr   c, jr_082_57ef                              ; $57b4: $38 $39

	ld   a, [hl-]                                    ; $57b6: $3a
	dec  sp                                          ; $57b7: $3b
	inc  a                                           ; $57b8: $3c
	dec  a                                           ; $57b9: $3d
	ld   a, $34                                      ; $57ba: $3e $34
	inc  sp                                          ; $57bc: $33
	ld   [hl-], a                                    ; $57bd: $32
	ld   sp, $4030                                   ; $57be: $31 $30 $40
	ld   b, c                                        ; $57c1: $41
	ld   b, d                                        ; $57c2: $42
	ld   b, e                                        ; $57c3: $43
	ld   b, h                                        ; $57c4: $44
	ld   b, l                                        ; $57c5: $45
	ld   b, [hl]                                     ; $57c6: $46
	ld   b, a                                        ; $57c7: $47
	ld   c, b                                        ; $57c8: $48
	ld   c, c                                        ; $57c9: $49
	ld   c, d                                        ; $57ca: $4a

jr_082_57cb:
	ld   c, e                                        ; $57cb: $4b
	ld   c, h                                        ; $57cc: $4c
	ld   c, l                                        ; $57cd: $4d
	ld   c, [hl]                                     ; $57ce: $4e
	ld   b, h                                        ; $57cf: $44
	ld   b, e                                        ; $57d0: $43
	ld   b, d                                        ; $57d1: $42
	ld   b, c                                        ; $57d2: $41
	ld   b, b                                        ; $57d3: $40
	ld   d, b                                        ; $57d4: $50
	ld   d, c                                        ; $57d5: $51
	ld   b, d                                        ; $57d6: $42
	ld   d, e                                        ; $57d7: $53
	ld   b, d                                        ; $57d8: $42
	ld   d, l                                        ; $57d9: $55
	ld   d, [hl]                                     ; $57da: $56
	ld   d, a                                        ; $57db: $57
	ld   e, b                                        ; $57dc: $58
	ld   e, c                                        ; $57dd: $59
	ld   e, d                                        ; $57de: $5a
	ld   e, e                                        ; $57df: $5b
	ld   e, h                                        ; $57e0: $5c
	ld   e, l                                        ; $57e1: $5d
	ld   e, [hl]                                     ; $57e2: $5e
	ld   b, d                                        ; $57e3: $42
	ld   d, e                                        ; $57e4: $53
	ld   b, d                                        ; $57e5: $42
	ld   d, c                                        ; $57e6: $51
	ld   d, b                                        ; $57e7: $50
	ld   h, b                                        ; $57e8: $60
	ld   h, c                                        ; $57e9: $61
	ld   h, d                                        ; $57ea: $62
	ld   h, e                                        ; $57eb: $63
	ld   h, h                                        ; $57ec: $64
	ld   h, l                                        ; $57ed: $65
	ld   h, [hl]                                     ; $57ee: $66

jr_082_57ef:
	ld   h, a                                        ; $57ef: $67
	ld   l, b                                        ; $57f0: $68
	ld   l, c                                        ; $57f1: $69
	ld   l, d                                        ; $57f2: $6a
	ld   l, e                                        ; $57f3: $6b
	ld   l, h                                        ; $57f4: $6c
	ld   l, l                                        ; $57f5: $6d
	ld   l, [hl]                                     ; $57f6: $6e
	ld   h, h                                        ; $57f7: $64
	ld   h, e                                        ; $57f8: $63
	ld   h, d                                        ; $57f9: $62
	ld   h, c                                        ; $57fa: $61
	ld   h, b                                        ; $57fb: $60
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
	ld   a, c                                        ; $5806: $79
	ld   a, b                                        ; $5807: $78
	ld   [hl], a                                     ; $5808: $77
	halt                                             ; $5809: $76
	ld   [hl], l                                     ; $580a: $75
	ld   [hl], h                                     ; $580b: $74
	ld   [hl], e                                     ; $580c: $73
	ld   [hl], d                                     ; $580d: $72
	ld   [hl], c                                     ; $580e: $71
	ld   [hl], b                                     ; $580f: $70
	ld   a, d                                        ; $5810: $7a
	ld   a, e                                        ; $5811: $7b
	ld   a, h                                        ; $5812: $7c
	ld   a, l                                        ; $5813: $7d
	ld   a, [hl]                                     ; $5814: $7e
	rrca                                             ; $5815: $0f
	rra                                              ; $5816: $1f
	cpl                                              ; $5817: $2f
	ccf                                              ; $5818: $3f
	ld   c, a                                        ; $5819: $4f
	ld   c, a                                        ; $581a: $4f
	ccf                                              ; $581b: $3f
	cpl                                              ; $581c: $2f
	rra                                              ; $581d: $1f
	rrca                                             ; $581e: $0f
	ld   a, [hl]                                     ; $581f: $7e
	ld   a, l                                        ; $5820: $7d
	ld   a, h                                        ; $5821: $7c
	ld   a, e                                        ; $5822: $7b
	ld   a, d                                        ; $5823: $7a
	ld   e, a                                        ; $5824: $5f
	ld   l, a                                        ; $5825: $6f
	ld   a, a                                        ; $5826: $7f
	nop                                              ; $5827: $00
	ld   bc, $0302                                   ; $5828: $01 $02 $03
	inc  b                                           ; $582b: $04
	ld   d, h                                        ; $582c: $54
	ld   d, d                                        ; $582d: $52
	ld   d, d                                        ; $582e: $52
	ld   d, h                                        ; $582f: $54
	inc  b                                           ; $5830: $04
	inc  bc                                          ; $5831: $03
	ld   [bc], a                                     ; $5832: $02
	ld   bc, $7f00                                   ; $5833: $01 $00 $7f
	ld   l, a                                        ; $5836: $6f
	ld   e, a                                        ; $5837: $5f
	inc  bc                                          ; $5838: $03
	inc  bc                                          ; $5839: $03
	inc  bc                                          ; $583a: $03
	inc  bc                                          ; $583b: $03
	inc  bc                                          ; $583c: $03
	inc  bc                                          ; $583d: $03
	inc  bc                                          ; $583e: $03
	inc  bc                                          ; $583f: $03
	inc  bc                                          ; $5840: $03
	inc  bc                                          ; $5841: $03
	inc  bc                                          ; $5842: $03
	inc  bc                                          ; $5843: $03
	inc  bc                                          ; $5844: $03
	inc  bc                                          ; $5845: $03
	inc  bc                                          ; $5846: $03
	inc  hl                                          ; $5847: $23
	inc  hl                                          ; $5848: $23
	inc  hl                                          ; $5849: $23
	inc  hl                                          ; $584a: $23
	inc  hl                                          ; $584b: $23
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
	inc  hl                                          ; $585b: $23
	inc  hl                                          ; $585c: $23
	inc  hl                                          ; $585d: $23
	inc  hl                                          ; $585e: $23
	inc  hl                                          ; $585f: $23
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
	inc  hl                                          ; $586f: $23
	inc  hl                                          ; $5870: $23
	inc  hl                                          ; $5871: $23
	inc  hl                                          ; $5872: $23
	inc  hl                                          ; $5873: $23
	inc  bc                                          ; $5874: $03
	inc  bc                                          ; $5875: $03
	inc  bc                                          ; $5876: $03
	inc  bc                                          ; $5877: $03
	inc  bc                                          ; $5878: $03
	inc  bc                                          ; $5879: $03
	inc  b                                           ; $587a: $04
	inc  b                                           ; $587b: $04
	inc  b                                           ; $587c: $04
	inc  b                                           ; $587d: $04
	inc  b                                           ; $587e: $04
	inc  b                                           ; $587f: $04
	inc  b                                           ; $5880: $04
	inc  b                                           ; $5881: $04
	inc  bc                                          ; $5882: $03
	inc  hl                                          ; $5883: $23
	inc  hl                                          ; $5884: $23
	inc  hl                                          ; $5885: $23
	inc  hl                                          ; $5886: $23
	inc  hl                                          ; $5887: $23
	inc  bc                                          ; $5888: $03
	inc  bc                                          ; $5889: $03
	inc  bc                                          ; $588a: $03
	inc  bc                                          ; $588b: $03
	inc  bc                                          ; $588c: $03
	inc  bc                                          ; $588d: $03
	inc  b                                           ; $588e: $04
	inc  b                                           ; $588f: $04
	inc  b                                           ; $5890: $04
	inc  b                                           ; $5891: $04
	inc  b                                           ; $5892: $04
	inc  b                                           ; $5893: $04
	inc  b                                           ; $5894: $04
	inc  b                                           ; $5895: $04
	inc  bc                                          ; $5896: $03
	inc  hl                                          ; $5897: $23
	inc  hl                                          ; $5898: $23
	inc  hl                                          ; $5899: $23
	inc  hl                                          ; $589a: $23
	inc  hl                                          ; $589b: $23
	inc  bc                                          ; $589c: $03
	inc  bc                                          ; $589d: $03
	inc  bc                                          ; $589e: $03
	inc  bc                                          ; $589f: $03
	inc  bc                                          ; $58a0: $03
	inc  bc                                          ; $58a1: $03
	inc  b                                           ; $58a2: $04
	inc  b                                           ; $58a3: $04
	inc  b                                           ; $58a4: $04
	inc  b                                           ; $58a5: $04
	inc  b                                           ; $58a6: $04
	inc  b                                           ; $58a7: $04
	inc  b                                           ; $58a8: $04
	inc  b                                           ; $58a9: $04
	inc  bc                                          ; $58aa: $03
	inc  hl                                          ; $58ab: $23
	inc  hl                                          ; $58ac: $23
	inc  hl                                          ; $58ad: $23
	inc  hl                                          ; $58ae: $23
	inc  hl                                          ; $58af: $23
	inc  bc                                          ; $58b0: $03
	inc  bc                                          ; $58b1: $03
	inc  bc                                          ; $58b2: $03
	inc  bc                                          ; $58b3: $03
	inc  bc                                          ; $58b4: $03
	inc  bc                                          ; $58b5: $03
	inc  b                                           ; $58b6: $04
	inc  b                                           ; $58b7: $04
	inc  b                                           ; $58b8: $04
	inc  b                                           ; $58b9: $04
	inc  b                                           ; $58ba: $04
	inc  b                                           ; $58bb: $04
	inc  b                                           ; $58bc: $04
	inc  b                                           ; $58bd: $04
	inc  bc                                          ; $58be: $03
	inc  hl                                          ; $58bf: $23
	inc  hl                                          ; $58c0: $23
	inc  hl                                          ; $58c1: $23
	inc  hl                                          ; $58c2: $23
	inc  hl                                          ; $58c3: $23
	dec  b                                           ; $58c4: $05
	dec  b                                           ; $58c5: $05
	dec  b                                           ; $58c6: $05
	dec  b                                           ; $58c7: $05
	dec  b                                           ; $58c8: $05
	dec  b                                           ; $58c9: $05
	dec  b                                           ; $58ca: $05
	dec  b                                           ; $58cb: $05
	dec  b                                           ; $58cc: $05
	dec  b                                           ; $58cd: $05
	dec  h                                           ; $58ce: $25
	dec  h                                           ; $58cf: $25
	dec  h                                           ; $58d0: $25
	dec  h                                           ; $58d1: $25
	dec  h                                           ; $58d2: $25
	dec  h                                           ; $58d3: $25
	dec  h                                           ; $58d4: $25
	dec  h                                           ; $58d5: $25
	dec  h                                           ; $58d6: $25
	dec  h                                           ; $58d7: $25
	dec  b                                           ; $58d8: $05
	dec  b                                           ; $58d9: $05
	dec  b                                           ; $58da: $05
	dec  b                                           ; $58db: $05
	dec  b                                           ; $58dc: $05
	dec  b                                           ; $58dd: $05
	dec  b                                           ; $58de: $05
	dec  b                                           ; $58df: $05
	dec  b                                           ; $58e0: $05
	dec  b                                           ; $58e1: $05
	dec  h                                           ; $58e2: $25
	dec  h                                           ; $58e3: $25
	dec  h                                           ; $58e4: $25
	dec  h                                           ; $58e5: $25
	dec  h                                           ; $58e6: $25
	dec  h                                           ; $58e7: $25
	dec  h                                           ; $58e8: $25
	dec  h                                           ; $58e9: $25
	dec  h                                           ; $58ea: $25
	dec  h                                           ; $58eb: $25
	dec  b                                           ; $58ec: $05
	dec  b                                           ; $58ed: $05
	dec  b                                           ; $58ee: $05
	dec  c                                           ; $58ef: $0d
	dec  c                                           ; $58f0: $0d
	dec  c                                           ; $58f1: $0d
	dec  c                                           ; $58f2: $0d
	dec  c                                           ; $58f3: $0d
	dec  b                                           ; $58f4: $05
	dec  b                                           ; $58f5: $05
	dec  h                                           ; $58f6: $25
	dec  h                                           ; $58f7: $25
	dec  l                                           ; $58f8: $2d
	dec  l                                           ; $58f9: $2d
	dec  l                                           ; $58fa: $2d
	dec  l                                           ; $58fb: $2d
	dec  l                                           ; $58fc: $2d
	dec  h                                           ; $58fd: $25
	dec  h                                           ; $58fe: $25
	dec  h                                           ; $58ff: $25
	nop                                              ; $5900: $00
	ld   bc, $0301                                   ; $5901: $01 $01 $03
	inc  b                                           ; $5904: $04
	dec  b                                           ; $5905: $05
	ld   b, $06                                      ; $5906: $06 $06
	ld   [$0a09], sp                                 ; $5908: $08 $09 $0a
	dec  bc                                          ; $590b: $0b
	inc  c                                           ; $590c: $0c
	inc  c                                           ; $590d: $0c
	inc  c                                           ; $590e: $0c
	rrca                                             ; $590f: $0f
	rlca                                             ; $5910: $07
	ld   bc, $0001                                   ; $5911: $01 $01 $00
	db   $10                                         ; $5914: $10
	ld   de, $1312                                   ; $5915: $11 $12 $13
	inc  d                                           ; $5918: $14
	dec  d                                           ; $5919: $15
	ld   d, $17                                      ; $591a: $16 $17
	jr   @+$1b                                       ; $591c: $18 $19

	ld   a, [de]                                     ; $591e: $1a
	dec  de                                          ; $591f: $1b
	inc  e                                           ; $5920: $1c
	dec  e                                           ; $5921: $1d
	ld   e, $1f                                      ; $5922: $1e $1f
	ld   [de], a                                     ; $5924: $12
	daa                                              ; $5925: $27
	ld   [bc], a                                     ; $5926: $02
	db   $10                                         ; $5927: $10
	jr   nz, @+$23                                   ; $5928: $20 $21

	ld   [hl+], a                                    ; $592a: $22
	inc  hl                                          ; $592b: $23
	inc  h                                           ; $592c: $24
	dec  h                                           ; $592d: $25
	ld   h, $12                                      ; $592e: $26 $12
	jr   z, jr_082_595b                              ; $5930: $28 $29

	ld   a, [hl+]                                    ; $5932: $2a
	dec  hl                                          ; $5933: $2b
	ld   l, $2d                                      ; $5934: $2e $2d
	ld   l, $2f                                      ; $5936: $2e $2f
	ld   [de], a                                     ; $5938: $12
	scf                                              ; $5939: $37
	ld   hl, $302c                                   ; $593a: $21 $2c $30
	ld   hl, $3332                                   ; $593d: $21 $32 $33
	inc  [hl]                                        ; $5940: $34
	dec  [hl]                                        ; $5941: $35
	ld   [hl], $12                                   ; $5942: $36 $12
	jr   c, jr_082_597f                              ; $5944: $38 $39

	ld   a, [hl-]                                    ; $5946: $3a
	dec  sp                                          ; $5947: $3b
	ld   [de], a                                     ; $5948: $12
	dec  a                                           ; $5949: $3d
	ld   a, $3f                                      ; $594a: $3e $3f
	ld   [hl+], a                                    ; $594c: $22
	scf                                              ; $594d: $37
	ld   hl, $3030                                   ; $594e: $21 $30 $30
	ld   b, c                                        ; $5951: $41
	ld   b, d                                        ; $5952: $42
	ld   b, e                                        ; $5953: $43
	ld   b, h                                        ; $5954: $44
	ld   b, l                                        ; $5955: $45
	ld   b, [hl]                                     ; $5956: $46
	ld   b, a                                        ; $5957: $47
	ld   c, b                                        ; $5958: $48
	ld   c, c                                        ; $5959: $49
	ld   c, d                                        ; $595a: $4a

jr_082_595b:
	ld   c, e                                        ; $595b: $4b
	ld   c, h                                        ; $595c: $4c
	ld   c, l                                        ; $595d: $4d
	ld   c, [hl]                                     ; $595e: $4e
	ld   c, a                                        ; $595f: $4f
	dec  c                                           ; $5960: $0d
	ld   c, $21                                      ; $5961: $0e $21
	jr   nc, jr_082_59b5                             ; $5963: $30 $50

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
	ld   e, e                                        ; $596f: $5b
	ld   e, h                                        ; $5970: $5c
	ld   e, l                                        ; $5971: $5d
	ld   e, [hl]                                     ; $5972: $5e
	ld   e, a                                        ; $5973: $5f
	ld   sp, $7d40                                   ; $5974: $31 $40 $7d
	ld   bc, $6160                                   ; $5977: $01 $60 $61
	ld   h, d                                        ; $597a: $62
	ld   h, e                                        ; $597b: $63
	ld   h, h                                        ; $597c: $64
	ld   h, l                                        ; $597d: $65
	ld   h, [hl]                                     ; $597e: $66

jr_082_597f:
	ld   h, a                                        ; $597f: $67
	ld   l, b                                        ; $5980: $68
	ld   l, c                                        ; $5981: $69
	ld   l, d                                        ; $5982: $6a
	ld   l, e                                        ; $5983: $6b
	ld   l, h                                        ; $5984: $6c
	ld   l, l                                        ; $5985: $6d
	ld   l, [hl]                                     ; $5986: $6e
	ld   l, a                                        ; $5987: $6f
	inc  h                                           ; $5988: $24
	dec  h                                           ; $5989: $25
	ld   h, $3c                                      ; $598a: $26 $3c
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
	ld   l, l                                        ; $5999: $6d
	ld   a, [hl]                                     ; $599a: $7e
	ld   a, a                                        ; $599b: $7f
	db   $10                                         ; $599c: $10
	ld   de, $1312                                   ; $599d: $11 $12 $13
	nop                                              ; $59a0: $00
	nop                                              ; $59a1: $00
	ld   [bc], a                                     ; $59a2: $02
	inc  bc                                          ; $59a3: $03
	inc  b                                           ; $59a4: $04
	dec  b                                           ; $59a5: $05
	ld   b, $07                                      ; $59a6: $06 $07
	ld   [$0a09], sp                                 ; $59a8: $08 $09 $0a
	dec  bc                                          ; $59ab: $0b
	inc  c                                           ; $59ac: $0c
	dec  c                                           ; $59ad: $0d
	ld   c, $0f                                      ; $59ae: $0e $0f
	jr   nz, jr_082_59d3                             ; $59b0: $20 $21

	ld   [hl+], a                                    ; $59b2: $22
	inc  hl                                          ; $59b3: $23
	nop                                              ; $59b4: $00

jr_082_59b5:
	nop                                              ; $59b5: $00
	nop                                              ; $59b6: $00
	nop                                              ; $59b7: $00
	inc  d                                           ; $59b8: $14
	dec  d                                           ; $59b9: $15
	ld   d, $17                                      ; $59ba: $16 $17
	jr   jr_082_59d7                                 ; $59bc: $18 $19

	ld   a, [de]                                     ; $59be: $1a
	dec  de                                          ; $59bf: $1b
	inc  e                                           ; $59c0: $1c
	dec  e                                           ; $59c1: $1d
	ld   e, $1f                                      ; $59c2: $1e $1f
	daa                                              ; $59c4: $27
	jr   z, jr_082_59f0                              ; $59c5: $28 $29

	ld   a, [hl+]                                    ; $59c7: $2a
	dec  b                                           ; $59c8: $05
	dec  b                                           ; $59c9: $05
	dec  b                                           ; $59ca: $05
	dec  b                                           ; $59cb: $05
	inc  bc                                          ; $59cc: $03
	inc  bc                                          ; $59cd: $03
	inc  bc                                          ; $59ce: $03
	inc  bc                                          ; $59cf: $03
	inc  bc                                          ; $59d0: $03
	inc  bc                                          ; $59d1: $03
	inc  bc                                          ; $59d2: $03

jr_082_59d3:
	inc  bc                                          ; $59d3: $03
	inc  bc                                          ; $59d4: $03
	inc  bc                                          ; $59d5: $03
	inc  bc                                          ; $59d6: $03

jr_082_59d7:
	inc  bc                                          ; $59d7: $03
	dec  b                                           ; $59d8: $05
	dec  b                                           ; $59d9: $05
	dec  b                                           ; $59da: $05
	dec  h                                           ; $59db: $25
	dec  b                                           ; $59dc: $05
	inc  b                                           ; $59dd: $04
	dec  b                                           ; $59de: $05
	inc  b                                           ; $59df: $04
	inc  bc                                          ; $59e0: $03
	inc  bc                                          ; $59e1: $03
	dec  b                                           ; $59e2: $05
	dec  b                                           ; $59e3: $05
	inc  bc                                          ; $59e4: $03
	inc  bc                                          ; $59e5: $03
	inc  bc                                          ; $59e6: $03
	inc  bc                                          ; $59e7: $03
	dec  b                                           ; $59e8: $05
	dec  b                                           ; $59e9: $05
	dec  b                                           ; $59ea: $05
	dec  b                                           ; $59eb: $05
	dec  b                                           ; $59ec: $05
	inc  b                                           ; $59ed: $04
	inc  b                                           ; $59ee: $04
	dec  h                                           ; $59ef: $25

jr_082_59f0:
	inc  b                                           ; $59f0: $04
	inc  b                                           ; $59f1: $04
	inc  b                                           ; $59f2: $04
	dec  b                                           ; $59f3: $05
	inc  bc                                          ; $59f4: $03
	inc  bc                                          ; $59f5: $03
	dec  b                                           ; $59f6: $05
	dec  b                                           ; $59f7: $05
	dec  b                                           ; $59f8: $05
	dec  b                                           ; $59f9: $05
	dec  b                                           ; $59fa: $05
	dec  b                                           ; $59fb: $05
	dec  h                                           ; $59fc: $25
	inc  bc                                          ; $59fd: $03
	dec  b                                           ; $59fe: $05
	inc  b                                           ; $59ff: $04
	dec  b                                           ; $5a00: $05
	inc  b                                           ; $5a01: $04
	inc  b                                           ; $5a02: $04
	inc  b                                           ; $5a03: $04
	inc  b                                           ; $5a04: $04
	inc  b                                           ; $5a05: $04
	inc  b                                           ; $5a06: $04
	inc  bc                                          ; $5a07: $03
	inc  bc                                          ; $5a08: $03
	inc  bc                                          ; $5a09: $03
	dec  b                                           ; $5a0a: $05
	dec  b                                           ; $5a0b: $05
	dec  b                                           ; $5a0c: $05
	dec  b                                           ; $5a0d: $05
	dec  b                                           ; $5a0e: $05
	dec  b                                           ; $5a0f: $05
	dec  b                                           ; $5a10: $05
	dec  b                                           ; $5a11: $05
	dec  b                                           ; $5a12: $05
	inc  b                                           ; $5a13: $04
	inc  b                                           ; $5a14: $04
	inc  b                                           ; $5a15: $04
	inc  b                                           ; $5a16: $04
	inc  h                                           ; $5a17: $24
	inc  b                                           ; $5a18: $04
	inc  b                                           ; $5a19: $04
	inc  b                                           ; $5a1a: $04
	dec  b                                           ; $5a1b: $05
	inc  bc                                          ; $5a1c: $03
	inc  bc                                          ; $5a1d: $03
	dec  b                                           ; $5a1e: $05
	dec  b                                           ; $5a1f: $05
	dec  b                                           ; $5a20: $05
	dec  b                                           ; $5a21: $05
	dec  b                                           ; $5a22: $05
	dec  b                                           ; $5a23: $05
	dec  b                                           ; $5a24: $05
	dec  b                                           ; $5a25: $05
	dec  b                                           ; $5a26: $05
	dec  b                                           ; $5a27: $05
	inc  b                                           ; $5a28: $04
	inc  b                                           ; $5a29: $04
	inc  b                                           ; $5a2a: $04
	inc  h                                           ; $5a2b: $24
	inc  b                                           ; $5a2c: $04
	inc  b                                           ; $5a2d: $04
	dec  b                                           ; $5a2e: $05
	dec  b                                           ; $5a2f: $05
	inc  bc                                          ; $5a30: $03
	inc  bc                                          ; $5a31: $03
	inc  bc                                          ; $5a32: $03
	inc  bc                                          ; $5a33: $03
	dec  b                                           ; $5a34: $05
	inc  b                                           ; $5a35: $04
	dec  b                                           ; $5a36: $05
	dec  b                                           ; $5a37: $05
	inc  bc                                          ; $5a38: $03
	inc  bc                                          ; $5a39: $03
	inc  bc                                          ; $5a3a: $03
	inc  bc                                          ; $5a3b: $03
	inc  bc                                          ; $5a3c: $03
	inc  bc                                          ; $5a3d: $03
	inc  b                                           ; $5a3e: $04
	inc  c                                           ; $5a3f: $0c
	inc  bc                                          ; $5a40: $03
	inc  bc                                          ; $5a41: $03
	inc  bc                                          ; $5a42: $03
	inc  bc                                          ; $5a43: $03
	inc  bc                                          ; $5a44: $03
	inc  bc                                          ; $5a45: $03
	inc  bc                                          ; $5a46: $03
	dec  b                                           ; $5a47: $05
	dec  b                                           ; $5a48: $05
	inc  bc                                          ; $5a49: $03
	inc  bc                                          ; $5a4a: $03
	dec  b                                           ; $5a4b: $05
	inc  bc                                          ; $5a4c: $03
	inc  bc                                          ; $5a4d: $03
	inc  bc                                          ; $5a4e: $03
	inc  bc                                          ; $5a4f: $03
	dec  bc                                          ; $5a50: $0b
	dec  bc                                          ; $5a51: $0b
	dec  bc                                          ; $5a52: $0b
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
	jr   nz, jr_082_5ac3                             ; $5aa0: $20 $21

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
	jr   nc, jr_082_5ae7                             ; $5ab4: $30 $31

	ld   [hl-], a                                    ; $5ab6: $32
	inc  sp                                          ; $5ab7: $33
	jr   nz, @+$23                                   ; $5ab8: $20 $21

	ld   [hl+], a                                    ; $5aba: $22
	inc  hl                                          ; $5abb: $23
	inc  h                                           ; $5abc: $24
	dec  h                                           ; $5abd: $25
	ld   h, $27                                      ; $5abe: $26 $27
	jr   z, jr_082_5aeb                              ; $5ac0: $28 $29

	ld   a, [hl+]                                    ; $5ac2: $2a

jr_082_5ac3:
	dec  hl                                          ; $5ac3: $2b
	inc  l                                           ; $5ac4: $2c
	dec  l                                           ; $5ac5: $2d
	ld   l, $2f                                      ; $5ac6: $2e $2f
	inc  h                                           ; $5ac8: $24
	dec  h                                           ; $5ac9: $25
	ld   h, $27                                      ; $5aca: $26 $27
	jr   nc, jr_082_5aff                             ; $5acc: $30 $31

	ld   [hl-], a                                    ; $5ace: $32
	inc  sp                                          ; $5acf: $33
	inc  [hl]                                        ; $5ad0: $34
	dec  [hl]                                        ; $5ad1: $35
	ld   [hl], $37                                   ; $5ad2: $36 $37
	jr   c, jr_082_5b0f                              ; $5ad4: $38 $39

	ld   a, [hl-]                                    ; $5ad6: $3a
	dec  sp                                          ; $5ad7: $3b
	inc  a                                           ; $5ad8: $3c
	dec  a                                           ; $5ad9: $3d
	ld   a, $3f                                      ; $5ada: $3e $3f
	inc  [hl]                                        ; $5adc: $34
	dec  [hl]                                        ; $5add: $35
	ld   [hl], $37                                   ; $5ade: $36 $37
	ld   b, b                                        ; $5ae0: $40
	ld   b, c                                        ; $5ae1: $41
	ld   b, d                                        ; $5ae2: $42
	ld   b, e                                        ; $5ae3: $43
	ld   b, h                                        ; $5ae4: $44
	ld   b, l                                        ; $5ae5: $45
	ld   b, [hl]                                     ; $5ae6: $46

jr_082_5ae7:
	ld   b, a                                        ; $5ae7: $47
	ld   c, b                                        ; $5ae8: $48
	ld   c, c                                        ; $5ae9: $49
	ld   c, d                                        ; $5aea: $4a

jr_082_5aeb:
	ld   c, e                                        ; $5aeb: $4b
	ld   c, h                                        ; $5aec: $4c
	ld   c, l                                        ; $5aed: $4d
	ld   c, [hl]                                     ; $5aee: $4e
	ld   c, a                                        ; $5aef: $4f
	jr   z, @+$2b                                    ; $5af0: $28 $29

	ld   a, [hl+]                                    ; $5af2: $2a
	dec  hl                                          ; $5af3: $2b
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

jr_082_5aff:
	ld   e, e                                        ; $5aff: $5b
	ld   e, h                                        ; $5b00: $5c
	ld   e, l                                        ; $5b01: $5d
	ld   e, [hl]                                     ; $5b02: $5e
	ld   e, a                                        ; $5b03: $5f
	jr   c, @+$3b                                    ; $5b04: $38 $39

	ld   a, [hl-]                                    ; $5b06: $3a
	dec  sp                                          ; $5b07: $3b
	ld   h, b                                        ; $5b08: $60
	ld   h, c                                        ; $5b09: $61
	ld   h, d                                        ; $5b0a: $62
	ld   h, e                                        ; $5b0b: $63
	ld   h, h                                        ; $5b0c: $64
	ld   h, l                                        ; $5b0d: $65
	ld   h, [hl]                                     ; $5b0e: $66

jr_082_5b0f:
	ld   h, a                                        ; $5b0f: $67
	ld   l, b                                        ; $5b10: $68
	ld   l, c                                        ; $5b11: $69
	ld   l, d                                        ; $5b12: $6a
	ld   l, e                                        ; $5b13: $6b
	ld   l, h                                        ; $5b14: $6c
	ld   l, l                                        ; $5b15: $6d
	ld   l, [hl]                                     ; $5b16: $6e
	ld   l, a                                        ; $5b17: $6f
	inc  l                                           ; $5b18: $2c
	dec  l                                           ; $5b19: $2d
	ld   l, $2f                                      ; $5b1a: $2e $2f
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
	inc  a                                           ; $5b2c: $3c
	dec  a                                           ; $5b2d: $3d
	ld   a, $3f                                      ; $5b2e: $3e $3f
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
	ld   b, b                                        ; $5b40: $40
	ld   b, c                                        ; $5b41: $41
	ld   b, d                                        ; $5b42: $42
	ld   b, e                                        ; $5b43: $43
	db   $10                                         ; $5b44: $10
	ld   de, $1312                                   ; $5b45: $11 $12 $13
	inc  d                                           ; $5b48: $14
	dec  d                                           ; $5b49: $15
	ld   d, $17                                      ; $5b4a: $16 $17
	jr   jr_082_5b67                                 ; $5b4c: $18 $19

	ld   a, [de]                                     ; $5b4e: $1a
	dec  de                                          ; $5b4f: $1b
	inc  e                                           ; $5b50: $1c
	dec  e                                           ; $5b51: $1d
	ld   e, $1f                                      ; $5b52: $1e $1f
	ld   b, h                                        ; $5b54: $44
	ld   b, l                                        ; $5b55: $45
	ld   b, [hl]                                     ; $5b56: $46
	ld   b, a                                        ; $5b57: $47
	inc  bc                                          ; $5b58: $03
	inc  bc                                          ; $5b59: $03
	inc  bc                                          ; $5b5a: $03
	inc  bc                                          ; $5b5b: $03
	inc  bc                                          ; $5b5c: $03
	inc  bc                                          ; $5b5d: $03
	inc  bc                                          ; $5b5e: $03
	inc  bc                                          ; $5b5f: $03
	inc  bc                                          ; $5b60: $03
	inc  b                                           ; $5b61: $04
	inc  b                                           ; $5b62: $04
	inc  bc                                          ; $5b63: $03
	inc  bc                                          ; $5b64: $03
	inc  bc                                          ; $5b65: $03
	inc  bc                                          ; $5b66: $03

jr_082_5b67:
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
	dec  b                                           ; $5b74: $05
	inc  b                                           ; $5b75: $04
	inc  b                                           ; $5b76: $04
	dec  b                                           ; $5b77: $05
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
	inc  b                                           ; $5b83: $04
	inc  b                                           ; $5b84: $04
	inc  bc                                          ; $5b85: $03
	inc  bc                                          ; $5b86: $03
	inc  bc                                          ; $5b87: $03
	dec  b                                           ; $5b88: $05
	dec  b                                           ; $5b89: $05
	dec  b                                           ; $5b8a: $05
	dec  b                                           ; $5b8b: $05
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
	inc  b                                           ; $5b97: $04
	inc  b                                           ; $5b98: $04
	inc  bc                                          ; $5b99: $03
	inc  bc                                          ; $5b9a: $03
	inc  bc                                          ; $5b9b: $03
	dec  b                                           ; $5b9c: $05
	dec  b                                           ; $5b9d: $05
	dec  b                                           ; $5b9e: $05
	dec  b                                           ; $5b9f: $05
	inc  b                                           ; $5ba0: $04
	inc  bc                                          ; $5ba1: $03
	inc  bc                                          ; $5ba2: $03
	dec  b                                           ; $5ba3: $05
	dec  bc                                          ; $5ba4: $0b
	dec  bc                                          ; $5ba5: $0b
	dec  bc                                          ; $5ba6: $0b
	dec  bc                                          ; $5ba7: $0b
	inc  bc                                          ; $5ba8: $03
	inc  bc                                          ; $5ba9: $03
	inc  bc                                          ; $5baa: $03
	inc  bc                                          ; $5bab: $03
	inc  b                                           ; $5bac: $04
	inc  b                                           ; $5bad: $04
	inc  bc                                          ; $5bae: $03
	inc  b                                           ; $5baf: $04
	dec  b                                           ; $5bb0: $05
	dec  b                                           ; $5bb1: $05
	dec  b                                           ; $5bb2: $05
	dec  b                                           ; $5bb3: $05
	inc  b                                           ; $5bb4: $04
	inc  b                                           ; $5bb5: $04
	inc  b                                           ; $5bb6: $04
	inc  bc                                          ; $5bb7: $03
	dec  bc                                          ; $5bb8: $0b
	dec  bc                                          ; $5bb9: $0b
	dec  bc                                          ; $5bba: $0b
	dec  bc                                          ; $5bbb: $0b
	inc  bc                                          ; $5bbc: $03
	inc  bc                                          ; $5bbd: $03
	inc  bc                                          ; $5bbe: $03
	inc  b                                           ; $5bbf: $04
	inc  b                                           ; $5bc0: $04
	inc  b                                           ; $5bc1: $04
	inc  b                                           ; $5bc2: $04
	inc  b                                           ; $5bc3: $04
	inc  b                                           ; $5bc4: $04
	inc  b                                           ; $5bc5: $04
	dec  b                                           ; $5bc6: $05
	dec  b                                           ; $5bc7: $05
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
	inc  b                                           ; $5bd3: $04
	inc  b                                           ; $5bd4: $04
	inc  b                                           ; $5bd5: $04
	inc  b                                           ; $5bd6: $04
	inc  b                                           ; $5bd7: $04
	inc  b                                           ; $5bd8: $04
	inc  b                                           ; $5bd9: $04
	inc  b                                           ; $5bda: $04
	inc  b                                           ; $5bdb: $04
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
	inc  b                                           ; $5be9: $04
	inc  b                                           ; $5bea: $04
	inc  b                                           ; $5beb: $04
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
	inc  c                                           ; $5bf8: $0c
	inc  c                                           ; $5bf9: $0c
	dec  bc                                          ; $5bfa: $0b
	dec  bc                                          ; $5bfb: $0b
	dec  bc                                          ; $5bfc: $0b
	inc  c                                           ; $5bfd: $0c
	inc  c                                           ; $5bfe: $0c
	inc  c                                           ; $5bff: $0c
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
	inc  c                                           ; $5c0c: $0c
	inc  c                                           ; $5c0d: $0c
	inc  c                                           ; $5c0e: $0c
	inc  c                                           ; $5c0f: $0c
	inc  c                                           ; $5c10: $0c
	inc  c                                           ; $5c11: $0c
	inc  c                                           ; $5c12: $0c
	inc  c                                           ; $5c13: $0c
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
	jr   nz, jr_082_5c53                             ; $5c30: $20 $21

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
	jr   nc, jr_082_5c77                             ; $5c44: $30 $31

	ld   [hl-], a                                    ; $5c46: $32
	inc  sp                                          ; $5c47: $33
	jr   nz, @+$23                                   ; $5c48: $20 $21

	ld   [hl+], a                                    ; $5c4a: $22
	inc  hl                                          ; $5c4b: $23
	inc  h                                           ; $5c4c: $24
	dec  h                                           ; $5c4d: $25
	ld   h, $27                                      ; $5c4e: $26 $27
	jr   z, jr_082_5c7b                              ; $5c50: $28 $29

	ld   a, [hl+]                                    ; $5c52: $2a

jr_082_5c53:
	dec  hl                                          ; $5c53: $2b
	inc  l                                           ; $5c54: $2c
	dec  l                                           ; $5c55: $2d
	ld   l, $2f                                      ; $5c56: $2e $2f
	inc  h                                           ; $5c58: $24
	dec  h                                           ; $5c59: $25
	ld   h, $27                                      ; $5c5a: $26 $27
	jr   nc, jr_082_5c8f                             ; $5c5c: $30 $31

	ld   [hl-], a                                    ; $5c5e: $32
	inc  sp                                          ; $5c5f: $33
	inc  [hl]                                        ; $5c60: $34
	dec  [hl]                                        ; $5c61: $35
	ld   [hl], $37                                   ; $5c62: $36 $37
	jr   c, jr_082_5c9f                              ; $5c64: $38 $39

	ld   a, [hl-]                                    ; $5c66: $3a
	dec  sp                                          ; $5c67: $3b
	inc  a                                           ; $5c68: $3c
	dec  a                                           ; $5c69: $3d
	ld   a, $3f                                      ; $5c6a: $3e $3f
	inc  [hl]                                        ; $5c6c: $34
	dec  [hl]                                        ; $5c6d: $35
	ld   [hl], $37                                   ; $5c6e: $36 $37
	ld   b, b                                        ; $5c70: $40
	ld   b, c                                        ; $5c71: $41
	ld   b, d                                        ; $5c72: $42
	ld   b, e                                        ; $5c73: $43
	ld   b, h                                        ; $5c74: $44
	ld   b, l                                        ; $5c75: $45
	ld   b, [hl]                                     ; $5c76: $46

jr_082_5c77:
	ld   b, a                                        ; $5c77: $47
	ld   c, b                                        ; $5c78: $48
	ld   c, c                                        ; $5c79: $49
	ld   c, d                                        ; $5c7a: $4a

jr_082_5c7b:
	ld   c, e                                        ; $5c7b: $4b
	ld   c, h                                        ; $5c7c: $4c
	ld   c, l                                        ; $5c7d: $4d
	ld   c, [hl]                                     ; $5c7e: $4e
	ld   c, a                                        ; $5c7f: $4f
	jr   z, @+$2b                                    ; $5c80: $28 $29

	ld   a, [hl+]                                    ; $5c82: $2a
	dec  hl                                          ; $5c83: $2b
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

jr_082_5c8f:
	ld   e, e                                        ; $5c8f: $5b
	ld   e, h                                        ; $5c90: $5c
	ld   e, l                                        ; $5c91: $5d
	ld   e, [hl]                                     ; $5c92: $5e
	ld   e, a                                        ; $5c93: $5f
	jr   c, @+$3b                                    ; $5c94: $38 $39

	ld   a, [hl-]                                    ; $5c96: $3a
	dec  sp                                          ; $5c97: $3b
	ld   h, b                                        ; $5c98: $60
	ld   h, c                                        ; $5c99: $61
	ld   h, d                                        ; $5c9a: $62
	ld   h, e                                        ; $5c9b: $63
	ld   h, h                                        ; $5c9c: $64
	ld   h, l                                        ; $5c9d: $65
	ld   h, [hl]                                     ; $5c9e: $66

jr_082_5c9f:
	ld   h, a                                        ; $5c9f: $67
	ld   l, b                                        ; $5ca0: $68
	ld   l, c                                        ; $5ca1: $69
	ld   l, d                                        ; $5ca2: $6a
	ld   l, e                                        ; $5ca3: $6b
	ld   l, h                                        ; $5ca4: $6c
	ld   l, l                                        ; $5ca5: $6d
	ld   l, [hl]                                     ; $5ca6: $6e
	ld   l, a                                        ; $5ca7: $6f
	inc  l                                           ; $5ca8: $2c
	dec  l                                           ; $5ca9: $2d
	ld   l, $2f                                      ; $5caa: $2e $2f
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
	inc  a                                           ; $5cbc: $3c
	dec  a                                           ; $5cbd: $3d
	ld   a, $3f                                      ; $5cbe: $3e $3f
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
	ld   b, b                                        ; $5cd0: $40
	ld   b, c                                        ; $5cd1: $41
	ld   b, d                                        ; $5cd2: $42
	ld   b, e                                        ; $5cd3: $43
	db   $10                                         ; $5cd4: $10
	ld   de, $1312                                   ; $5cd5: $11 $12 $13
	inc  d                                           ; $5cd8: $14
	dec  d                                           ; $5cd9: $15
	ld   d, $17                                      ; $5cda: $16 $17
	jr   jr_082_5cf7                                 ; $5cdc: $18 $19

	ld   a, [de]                                     ; $5cde: $1a
	dec  de                                          ; $5cdf: $1b
	inc  e                                           ; $5ce0: $1c
	dec  e                                           ; $5ce1: $1d
	ld   e, $1f                                      ; $5ce2: $1e $1f
	ld   b, h                                        ; $5ce4: $44
	ld   b, l                                        ; $5ce5: $45
	ld   b, [hl]                                     ; $5ce6: $46
	ld   b, a                                        ; $5ce7: $47
	inc  b                                           ; $5ce8: $04
	inc  b                                           ; $5ce9: $04
	inc  b                                           ; $5cea: $04
	inc  b                                           ; $5ceb: $04
	dec  b                                           ; $5cec: $05
	dec  b                                           ; $5ced: $05
	dec  b                                           ; $5cee: $05
	inc  bc                                          ; $5cef: $03
	inc  bc                                          ; $5cf0: $03
	inc  bc                                          ; $5cf1: $03
	inc  bc                                          ; $5cf2: $03
	inc  bc                                          ; $5cf3: $03
	inc  bc                                          ; $5cf4: $03
	inc  bc                                          ; $5cf5: $03
	inc  bc                                          ; $5cf6: $03

jr_082_5cf7:
	dec  b                                           ; $5cf7: $05
	inc  c                                           ; $5cf8: $0c
	inc  c                                           ; $5cf9: $0c
	inc  c                                           ; $5cfa: $0c
	inc  c                                           ; $5cfb: $0c
	dec  b                                           ; $5cfc: $05
	dec  b                                           ; $5cfd: $05
	inc  b                                           ; $5cfe: $04
	inc  b                                           ; $5cff: $04
	dec  b                                           ; $5d00: $05
	dec  b                                           ; $5d01: $05
	dec  b                                           ; $5d02: $05
	dec  b                                           ; $5d03: $05
	dec  b                                           ; $5d04: $05
	inc  bc                                          ; $5d05: $03
	inc  bc                                          ; $5d06: $03
	dec  b                                           ; $5d07: $05
	dec  b                                           ; $5d08: $05
	dec  b                                           ; $5d09: $05
	dec  b                                           ; $5d0a: $05
	dec  b                                           ; $5d0b: $05
	inc  c                                           ; $5d0c: $0c
	inc  c                                           ; $5d0d: $0c
	inc  c                                           ; $5d0e: $0c
	inc  c                                           ; $5d0f: $0c
	dec  b                                           ; $5d10: $05
	dec  b                                           ; $5d11: $05
	inc  b                                           ; $5d12: $04
	inc  b                                           ; $5d13: $04
	dec  b                                           ; $5d14: $05
	dec  b                                           ; $5d15: $05
	inc  b                                           ; $5d16: $04
	dec  b                                           ; $5d17: $05
	dec  b                                           ; $5d18: $05
	inc  b                                           ; $5d19: $04
	inc  b                                           ; $5d1a: $04
	dec  b                                           ; $5d1b: $05
	dec  b                                           ; $5d1c: $05
	dec  b                                           ; $5d1d: $05
	dec  b                                           ; $5d1e: $05
	dec  b                                           ; $5d1f: $05
	inc  c                                           ; $5d20: $0c
	inc  c                                           ; $5d21: $0c
	inc  c                                           ; $5d22: $0c
	inc  c                                           ; $5d23: $0c
	dec  b                                           ; $5d24: $05
	dec  b                                           ; $5d25: $05
	inc  bc                                          ; $5d26: $03
	inc  bc                                          ; $5d27: $03
	dec  b                                           ; $5d28: $05
	dec  b                                           ; $5d29: $05
	dec  b                                           ; $5d2a: $05
	dec  b                                           ; $5d2b: $05
	inc  bc                                          ; $5d2c: $03
	inc  bc                                          ; $5d2d: $03
	inc  bc                                          ; $5d2e: $03
	inc  bc                                          ; $5d2f: $03
	dec  b                                           ; $5d30: $05
	dec  b                                           ; $5d31: $05
	dec  b                                           ; $5d32: $05
	dec  b                                           ; $5d33: $05
	inc  c                                           ; $5d34: $0c
	dec  c                                           ; $5d35: $0d
	dec  c                                           ; $5d36: $0d
	dec  c                                           ; $5d37: $0d
	dec  b                                           ; $5d38: $05
	dec  b                                           ; $5d39: $05
	inc  bc                                          ; $5d3a: $03
	inc  bc                                          ; $5d3b: $03
	inc  bc                                          ; $5d3c: $03
	inc  b                                           ; $5d3d: $04
	dec  b                                           ; $5d3e: $05
	dec  b                                           ; $5d3f: $05
	inc  b                                           ; $5d40: $04
	inc  bc                                          ; $5d41: $03
	inc  bc                                          ; $5d42: $03
	inc  bc                                          ; $5d43: $03
	dec  b                                           ; $5d44: $05
	dec  b                                           ; $5d45: $05
	inc  b                                           ; $5d46: $04
	inc  bc                                          ; $5d47: $03
	dec  bc                                          ; $5d48: $0b
	dec  bc                                          ; $5d49: $0b
	dec  bc                                          ; $5d4a: $0b
	dec  c                                           ; $5d4b: $0d
	dec  b                                           ; $5d4c: $05
	inc  b                                           ; $5d4d: $04
	inc  bc                                          ; $5d4e: $03
	inc  bc                                          ; $5d4f: $03
	inc  bc                                          ; $5d50: $03
	dec  b                                           ; $5d51: $05
	dec  b                                           ; $5d52: $05
	dec  b                                           ; $5d53: $05
	inc  b                                           ; $5d54: $04
	inc  bc                                          ; $5d55: $03
	inc  bc                                          ; $5d56: $03
	inc  bc                                          ; $5d57: $03
	dec  b                                           ; $5d58: $05
	dec  b                                           ; $5d59: $05
	inc  b                                           ; $5d5a: $04
	inc  bc                                          ; $5d5b: $03
	dec  bc                                          ; $5d5c: $0b
	dec  bc                                          ; $5d5d: $0b
	dec  bc                                          ; $5d5e: $0b
	dec  c                                           ; $5d5f: $0d
	inc  b                                           ; $5d60: $04
	inc  b                                           ; $5d61: $04
	inc  bc                                          ; $5d62: $03
	inc  bc                                          ; $5d63: $03
	inc  bc                                          ; $5d64: $03
	dec  b                                           ; $5d65: $05
	dec  b                                           ; $5d66: $05
	dec  b                                           ; $5d67: $05
	inc  b                                           ; $5d68: $04
	inc  b                                           ; $5d69: $04
	inc  b                                           ; $5d6a: $04
	inc  bc                                          ; $5d6b: $03
	dec  b                                           ; $5d6c: $05
	dec  b                                           ; $5d6d: $05
	dec  b                                           ; $5d6e: $05
	inc  bc                                          ; $5d6f: $03
	dec  bc                                          ; $5d70: $0b
	dec  bc                                          ; $5d71: $0b
	dec  bc                                          ; $5d72: $0b
	dec  c                                           ; $5d73: $0d
	inc  b                                           ; $5d74: $04
	inc  b                                           ; $5d75: $04
	inc  bc                                          ; $5d76: $03
	inc  bc                                          ; $5d77: $03
	inc  bc                                          ; $5d78: $03
	dec  b                                           ; $5d79: $05
	dec  b                                           ; $5d7a: $05
	inc  bc                                          ; $5d7b: $03
	inc  bc                                          ; $5d7c: $03
	inc  bc                                          ; $5d7d: $03
	inc  bc                                          ; $5d7e: $03
	inc  bc                                          ; $5d7f: $03
	dec  b                                           ; $5d80: $05
	dec  b                                           ; $5d81: $05
	dec  b                                           ; $5d82: $05
	inc  bc                                          ; $5d83: $03
	dec  bc                                          ; $5d84: $0b
	dec  bc                                          ; $5d85: $0b
	dec  bc                                          ; $5d86: $0b
	dec  c                                           ; $5d87: $0d
	inc  c                                           ; $5d88: $0c
	inc  c                                           ; $5d89: $0c
	dec  bc                                          ; $5d8a: $0b
	dec  bc                                          ; $5d8b: $0b
	dec  bc                                          ; $5d8c: $0b
	dec  bc                                          ; $5d8d: $0b
	dec  c                                           ; $5d8e: $0d
	dec  c                                           ; $5d8f: $0d
	dec  c                                           ; $5d90: $0d
	dec  c                                           ; $5d91: $0d
	dec  c                                           ; $5d92: $0d
	dec  c                                           ; $5d93: $0d
	dec  c                                           ; $5d94: $0d
	dec  bc                                          ; $5d95: $0b
	dec  bc                                          ; $5d96: $0b
	dec  bc                                          ; $5d97: $0b
	dec  bc                                          ; $5d98: $0b
	dec  bc                                          ; $5d99: $0b
	dec  bc                                          ; $5d9a: $0b
	dec  c                                           ; $5d9b: $0d
	inc  c                                           ; $5d9c: $0c
	inc  c                                           ; $5d9d: $0c
	dec  bc                                          ; $5d9e: $0b
	dec  bc                                          ; $5d9f: $0b
	dec  bc                                          ; $5da0: $0b
	dec  bc                                          ; $5da1: $0b
	dec  bc                                          ; $5da2: $0b
	dec  bc                                          ; $5da3: $0b
	dec  bc                                          ; $5da4: $0b
	dec  bc                                          ; $5da5: $0b
	dec  bc                                          ; $5da6: $0b
	dec  bc                                          ; $5da7: $0b
	dec  bc                                          ; $5da8: $0b
	dec  bc                                          ; $5da9: $0b
	dec  bc                                          ; $5daa: $0b
	dec  bc                                          ; $5dab: $0b
	dec  bc                                          ; $5dac: $0b
	dec  bc                                          ; $5dad: $0b
	dec  bc                                          ; $5dae: $0b
	dec  c                                           ; $5daf: $0d
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
	jr   nz, jr_082_5de3                             ; $5dc0: $20 $21

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
	jr   nc, jr_082_5e07                             ; $5dd4: $30 $31

	ld   [hl-], a                                    ; $5dd6: $32
	inc  sp                                          ; $5dd7: $33
	jr   nz, @+$23                                   ; $5dd8: $20 $21

	ld   [hl+], a                                    ; $5dda: $22
	inc  hl                                          ; $5ddb: $23
	inc  h                                           ; $5ddc: $24
	dec  h                                           ; $5ddd: $25
	ld   h, $27                                      ; $5dde: $26 $27
	jr   z, jr_082_5e0b                              ; $5de0: $28 $29

	ld   a, [hl+]                                    ; $5de2: $2a

jr_082_5de3:
	dec  hl                                          ; $5de3: $2b
	inc  l                                           ; $5de4: $2c
	dec  l                                           ; $5de5: $2d
	ld   l, $2f                                      ; $5de6: $2e $2f
	inc  h                                           ; $5de8: $24
	dec  h                                           ; $5de9: $25
	ld   h, $27                                      ; $5dea: $26 $27
	jr   nc, jr_082_5e1f                             ; $5dec: $30 $31

	ld   [hl-], a                                    ; $5dee: $32
	inc  sp                                          ; $5def: $33
	inc  [hl]                                        ; $5df0: $34
	dec  [hl]                                        ; $5df1: $35
	ld   [hl], $37                                   ; $5df2: $36 $37
	jr   c, jr_082_5e2f                              ; $5df4: $38 $39

	ld   a, [hl-]                                    ; $5df6: $3a
	dec  sp                                          ; $5df7: $3b
	inc  a                                           ; $5df8: $3c
	dec  a                                           ; $5df9: $3d
	ld   a, $3f                                      ; $5dfa: $3e $3f
	inc  [hl]                                        ; $5dfc: $34
	dec  [hl]                                        ; $5dfd: $35
	ld   [hl], $37                                   ; $5dfe: $36 $37
	ld   b, b                                        ; $5e00: $40
	ld   b, c                                        ; $5e01: $41
	ld   b, d                                        ; $5e02: $42
	ld   b, e                                        ; $5e03: $43
	ld   b, h                                        ; $5e04: $44
	ld   b, l                                        ; $5e05: $45
	ld   b, [hl]                                     ; $5e06: $46

jr_082_5e07:
	ld   b, a                                        ; $5e07: $47
	ld   c, b                                        ; $5e08: $48
	ld   c, c                                        ; $5e09: $49
	ld   c, d                                        ; $5e0a: $4a

jr_082_5e0b:
	ld   c, e                                        ; $5e0b: $4b
	ld   c, h                                        ; $5e0c: $4c
	ld   c, l                                        ; $5e0d: $4d
	ld   c, [hl]                                     ; $5e0e: $4e
	ld   c, a                                        ; $5e0f: $4f
	jr   z, @+$2b                                    ; $5e10: $28 $29

	ld   a, [hl+]                                    ; $5e12: $2a
	dec  hl                                          ; $5e13: $2b
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

jr_082_5e1f:
	ld   e, e                                        ; $5e1f: $5b
	ld   e, h                                        ; $5e20: $5c
	ld   e, l                                        ; $5e21: $5d
	ld   e, [hl]                                     ; $5e22: $5e
	ld   e, a                                        ; $5e23: $5f
	jr   c, @+$3b                                    ; $5e24: $38 $39

	ld   a, [hl-]                                    ; $5e26: $3a
	dec  sp                                          ; $5e27: $3b
	ld   h, b                                        ; $5e28: $60
	ld   h, c                                        ; $5e29: $61
	ld   h, d                                        ; $5e2a: $62
	ld   h, e                                        ; $5e2b: $63
	ld   h, h                                        ; $5e2c: $64
	ld   h, l                                        ; $5e2d: $65
	ld   h, [hl]                                     ; $5e2e: $66

jr_082_5e2f:
	ld   h, a                                        ; $5e2f: $67
	ld   l, b                                        ; $5e30: $68
	ld   l, c                                        ; $5e31: $69
	ld   l, d                                        ; $5e32: $6a
	ld   l, e                                        ; $5e33: $6b
	ld   l, h                                        ; $5e34: $6c
	ld   l, l                                        ; $5e35: $6d
	ld   l, [hl]                                     ; $5e36: $6e
	ld   l, a                                        ; $5e37: $6f
	inc  l                                           ; $5e38: $2c
	dec  l                                           ; $5e39: $2d
	ld   l, $2f                                      ; $5e3a: $2e $2f
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
	inc  a                                           ; $5e4c: $3c
	dec  a                                           ; $5e4d: $3d
	ld   a, $3f                                      ; $5e4e: $3e $3f
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
	ld   b, b                                        ; $5e60: $40
	ld   b, c                                        ; $5e61: $41
	ld   b, d                                        ; $5e62: $42
	ld   b, e                                        ; $5e63: $43
	db   $10                                         ; $5e64: $10
	ld   de, $1312                                   ; $5e65: $11 $12 $13
	inc  d                                           ; $5e68: $14
	dec  d                                           ; $5e69: $15
	ld   d, $17                                      ; $5e6a: $16 $17
	jr   jr_082_5e87                                 ; $5e6c: $18 $19

	ld   a, [de]                                     ; $5e6e: $1a
	dec  de                                          ; $5e6f: $1b
	inc  e                                           ; $5e70: $1c
	dec  e                                           ; $5e71: $1d
	ld   e, $1f                                      ; $5e72: $1e $1f
	ld   b, h                                        ; $5e74: $44
	ld   b, l                                        ; $5e75: $45
	ld   b, [hl]                                     ; $5e76: $46
	ld   b, a                                        ; $5e77: $47
	inc  b                                           ; $5e78: $04
	inc  b                                           ; $5e79: $04
	inc  b                                           ; $5e7a: $04
	inc  b                                           ; $5e7b: $04
	dec  b                                           ; $5e7c: $05
	dec  b                                           ; $5e7d: $05
	dec  b                                           ; $5e7e: $05
	inc  bc                                          ; $5e7f: $03
	inc  bc                                          ; $5e80: $03
	inc  bc                                          ; $5e81: $03
	inc  bc                                          ; $5e82: $03
	inc  bc                                          ; $5e83: $03
	inc  bc                                          ; $5e84: $03
	inc  bc                                          ; $5e85: $03
	inc  bc                                          ; $5e86: $03

jr_082_5e87:
	dec  b                                           ; $5e87: $05
	inc  c                                           ; $5e88: $0c
	inc  c                                           ; $5e89: $0c
	inc  c                                           ; $5e8a: $0c
	inc  c                                           ; $5e8b: $0c
	dec  b                                           ; $5e8c: $05
	dec  b                                           ; $5e8d: $05
	inc  b                                           ; $5e8e: $04
	inc  b                                           ; $5e8f: $04
	dec  b                                           ; $5e90: $05
	dec  b                                           ; $5e91: $05
	dec  b                                           ; $5e92: $05
	dec  b                                           ; $5e93: $05
	dec  b                                           ; $5e94: $05
	inc  bc                                          ; $5e95: $03
	inc  bc                                          ; $5e96: $03
	dec  b                                           ; $5e97: $05
	dec  b                                           ; $5e98: $05
	dec  b                                           ; $5e99: $05
	dec  b                                           ; $5e9a: $05
	dec  b                                           ; $5e9b: $05
	inc  c                                           ; $5e9c: $0c
	inc  c                                           ; $5e9d: $0c
	inc  c                                           ; $5e9e: $0c
	inc  c                                           ; $5e9f: $0c
	dec  b                                           ; $5ea0: $05
	dec  b                                           ; $5ea1: $05
	inc  b                                           ; $5ea2: $04
	inc  b                                           ; $5ea3: $04
	dec  b                                           ; $5ea4: $05
	dec  b                                           ; $5ea5: $05
	inc  b                                           ; $5ea6: $04
	inc  b                                           ; $5ea7: $04
	inc  b                                           ; $5ea8: $04
	inc  b                                           ; $5ea9: $04
	inc  bc                                          ; $5eaa: $03
	inc  b                                           ; $5eab: $04
	dec  b                                           ; $5eac: $05
	inc  b                                           ; $5ead: $04
	dec  b                                           ; $5eae: $05
	dec  b                                           ; $5eaf: $05
	inc  c                                           ; $5eb0: $0c
	inc  c                                           ; $5eb1: $0c
	inc  c                                           ; $5eb2: $0c
	inc  c                                           ; $5eb3: $0c
	dec  b                                           ; $5eb4: $05
	dec  b                                           ; $5eb5: $05
	inc  bc                                          ; $5eb6: $03
	inc  bc                                          ; $5eb7: $03
	dec  b                                           ; $5eb8: $05
	dec  b                                           ; $5eb9: $05
	dec  b                                           ; $5eba: $05
	dec  b                                           ; $5ebb: $05
	inc  bc                                          ; $5ebc: $03
	inc  bc                                          ; $5ebd: $03
	inc  bc                                          ; $5ebe: $03
	inc  bc                                          ; $5ebf: $03
	dec  b                                           ; $5ec0: $05
	dec  b                                           ; $5ec1: $05
	dec  b                                           ; $5ec2: $05
	dec  b                                           ; $5ec3: $05
	dec  c                                           ; $5ec4: $0d
	dec  c                                           ; $5ec5: $0d
	dec  c                                           ; $5ec6: $0d
	dec  c                                           ; $5ec7: $0d
	dec  b                                           ; $5ec8: $05
	dec  b                                           ; $5ec9: $05
	inc  bc                                          ; $5eca: $03
	inc  bc                                          ; $5ecb: $03
	inc  bc                                          ; $5ecc: $03
	inc  b                                           ; $5ecd: $04
	dec  b                                           ; $5ece: $05
	inc  b                                           ; $5ecf: $04
	inc  b                                           ; $5ed0: $04
	inc  bc                                          ; $5ed1: $03
	inc  bc                                          ; $5ed2: $03
	inc  bc                                          ; $5ed3: $03
	dec  b                                           ; $5ed4: $05
	dec  b                                           ; $5ed5: $05
	inc  b                                           ; $5ed6: $04
	inc  bc                                          ; $5ed7: $03
	dec  bc                                          ; $5ed8: $0b
	dec  bc                                          ; $5ed9: $0b
	dec  bc                                          ; $5eda: $0b
	dec  c                                           ; $5edb: $0d
	inc  b                                           ; $5edc: $04
	inc  b                                           ; $5edd: $04
	inc  bc                                          ; $5ede: $03
	inc  bc                                          ; $5edf: $03
	inc  bc                                          ; $5ee0: $03
	dec  b                                           ; $5ee1: $05
	dec  b                                           ; $5ee2: $05
	dec  b                                           ; $5ee3: $05
	inc  b                                           ; $5ee4: $04
	inc  bc                                          ; $5ee5: $03
	inc  bc                                          ; $5ee6: $03
	inc  bc                                          ; $5ee7: $03
	inc  b                                           ; $5ee8: $04
	inc  b                                           ; $5ee9: $04
	inc  b                                           ; $5eea: $04
	inc  bc                                          ; $5eeb: $03
	dec  bc                                          ; $5eec: $0b
	dec  bc                                          ; $5eed: $0b
	dec  bc                                          ; $5eee: $0b
	dec  c                                           ; $5eef: $0d
	dec  b                                           ; $5ef0: $05
	inc  bc                                          ; $5ef1: $03
	inc  bc                                          ; $5ef2: $03
	inc  bc                                          ; $5ef3: $03
	inc  bc                                          ; $5ef4: $03
	dec  b                                           ; $5ef5: $05
	dec  b                                           ; $5ef6: $05
	inc  b                                           ; $5ef7: $04
	inc  b                                           ; $5ef8: $04
	inc  b                                           ; $5ef9: $04
	inc  b                                           ; $5efa: $04
	inc  bc                                          ; $5efb: $03
	inc  b                                           ; $5efc: $04
	dec  b                                           ; $5efd: $05
	dec  b                                           ; $5efe: $05
	inc  bc                                          ; $5eff: $03
	dec  bc                                          ; $5f00: $0b
	dec  bc                                          ; $5f01: $0b
	dec  bc                                          ; $5f02: $0b
	dec  c                                           ; $5f03: $0d
	inc  bc                                          ; $5f04: $03
	inc  bc                                          ; $5f05: $03
	inc  bc                                          ; $5f06: $03
	inc  bc                                          ; $5f07: $03
	inc  bc                                          ; $5f08: $03
	dec  b                                           ; $5f09: $05
	dec  b                                           ; $5f0a: $05
	inc  bc                                          ; $5f0b: $03
	inc  bc                                          ; $5f0c: $03
	inc  bc                                          ; $5f0d: $03
	inc  bc                                          ; $5f0e: $03
	inc  bc                                          ; $5f0f: $03
	inc  b                                           ; $5f10: $04
	inc  bc                                          ; $5f11: $03
	inc  bc                                          ; $5f12: $03
	inc  bc                                          ; $5f13: $03
	dec  bc                                          ; $5f14: $0b
	dec  bc                                          ; $5f15: $0b
	dec  bc                                          ; $5f16: $0b
	dec  c                                           ; $5f17: $0d
	dec  bc                                          ; $5f18: $0b
	dec  bc                                          ; $5f19: $0b
	dec  bc                                          ; $5f1a: $0b
	dec  bc                                          ; $5f1b: $0b
	dec  bc                                          ; $5f1c: $0b
	dec  bc                                          ; $5f1d: $0b
	dec  c                                           ; $5f1e: $0d
	dec  c                                           ; $5f1f: $0d
	dec  c                                           ; $5f20: $0d
	dec  c                                           ; $5f21: $0d
	dec  c                                           ; $5f22: $0d
	dec  c                                           ; $5f23: $0d
	dec  c                                           ; $5f24: $0d
	dec  bc                                          ; $5f25: $0b
	inc  c                                           ; $5f26: $0c
	dec  bc                                          ; $5f27: $0b
	dec  bc                                          ; $5f28: $0b
	dec  bc                                          ; $5f29: $0b
	dec  bc                                          ; $5f2a: $0b
	dec  c                                           ; $5f2b: $0d
	dec  c                                           ; $5f2c: $0d
	dec  c                                           ; $5f2d: $0d
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
	dec  c                                           ; $5f3f: $0d
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
	jr   nz, jr_082_5f73                             ; $5f50: $20 $21

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
	jr   nc, jr_082_5f97                             ; $5f64: $30 $31

	ld   [hl-], a                                    ; $5f66: $32
	inc  sp                                          ; $5f67: $33
	jr   nz, @+$23                                   ; $5f68: $20 $21

	ld   [hl+], a                                    ; $5f6a: $22
	inc  hl                                          ; $5f6b: $23
	inc  h                                           ; $5f6c: $24
	dec  h                                           ; $5f6d: $25
	ld   h, $27                                      ; $5f6e: $26 $27
	jr   z, jr_082_5f9b                              ; $5f70: $28 $29

	ld   a, [hl+]                                    ; $5f72: $2a

jr_082_5f73:
	dec  hl                                          ; $5f73: $2b
	inc  l                                           ; $5f74: $2c
	dec  l                                           ; $5f75: $2d
	ld   l, $2f                                      ; $5f76: $2e $2f
	inc  h                                           ; $5f78: $24
	dec  h                                           ; $5f79: $25
	ld   h, $27                                      ; $5f7a: $26 $27
	jr   nc, jr_082_5faf                             ; $5f7c: $30 $31

	ld   [hl-], a                                    ; $5f7e: $32
	inc  sp                                          ; $5f7f: $33
	inc  [hl]                                        ; $5f80: $34
	dec  [hl]                                        ; $5f81: $35
	ld   [hl], $37                                   ; $5f82: $36 $37
	jr   c, jr_082_5fbf                              ; $5f84: $38 $39

	ld   a, [hl-]                                    ; $5f86: $3a
	dec  sp                                          ; $5f87: $3b
	inc  a                                           ; $5f88: $3c
	dec  a                                           ; $5f89: $3d
	ld   a, $3f                                      ; $5f8a: $3e $3f
	inc  [hl]                                        ; $5f8c: $34
	dec  [hl]                                        ; $5f8d: $35
	ld   [hl], $37                                   ; $5f8e: $36 $37
	ld   b, b                                        ; $5f90: $40
	ld   b, c                                        ; $5f91: $41
	ld   b, d                                        ; $5f92: $42
	ld   b, e                                        ; $5f93: $43
	ld   b, h                                        ; $5f94: $44
	ld   b, l                                        ; $5f95: $45
	ld   b, [hl]                                     ; $5f96: $46

jr_082_5f97:
	ld   b, a                                        ; $5f97: $47
	ld   c, b                                        ; $5f98: $48
	ld   c, c                                        ; $5f99: $49
	ld   c, d                                        ; $5f9a: $4a

jr_082_5f9b:
	ld   c, e                                        ; $5f9b: $4b
	ld   c, h                                        ; $5f9c: $4c
	ld   c, l                                        ; $5f9d: $4d
	ld   c, [hl]                                     ; $5f9e: $4e
	ld   c, a                                        ; $5f9f: $4f
	jr   z, @+$2b                                    ; $5fa0: $28 $29

	ld   a, [hl+]                                    ; $5fa2: $2a
	dec  hl                                          ; $5fa3: $2b
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

jr_082_5faf:
	ld   e, e                                        ; $5faf: $5b
	ld   e, h                                        ; $5fb0: $5c
	ld   e, l                                        ; $5fb1: $5d
	ld   e, [hl]                                     ; $5fb2: $5e
	ld   e, a                                        ; $5fb3: $5f
	jr   c, @+$3b                                    ; $5fb4: $38 $39

	ld   a, [hl-]                                    ; $5fb6: $3a
	dec  sp                                          ; $5fb7: $3b
	ld   h, b                                        ; $5fb8: $60
	ld   h, c                                        ; $5fb9: $61
	ld   h, d                                        ; $5fba: $62
	ld   h, e                                        ; $5fbb: $63
	ld   h, h                                        ; $5fbc: $64
	ld   h, l                                        ; $5fbd: $65
	ld   h, [hl]                                     ; $5fbe: $66

jr_082_5fbf:
	ld   h, a                                        ; $5fbf: $67
	ld   l, b                                        ; $5fc0: $68
	ld   l, c                                        ; $5fc1: $69
	ld   l, d                                        ; $5fc2: $6a
	ld   l, e                                        ; $5fc3: $6b
	ld   l, h                                        ; $5fc4: $6c
	ld   l, l                                        ; $5fc5: $6d
	ld   l, [hl]                                     ; $5fc6: $6e
	ld   l, a                                        ; $5fc7: $6f
	inc  l                                           ; $5fc8: $2c
	dec  l                                           ; $5fc9: $2d
	ld   l, $2f                                      ; $5fca: $2e $2f
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
	inc  a                                           ; $5fdc: $3c
	dec  a                                           ; $5fdd: $3d
	ld   a, $3f                                      ; $5fde: $3e $3f
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
	ld   b, b                                        ; $5ff0: $40
	ld   b, c                                        ; $5ff1: $41
	ld   b, d                                        ; $5ff2: $42
	ld   b, e                                        ; $5ff3: $43
	db   $10                                         ; $5ff4: $10
	ld   de, $1312                                   ; $5ff5: $11 $12 $13
	inc  d                                           ; $5ff8: $14
	dec  d                                           ; $5ff9: $15
	ld   d, $17                                      ; $5ffa: $16 $17
	jr   jr_082_6017                                 ; $5ffc: $18 $19

	ld   a, [de]                                     ; $5ffe: $1a
	dec  de                                          ; $5fff: $1b
	inc  e                                           ; $6000: $1c
	dec  e                                           ; $6001: $1d
	ld   e, $1f                                      ; $6002: $1e $1f
	ld   b, h                                        ; $6004: $44
	ld   b, l                                        ; $6005: $45
	ld   b, [hl]                                     ; $6006: $46
	ld   b, a                                        ; $6007: $47
	inc  bc                                          ; $6008: $03
	inc  bc                                          ; $6009: $03
	inc  bc                                          ; $600a: $03
	inc  bc                                          ; $600b: $03
	inc  bc                                          ; $600c: $03
	inc  bc                                          ; $600d: $03
	inc  bc                                          ; $600e: $03
	inc  bc                                          ; $600f: $03
	inc  bc                                          ; $6010: $03
	inc  bc                                          ; $6011: $03
	inc  bc                                          ; $6012: $03
	inc  bc                                          ; $6013: $03
	inc  bc                                          ; $6014: $03
	inc  bc                                          ; $6015: $03
	inc  bc                                          ; $6016: $03

jr_082_6017:
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
	inc  bc                                          ; $6022: $03
	inc  bc                                          ; $6023: $03
	inc  bc                                          ; $6024: $03
	inc  bc                                          ; $6025: $03
	inc  bc                                          ; $6026: $03
	inc  bc                                          ; $6027: $03
	inc  bc                                          ; $6028: $03
	inc  bc                                          ; $6029: $03
	inc  bc                                          ; $602a: $03
	inc  bc                                          ; $602b: $03
	dec  bc                                          ; $602c: $0b
	dec  bc                                          ; $602d: $0b
	dec  bc                                          ; $602e: $0b
	inc  c                                           ; $602f: $0c
	inc  bc                                          ; $6030: $03
	inc  bc                                          ; $6031: $03
	inc  bc                                          ; $6032: $03
	inc  bc                                          ; $6033: $03
	inc  b                                           ; $6034: $04
	dec  b                                           ; $6035: $05
	inc  bc                                          ; $6036: $03
	inc  bc                                          ; $6037: $03
	inc  bc                                          ; $6038: $03
	inc  bc                                          ; $6039: $03
	inc  b                                           ; $603a: $04
	inc  b                                           ; $603b: $04
	inc  b                                           ; $603c: $04
	inc  b                                           ; $603d: $04
	inc  bc                                          ; $603e: $03
	inc  bc                                          ; $603f: $03
	dec  bc                                          ; $6040: $0b
	dec  bc                                          ; $6041: $0b
	dec  bc                                          ; $6042: $0b
	inc  c                                           ; $6043: $0c
	inc  bc                                          ; $6044: $03
	inc  bc                                          ; $6045: $03
	inc  bc                                          ; $6046: $03
	inc  bc                                          ; $6047: $03
	inc  b                                           ; $6048: $04
	inc  b                                           ; $6049: $04
	inc  bc                                          ; $604a: $03
	inc  bc                                          ; $604b: $03
	inc  bc                                          ; $604c: $03
	dec  b                                           ; $604d: $05
	inc  b                                           ; $604e: $04
	inc  b                                           ; $604f: $04
	inc  b                                           ; $6050: $04
	inc  b                                           ; $6051: $04
	inc  bc                                          ; $6052: $03
	inc  bc                                          ; $6053: $03
	dec  bc                                          ; $6054: $0b
	dec  bc                                          ; $6055: $0b
	dec  c                                           ; $6056: $0d
	dec  bc                                          ; $6057: $0b
	inc  bc                                          ; $6058: $03
	inc  bc                                          ; $6059: $03
	inc  bc                                          ; $605a: $03
	inc  bc                                          ; $605b: $03
	inc  bc                                          ; $605c: $03
	inc  bc                                          ; $605d: $03
	inc  bc                                          ; $605e: $03
	inc  bc                                          ; $605f: $03
	inc  bc                                          ; $6060: $03
	dec  b                                           ; $6061: $05
	inc  b                                           ; $6062: $04
	inc  b                                           ; $6063: $04
	inc  b                                           ; $6064: $04
	inc  b                                           ; $6065: $04
	inc  bc                                          ; $6066: $03
	inc  bc                                          ; $6067: $03
	dec  bc                                          ; $6068: $0b
	dec  bc                                          ; $6069: $0b
	dec  c                                           ; $606a: $0d
	inc  c                                           ; $606b: $0c
	inc  bc                                          ; $606c: $03
	inc  bc                                          ; $606d: $03
	inc  bc                                          ; $606e: $03
	inc  bc                                          ; $606f: $03
	inc  bc                                          ; $6070: $03
	inc  bc                                          ; $6071: $03
	inc  bc                                          ; $6072: $03
	inc  bc                                          ; $6073: $03
	inc  bc                                          ; $6074: $03
	dec  b                                           ; $6075: $05
	inc  b                                           ; $6076: $04
	inc  bc                                          ; $6077: $03
	inc  b                                           ; $6078: $04
	inc  b                                           ; $6079: $04
	inc  bc                                          ; $607a: $03
	inc  bc                                          ; $607b: $03
	dec  bc                                          ; $607c: $0b
	dec  bc                                          ; $607d: $0b
	dec  c                                           ; $607e: $0d
	dec  bc                                          ; $607f: $0b
	inc  bc                                          ; $6080: $03
	inc  bc                                          ; $6081: $03
	inc  bc                                          ; $6082: $03
	inc  bc                                          ; $6083: $03
	inc  bc                                          ; $6084: $03
	inc  bc                                          ; $6085: $03
	inc  bc                                          ; $6086: $03
	inc  bc                                          ; $6087: $03
	inc  bc                                          ; $6088: $03
	inc  bc                                          ; $6089: $03
	inc  b                                           ; $608a: $04
	inc  bc                                          ; $608b: $03
	inc  b                                           ; $608c: $04
	inc  b                                           ; $608d: $04
	inc  bc                                          ; $608e: $03
	inc  bc                                          ; $608f: $03
	dec  bc                                          ; $6090: $0b
	dec  bc                                          ; $6091: $0b
	dec  c                                           ; $6092: $0d
	dec  bc                                          ; $6093: $0b
	inc  bc                                          ; $6094: $03
	inc  bc                                          ; $6095: $03
	inc  bc                                          ; $6096: $03
	inc  bc                                          ; $6097: $03
	inc  bc                                          ; $6098: $03
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
	dec  bc                                          ; $60a6: $0b
	dec  bc                                          ; $60a7: $0b
	dec  bc                                          ; $60a8: $0b
	dec  bc                                          ; $60a9: $0b
	dec  bc                                          ; $60aa: $0b
	dec  bc                                          ; $60ab: $0b
	dec  bc                                          ; $60ac: $0b
	dec  bc                                          ; $60ad: $0b
	dec  bc                                          ; $60ae: $0b
	dec  bc                                          ; $60af: $0b
	dec  bc                                          ; $60b0: $0b
	dec  bc                                          ; $60b1: $0b
	dec  bc                                          ; $60b2: $0b
	dec  bc                                          ; $60b3: $0b
	dec  bc                                          ; $60b4: $0b
	dec  bc                                          ; $60b5: $0b
	dec  bc                                          ; $60b6: $0b
	dec  bc                                          ; $60b7: $0b
	dec  bc                                          ; $60b8: $0b
	dec  bc                                          ; $60b9: $0b
	dec  bc                                          ; $60ba: $0b
	dec  bc                                          ; $60bb: $0b
	dec  bc                                          ; $60bc: $0b
	dec  bc                                          ; $60bd: $0b
	dec  bc                                          ; $60be: $0b
	dec  bc                                          ; $60bf: $0b
	dec  bc                                          ; $60c0: $0b
	dec  bc                                          ; $60c1: $0b
	dec  bc                                          ; $60c2: $0b
	dec  bc                                          ; $60c3: $0b
	dec  bc                                          ; $60c4: $0b
	dec  bc                                          ; $60c5: $0b
	dec  bc                                          ; $60c6: $0b
	dec  bc                                          ; $60c7: $0b
	dec  bc                                          ; $60c8: $0b
	dec  bc                                          ; $60c9: $0b
	dec  bc                                          ; $60ca: $0b
	dec  bc                                          ; $60cb: $0b
	dec  bc                                          ; $60cc: $0b
	dec  bc                                          ; $60cd: $0b
	dec  bc                                          ; $60ce: $0b
	dec  bc                                          ; $60cf: $0b
	nop                                              ; $60d0: $00
	ld   bc, $0302                                   ; $60d1: $01 $02 $03
	inc  b                                           ; $60d4: $04
	dec  b                                           ; $60d5: $05
	ld   b, $07                                      ; $60d6: $06 $07
	ld   [$0a09], sp                                 ; $60d8: $08 $09 $0a
	dec  bc                                          ; $60db: $0b
	inc  c                                           ; $60dc: $0c
	dec  c                                           ; $60dd: $0d
	ld   c, $0f                                      ; $60de: $0e $0f
	jr   nz, jr_082_6103                             ; $60e0: $20 $21

	ld   [hl+], a                                    ; $60e2: $22
	inc  hl                                          ; $60e3: $23
	db   $10                                         ; $60e4: $10
	ld   de, $1312                                   ; $60e5: $11 $12 $13
	inc  d                                           ; $60e8: $14
	dec  d                                           ; $60e9: $15
	ld   d, $17                                      ; $60ea: $16 $17
	jr   @+$1b                                       ; $60ec: $18 $19

	ld   a, [de]                                     ; $60ee: $1a
	dec  de                                          ; $60ef: $1b
	inc  e                                           ; $60f0: $1c
	dec  e                                           ; $60f1: $1d
	ld   e, $1f                                      ; $60f2: $1e $1f
	jr   nc, jr_082_6127                             ; $60f4: $30 $31

	ld   [hl-], a                                    ; $60f6: $32
	inc  sp                                          ; $60f7: $33
	jr   nz, @+$23                                   ; $60f8: $20 $21

	ld   [hl+], a                                    ; $60fa: $22
	inc  hl                                          ; $60fb: $23
	inc  h                                           ; $60fc: $24
	dec  h                                           ; $60fd: $25
	ld   h, $27                                      ; $60fe: $26 $27
	jr   z, jr_082_612b                              ; $6100: $28 $29

	ld   a, [hl+]                                    ; $6102: $2a

jr_082_6103:
	dec  hl                                          ; $6103: $2b
	inc  l                                           ; $6104: $2c
	dec  l                                           ; $6105: $2d
	ld   l, $2f                                      ; $6106: $2e $2f
	inc  h                                           ; $6108: $24
	dec  h                                           ; $6109: $25
	ld   h, $27                                      ; $610a: $26 $27
	jr   nc, jr_082_613f                             ; $610c: $30 $31

	ld   [hl-], a                                    ; $610e: $32
	inc  sp                                          ; $610f: $33
	inc  [hl]                                        ; $6110: $34
	dec  [hl]                                        ; $6111: $35
	ld   [hl], $37                                   ; $6112: $36 $37
	jr   c, jr_082_614f                              ; $6114: $38 $39

	ld   a, [hl-]                                    ; $6116: $3a
	dec  sp                                          ; $6117: $3b
	inc  a                                           ; $6118: $3c
	dec  a                                           ; $6119: $3d
	ld   a, $3f                                      ; $611a: $3e $3f
	inc  [hl]                                        ; $611c: $34
	dec  [hl]                                        ; $611d: $35
	ld   [hl], $37                                   ; $611e: $36 $37
	ld   b, b                                        ; $6120: $40
	ld   b, c                                        ; $6121: $41
	ld   b, d                                        ; $6122: $42
	ld   b, e                                        ; $6123: $43
	ld   b, h                                        ; $6124: $44
	ld   b, l                                        ; $6125: $45
	ld   b, [hl]                                     ; $6126: $46

jr_082_6127:
	ld   b, a                                        ; $6127: $47
	ld   c, b                                        ; $6128: $48
	ld   c, c                                        ; $6129: $49
	ld   c, d                                        ; $612a: $4a

jr_082_612b:
	ld   c, e                                        ; $612b: $4b
	ld   c, h                                        ; $612c: $4c
	ld   c, l                                        ; $612d: $4d
	ld   c, [hl]                                     ; $612e: $4e
	ld   c, a                                        ; $612f: $4f
	jr   z, @+$2b                                    ; $6130: $28 $29

	ld   a, [hl+]                                    ; $6132: $2a
	dec  hl                                          ; $6133: $2b
	ld   d, b                                        ; $6134: $50
	ld   d, c                                        ; $6135: $51
	ld   d, d                                        ; $6136: $52
	ld   d, e                                        ; $6137: $53
	ld   d, h                                        ; $6138: $54
	ld   d, l                                        ; $6139: $55
	ld   d, [hl]                                     ; $613a: $56
	ld   d, a                                        ; $613b: $57
	ld   e, b                                        ; $613c: $58
	ld   e, c                                        ; $613d: $59
	ld   e, d                                        ; $613e: $5a

jr_082_613f:
	ld   e, e                                        ; $613f: $5b
	ld   e, h                                        ; $6140: $5c
	ld   e, l                                        ; $6141: $5d
	ld   e, [hl]                                     ; $6142: $5e
	ld   e, a                                        ; $6143: $5f
	jr   c, @+$3b                                    ; $6144: $38 $39

	ld   a, [hl-]                                    ; $6146: $3a
	dec  sp                                          ; $6147: $3b
	ld   h, b                                        ; $6148: $60
	ld   h, c                                        ; $6149: $61
	ld   h, d                                        ; $614a: $62
	ld   h, e                                        ; $614b: $63
	ld   h, h                                        ; $614c: $64
	ld   h, l                                        ; $614d: $65
	ld   h, [hl]                                     ; $614e: $66

jr_082_614f:
	ld   h, a                                        ; $614f: $67
	ld   l, b                                        ; $6150: $68
	ld   l, c                                        ; $6151: $69
	ld   l, d                                        ; $6152: $6a
	ld   l, e                                        ; $6153: $6b
	ld   l, h                                        ; $6154: $6c
	ld   l, l                                        ; $6155: $6d
	ld   l, [hl]                                     ; $6156: $6e
	ld   l, a                                        ; $6157: $6f
	inc  l                                           ; $6158: $2c
	dec  l                                           ; $6159: $2d
	ld   l, $2f                                      ; $615a: $2e $2f
	ld   [hl], b                                     ; $615c: $70
	ld   [hl], c                                     ; $615d: $71
	ld   [hl], d                                     ; $615e: $72
	ld   [hl], e                                     ; $615f: $73
	ld   [hl], h                                     ; $6160: $74
	ld   [hl], l                                     ; $6161: $75
	halt                                             ; $6162: $76
	ld   [hl], a                                     ; $6163: $77
	ld   a, b                                        ; $6164: $78
	ld   a, c                                        ; $6165: $79
	ld   a, d                                        ; $6166: $7a
	ld   a, e                                        ; $6167: $7b
	ld   a, h                                        ; $6168: $7c
	ld   a, l                                        ; $6169: $7d
	ld   a, [hl]                                     ; $616a: $7e
	ld   a, a                                        ; $616b: $7f
	inc  a                                           ; $616c: $3c
	dec  a                                           ; $616d: $3d
	ld   a, $3f                                      ; $616e: $3e $3f
	nop                                              ; $6170: $00
	ld   bc, $0302                                   ; $6171: $01 $02 $03
	inc  b                                           ; $6174: $04
	dec  b                                           ; $6175: $05
	ld   b, $07                                      ; $6176: $06 $07
	ld   [$0a09], sp                                 ; $6178: $08 $09 $0a
	dec  bc                                          ; $617b: $0b
	inc  c                                           ; $617c: $0c
	dec  c                                           ; $617d: $0d
	ld   c, $0f                                      ; $617e: $0e $0f
	ld   b, b                                        ; $6180: $40
	ld   b, c                                        ; $6181: $41
	ld   b, d                                        ; $6182: $42
	ld   b, e                                        ; $6183: $43
	db   $10                                         ; $6184: $10
	ld   de, $1312                                   ; $6185: $11 $12 $13
	inc  d                                           ; $6188: $14
	dec  d                                           ; $6189: $15
	ld   d, $17                                      ; $618a: $16 $17
	jr   jr_082_61a7                                 ; $618c: $18 $19

	ld   a, [de]                                     ; $618e: $1a
	dec  de                                          ; $618f: $1b
	inc  e                                           ; $6190: $1c
	dec  e                                           ; $6191: $1d
	ld   e, $1f                                      ; $6192: $1e $1f
	ld   b, h                                        ; $6194: $44
	ld   b, l                                        ; $6195: $45
	ld   b, [hl]                                     ; $6196: $46
	ld   b, a                                        ; $6197: $47
	inc  bc                                          ; $6198: $03
	inc  bc                                          ; $6199: $03
	inc  bc                                          ; $619a: $03
	inc  bc                                          ; $619b: $03
	inc  bc                                          ; $619c: $03
	inc  bc                                          ; $619d: $03
	inc  bc                                          ; $619e: $03
	inc  bc                                          ; $619f: $03
	inc  bc                                          ; $61a0: $03
	inc  bc                                          ; $61a1: $03
	inc  bc                                          ; $61a2: $03
	inc  bc                                          ; $61a3: $03
	inc  bc                                          ; $61a4: $03
	inc  bc                                          ; $61a5: $03
	inc  bc                                          ; $61a6: $03

jr_082_61a7:
	inc  bc                                          ; $61a7: $03
	dec  bc                                          ; $61a8: $0b
	dec  bc                                          ; $61a9: $0b
	dec  bc                                          ; $61aa: $0b
	dec  bc                                          ; $61ab: $0b
	inc  bc                                          ; $61ac: $03
	inc  bc                                          ; $61ad: $03
	inc  bc                                          ; $61ae: $03
	inc  bc                                          ; $61af: $03
	inc  bc                                          ; $61b0: $03
	inc  bc                                          ; $61b1: $03
	inc  bc                                          ; $61b2: $03
	inc  bc                                          ; $61b3: $03
	inc  bc                                          ; $61b4: $03
	inc  bc                                          ; $61b5: $03
	inc  bc                                          ; $61b6: $03
	inc  bc                                          ; $61b7: $03
	inc  bc                                          ; $61b8: $03
	inc  bc                                          ; $61b9: $03
	inc  bc                                          ; $61ba: $03
	inc  bc                                          ; $61bb: $03
	dec  bc                                          ; $61bc: $0b
	dec  bc                                          ; $61bd: $0b
	dec  bc                                          ; $61be: $0b
	inc  c                                           ; $61bf: $0c
	inc  bc                                          ; $61c0: $03
	inc  bc                                          ; $61c1: $03
	inc  bc                                          ; $61c2: $03
	inc  bc                                          ; $61c3: $03
	inc  b                                           ; $61c4: $04
	dec  b                                           ; $61c5: $05
	inc  bc                                          ; $61c6: $03
	inc  bc                                          ; $61c7: $03
	inc  bc                                          ; $61c8: $03
	inc  bc                                          ; $61c9: $03
	inc  b                                           ; $61ca: $04
	inc  b                                           ; $61cb: $04
	inc  b                                           ; $61cc: $04
	inc  b                                           ; $61cd: $04
	inc  bc                                          ; $61ce: $03
	inc  bc                                          ; $61cf: $03
	dec  bc                                          ; $61d0: $0b
	dec  bc                                          ; $61d1: $0b
	dec  bc                                          ; $61d2: $0b
	inc  c                                           ; $61d3: $0c
	inc  bc                                          ; $61d4: $03
	inc  bc                                          ; $61d5: $03
	inc  bc                                          ; $61d6: $03
	inc  bc                                          ; $61d7: $03
	inc  b                                           ; $61d8: $04
	dec  b                                           ; $61d9: $05
	inc  bc                                          ; $61da: $03
	inc  bc                                          ; $61db: $03
	inc  bc                                          ; $61dc: $03
	dec  b                                           ; $61dd: $05
	inc  b                                           ; $61de: $04
	inc  b                                           ; $61df: $04
	inc  b                                           ; $61e0: $04
	inc  b                                           ; $61e1: $04
	inc  bc                                          ; $61e2: $03
	inc  bc                                          ; $61e3: $03
	dec  bc                                          ; $61e4: $0b
	dec  bc                                          ; $61e5: $0b
	dec  c                                           ; $61e6: $0d
	dec  bc                                          ; $61e7: $0b
	inc  bc                                          ; $61e8: $03
	inc  bc                                          ; $61e9: $03
	inc  bc                                          ; $61ea: $03
	inc  bc                                          ; $61eb: $03
	inc  bc                                          ; $61ec: $03
	inc  bc                                          ; $61ed: $03
	inc  bc                                          ; $61ee: $03
	inc  bc                                          ; $61ef: $03
	inc  bc                                          ; $61f0: $03
	dec  b                                           ; $61f1: $05
	inc  b                                           ; $61f2: $04
	inc  b                                           ; $61f3: $04
	inc  b                                           ; $61f4: $04
	inc  b                                           ; $61f5: $04
	inc  bc                                          ; $61f6: $03
	inc  bc                                          ; $61f7: $03
	dec  bc                                          ; $61f8: $0b
	dec  bc                                          ; $61f9: $0b
	dec  c                                           ; $61fa: $0d
	inc  c                                           ; $61fb: $0c
	inc  bc                                          ; $61fc: $03
	inc  bc                                          ; $61fd: $03
	inc  bc                                          ; $61fe: $03
	inc  bc                                          ; $61ff: $03
	inc  bc                                          ; $6200: $03
	inc  bc                                          ; $6201: $03
	inc  bc                                          ; $6202: $03
	inc  bc                                          ; $6203: $03
	inc  bc                                          ; $6204: $03
	dec  b                                           ; $6205: $05
	inc  b                                           ; $6206: $04
	inc  b                                           ; $6207: $04
	inc  b                                           ; $6208: $04
	inc  b                                           ; $6209: $04
	inc  bc                                          ; $620a: $03
	inc  bc                                          ; $620b: $03
	dec  bc                                          ; $620c: $0b
	dec  bc                                          ; $620d: $0b
	dec  c                                           ; $620e: $0d
	dec  bc                                          ; $620f: $0b
	inc  bc                                          ; $6210: $03
	inc  bc                                          ; $6211: $03
	inc  bc                                          ; $6212: $03
	inc  bc                                          ; $6213: $03
	inc  bc                                          ; $6214: $03
	inc  bc                                          ; $6215: $03
	inc  bc                                          ; $6216: $03
	inc  bc                                          ; $6217: $03
	inc  bc                                          ; $6218: $03
	dec  b                                           ; $6219: $05
	inc  b                                           ; $621a: $04
	inc  b                                           ; $621b: $04
	inc  b                                           ; $621c: $04
	inc  b                                           ; $621d: $04
	inc  bc                                          ; $621e: $03
	inc  bc                                          ; $621f: $03
	dec  bc                                          ; $6220: $0b
	dec  bc                                          ; $6221: $0b
	dec  c                                           ; $6222: $0d
	dec  bc                                          ; $6223: $0b
	inc  bc                                          ; $6224: $03
	inc  bc                                          ; $6225: $03
	inc  bc                                          ; $6226: $03
	inc  bc                                          ; $6227: $03
	inc  bc                                          ; $6228: $03
	inc  bc                                          ; $6229: $03
	inc  bc                                          ; $622a: $03
	inc  bc                                          ; $622b: $03
	inc  bc                                          ; $622c: $03
	dec  b                                           ; $622d: $05
	inc  bc                                          ; $622e: $03
	inc  bc                                          ; $622f: $03
	inc  bc                                          ; $6230: $03
	inc  bc                                          ; $6231: $03
	inc  bc                                          ; $6232: $03
	inc  bc                                          ; $6233: $03
	dec  bc                                          ; $6234: $0b
	dec  bc                                          ; $6235: $0b
	dec  c                                           ; $6236: $0d
	dec  bc                                          ; $6237: $0b
	dec  bc                                          ; $6238: $0b
	dec  bc                                          ; $6239: $0b
	dec  bc                                          ; $623a: $0b
	dec  bc                                          ; $623b: $0b
	dec  bc                                          ; $623c: $0b
	dec  bc                                          ; $623d: $0b
	dec  bc                                          ; $623e: $0b
	dec  bc                                          ; $623f: $0b
	dec  bc                                          ; $6240: $0b
	dec  bc                                          ; $6241: $0b
	dec  bc                                          ; $6242: $0b
	dec  bc                                          ; $6243: $0b
	dec  bc                                          ; $6244: $0b
	dec  bc                                          ; $6245: $0b
	dec  bc                                          ; $6246: $0b
	dec  bc                                          ; $6247: $0b
	dec  bc                                          ; $6248: $0b
	dec  bc                                          ; $6249: $0b
	dec  bc                                          ; $624a: $0b
	dec  bc                                          ; $624b: $0b
	dec  bc                                          ; $624c: $0b
	dec  bc                                          ; $624d: $0b
	dec  bc                                          ; $624e: $0b
	dec  bc                                          ; $624f: $0b
	dec  bc                                          ; $6250: $0b
	dec  bc                                          ; $6251: $0b
	dec  bc                                          ; $6252: $0b
	dec  bc                                          ; $6253: $0b
	dec  bc                                          ; $6254: $0b
	dec  bc                                          ; $6255: $0b
	dec  bc                                          ; $6256: $0b
	dec  bc                                          ; $6257: $0b
	dec  bc                                          ; $6258: $0b
	dec  bc                                          ; $6259: $0b
	dec  bc                                          ; $625a: $0b
	dec  bc                                          ; $625b: $0b
	dec  bc                                          ; $625c: $0b
	dec  bc                                          ; $625d: $0b
	dec  bc                                          ; $625e: $0b
	dec  bc                                          ; $625f: $0b
	nop                                              ; $6260: $00
	ld   bc, $0302                                   ; $6261: $01 $02 $03
	inc  b                                           ; $6264: $04
	dec  b                                           ; $6265: $05
	ld   b, $07                                      ; $6266: $06 $07
	ld   [$0a09], sp                                 ; $6268: $08 $09 $0a
	dec  bc                                          ; $626b: $0b
	inc  c                                           ; $626c: $0c
	dec  c                                           ; $626d: $0d
	ld   c, $0f                                      ; $626e: $0e $0f
	jr   nz, jr_082_6293                             ; $6270: $20 $21

	ld   [hl+], a                                    ; $6272: $22
	inc  hl                                          ; $6273: $23
	db   $10                                         ; $6274: $10
	ld   de, $1312                                   ; $6275: $11 $12 $13
	inc  d                                           ; $6278: $14
	dec  d                                           ; $6279: $15
	ld   d, $17                                      ; $627a: $16 $17
	jr   @+$1b                                       ; $627c: $18 $19

	ld   a, [de]                                     ; $627e: $1a
	dec  de                                          ; $627f: $1b
	inc  e                                           ; $6280: $1c
	dec  e                                           ; $6281: $1d
	ld   e, $1f                                      ; $6282: $1e $1f
	jr   nc, jr_082_62b7                             ; $6284: $30 $31

	ld   [hl-], a                                    ; $6286: $32
	inc  sp                                          ; $6287: $33
	jr   nz, @+$23                                   ; $6288: $20 $21

	ld   [hl+], a                                    ; $628a: $22
	inc  hl                                          ; $628b: $23
	inc  h                                           ; $628c: $24
	dec  h                                           ; $628d: $25
	ld   h, $27                                      ; $628e: $26 $27
	jr   z, jr_082_62bb                              ; $6290: $28 $29

	ld   a, [hl+]                                    ; $6292: $2a

jr_082_6293:
	dec  hl                                          ; $6293: $2b
	inc  l                                           ; $6294: $2c
	dec  l                                           ; $6295: $2d
	ld   l, $2f                                      ; $6296: $2e $2f
	inc  h                                           ; $6298: $24
	dec  h                                           ; $6299: $25
	ld   h, $27                                      ; $629a: $26 $27
	jr   nc, jr_082_62cf                             ; $629c: $30 $31

	ld   [hl-], a                                    ; $629e: $32
	inc  sp                                          ; $629f: $33
	inc  [hl]                                        ; $62a0: $34
	dec  [hl]                                        ; $62a1: $35
	ld   [hl], $37                                   ; $62a2: $36 $37
	jr   c, jr_082_62df                              ; $62a4: $38 $39

	ld   a, [hl-]                                    ; $62a6: $3a
	dec  sp                                          ; $62a7: $3b
	inc  a                                           ; $62a8: $3c
	dec  a                                           ; $62a9: $3d
	ld   a, $3f                                      ; $62aa: $3e $3f
	inc  [hl]                                        ; $62ac: $34
	dec  [hl]                                        ; $62ad: $35
	ld   [hl], $37                                   ; $62ae: $36 $37
	ld   b, b                                        ; $62b0: $40
	ld   b, c                                        ; $62b1: $41
	ld   b, d                                        ; $62b2: $42
	ld   b, e                                        ; $62b3: $43
	ld   b, h                                        ; $62b4: $44
	ld   b, l                                        ; $62b5: $45
	ld   b, [hl]                                     ; $62b6: $46

jr_082_62b7:
	ld   b, a                                        ; $62b7: $47
	ld   c, b                                        ; $62b8: $48
	ld   c, c                                        ; $62b9: $49
	ld   c, d                                        ; $62ba: $4a

jr_082_62bb:
	ld   c, e                                        ; $62bb: $4b
	ld   c, h                                        ; $62bc: $4c
	ld   c, l                                        ; $62bd: $4d
	ld   c, [hl]                                     ; $62be: $4e
	ld   c, a                                        ; $62bf: $4f
	jr   z, @+$2b                                    ; $62c0: $28 $29

	ld   a, [hl+]                                    ; $62c2: $2a
	dec  hl                                          ; $62c3: $2b
	ld   d, b                                        ; $62c4: $50
	ld   d, c                                        ; $62c5: $51
	ld   d, d                                        ; $62c6: $52
	ld   d, e                                        ; $62c7: $53
	ld   d, h                                        ; $62c8: $54
	ld   d, l                                        ; $62c9: $55
	ld   d, [hl]                                     ; $62ca: $56
	ld   d, a                                        ; $62cb: $57
	ld   e, b                                        ; $62cc: $58
	ld   e, c                                        ; $62cd: $59
	ld   e, d                                        ; $62ce: $5a

jr_082_62cf:
	ld   e, e                                        ; $62cf: $5b
	ld   e, h                                        ; $62d0: $5c
	ld   e, l                                        ; $62d1: $5d
	ld   e, [hl]                                     ; $62d2: $5e
	ld   e, a                                        ; $62d3: $5f
	jr   c, @+$3b                                    ; $62d4: $38 $39

	ld   a, [hl-]                                    ; $62d6: $3a
	dec  sp                                          ; $62d7: $3b
	ld   h, b                                        ; $62d8: $60
	ld   h, c                                        ; $62d9: $61
	ld   h, d                                        ; $62da: $62
	ld   h, e                                        ; $62db: $63
	ld   h, h                                        ; $62dc: $64
	ld   h, l                                        ; $62dd: $65
	ld   h, [hl]                                     ; $62de: $66

jr_082_62df:
	ld   h, a                                        ; $62df: $67
	ld   l, b                                        ; $62e0: $68
	ld   l, c                                        ; $62e1: $69
	ld   l, d                                        ; $62e2: $6a
	ld   l, e                                        ; $62e3: $6b
	ld   l, h                                        ; $62e4: $6c
	ld   l, l                                        ; $62e5: $6d
	ld   l, [hl]                                     ; $62e6: $6e
	ld   l, a                                        ; $62e7: $6f
	inc  l                                           ; $62e8: $2c
	dec  l                                           ; $62e9: $2d
	ld   l, $2f                                      ; $62ea: $2e $2f
	ld   [hl], b                                     ; $62ec: $70
	ld   [hl], c                                     ; $62ed: $71
	ld   [hl], d                                     ; $62ee: $72
	ld   [hl], e                                     ; $62ef: $73
	ld   [hl], h                                     ; $62f0: $74
	ld   [hl], l                                     ; $62f1: $75
	halt                                             ; $62f2: $76
	ld   [hl], a                                     ; $62f3: $77
	ld   a, b                                        ; $62f4: $78
	ld   a, c                                        ; $62f5: $79
	ld   a, d                                        ; $62f6: $7a
	ld   a, e                                        ; $62f7: $7b
	ld   a, h                                        ; $62f8: $7c
	ld   a, l                                        ; $62f9: $7d
	ld   a, [hl]                                     ; $62fa: $7e
	ld   a, a                                        ; $62fb: $7f
	inc  a                                           ; $62fc: $3c
	dec  a                                           ; $62fd: $3d
	ld   a, $3f                                      ; $62fe: $3e $3f
	nop                                              ; $6300: $00
	ld   bc, $0302                                   ; $6301: $01 $02 $03
	inc  b                                           ; $6304: $04
	dec  b                                           ; $6305: $05
	ld   b, $07                                      ; $6306: $06 $07
	ld   [$0a09], sp                                 ; $6308: $08 $09 $0a
	dec  bc                                          ; $630b: $0b
	inc  c                                           ; $630c: $0c
	dec  c                                           ; $630d: $0d
	ld   c, $0f                                      ; $630e: $0e $0f
	ld   b, b                                        ; $6310: $40
	ld   b, c                                        ; $6311: $41
	ld   b, d                                        ; $6312: $42
	ld   b, e                                        ; $6313: $43
	db   $10                                         ; $6314: $10
	ld   de, $1312                                   ; $6315: $11 $12 $13
	inc  d                                           ; $6318: $14
	dec  d                                           ; $6319: $15
	ld   d, $17                                      ; $631a: $16 $17
	jr   jr_082_6337                                 ; $631c: $18 $19

	ld   a, [de]                                     ; $631e: $1a
	dec  de                                          ; $631f: $1b
	inc  e                                           ; $6320: $1c
	dec  e                                           ; $6321: $1d
	ld   e, $1f                                      ; $6322: $1e $1f
	ld   b, h                                        ; $6324: $44
	ld   b, l                                        ; $6325: $45
	ld   b, [hl]                                     ; $6326: $46
	ld   b, a                                        ; $6327: $47
	inc  bc                                          ; $6328: $03
	inc  bc                                          ; $6329: $03
	inc  bc                                          ; $632a: $03
	inc  bc                                          ; $632b: $03
	inc  bc                                          ; $632c: $03
	inc  bc                                          ; $632d: $03
	inc  bc                                          ; $632e: $03
	inc  bc                                          ; $632f: $03
	inc  bc                                          ; $6330: $03
	inc  bc                                          ; $6331: $03
	inc  bc                                          ; $6332: $03
	inc  bc                                          ; $6333: $03
	inc  bc                                          ; $6334: $03
	inc  bc                                          ; $6335: $03
	inc  bc                                          ; $6336: $03

jr_082_6337:
	inc  bc                                          ; $6337: $03
	dec  bc                                          ; $6338: $0b
	dec  bc                                          ; $6339: $0b
	dec  bc                                          ; $633a: $0b
	dec  bc                                          ; $633b: $0b
	inc  bc                                          ; $633c: $03
	inc  bc                                          ; $633d: $03
	inc  bc                                          ; $633e: $03
	inc  bc                                          ; $633f: $03
	inc  bc                                          ; $6340: $03
	inc  bc                                          ; $6341: $03
	inc  bc                                          ; $6342: $03
	inc  bc                                          ; $6343: $03
	inc  bc                                          ; $6344: $03
	inc  bc                                          ; $6345: $03
	inc  bc                                          ; $6346: $03
	inc  bc                                          ; $6347: $03
	inc  bc                                          ; $6348: $03
	inc  bc                                          ; $6349: $03
	inc  bc                                          ; $634a: $03
	inc  bc                                          ; $634b: $03
	dec  bc                                          ; $634c: $0b
	dec  bc                                          ; $634d: $0b
	dec  bc                                          ; $634e: $0b
	dec  bc                                          ; $634f: $0b
	inc  bc                                          ; $6350: $03
	inc  bc                                          ; $6351: $03
	inc  bc                                          ; $6352: $03
	inc  bc                                          ; $6353: $03
	inc  bc                                          ; $6354: $03
	inc  bc                                          ; $6355: $03
	inc  bc                                          ; $6356: $03
	inc  bc                                          ; $6357: $03
	inc  bc                                          ; $6358: $03
	inc  bc                                          ; $6359: $03
	inc  bc                                          ; $635a: $03
	inc  bc                                          ; $635b: $03
	inc  bc                                          ; $635c: $03
	inc  bc                                          ; $635d: $03
	inc  bc                                          ; $635e: $03
	inc  bc                                          ; $635f: $03
	dec  bc                                          ; $6360: $0b
	dec  bc                                          ; $6361: $0b
	dec  bc                                          ; $6362: $0b
	dec  bc                                          ; $6363: $0b
	inc  bc                                          ; $6364: $03
	inc  bc                                          ; $6365: $03
	inc  bc                                          ; $6366: $03
	inc  bc                                          ; $6367: $03
	inc  bc                                          ; $6368: $03
	inc  bc                                          ; $6369: $03
	inc  bc                                          ; $636a: $03
	inc  bc                                          ; $636b: $03
	inc  bc                                          ; $636c: $03
	inc  bc                                          ; $636d: $03
	inc  bc                                          ; $636e: $03
	inc  bc                                          ; $636f: $03
	inc  bc                                          ; $6370: $03
	inc  bc                                          ; $6371: $03
	inc  bc                                          ; $6372: $03
	inc  bc                                          ; $6373: $03
	dec  bc                                          ; $6374: $0b
	dec  bc                                          ; $6375: $0b
	dec  bc                                          ; $6376: $0b
	dec  bc                                          ; $6377: $0b
	inc  bc                                          ; $6378: $03
	inc  bc                                          ; $6379: $03
	inc  bc                                          ; $637a: $03
	inc  bc                                          ; $637b: $03
	dec  b                                           ; $637c: $05
	dec  b                                           ; $637d: $05
	inc  bc                                          ; $637e: $03
	inc  bc                                          ; $637f: $03
	inc  bc                                          ; $6380: $03
	inc  bc                                          ; $6381: $03
	inc  bc                                          ; $6382: $03
	inc  bc                                          ; $6383: $03
	inc  bc                                          ; $6384: $03
	inc  bc                                          ; $6385: $03
	inc  bc                                          ; $6386: $03
	inc  bc                                          ; $6387: $03
	dec  bc                                          ; $6388: $0b
	dec  bc                                          ; $6389: $0b
	dec  bc                                          ; $638a: $0b
	dec  bc                                          ; $638b: $0b
	inc  bc                                          ; $638c: $03
	inc  bc                                          ; $638d: $03
	inc  bc                                          ; $638e: $03
	dec  b                                           ; $638f: $05
	dec  b                                           ; $6390: $05
	dec  b                                           ; $6391: $05
	inc  bc                                          ; $6392: $03
	inc  bc                                          ; $6393: $03
	inc  bc                                          ; $6394: $03
	inc  b                                           ; $6395: $04
	inc  bc                                          ; $6396: $03
	dec  b                                           ; $6397: $05
	inc  bc                                          ; $6398: $03
	inc  bc                                          ; $6399: $03
	inc  bc                                          ; $639a: $03
	inc  bc                                          ; $639b: $03
	dec  bc                                          ; $639c: $0b
	dec  bc                                          ; $639d: $0b
	dec  bc                                          ; $639e: $0b
	dec  bc                                          ; $639f: $0b
	inc  bc                                          ; $63a0: $03
	dec  b                                           ; $63a1: $05
	dec  b                                           ; $63a2: $05
	dec  b                                           ; $63a3: $05
	dec  b                                           ; $63a4: $05
	dec  b                                           ; $63a5: $05
	inc  bc                                          ; $63a6: $03
	inc  bc                                          ; $63a7: $03
	inc  bc                                          ; $63a8: $03
	inc  b                                           ; $63a9: $04
	inc  b                                           ; $63aa: $04
	inc  b                                           ; $63ab: $04
	inc  b                                           ; $63ac: $04
	inc  b                                           ; $63ad: $04
	inc  b                                           ; $63ae: $04
	inc  bc                                          ; $63af: $03
	dec  bc                                          ; $63b0: $0b
	dec  bc                                          ; $63b1: $0b
	dec  bc                                          ; $63b2: $0b
	dec  bc                                          ; $63b3: $0b
	inc  bc                                          ; $63b4: $03
	dec  b                                           ; $63b5: $05
	dec  b                                           ; $63b6: $05
	dec  b                                           ; $63b7: $05
	dec  b                                           ; $63b8: $05
	dec  b                                           ; $63b9: $05
	dec  b                                           ; $63ba: $05
	dec  b                                           ; $63bb: $05
	dec  b                                           ; $63bc: $05
	inc  b                                           ; $63bd: $04
	inc  b                                           ; $63be: $04
	inc  b                                           ; $63bf: $04
	inc  b                                           ; $63c0: $04
	inc  b                                           ; $63c1: $04
	inc  b                                           ; $63c2: $04
	inc  b                                           ; $63c3: $04
	inc  c                                           ; $63c4: $0c
	dec  bc                                          ; $63c5: $0b
	dec  bc                                          ; $63c6: $0b
	dec  bc                                          ; $63c7: $0b
	inc  c                                           ; $63c8: $0c
	dec  bc                                          ; $63c9: $0b
	inc  c                                           ; $63ca: $0c
	dec  c                                           ; $63cb: $0d
	dec  c                                           ; $63cc: $0d
	dec  c                                           ; $63cd: $0d
	dec  c                                           ; $63ce: $0d
	dec  c                                           ; $63cf: $0d
	inc  c                                           ; $63d0: $0c
	inc  c                                           ; $63d1: $0c
	inc  c                                           ; $63d2: $0c
	inc  c                                           ; $63d3: $0c
	inc  c                                           ; $63d4: $0c
	inc  c                                           ; $63d5: $0c
	inc  c                                           ; $63d6: $0c
	inc  c                                           ; $63d7: $0c
	inc  c                                           ; $63d8: $0c
	inc  c                                           ; $63d9: $0c
	inc  c                                           ; $63da: $0c
	inc  c                                           ; $63db: $0c
	inc  c                                           ; $63dc: $0c
	inc  c                                           ; $63dd: $0c
	inc  c                                           ; $63de: $0c
	dec  c                                           ; $63df: $0d
	dec  c                                           ; $63e0: $0d
	dec  c                                           ; $63e1: $0d
	inc  c                                           ; $63e2: $0c
	inc  c                                           ; $63e3: $0c
	inc  c                                           ; $63e4: $0c
	inc  c                                           ; $63e5: $0c
	inc  c                                           ; $63e6: $0c
	inc  c                                           ; $63e7: $0c
	inc  c                                           ; $63e8: $0c
	inc  c                                           ; $63e9: $0c
	inc  c                                           ; $63ea: $0c
	inc  c                                           ; $63eb: $0c
	inc  c                                           ; $63ec: $0c
	inc  c                                           ; $63ed: $0c
	inc  c                                           ; $63ee: $0c
	inc  c                                           ; $63ef: $0c
	nop                                              ; $63f0: $00
	ld   bc, $0302                                   ; $63f1: $01 $02 $03
	inc  b                                           ; $63f4: $04
	dec  b                                           ; $63f5: $05
	ld   b, $07                                      ; $63f6: $06 $07
	ld   [$0a09], sp                                 ; $63f8: $08 $09 $0a
	dec  bc                                          ; $63fb: $0b
	inc  c                                           ; $63fc: $0c
	dec  c                                           ; $63fd: $0d
	ld   c, $0f                                      ; $63fe: $0e $0f
	db   $10                                         ; $6400: $10
	ld   de, $1312                                   ; $6401: $11 $12 $13
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
	jr   nz, jr_082_6437                             ; $6414: $20 $21

	ld   [hl+], a                                    ; $6416: $22
	inc  hl                                          ; $6417: $23
	jr   nz, @+$23                                   ; $6418: $20 $21

	ld   [hl+], a                                    ; $641a: $22
	inc  hl                                          ; $641b: $23
	inc  h                                           ; $641c: $24
	dec  h                                           ; $641d: $25
	ld   h, $27                                      ; $641e: $26 $27
	jr   z, jr_082_644b                              ; $6420: $28 $29

	ld   a, [hl+]                                    ; $6422: $2a
	dec  hl                                          ; $6423: $2b
	inc  l                                           ; $6424: $2c
	dec  l                                           ; $6425: $2d
	ld   l, $2f                                      ; $6426: $2e $2f
	inc  d                                           ; $6428: $14
	dec  d                                           ; $6429: $15
	ld   d, $17                                      ; $642a: $16 $17
	jr   nc, jr_082_645f                             ; $642c: $30 $31

	ld   [hl-], a                                    ; $642e: $32
	inc  sp                                          ; $642f: $33
	inc  [hl]                                        ; $6430: $34
	dec  [hl]                                        ; $6431: $35
	ld   [hl], $37                                   ; $6432: $36 $37
	jr   c, jr_082_646f                              ; $6434: $38 $39

	ld   a, [hl-]                                    ; $6436: $3a

jr_082_6437:
	dec  sp                                          ; $6437: $3b
	inc  a                                           ; $6438: $3c
	dec  a                                           ; $6439: $3d
	ld   a, $3f                                      ; $643a: $3e $3f
	inc  h                                           ; $643c: $24
	dec  h                                           ; $643d: $25
	ld   h, $27                                      ; $643e: $26 $27
	ld   b, b                                        ; $6440: $40
	ld   b, c                                        ; $6441: $41
	ld   b, d                                        ; $6442: $42
	ld   b, e                                        ; $6443: $43
	ld   b, h                                        ; $6444: $44
	ld   b, l                                        ; $6445: $45
	ld   b, [hl]                                     ; $6446: $46
	ld   b, a                                        ; $6447: $47
	ld   c, b                                        ; $6448: $48
	ld   c, c                                        ; $6449: $49
	ld   c, d                                        ; $644a: $4a

jr_082_644b:
	ld   c, e                                        ; $644b: $4b
	ld   c, h                                        ; $644c: $4c
	ld   c, l                                        ; $644d: $4d
	ld   c, [hl]                                     ; $644e: $4e
	ld   c, a                                        ; $644f: $4f
	jr   jr_082_646b                                 ; $6450: $18 $19

	ld   a, [de]                                     ; $6452: $1a
	dec  de                                          ; $6453: $1b
	ld   d, b                                        ; $6454: $50
	ld   d, c                                        ; $6455: $51
	ld   d, d                                        ; $6456: $52
	ld   d, e                                        ; $6457: $53
	ld   d, h                                        ; $6458: $54
	ld   d, l                                        ; $6459: $55
	ld   d, [hl]                                     ; $645a: $56
	ld   d, a                                        ; $645b: $57
	ld   e, b                                        ; $645c: $58
	ld   e, c                                        ; $645d: $59
	ld   e, d                                        ; $645e: $5a

jr_082_645f:
	ld   e, e                                        ; $645f: $5b
	ld   e, h                                        ; $6460: $5c
	ld   e, l                                        ; $6461: $5d
	ld   e, [hl]                                     ; $6462: $5e
	ld   e, a                                        ; $6463: $5f
	jr   z, @+$2b                                    ; $6464: $28 $29

	ld   a, [hl+]                                    ; $6466: $2a
	dec  hl                                          ; $6467: $2b
	ld   h, b                                        ; $6468: $60
	ld   h, c                                        ; $6469: $61
	ld   h, d                                        ; $646a: $62

jr_082_646b:
	ld   h, e                                        ; $646b: $63
	ld   h, h                                        ; $646c: $64
	ld   h, l                                        ; $646d: $65
	ld   h, [hl]                                     ; $646e: $66

jr_082_646f:
	ld   h, a                                        ; $646f: $67
	ld   l, b                                        ; $6470: $68
	ld   l, c                                        ; $6471: $69
	ld   l, d                                        ; $6472: $6a
	ld   l, e                                        ; $6473: $6b
	ld   l, h                                        ; $6474: $6c
	ld   l, l                                        ; $6475: $6d
	ld   l, [hl]                                     ; $6476: $6e
	ld   l, a                                        ; $6477: $6f
	inc  e                                           ; $6478: $1c
	dec  e                                           ; $6479: $1d
	ld   e, $1f                                      ; $647a: $1e $1f
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
	inc  l                                           ; $648c: $2c
	dec  l                                           ; $648d: $2d
	ld   l, $2f                                      ; $648e: $2e $2f
	nop                                              ; $6490: $00
	ld   bc, $0302                                   ; $6491: $01 $02 $03
	inc  b                                           ; $6494: $04
	dec  b                                           ; $6495: $05
	ld   b, $06                                      ; $6496: $06 $06
	rlca                                             ; $6498: $07
	ld   [$0a09], sp                                 ; $6499: $08 $09 $0a
	dec  bc                                          ; $649c: $0b
	inc  c                                           ; $649d: $0c
	dec  c                                           ; $649e: $0d
	ld   b, $06                                      ; $649f: $06 $06
	ld   b, $06                                      ; $64a1: $06 $06
	jr   nc, jr_082_64d5                             ; $64a3: $30 $30

	ld   b, $06                                      ; $64a5: $06 $06
	ld   c, $0f                                      ; $64a7: $0e $0f
	ld   sp, $0606                                   ; $64a9: $31 $06 $06
	ld   b, $06                                      ; $64ac: $06 $06
	ld   b, $06                                      ; $64ae: $06 $06
	ld   b, $06                                      ; $64b0: $06 $06
	ld   b, $06                                      ; $64b2: $06 $06
	ld   b, $06                                      ; $64b4: $06 $06
	ld   b, $30                                      ; $64b6: $06 $30
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
	inc  bc                                          ; $64c7: $03
	dec  bc                                          ; $64c8: $0b
	dec  bc                                          ; $64c9: $0b
	dec  bc                                          ; $64ca: $0b
	dec  bc                                          ; $64cb: $0b
	inc  bc                                          ; $64cc: $03
	inc  bc                                          ; $64cd: $03
	inc  bc                                          ; $64ce: $03
	inc  bc                                          ; $64cf: $03
	inc  bc                                          ; $64d0: $03
	inc  bc                                          ; $64d1: $03
	inc  bc                                          ; $64d2: $03
	inc  bc                                          ; $64d3: $03
	inc  bc                                          ; $64d4: $03

jr_082_64d5:
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
	inc  bc                                          ; $64e0: $03
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
	inc  bc                                          ; $64eb: $03
	inc  bc                                          ; $64ec: $03
	inc  bc                                          ; $64ed: $03
	inc  bc                                          ; $64ee: $03
	inc  bc                                          ; $64ef: $03
	dec  bc                                          ; $64f0: $0b
	dec  bc                                          ; $64f1: $0b
	dec  bc                                          ; $64f2: $0b
	dec  bc                                          ; $64f3: $0b
	inc  bc                                          ; $64f4: $03
	inc  bc                                          ; $64f5: $03
	inc  bc                                          ; $64f6: $03
	inc  bc                                          ; $64f7: $03
	inc  bc                                          ; $64f8: $03
	inc  bc                                          ; $64f9: $03
	inc  bc                                          ; $64fa: $03
	inc  bc                                          ; $64fb: $03
	inc  bc                                          ; $64fc: $03
	inc  bc                                          ; $64fd: $03
	inc  bc                                          ; $64fe: $03
	inc  bc                                          ; $64ff: $03
	inc  bc                                          ; $6500: $03
	inc  bc                                          ; $6501: $03
	inc  bc                                          ; $6502: $03
	inc  bc                                          ; $6503: $03
	dec  bc                                          ; $6504: $0b
	dec  bc                                          ; $6505: $0b
	dec  bc                                          ; $6506: $0b
	dec  bc                                          ; $6507: $0b
	inc  bc                                          ; $6508: $03
	inc  bc                                          ; $6509: $03
	inc  bc                                          ; $650a: $03
	inc  bc                                          ; $650b: $03
	dec  b                                           ; $650c: $05
	dec  b                                           ; $650d: $05
	inc  bc                                          ; $650e: $03
	inc  bc                                          ; $650f: $03
	inc  bc                                          ; $6510: $03
	inc  bc                                          ; $6511: $03
	inc  bc                                          ; $6512: $03
	dec  b                                           ; $6513: $05
	inc  bc                                          ; $6514: $03
	inc  bc                                          ; $6515: $03
	inc  bc                                          ; $6516: $03
	inc  bc                                          ; $6517: $03
	dec  bc                                          ; $6518: $0b
	dec  bc                                          ; $6519: $0b
	dec  bc                                          ; $651a: $0b
	dec  bc                                          ; $651b: $0b
	inc  bc                                          ; $651c: $03
	inc  bc                                          ; $651d: $03
	inc  bc                                          ; $651e: $03
	dec  b                                           ; $651f: $05
	dec  b                                           ; $6520: $05
	dec  b                                           ; $6521: $05
	inc  bc                                          ; $6522: $03
	inc  bc                                          ; $6523: $03
	inc  bc                                          ; $6524: $03
	inc  bc                                          ; $6525: $03
	inc  bc                                          ; $6526: $03
	dec  b                                           ; $6527: $05
	inc  bc                                          ; $6528: $03
	inc  bc                                          ; $6529: $03
	inc  bc                                          ; $652a: $03
	inc  bc                                          ; $652b: $03
	dec  bc                                          ; $652c: $0b
	dec  bc                                          ; $652d: $0b
	dec  bc                                          ; $652e: $0b
	dec  bc                                          ; $652f: $0b
	inc  bc                                          ; $6530: $03
	dec  b                                           ; $6531: $05
	dec  b                                           ; $6532: $05
	dec  b                                           ; $6533: $05
	dec  b                                           ; $6534: $05
	dec  b                                           ; $6535: $05
	inc  bc                                          ; $6536: $03
	inc  bc                                          ; $6537: $03
	inc  bc                                          ; $6538: $03
	inc  b                                           ; $6539: $04
	inc  b                                           ; $653a: $04
	inc  b                                           ; $653b: $04
	inc  b                                           ; $653c: $04
	inc  b                                           ; $653d: $04
	inc  b                                           ; $653e: $04
	inc  bc                                          ; $653f: $03
	dec  bc                                          ; $6540: $0b
	dec  bc                                          ; $6541: $0b
	dec  bc                                          ; $6542: $0b
	dec  bc                                          ; $6543: $0b
	inc  bc                                          ; $6544: $03
	dec  b                                           ; $6545: $05
	dec  b                                           ; $6546: $05
	dec  b                                           ; $6547: $05
	dec  b                                           ; $6548: $05
	dec  b                                           ; $6549: $05
	dec  b                                           ; $654a: $05
	dec  b                                           ; $654b: $05
	dec  b                                           ; $654c: $05
	inc  b                                           ; $654d: $04
	inc  b                                           ; $654e: $04
	inc  b                                           ; $654f: $04
	inc  b                                           ; $6550: $04
	inc  b                                           ; $6551: $04
	inc  b                                           ; $6552: $04
	inc  b                                           ; $6553: $04
	inc  c                                           ; $6554: $0c
	dec  bc                                          ; $6555: $0b
	inc  c                                           ; $6556: $0c
	dec  bc                                          ; $6557: $0b
	inc  c                                           ; $6558: $0c
	inc  c                                           ; $6559: $0c
	inc  c                                           ; $655a: $0c
	inc  c                                           ; $655b: $0c
	dec  c                                           ; $655c: $0d
	dec  c                                           ; $655d: $0d
	inc  c                                           ; $655e: $0c
	inc  c                                           ; $655f: $0c
	dec  c                                           ; $6560: $0d
	inc  c                                           ; $6561: $0c
	inc  c                                           ; $6562: $0c
	inc  c                                           ; $6563: $0c
	inc  c                                           ; $6564: $0c
	inc  c                                           ; $6565: $0c
	inc  c                                           ; $6566: $0c
	inc  c                                           ; $6567: $0c
	inc  c                                           ; $6568: $0c
	inc  c                                           ; $6569: $0c
	inc  c                                           ; $656a: $0c
	inc  c                                           ; $656b: $0c
	inc  l                                           ; $656c: $2c
	inc  c                                           ; $656d: $0c
	inc  c                                           ; $656e: $0c
	inc  c                                           ; $656f: $0c
	inc  c                                           ; $6570: $0c
	inc  c                                           ; $6571: $0c
	inc  c                                           ; $6572: $0c
	inc  c                                           ; $6573: $0c
	inc  c                                           ; $6574: $0c
	inc  c                                           ; $6575: $0c
	inc  c                                           ; $6576: $0c
	inc  c                                           ; $6577: $0c
	inc  c                                           ; $6578: $0c
	inc  c                                           ; $6579: $0c
	inc  c                                           ; $657a: $0c
	inc  c                                           ; $657b: $0c
	inc  c                                           ; $657c: $0c
	inc  c                                           ; $657d: $0c
	inc  c                                           ; $657e: $0c
	inc  c                                           ; $657f: $0c
	nop                                              ; $6580: $00
	ld   bc, $0302                                   ; $6581: $01 $02 $03
	inc  b                                           ; $6584: $04
	inc  b                                           ; $6585: $04
	inc  b                                           ; $6586: $04
	rlca                                             ; $6587: $07
	ld   [$0808], sp                                 ; $6588: $08 $08 $08
	ld   [$040c], sp                                 ; $658b: $08 $0c $04
	inc  b                                           ; $658e: $04
	inc  b                                           ; $658f: $04
	inc  bc                                          ; $6590: $03
	ld   [bc], a                                     ; $6591: $02
	ld   bc, $1000                                   ; $6592: $01 $00 $10
	ld   de, $0412                                   ; $6595: $11 $12 $04
	inc  b                                           ; $6598: $04
	inc  b                                           ; $6599: $04
	inc  b                                           ; $659a: $04
	rla                                              ; $659b: $17
	jr   jr_082_65b7                                 ; $659c: $18 $19

	add  hl, de                                      ; $659e: $19
	dec  de                                          ; $659f: $1b
	inc  e                                           ; $65a0: $1c
	inc  b                                           ; $65a1: $04
	inc  b                                           ; $65a2: $04
	inc  b                                           ; $65a3: $04
	inc  b                                           ; $65a4: $04
	ld   [de], a                                     ; $65a5: $12
	ld   de, $2010                                   ; $65a6: $11 $10 $20
	ld   hl, $0404                                   ; $65a9: $21 $04 $04
	inc  b                                           ; $65ac: $04
	inc  b                                           ; $65ad: $04
	inc  b                                           ; $65ae: $04
	daa                                              ; $65af: $27
	jr   z, jr_082_65db                              ; $65b0: $28 $29

	ld   a, [hl+]                                    ; $65b2: $2a
	dec  hl                                          ; $65b3: $2b
	inc  e                                           ; $65b4: $1c
	inc  b                                           ; $65b5: $04
	inc  b                                           ; $65b6: $04

jr_082_65b7:
	inc  b                                           ; $65b7: $04
	inc  b                                           ; $65b8: $04
	inc  b                                           ; $65b9: $04
	ld   hl, $3020                                   ; $65ba: $21 $20 $30
	inc  b                                           ; $65bd: $04
	inc  b                                           ; $65be: $04
	inc  b                                           ; $65bf: $04
	inc  b                                           ; $65c0: $04
	inc  b                                           ; $65c1: $04
	inc  b                                           ; $65c2: $04
	scf                                              ; $65c3: $37
	jr   c, jr_082_65ff                              ; $65c4: $38 $39

	ld   a, [hl-]                                    ; $65c6: $3a
	dec  sp                                          ; $65c7: $3b
	inc  e                                           ; $65c8: $1c
	inc  b                                           ; $65c9: $04
	inc  b                                           ; $65ca: $04
	inc  b                                           ; $65cb: $04
	inc  b                                           ; $65cc: $04
	inc  b                                           ; $65cd: $04
	inc  b                                           ; $65ce: $04
	jr   nc, jr_082_6611                             ; $65cf: $30 $40

	ld   b, c                                        ; $65d1: $41
	ld   b, c                                        ; $65d2: $41
	ld   b, c                                        ; $65d3: $41
	ld   b, c                                        ; $65d4: $41
	ld   b, c                                        ; $65d5: $41
	ld   b, c                                        ; $65d6: $41
	ld   b, a                                        ; $65d7: $47
	ld   c, b                                        ; $65d8: $48
	ld   c, c                                        ; $65d9: $49
	ld   c, d                                        ; $65da: $4a

jr_082_65db:
	ld   c, e                                        ; $65db: $4b
	ld   c, h                                        ; $65dc: $4c
	ld   b, c                                        ; $65dd: $41
	ld   b, c                                        ; $65de: $41
	ld   b, c                                        ; $65df: $41
	ld   b, c                                        ; $65e0: $41
	ld   b, c                                        ; $65e1: $41
	ld   b, c                                        ; $65e2: $41
	ld   b, b                                        ; $65e3: $40
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
	ld   e, e                                        ; $65ef: $5b
	ld   e, h                                        ; $65f0: $5c
	ld   d, [hl]                                     ; $65f1: $56
	ld   d, l                                        ; $65f2: $55
	ld   d, h                                        ; $65f3: $54
	ld   d, e                                        ; $65f4: $53
	ld   d, d                                        ; $65f5: $52
	ld   d, c                                        ; $65f6: $51
	ld   d, b                                        ; $65f7: $50
	ld   h, b                                        ; $65f8: $60
	ld   h, c                                        ; $65f9: $61
	ld   h, d                                        ; $65fa: $62
	ld   h, e                                        ; $65fb: $63
	ld   h, h                                        ; $65fc: $64
	ld   h, l                                        ; $65fd: $65
	ld   h, [hl]                                     ; $65fe: $66

jr_082_65ff:
	ld   h, a                                        ; $65ff: $67
	ld   l, b                                        ; $6600: $68
	ld   l, c                                        ; $6601: $69
	ld   l, d                                        ; $6602: $6a
	ld   l, e                                        ; $6603: $6b
	ld   l, h                                        ; $6604: $6c
	ld   h, [hl]                                     ; $6605: $66
	ld   h, l                                        ; $6606: $65
	ld   h, h                                        ; $6607: $64
	ld   h, e                                        ; $6608: $63
	ld   h, d                                        ; $6609: $62
	ld   h, c                                        ; $660a: $61
	ld   h, b                                        ; $660b: $60
	ld   c, l                                        ; $660c: $4d
	ld   h, c                                        ; $660d: $61
	ld   c, [hl]                                     ; $660e: $4e
	ld   c, a                                        ; $660f: $4f
	ld   h, h                                        ; $6610: $64

jr_082_6611:
	ld   h, l                                        ; $6611: $65
	ld   h, [hl]                                     ; $6612: $66
	ld   h, a                                        ; $6613: $67
	ld   e, l                                        ; $6614: $5d
	ld   e, [hl]                                     ; $6615: $5e
	ld   e, a                                        ; $6616: $5f
	ld   l, l                                        ; $6617: $6d
	ld   l, h                                        ; $6618: $6c
	ld   h, [hl]                                     ; $6619: $66
	ld   h, l                                        ; $661a: $65
	ld   h, h                                        ; $661b: $64
	ld   c, a                                        ; $661c: $4f
	ld   c, [hl]                                     ; $661d: $4e
	ld   h, c                                        ; $661e: $61
	ld   c, l                                        ; $661f: $4d
	dec  b                                           ; $6620: $05
	ld   b, $09                                      ; $6621: $06 $09
	ld   a, [bc]                                     ; $6623: $0a
	dec  bc                                          ; $6624: $0b
	dec  c                                           ; $6625: $0d
	ld   c, $0f                                      ; $6626: $0e $0f
	inc  de                                          ; $6628: $13
	inc  d                                           ; $6629: $14
	dec  d                                           ; $662a: $15
	ld   d, $1a                                      ; $662b: $16 $1a
	dec  e                                           ; $662d: $1d
	ld   e, $1f                                      ; $662e: $1e $1f
	ld   [hl+], a                                    ; $6630: $22
	inc  hl                                          ; $6631: $23
	inc  h                                           ; $6632: $24
	dec  h                                           ; $6633: $25
	ld   h, $2c                                      ; $6634: $26 $2c
	dec  l                                           ; $6636: $2d
	ld   l, $2f                                      ; $6637: $2e $2f
	ld   sp, $3332                                   ; $6639: $31 $32 $33
	inc  [hl]                                        ; $663c: $34
	dec  [hl]                                        ; $663d: $35
	ld   [hl], $3c                                   ; $663e: $36 $3c
	dec  a                                           ; $6640: $3d
	ld   a, $3f                                      ; $6641: $3e $3f
	ld   b, d                                        ; $6643: $42
	ld   b, e                                        ; $6644: $43
	ld   b, h                                        ; $6645: $44
	ld   b, l                                        ; $6646: $45
	ld   b, [hl]                                     ; $6647: $46
	dec  b                                           ; $6648: $05
	dec  b                                           ; $6649: $05
	dec  b                                           ; $664a: $05
	dec  b                                           ; $664b: $05
	dec  b                                           ; $664c: $05
	dec  b                                           ; $664d: $05
	dec  b                                           ; $664e: $05
	inc  bc                                          ; $664f: $03
	inc  bc                                          ; $6650: $03
	inc  bc                                          ; $6651: $03
	inc  bc                                          ; $6652: $03
	inc  bc                                          ; $6653: $03
	inc  bc                                          ; $6654: $03
	dec  h                                           ; $6655: $25
	dec  h                                           ; $6656: $25
	dec  h                                           ; $6657: $25
	dec  h                                           ; $6658: $25
	dec  h                                           ; $6659: $25
	dec  h                                           ; $665a: $25
	dec  h                                           ; $665b: $25
	dec  b                                           ; $665c: $05
	dec  b                                           ; $665d: $05
	dec  b                                           ; $665e: $05
	dec  b                                           ; $665f: $05
	dec  b                                           ; $6660: $05
	dec  b                                           ; $6661: $05
	dec  b                                           ; $6662: $05
	inc  bc                                          ; $6663: $03
	inc  bc                                          ; $6664: $03
	inc  bc                                          ; $6665: $03
	inc  bc                                          ; $6666: $03
	inc  bc                                          ; $6667: $03
	inc  bc                                          ; $6668: $03
	dec  h                                           ; $6669: $25
	dec  h                                           ; $666a: $25
	dec  h                                           ; $666b: $25
	dec  h                                           ; $666c: $25
	dec  h                                           ; $666d: $25
	dec  h                                           ; $666e: $25
	dec  h                                           ; $666f: $25
	dec  b                                           ; $6670: $05
	dec  b                                           ; $6671: $05
	dec  b                                           ; $6672: $05
	dec  b                                           ; $6673: $05
	dec  b                                           ; $6674: $05
	dec  b                                           ; $6675: $05
	dec  b                                           ; $6676: $05
	inc  bc                                          ; $6677: $03
	inc  bc                                          ; $6678: $03
	inc  bc                                          ; $6679: $03
	inc  bc                                          ; $667a: $03
	inc  bc                                          ; $667b: $03
	inc  bc                                          ; $667c: $03
	dec  h                                           ; $667d: $25
	dec  h                                           ; $667e: $25
	dec  h                                           ; $667f: $25
	dec  h                                           ; $6680: $25
	dec  h                                           ; $6681: $25
	dec  h                                           ; $6682: $25
	dec  h                                           ; $6683: $25
	dec  b                                           ; $6684: $05
	dec  b                                           ; $6685: $05
	dec  b                                           ; $6686: $05
	dec  b                                           ; $6687: $05
	dec  b                                           ; $6688: $05
	dec  b                                           ; $6689: $05
	dec  b                                           ; $668a: $05
	inc  bc                                          ; $668b: $03
	inc  bc                                          ; $668c: $03
	inc  bc                                          ; $668d: $03
	inc  bc                                          ; $668e: $03
	inc  bc                                          ; $668f: $03
	inc  bc                                          ; $6690: $03
	dec  h                                           ; $6691: $25
	dec  h                                           ; $6692: $25
	dec  h                                           ; $6693: $25
	dec  h                                           ; $6694: $25
	dec  h                                           ; $6695: $25
	dec  h                                           ; $6696: $25
	dec  h                                           ; $6697: $25
	dec  b                                           ; $6698: $05
	dec  b                                           ; $6699: $05
	dec  b                                           ; $669a: $05
	dec  b                                           ; $669b: $05
	dec  b                                           ; $669c: $05
	dec  b                                           ; $669d: $05
	dec  b                                           ; $669e: $05
	inc  bc                                          ; $669f: $03
	inc  bc                                          ; $66a0: $03
	inc  bc                                          ; $66a1: $03
	inc  bc                                          ; $66a2: $03
	inc  bc                                          ; $66a3: $03
	inc  bc                                          ; $66a4: $03
	dec  h                                           ; $66a5: $25
	dec  h                                           ; $66a6: $25
	dec  h                                           ; $66a7: $25
	dec  h                                           ; $66a8: $25
	dec  h                                           ; $66a9: $25
	dec  h                                           ; $66aa: $25
	dec  h                                           ; $66ab: $25
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
	inc  bc                                          ; $66b6: $03
	inc  bc                                          ; $66b7: $03
	inc  bc                                          ; $66b8: $03
	inc  hl                                          ; $66b9: $23
	inc  hl                                          ; $66ba: $23
	inc  hl                                          ; $66bb: $23
	inc  hl                                          ; $66bc: $23
	inc  hl                                          ; $66bd: $23
	inc  hl                                          ; $66be: $23
	inc  hl                                          ; $66bf: $23
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
	inc  bc                                          ; $66ca: $03
	inc  bc                                          ; $66cb: $03
	inc  bc                                          ; $66cc: $03
	inc  hl                                          ; $66cd: $23
	inc  hl                                          ; $66ce: $23
	inc  hl                                          ; $66cf: $23
	inc  hl                                          ; $66d0: $23
	inc  hl                                          ; $66d1: $23
	inc  hl                                          ; $66d2: $23
	inc  hl                                          ; $66d3: $23
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
	inc  bc                                          ; $66de: $03
	inc  bc                                          ; $66df: $03
	inc  bc                                          ; $66e0: $03
	inc  hl                                          ; $66e1: $23
	inc  hl                                          ; $66e2: $23
	inc  hl                                          ; $66e3: $23
	inc  hl                                          ; $66e4: $23
	inc  hl                                          ; $66e5: $23
	inc  hl                                          ; $66e6: $23
	inc  hl                                          ; $66e7: $23
	inc  bc                                          ; $66e8: $03
	inc  bc                                          ; $66e9: $03
	inc  bc                                          ; $66ea: $03
	inc  bc                                          ; $66eb: $03
	inc  bc                                          ; $66ec: $03
	inc  bc                                          ; $66ed: $03
	inc  bc                                          ; $66ee: $03
	inc  bc                                          ; $66ef: $03
	inc  bc                                          ; $66f0: $03
	inc  bc                                          ; $66f1: $03
	inc  bc                                          ; $66f2: $03
	inc  bc                                          ; $66f3: $03
	inc  bc                                          ; $66f4: $03
	inc  bc                                          ; $66f5: $03
	inc  bc                                          ; $66f6: $03
	inc  bc                                          ; $66f7: $03
	inc  bc                                          ; $66f8: $03
	inc  bc                                          ; $66f9: $03
	inc  bc                                          ; $66fa: $03
	inc  bc                                          ; $66fb: $03
	inc  bc                                          ; $66fc: $03
	inc  bc                                          ; $66fd: $03
	inc  bc                                          ; $66fe: $03
	inc  bc                                          ; $66ff: $03
	inc  bc                                          ; $6700: $03
	inc  bc                                          ; $6701: $03
	inc  bc                                          ; $6702: $03
	inc  bc                                          ; $6703: $03
	inc  bc                                          ; $6704: $03
	inc  bc                                          ; $6705: $03
	inc  bc                                          ; $6706: $03
	inc  bc                                          ; $6707: $03
	inc  bc                                          ; $6708: $03
	inc  bc                                          ; $6709: $03
	inc  bc                                          ; $670a: $03
	inc  bc                                          ; $670b: $03
	inc  bc                                          ; $670c: $03
	inc  bc                                          ; $670d: $03
	inc  bc                                          ; $670e: $03
	inc  bc                                          ; $670f: $03
	nop                                              ; $6710: $00
	ld   bc, $0302                                   ; $6711: $01 $02 $03
	inc  b                                           ; $6714: $04
	inc  b                                           ; $6715: $04
	inc  b                                           ; $6716: $04
	rlca                                             ; $6717: $07
	ld   [$0808], sp                                 ; $6718: $08 $08 $08
	ld   [$040c], sp                                 ; $671b: $08 $0c $04
	inc  b                                           ; $671e: $04
	inc  b                                           ; $671f: $04
	inc  bc                                          ; $6720: $03
	ld   [bc], a                                     ; $6721: $02
	ld   bc, $1000                                   ; $6722: $01 $00 $10
	ld   de, $0412                                   ; $6725: $11 $12 $04
	inc  b                                           ; $6728: $04
	inc  b                                           ; $6729: $04
	inc  b                                           ; $672a: $04
	rla                                              ; $672b: $17
	jr   jr_082_679c                                 ; $672c: $18 $6e

	ld   l, a                                        ; $672e: $6f
	dec  de                                          ; $672f: $1b
	inc  e                                           ; $6730: $1c
	inc  b                                           ; $6731: $04
	inc  b                                           ; $6732: $04
	inc  b                                           ; $6733: $04
	inc  b                                           ; $6734: $04
	ld   [de], a                                     ; $6735: $12
	ld   de, $2010                                   ; $6736: $11 $10 $20
	ld   hl, $0404                                   ; $6739: $21 $04 $04
	inc  b                                           ; $673c: $04
	inc  b                                           ; $673d: $04
	inc  b                                           ; $673e: $04
	daa                                              ; $673f: $27
	jr   z, @+$72                                    ; $6740: $28 $70

	ld   [hl], c                                     ; $6742: $71
	dec  hl                                          ; $6743: $2b
	inc  e                                           ; $6744: $1c
	inc  b                                           ; $6745: $04
	inc  b                                           ; $6746: $04
	inc  b                                           ; $6747: $04
	inc  b                                           ; $6748: $04
	inc  b                                           ; $6749: $04
	ld   hl, $3020                                   ; $674a: $21 $20 $30
	inc  b                                           ; $674d: $04
	inc  b                                           ; $674e: $04
	inc  b                                           ; $674f: $04
	inc  b                                           ; $6750: $04
	inc  b                                           ; $6751: $04
	inc  b                                           ; $6752: $04
	scf                                              ; $6753: $37
	jr   c, @+$74                                    ; $6754: $38 $72

	ld   [hl], e                                     ; $6756: $73
	dec  sp                                          ; $6757: $3b
	inc  e                                           ; $6758: $1c
	inc  b                                           ; $6759: $04
	inc  b                                           ; $675a: $04
	inc  b                                           ; $675b: $04
	inc  b                                           ; $675c: $04
	inc  b                                           ; $675d: $04
	inc  b                                           ; $675e: $04
	jr   nc, jr_082_67a1                             ; $675f: $30 $40

	ld   b, c                                        ; $6761: $41
	ld   b, c                                        ; $6762: $41
	ld   b, c                                        ; $6763: $41
	ld   b, c                                        ; $6764: $41
	ld   b, c                                        ; $6765: $41
	ld   b, c                                        ; $6766: $41
	ld   b, a                                        ; $6767: $47
	ld   c, b                                        ; $6768: $48
	ld   c, c                                        ; $6769: $49
	ld   c, d                                        ; $676a: $4a
	ld   c, e                                        ; $676b: $4b
	ld   c, h                                        ; $676c: $4c
	ld   b, c                                        ; $676d: $41
	ld   b, c                                        ; $676e: $41
	ld   b, c                                        ; $676f: $41
	ld   b, c                                        ; $6770: $41
	ld   b, c                                        ; $6771: $41
	ld   b, c                                        ; $6772: $41
	ld   b, b                                        ; $6773: $40
	ld   d, b                                        ; $6774: $50
	ld   d, c                                        ; $6775: $51
	ld   d, d                                        ; $6776: $52
	ld   d, e                                        ; $6777: $53
	ld   d, h                                        ; $6778: $54
	ld   d, l                                        ; $6779: $55
	ld   d, [hl]                                     ; $677a: $56
	ld   a, b                                        ; $677b: $78
	ld   a, c                                        ; $677c: $79
	ld   e, c                                        ; $677d: $59
	ld   [hl], h                                     ; $677e: $74
	ld   [hl], l                                     ; $677f: $75
	ld   e, h                                        ; $6780: $5c
	ld   d, [hl]                                     ; $6781: $56
	ld   d, l                                        ; $6782: $55
	ld   d, h                                        ; $6783: $54
	ld   d, e                                        ; $6784: $53
	ld   d, d                                        ; $6785: $52
	ld   d, c                                        ; $6786: $51
	ld   d, b                                        ; $6787: $50
	ld   h, b                                        ; $6788: $60
	ld   h, c                                        ; $6789: $61
	ld   h, d                                        ; $678a: $62
	ld   h, e                                        ; $678b: $63
	ld   h, h                                        ; $678c: $64
	ld   h, l                                        ; $678d: $65
	ld   h, [hl]                                     ; $678e: $66
	ld   h, a                                        ; $678f: $67
	ld   a, d                                        ; $6790: $7a
	ld   l, c                                        ; $6791: $69
	halt                                             ; $6792: $76
	ld   [hl], a                                     ; $6793: $77
	ld   l, h                                        ; $6794: $6c
	ld   h, [hl]                                     ; $6795: $66
	ld   h, l                                        ; $6796: $65
	ld   h, h                                        ; $6797: $64
	ld   h, e                                        ; $6798: $63
	ld   h, d                                        ; $6799: $62
	ld   h, c                                        ; $679a: $61
	ld   h, b                                        ; $679b: $60

jr_082_679c:
	ld   c, l                                        ; $679c: $4d
	ld   h, c                                        ; $679d: $61
	ld   c, [hl]                                     ; $679e: $4e
	ld   c, a                                        ; $679f: $4f
	ld   h, h                                        ; $67a0: $64

jr_082_67a1:
	ld   h, l                                        ; $67a1: $65
	ld   h, [hl]                                     ; $67a2: $66
	ld   h, a                                        ; $67a3: $67
	ld   e, l                                        ; $67a4: $5d
	ld   e, [hl]                                     ; $67a5: $5e
	ld   e, a                                        ; $67a6: $5f
	ld   l, l                                        ; $67a7: $6d
	ld   l, h                                        ; $67a8: $6c
	ld   h, [hl]                                     ; $67a9: $66
	ld   h, l                                        ; $67aa: $65
	ld   h, h                                        ; $67ab: $64
	ld   c, a                                        ; $67ac: $4f
	ld   c, [hl]                                     ; $67ad: $4e
	ld   h, c                                        ; $67ae: $61
	ld   c, l                                        ; $67af: $4d
	dec  b                                           ; $67b0: $05
	ld   b, $09                                      ; $67b1: $06 $09
	ld   a, [bc]                                     ; $67b3: $0a
	dec  bc                                          ; $67b4: $0b
	dec  c                                           ; $67b5: $0d
	ld   c, $0f                                      ; $67b6: $0e $0f
	inc  de                                          ; $67b8: $13
	inc  d                                           ; $67b9: $14
	dec  d                                           ; $67ba: $15
	ld   d, $1a                                      ; $67bb: $16 $1a
	dec  e                                           ; $67bd: $1d
	ld   e, $1f                                      ; $67be: $1e $1f
	ld   [hl+], a                                    ; $67c0: $22
	inc  hl                                          ; $67c1: $23
	inc  h                                           ; $67c2: $24
	dec  h                                           ; $67c3: $25
	ld   h, $2c                                      ; $67c4: $26 $2c
	dec  l                                           ; $67c6: $2d
	ld   l, $2f                                      ; $67c7: $2e $2f
	ld   sp, $3332                                   ; $67c9: $31 $32 $33
	inc  [hl]                                        ; $67cc: $34
	dec  [hl]                                        ; $67cd: $35
	ld   [hl], $3c                                   ; $67ce: $36 $3c
	dec  a                                           ; $67d0: $3d
	ld   a, $3f                                      ; $67d1: $3e $3f
	ld   b, d                                        ; $67d3: $42
	ld   b, e                                        ; $67d4: $43
	ld   b, h                                        ; $67d5: $44
	ld   b, l                                        ; $67d6: $45
	ld   b, [hl]                                     ; $67d7: $46
	dec  b                                           ; $67d8: $05
	dec  b                                           ; $67d9: $05
	dec  b                                           ; $67da: $05
	dec  b                                           ; $67db: $05
	dec  b                                           ; $67dc: $05
	dec  b                                           ; $67dd: $05
	dec  b                                           ; $67de: $05
	inc  bc                                          ; $67df: $03
	inc  bc                                          ; $67e0: $03
	inc  bc                                          ; $67e1: $03
	inc  bc                                          ; $67e2: $03
	inc  bc                                          ; $67e3: $03
	inc  bc                                          ; $67e4: $03
	dec  h                                           ; $67e5: $25
	dec  h                                           ; $67e6: $25
	dec  h                                           ; $67e7: $25
	dec  h                                           ; $67e8: $25
	dec  h                                           ; $67e9: $25
	dec  h                                           ; $67ea: $25
	dec  h                                           ; $67eb: $25
	dec  b                                           ; $67ec: $05
	dec  b                                           ; $67ed: $05
	dec  b                                           ; $67ee: $05
	dec  b                                           ; $67ef: $05
	dec  b                                           ; $67f0: $05
	dec  b                                           ; $67f1: $05
	dec  b                                           ; $67f2: $05
	inc  bc                                          ; $67f3: $03
	inc  bc                                          ; $67f4: $03
	inc  bc                                          ; $67f5: $03
	inc  bc                                          ; $67f6: $03
	inc  bc                                          ; $67f7: $03
	inc  bc                                          ; $67f8: $03
	dec  h                                           ; $67f9: $25
	dec  h                                           ; $67fa: $25
	dec  h                                           ; $67fb: $25
	dec  h                                           ; $67fc: $25
	dec  h                                           ; $67fd: $25
	dec  h                                           ; $67fe: $25
	dec  h                                           ; $67ff: $25
	dec  b                                           ; $6800: $05
	dec  b                                           ; $6801: $05
	dec  b                                           ; $6802: $05
	dec  b                                           ; $6803: $05
	dec  b                                           ; $6804: $05
	dec  b                                           ; $6805: $05
	dec  b                                           ; $6806: $05
	inc  bc                                          ; $6807: $03
	inc  bc                                          ; $6808: $03
	inc  b                                           ; $6809: $04
	inc  b                                           ; $680a: $04
	inc  bc                                          ; $680b: $03
	inc  bc                                          ; $680c: $03
	dec  h                                           ; $680d: $25
	dec  h                                           ; $680e: $25
	dec  h                                           ; $680f: $25
	dec  h                                           ; $6810: $25
	dec  h                                           ; $6811: $25
	dec  h                                           ; $6812: $25
	dec  h                                           ; $6813: $25
	dec  b                                           ; $6814: $05
	dec  b                                           ; $6815: $05
	dec  b                                           ; $6816: $05
	dec  b                                           ; $6817: $05
	dec  b                                           ; $6818: $05
	dec  b                                           ; $6819: $05
	dec  b                                           ; $681a: $05
	inc  bc                                          ; $681b: $03
	inc  bc                                          ; $681c: $03
	inc  bc                                          ; $681d: $03
	inc  bc                                          ; $681e: $03
	inc  bc                                          ; $681f: $03
	inc  bc                                          ; $6820: $03
	dec  h                                           ; $6821: $25
	dec  h                                           ; $6822: $25
	dec  h                                           ; $6823: $25
	dec  h                                           ; $6824: $25
	dec  h                                           ; $6825: $25
	dec  h                                           ; $6826: $25
	dec  h                                           ; $6827: $25
	dec  b                                           ; $6828: $05
	dec  b                                           ; $6829: $05
	dec  b                                           ; $682a: $05
	dec  b                                           ; $682b: $05
	dec  b                                           ; $682c: $05
	dec  b                                           ; $682d: $05
	dec  b                                           ; $682e: $05
	inc  bc                                          ; $682f: $03
	inc  bc                                          ; $6830: $03
	inc  bc                                          ; $6831: $03
	inc  bc                                          ; $6832: $03
	inc  bc                                          ; $6833: $03
	inc  bc                                          ; $6834: $03
	dec  h                                           ; $6835: $25
	dec  h                                           ; $6836: $25
	dec  h                                           ; $6837: $25
	dec  h                                           ; $6838: $25
	dec  h                                           ; $6839: $25
	dec  h                                           ; $683a: $25
	dec  h                                           ; $683b: $25
	inc  bc                                          ; $683c: $03
	inc  bc                                          ; $683d: $03
	inc  bc                                          ; $683e: $03
	inc  bc                                          ; $683f: $03
	inc  bc                                          ; $6840: $03
	inc  bc                                          ; $6841: $03
	inc  bc                                          ; $6842: $03
	inc  bc                                          ; $6843: $03
	inc  bc                                          ; $6844: $03
	inc  bc                                          ; $6845: $03
	inc  bc                                          ; $6846: $03
	inc  bc                                          ; $6847: $03
	inc  bc                                          ; $6848: $03
	inc  hl                                          ; $6849: $23
	inc  hl                                          ; $684a: $23
	inc  hl                                          ; $684b: $23
	inc  hl                                          ; $684c: $23
	inc  hl                                          ; $684d: $23
	inc  hl                                          ; $684e: $23
	inc  hl                                          ; $684f: $23
	inc  bc                                          ; $6850: $03
	inc  bc                                          ; $6851: $03
	inc  bc                                          ; $6852: $03
	inc  bc                                          ; $6853: $03
	inc  bc                                          ; $6854: $03
	inc  bc                                          ; $6855: $03
	inc  bc                                          ; $6856: $03
	inc  bc                                          ; $6857: $03
	inc  bc                                          ; $6858: $03
	inc  bc                                          ; $6859: $03
	inc  bc                                          ; $685a: $03
	inc  bc                                          ; $685b: $03
	inc  bc                                          ; $685c: $03
	inc  hl                                          ; $685d: $23
	inc  hl                                          ; $685e: $23
	inc  hl                                          ; $685f: $23
	inc  hl                                          ; $6860: $23
	inc  hl                                          ; $6861: $23
	inc  hl                                          ; $6862: $23
	inc  hl                                          ; $6863: $23
	inc  bc                                          ; $6864: $03
	inc  bc                                          ; $6865: $03
	inc  bc                                          ; $6866: $03
	inc  bc                                          ; $6867: $03
	inc  bc                                          ; $6868: $03
	inc  bc                                          ; $6869: $03
	inc  bc                                          ; $686a: $03
	inc  bc                                          ; $686b: $03
	inc  bc                                          ; $686c: $03
	inc  bc                                          ; $686d: $03
	inc  bc                                          ; $686e: $03
	inc  bc                                          ; $686f: $03
	inc  bc                                          ; $6870: $03
	inc  hl                                          ; $6871: $23
	inc  hl                                          ; $6872: $23
	inc  hl                                          ; $6873: $23
	inc  hl                                          ; $6874: $23
	inc  hl                                          ; $6875: $23
	inc  hl                                          ; $6876: $23
	inc  hl                                          ; $6877: $23
	inc  bc                                          ; $6878: $03
	inc  bc                                          ; $6879: $03
	inc  bc                                          ; $687a: $03
	inc  bc                                          ; $687b: $03
	inc  bc                                          ; $687c: $03
	inc  bc                                          ; $687d: $03
	inc  bc                                          ; $687e: $03
	inc  bc                                          ; $687f: $03
	inc  bc                                          ; $6880: $03
	inc  bc                                          ; $6881: $03
	inc  bc                                          ; $6882: $03
	inc  bc                                          ; $6883: $03
	inc  bc                                          ; $6884: $03
	inc  bc                                          ; $6885: $03
	inc  bc                                          ; $6886: $03
	inc  bc                                          ; $6887: $03
	inc  bc                                          ; $6888: $03
	inc  bc                                          ; $6889: $03
	inc  bc                                          ; $688a: $03
	inc  bc                                          ; $688b: $03
	inc  bc                                          ; $688c: $03
	inc  bc                                          ; $688d: $03
	inc  bc                                          ; $688e: $03
	inc  bc                                          ; $688f: $03
	inc  bc                                          ; $6890: $03
	inc  bc                                          ; $6891: $03
	inc  bc                                          ; $6892: $03
	inc  bc                                          ; $6893: $03
	inc  bc                                          ; $6894: $03
	inc  bc                                          ; $6895: $03
	inc  bc                                          ; $6896: $03
	inc  bc                                          ; $6897: $03
	inc  bc                                          ; $6898: $03
	inc  bc                                          ; $6899: $03
	inc  bc                                          ; $689a: $03
	inc  bc                                          ; $689b: $03
	inc  bc                                          ; $689c: $03
	inc  bc                                          ; $689d: $03
	inc  bc                                          ; $689e: $03
	inc  bc                                          ; $689f: $03
	nop                                              ; $68a0: $00
	ld   bc, $0302                                   ; $68a1: $01 $02 $03
	inc  b                                           ; $68a4: $04
	inc  b                                           ; $68a5: $04
	inc  b                                           ; $68a6: $04
	rlca                                             ; $68a7: $07
	ld   [$0a09], sp                                 ; $68a8: $08 $09 $0a
	dec  bc                                          ; $68ab: $0b
	inc  c                                           ; $68ac: $0c
	inc  b                                           ; $68ad: $04
	inc  b                                           ; $68ae: $04
	inc  b                                           ; $68af: $04
	inc  bc                                          ; $68b0: $03
	ld   [bc], a                                     ; $68b1: $02
	ld   bc, $1000                                   ; $68b2: $01 $00 $10
	ld   de, $0412                                   ; $68b5: $11 $12 $04
	inc  b                                           ; $68b8: $04
	inc  b                                           ; $68b9: $04
	inc  b                                           ; $68ba: $04
	rla                                              ; $68bb: $17
	jr   jr_082_68d7                                 ; $68bc: $18 $19

	ld   a, [de]                                     ; $68be: $1a
	dec  de                                          ; $68bf: $1b
	inc  e                                           ; $68c0: $1c
	inc  b                                           ; $68c1: $04
	inc  b                                           ; $68c2: $04
	inc  b                                           ; $68c3: $04
	inc  b                                           ; $68c4: $04
	ld   [de], a                                     ; $68c5: $12
	ld   de, $2010                                   ; $68c6: $11 $10 $20
	ld   hl, $0404                                   ; $68c9: $21 $04 $04
	inc  b                                           ; $68cc: $04
	inc  b                                           ; $68cd: $04
	inc  b                                           ; $68ce: $04
	daa                                              ; $68cf: $27
	jr   z, jr_082_68fb                              ; $68d0: $28 $29

	ld   a, [hl+]                                    ; $68d2: $2a
	dec  hl                                          ; $68d3: $2b
	inc  e                                           ; $68d4: $1c
	inc  b                                           ; $68d5: $04
	inc  b                                           ; $68d6: $04

jr_082_68d7:
	inc  b                                           ; $68d7: $04
	inc  b                                           ; $68d8: $04
	inc  b                                           ; $68d9: $04
	ld   hl, $3020                                   ; $68da: $21 $20 $30
	inc  b                                           ; $68dd: $04
	inc  b                                           ; $68de: $04
	inc  b                                           ; $68df: $04
	inc  b                                           ; $68e0: $04
	inc  b                                           ; $68e1: $04
	inc  b                                           ; $68e2: $04
	scf                                              ; $68e3: $37
	jr   c, jr_082_691f                              ; $68e4: $38 $39

	ld   a, [hl-]                                    ; $68e6: $3a
	dec  hl                                          ; $68e7: $2b
	inc  e                                           ; $68e8: $1c
	inc  b                                           ; $68e9: $04
	inc  b                                           ; $68ea: $04
	inc  b                                           ; $68eb: $04
	inc  b                                           ; $68ec: $04
	inc  b                                           ; $68ed: $04
	inc  b                                           ; $68ee: $04
	jr   nc, jr_082_6931                             ; $68ef: $30 $40

	ld   b, c                                        ; $68f1: $41
	ld   b, c                                        ; $68f2: $41
	ld   b, c                                        ; $68f3: $41
	ld   b, c                                        ; $68f4: $41
	ld   b, c                                        ; $68f5: $41
	ld   b, c                                        ; $68f6: $41
	ld   b, a                                        ; $68f7: $47
	ld   c, b                                        ; $68f8: $48
	ld   c, c                                        ; $68f9: $49
	ld   c, d                                        ; $68fa: $4a

jr_082_68fb:
	ld   c, e                                        ; $68fb: $4b
	ld   c, h                                        ; $68fc: $4c
	ld   b, c                                        ; $68fd: $41
	ld   b, c                                        ; $68fe: $41
	ld   b, c                                        ; $68ff: $41
	ld   b, c                                        ; $6900: $41
	ld   b, c                                        ; $6901: $41
	ld   b, c                                        ; $6902: $41
	ld   b, b                                        ; $6903: $40
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
	ld   e, e                                        ; $690f: $5b
	ld   e, h                                        ; $6910: $5c
	ld   d, [hl]                                     ; $6911: $56
	ld   d, l                                        ; $6912: $55
	ld   d, h                                        ; $6913: $54
	ld   d, e                                        ; $6914: $53
	ld   d, d                                        ; $6915: $52
	ld   d, c                                        ; $6916: $51
	ld   d, b                                        ; $6917: $50
	ld   h, b                                        ; $6918: $60
	ld   h, c                                        ; $6919: $61
	ld   h, d                                        ; $691a: $62
	ld   h, e                                        ; $691b: $63
	ld   h, h                                        ; $691c: $64
	ld   h, l                                        ; $691d: $65
	ld   h, [hl]                                     ; $691e: $66

jr_082_691f:
	ld   h, a                                        ; $691f: $67
	ld   l, b                                        ; $6920: $68
	ld   l, c                                        ; $6921: $69
	ld   l, d                                        ; $6922: $6a
	ld   l, e                                        ; $6923: $6b
	ld   l, h                                        ; $6924: $6c
	ld   h, [hl]                                     ; $6925: $66
	ld   h, l                                        ; $6926: $65
	ld   h, h                                        ; $6927: $64
	ld   h, e                                        ; $6928: $63
	ld   h, d                                        ; $6929: $62
	ld   h, c                                        ; $692a: $61
	ld   h, b                                        ; $692b: $60
	ld   e, l                                        ; $692c: $5d
	ld   h, c                                        ; $692d: $61
	ld   e, [hl]                                     ; $692e: $5e
	ld   e, a                                        ; $692f: $5f
	ld   h, h                                        ; $6930: $64

jr_082_6931:
	ld   h, l                                        ; $6931: $65
	ld   h, [hl]                                     ; $6932: $66
	ld   h, a                                        ; $6933: $67
	ld   l, l                                        ; $6934: $6d
	ld   l, [hl]                                     ; $6935: $6e
	ld   l, a                                        ; $6936: $6f
	ld   l, e                                        ; $6937: $6b
	ld   l, h                                        ; $6938: $6c
	ld   h, [hl]                                     ; $6939: $66
	ld   h, l                                        ; $693a: $65
	ld   h, h                                        ; $693b: $64
	ld   e, a                                        ; $693c: $5f
	ld   e, [hl]                                     ; $693d: $5e
	ld   h, c                                        ; $693e: $61
	ld   e, l                                        ; $693f: $5d
	dec  b                                           ; $6940: $05
	ld   b, $0d                                      ; $6941: $06 $0d
	ld   c, $0f                                      ; $6943: $0e $0f
	inc  de                                          ; $6945: $13
	inc  d                                           ; $6946: $14
	dec  d                                           ; $6947: $15
	ld   d, $1d                                      ; $6948: $16 $1d
	ld   e, $1f                                      ; $694a: $1e $1f
	ld   [hl+], a                                    ; $694c: $22
	inc  hl                                          ; $694d: $23
	inc  h                                           ; $694e: $24
	dec  h                                           ; $694f: $25
	ld   h, $2c                                      ; $6950: $26 $2c
	dec  l                                           ; $6952: $2d
	ld   l, $2f                                      ; $6953: $2e $2f
	ld   sp, $3332                                   ; $6955: $31 $32 $33
	inc  [hl]                                        ; $6958: $34
	dec  [hl]                                        ; $6959: $35
	ld   [hl], $3b                                   ; $695a: $36 $3b
	inc  a                                           ; $695c: $3c
	dec  a                                           ; $695d: $3d
	ld   a, $3f                                      ; $695e: $3e $3f
	ld   b, d                                        ; $6960: $42
	ld   b, e                                        ; $6961: $43
	ld   b, h                                        ; $6962: $44
	ld   b, l                                        ; $6963: $45
	ld   b, [hl]                                     ; $6964: $46
	ld   c, l                                        ; $6965: $4d
	ld   c, [hl]                                     ; $6966: $4e
	ld   c, a                                        ; $6967: $4f
	dec  b                                           ; $6968: $05
	dec  b                                           ; $6969: $05
	dec  b                                           ; $696a: $05
	dec  b                                           ; $696b: $05
	dec  b                                           ; $696c: $05
	dec  b                                           ; $696d: $05
	dec  b                                           ; $696e: $05
	inc  bc                                          ; $696f: $03
	inc  bc                                          ; $6970: $03
	inc  bc                                          ; $6971: $03
	inc  bc                                          ; $6972: $03
	inc  bc                                          ; $6973: $03
	inc  bc                                          ; $6974: $03
	dec  h                                           ; $6975: $25
	dec  h                                           ; $6976: $25
	dec  h                                           ; $6977: $25
	dec  h                                           ; $6978: $25
	dec  h                                           ; $6979: $25
	dec  h                                           ; $697a: $25
	dec  h                                           ; $697b: $25
	dec  b                                           ; $697c: $05
	dec  b                                           ; $697d: $05
	dec  b                                           ; $697e: $05
	dec  b                                           ; $697f: $05
	dec  b                                           ; $6980: $05
	dec  b                                           ; $6981: $05
	dec  b                                           ; $6982: $05
	inc  bc                                          ; $6983: $03
	inc  bc                                          ; $6984: $03
	inc  bc                                          ; $6985: $03
	inc  bc                                          ; $6986: $03
	inc  bc                                          ; $6987: $03
	inc  bc                                          ; $6988: $03
	dec  h                                           ; $6989: $25
	dec  h                                           ; $698a: $25
	dec  h                                           ; $698b: $25
	dec  h                                           ; $698c: $25
	dec  h                                           ; $698d: $25
	dec  h                                           ; $698e: $25
	dec  h                                           ; $698f: $25
	dec  b                                           ; $6990: $05
	dec  b                                           ; $6991: $05
	dec  b                                           ; $6992: $05
	dec  b                                           ; $6993: $05
	dec  b                                           ; $6994: $05
	dec  b                                           ; $6995: $05
	dec  b                                           ; $6996: $05
	inc  bc                                          ; $6997: $03
	inc  bc                                          ; $6998: $03
	inc  b                                           ; $6999: $04
	inc  bc                                          ; $699a: $03
	inc  bc                                          ; $699b: $03
	inc  bc                                          ; $699c: $03
	dec  h                                           ; $699d: $25
	dec  h                                           ; $699e: $25
	dec  h                                           ; $699f: $25
	dec  h                                           ; $69a0: $25
	dec  h                                           ; $69a1: $25
	dec  h                                           ; $69a2: $25
	dec  h                                           ; $69a3: $25
	dec  b                                           ; $69a4: $05
	dec  b                                           ; $69a5: $05
	dec  b                                           ; $69a6: $05
	dec  b                                           ; $69a7: $05
	dec  b                                           ; $69a8: $05
	dec  b                                           ; $69a9: $05
	dec  b                                           ; $69aa: $05
	inc  bc                                          ; $69ab: $03
	inc  bc                                          ; $69ac: $03
	inc  bc                                          ; $69ad: $03
	inc  bc                                          ; $69ae: $03
	inc  bc                                          ; $69af: $03
	inc  bc                                          ; $69b0: $03
	dec  h                                           ; $69b1: $25
	dec  h                                           ; $69b2: $25
	dec  h                                           ; $69b3: $25
	dec  h                                           ; $69b4: $25
	dec  h                                           ; $69b5: $25
	dec  h                                           ; $69b6: $25
	dec  h                                           ; $69b7: $25
	dec  b                                           ; $69b8: $05
	dec  b                                           ; $69b9: $05
	dec  b                                           ; $69ba: $05
	dec  b                                           ; $69bb: $05
	dec  b                                           ; $69bc: $05
	dec  b                                           ; $69bd: $05
	dec  b                                           ; $69be: $05
	inc  bc                                          ; $69bf: $03
	inc  bc                                          ; $69c0: $03
	inc  bc                                          ; $69c1: $03
	inc  bc                                          ; $69c2: $03
	inc  bc                                          ; $69c3: $03
	inc  bc                                          ; $69c4: $03
	dec  h                                           ; $69c5: $25
	dec  h                                           ; $69c6: $25
	dec  h                                           ; $69c7: $25
	dec  h                                           ; $69c8: $25
	dec  h                                           ; $69c9: $25
	dec  h                                           ; $69ca: $25
	dec  h                                           ; $69cb: $25
	inc  bc                                          ; $69cc: $03
	inc  bc                                          ; $69cd: $03
	inc  bc                                          ; $69ce: $03
	inc  bc                                          ; $69cf: $03
	inc  bc                                          ; $69d0: $03
	inc  bc                                          ; $69d1: $03
	inc  bc                                          ; $69d2: $03
	inc  bc                                          ; $69d3: $03
	inc  bc                                          ; $69d4: $03
	inc  bc                                          ; $69d5: $03
	inc  b                                           ; $69d6: $04
	inc  bc                                          ; $69d7: $03
	inc  bc                                          ; $69d8: $03
	inc  hl                                          ; $69d9: $23
	inc  hl                                          ; $69da: $23
	inc  hl                                          ; $69db: $23
	inc  hl                                          ; $69dc: $23
	inc  hl                                          ; $69dd: $23
	inc  hl                                          ; $69de: $23
	inc  hl                                          ; $69df: $23
	inc  bc                                          ; $69e0: $03
	inc  bc                                          ; $69e1: $03
	inc  bc                                          ; $69e2: $03
	inc  bc                                          ; $69e3: $03
	inc  bc                                          ; $69e4: $03
	inc  bc                                          ; $69e5: $03
	inc  bc                                          ; $69e6: $03
	inc  bc                                          ; $69e7: $03
	inc  bc                                          ; $69e8: $03
	inc  bc                                          ; $69e9: $03
	inc  bc                                          ; $69ea: $03
	inc  bc                                          ; $69eb: $03
	inc  bc                                          ; $69ec: $03
	inc  hl                                          ; $69ed: $23
	inc  hl                                          ; $69ee: $23
	inc  hl                                          ; $69ef: $23
	inc  hl                                          ; $69f0: $23
	inc  hl                                          ; $69f1: $23
	inc  hl                                          ; $69f2: $23
	inc  hl                                          ; $69f3: $23
	inc  bc                                          ; $69f4: $03
	inc  bc                                          ; $69f5: $03
	inc  bc                                          ; $69f6: $03
	inc  bc                                          ; $69f7: $03
	inc  bc                                          ; $69f8: $03
	inc  bc                                          ; $69f9: $03
	inc  bc                                          ; $69fa: $03
	inc  bc                                          ; $69fb: $03
	inc  bc                                          ; $69fc: $03
	inc  bc                                          ; $69fd: $03
	inc  bc                                          ; $69fe: $03
	inc  bc                                          ; $69ff: $03
	inc  bc                                          ; $6a00: $03
	inc  hl                                          ; $6a01: $23
	inc  hl                                          ; $6a02: $23
	inc  hl                                          ; $6a03: $23
	inc  hl                                          ; $6a04: $23
	inc  hl                                          ; $6a05: $23
	inc  hl                                          ; $6a06: $23
	inc  hl                                          ; $6a07: $23
	inc  bc                                          ; $6a08: $03
	inc  bc                                          ; $6a09: $03
	inc  bc                                          ; $6a0a: $03
	inc  bc                                          ; $6a0b: $03
	inc  bc                                          ; $6a0c: $03
	inc  bc                                          ; $6a0d: $03
	inc  bc                                          ; $6a0e: $03
	inc  bc                                          ; $6a0f: $03
	inc  bc                                          ; $6a10: $03
	inc  bc                                          ; $6a11: $03
	inc  bc                                          ; $6a12: $03
	inc  bc                                          ; $6a13: $03
	inc  bc                                          ; $6a14: $03
	inc  bc                                          ; $6a15: $03
	inc  bc                                          ; $6a16: $03
	inc  bc                                          ; $6a17: $03
	inc  bc                                          ; $6a18: $03
	inc  bc                                          ; $6a19: $03
	inc  bc                                          ; $6a1a: $03
	inc  bc                                          ; $6a1b: $03
	inc  bc                                          ; $6a1c: $03
	inc  bc                                          ; $6a1d: $03
	inc  bc                                          ; $6a1e: $03
	inc  bc                                          ; $6a1f: $03
	inc  bc                                          ; $6a20: $03
	inc  bc                                          ; $6a21: $03
	inc  bc                                          ; $6a22: $03
	inc  bc                                          ; $6a23: $03
	inc  bc                                          ; $6a24: $03
	inc  bc                                          ; $6a25: $03
	inc  bc                                          ; $6a26: $03
	inc  bc                                          ; $6a27: $03
	inc  bc                                          ; $6a28: $03
	inc  bc                                          ; $6a29: $03
	inc  bc                                          ; $6a2a: $03
	inc  bc                                          ; $6a2b: $03
	inc  bc                                          ; $6a2c: $03
	inc  bc                                          ; $6a2d: $03
	inc  bc                                          ; $6a2e: $03
	inc  bc                                          ; $6a2f: $03
	nop                                              ; $6a30: $00
	ld   bc, $0302                                   ; $6a31: $01 $02 $03
	inc  b                                           ; $6a34: $04
	inc  b                                           ; $6a35: $04
	inc  b                                           ; $6a36: $04
	rlca                                             ; $6a37: $07
	ld   [$0808], sp                                 ; $6a38: $08 $08 $08
	ld   [$040c], sp                                 ; $6a3b: $08 $0c $04
	inc  b                                           ; $6a3e: $04
	inc  b                                           ; $6a3f: $04
	inc  bc                                          ; $6a40: $03
	ld   [bc], a                                     ; $6a41: $02
	ld   bc, $1000                                   ; $6a42: $01 $00 $10
	ld   de, $0412                                   ; $6a45: $11 $12 $04
	inc  b                                           ; $6a48: $04
	inc  b                                           ; $6a49: $04
	inc  b                                           ; $6a4a: $04
	rla                                              ; $6a4b: $17
	jr   jr_082_6a54                                 ; $6a4c: $18 $06

	rlca                                             ; $6a4e: $07
	dec  de                                          ; $6a4f: $1b
	inc  e                                           ; $6a50: $1c
	inc  b                                           ; $6a51: $04
	inc  b                                           ; $6a52: $04
	inc  b                                           ; $6a53: $04

jr_082_6a54:
	inc  b                                           ; $6a54: $04
	ld   [de], a                                     ; $6a55: $12
	ld   de, $2010                                   ; $6a56: $11 $10 $20
	ld   hl, $0404                                   ; $6a59: $21 $04 $04
	inc  b                                           ; $6a5c: $04
	inc  b                                           ; $6a5d: $04
	inc  b                                           ; $6a5e: $04
	daa                                              ; $6a5f: $27
	jr   z, jr_082_6a6a                              ; $6a60: $28 $08

	add  hl, bc                                      ; $6a62: $09
	dec  hl                                          ; $6a63: $2b
	inc  e                                           ; $6a64: $1c
	inc  b                                           ; $6a65: $04
	inc  b                                           ; $6a66: $04
	inc  b                                           ; $6a67: $04
	inc  b                                           ; $6a68: $04
	inc  b                                           ; $6a69: $04

jr_082_6a6a:
	ld   hl, $3020                                   ; $6a6a: $21 $20 $30
	inc  b                                           ; $6a6d: $04
	inc  b                                           ; $6a6e: $04
	inc  b                                           ; $6a6f: $04
	inc  b                                           ; $6a70: $04
	inc  b                                           ; $6a71: $04
	inc  b                                           ; $6a72: $04
	scf                                              ; $6a73: $37
	jr   c, jr_082_6aaf                              ; $6a74: $38 $39

	ld   a, [hl-]                                    ; $6a76: $3a
	dec  sp                                          ; $6a77: $3b
	inc  e                                           ; $6a78: $1c
	inc  b                                           ; $6a79: $04
	inc  b                                           ; $6a7a: $04
	inc  b                                           ; $6a7b: $04
	inc  b                                           ; $6a7c: $04
	inc  b                                           ; $6a7d: $04
	inc  b                                           ; $6a7e: $04
	jr   nc, jr_082_6ac1                             ; $6a7f: $30 $40

	ld   b, c                                        ; $6a81: $41
	ld   b, c                                        ; $6a82: $41
	ld   b, c                                        ; $6a83: $41
	ld   b, c                                        ; $6a84: $41
	ld   b, c                                        ; $6a85: $41
	ld   b, c                                        ; $6a86: $41
	ld   b, a                                        ; $6a87: $47
	ld   c, b                                        ; $6a88: $48
	ld   c, c                                        ; $6a89: $49
	ld   c, d                                        ; $6a8a: $4a
	ld   c, e                                        ; $6a8b: $4b
	ld   c, h                                        ; $6a8c: $4c
	ld   b, c                                        ; $6a8d: $41
	ld   b, c                                        ; $6a8e: $41
	ld   b, c                                        ; $6a8f: $41
	ld   b, c                                        ; $6a90: $41
	ld   b, c                                        ; $6a91: $41
	ld   b, c                                        ; $6a92: $41
	ld   b, b                                        ; $6a93: $40
	ld   d, b                                        ; $6a94: $50
	ld   d, c                                        ; $6a95: $51
	ld   d, d                                        ; $6a96: $52
	ld   d, e                                        ; $6a97: $53
	ld   d, h                                        ; $6a98: $54
	ld   d, l                                        ; $6a99: $55
	ld   d, [hl]                                     ; $6a9a: $56
	ld   a, [bc]                                     ; $6a9b: $0a
	dec  bc                                          ; $6a9c: $0b
	ld   e, c                                        ; $6a9d: $59
	ld   e, d                                        ; $6a9e: $5a
	ld   e, e                                        ; $6a9f: $5b
	ld   e, h                                        ; $6aa0: $5c
	ld   d, [hl]                                     ; $6aa1: $56
	ld   d, l                                        ; $6aa2: $55
	ld   d, h                                        ; $6aa3: $54
	ld   d, e                                        ; $6aa4: $53
	ld   d, d                                        ; $6aa5: $52
	ld   d, c                                        ; $6aa6: $51
	ld   d, b                                        ; $6aa7: $50
	ld   h, b                                        ; $6aa8: $60
	ld   h, c                                        ; $6aa9: $61
	ld   h, d                                        ; $6aaa: $62
	ld   h, e                                        ; $6aab: $63
	ld   h, h                                        ; $6aac: $64
	ld   h, l                                        ; $6aad: $65
	ld   h, [hl]                                     ; $6aae: $66

jr_082_6aaf:
	ld   h, a                                        ; $6aaf: $67
	inc  c                                           ; $6ab0: $0c
	ld   l, c                                        ; $6ab1: $69
	ld   l, d                                        ; $6ab2: $6a
	ld   l, e                                        ; $6ab3: $6b
	ld   l, h                                        ; $6ab4: $6c
	ld   h, [hl]                                     ; $6ab5: $66
	ld   h, l                                        ; $6ab6: $65
	ld   h, h                                        ; $6ab7: $64
	ld   h, e                                        ; $6ab8: $63
	ld   h, d                                        ; $6ab9: $62
	ld   h, c                                        ; $6aba: $61
	ld   h, b                                        ; $6abb: $60
	ld   c, l                                        ; $6abc: $4d
	ld   h, c                                        ; $6abd: $61
	ld   c, [hl]                                     ; $6abe: $4e
	ld   c, a                                        ; $6abf: $4f
	ld   h, h                                        ; $6ac0: $64

jr_082_6ac1:
	ld   h, l                                        ; $6ac1: $65
	ld   h, [hl]                                     ; $6ac2: $66
	ld   h, a                                        ; $6ac3: $67
	ld   e, l                                        ; $6ac4: $5d
	ld   e, [hl]                                     ; $6ac5: $5e
	ld   e, a                                        ; $6ac6: $5f
	ld   l, l                                        ; $6ac7: $6d
	ld   l, h                                        ; $6ac8: $6c
	ld   h, [hl]                                     ; $6ac9: $66
	ld   h, l                                        ; $6aca: $65
	ld   h, h                                        ; $6acb: $64
	ld   c, a                                        ; $6acc: $4f
	ld   c, [hl]                                     ; $6acd: $4e
	ld   h, c                                        ; $6ace: $61
	ld   c, l                                        ; $6acf: $4d
	dec  b                                           ; $6ad0: $05
	ld   b, $09                                      ; $6ad1: $06 $09
	ld   a, [bc]                                     ; $6ad3: $0a
	dec  bc                                          ; $6ad4: $0b
	dec  c                                           ; $6ad5: $0d
	ld   c, $0f                                      ; $6ad6: $0e $0f
	inc  de                                          ; $6ad8: $13
	inc  d                                           ; $6ad9: $14
	dec  d                                           ; $6ada: $15
	ld   d, $1a                                      ; $6adb: $16 $1a
	dec  e                                           ; $6add: $1d
	ld   e, $1f                                      ; $6ade: $1e $1f
	ld   [hl+], a                                    ; $6ae0: $22
	inc  hl                                          ; $6ae1: $23
	inc  h                                           ; $6ae2: $24
	dec  h                                           ; $6ae3: $25
	ld   h, $2c                                      ; $6ae4: $26 $2c
	dec  l                                           ; $6ae6: $2d
	ld   l, $2f                                      ; $6ae7: $2e $2f
	ld   sp, $3332                                   ; $6ae9: $31 $32 $33
	inc  [hl]                                        ; $6aec: $34
	dec  [hl]                                        ; $6aed: $35
	ld   [hl], $3c                                   ; $6aee: $36 $3c
	dec  a                                           ; $6af0: $3d
	ld   a, $3f                                      ; $6af1: $3e $3f
	ld   b, d                                        ; $6af3: $42
	ld   b, e                                        ; $6af4: $43
	ld   b, h                                        ; $6af5: $44
	ld   b, l                                        ; $6af6: $45
	ld   b, [hl]                                     ; $6af7: $46
	dec  b                                           ; $6af8: $05
	dec  b                                           ; $6af9: $05
	dec  b                                           ; $6afa: $05
	dec  b                                           ; $6afb: $05
	dec  b                                           ; $6afc: $05
	dec  b                                           ; $6afd: $05
	dec  b                                           ; $6afe: $05
	inc  bc                                          ; $6aff: $03
	inc  bc                                          ; $6b00: $03
	inc  bc                                          ; $6b01: $03
	inc  bc                                          ; $6b02: $03
	inc  bc                                          ; $6b03: $03
	inc  bc                                          ; $6b04: $03
	dec  h                                           ; $6b05: $25
	dec  h                                           ; $6b06: $25
	dec  h                                           ; $6b07: $25
	dec  h                                           ; $6b08: $25
	dec  h                                           ; $6b09: $25
	dec  h                                           ; $6b0a: $25
	dec  h                                           ; $6b0b: $25
	dec  b                                           ; $6b0c: $05
	dec  b                                           ; $6b0d: $05
	dec  b                                           ; $6b0e: $05
	dec  b                                           ; $6b0f: $05
	dec  b                                           ; $6b10: $05
	dec  b                                           ; $6b11: $05
	dec  b                                           ; $6b12: $05
	inc  bc                                          ; $6b13: $03
	inc  bc                                          ; $6b14: $03
	inc  c                                           ; $6b15: $0c
	inc  c                                           ; $6b16: $0c
	inc  bc                                          ; $6b17: $03
	inc  bc                                          ; $6b18: $03
	dec  h                                           ; $6b19: $25
	dec  h                                           ; $6b1a: $25
	dec  h                                           ; $6b1b: $25
	dec  h                                           ; $6b1c: $25
	dec  h                                           ; $6b1d: $25
	dec  h                                           ; $6b1e: $25
	dec  h                                           ; $6b1f: $25
	dec  b                                           ; $6b20: $05
	dec  b                                           ; $6b21: $05
	dec  b                                           ; $6b22: $05
	dec  b                                           ; $6b23: $05
	dec  b                                           ; $6b24: $05
	dec  b                                           ; $6b25: $05
	dec  b                                           ; $6b26: $05
	inc  bc                                          ; $6b27: $03
	inc  bc                                          ; $6b28: $03
	inc  c                                           ; $6b29: $0c
	inc  c                                           ; $6b2a: $0c
	inc  bc                                          ; $6b2b: $03
	inc  bc                                          ; $6b2c: $03
	dec  h                                           ; $6b2d: $25
	dec  h                                           ; $6b2e: $25
	dec  h                                           ; $6b2f: $25
	dec  h                                           ; $6b30: $25
	dec  h                                           ; $6b31: $25
	dec  h                                           ; $6b32: $25
	dec  h                                           ; $6b33: $25
	dec  b                                           ; $6b34: $05
	dec  b                                           ; $6b35: $05
	dec  b                                           ; $6b36: $05
	dec  b                                           ; $6b37: $05
	dec  b                                           ; $6b38: $05
	dec  b                                           ; $6b39: $05
	dec  b                                           ; $6b3a: $05
	inc  bc                                          ; $6b3b: $03
	inc  bc                                          ; $6b3c: $03
	inc  bc                                          ; $6b3d: $03
	inc  bc                                          ; $6b3e: $03
	inc  bc                                          ; $6b3f: $03
	inc  bc                                          ; $6b40: $03
	dec  h                                           ; $6b41: $25
	dec  h                                           ; $6b42: $25
	dec  h                                           ; $6b43: $25
	dec  h                                           ; $6b44: $25
	dec  h                                           ; $6b45: $25
	dec  h                                           ; $6b46: $25
	dec  h                                           ; $6b47: $25
	dec  b                                           ; $6b48: $05
	dec  b                                           ; $6b49: $05
	dec  b                                           ; $6b4a: $05
	dec  b                                           ; $6b4b: $05
	dec  b                                           ; $6b4c: $05
	dec  b                                           ; $6b4d: $05
	dec  b                                           ; $6b4e: $05
	inc  bc                                          ; $6b4f: $03
	inc  bc                                          ; $6b50: $03
	inc  bc                                          ; $6b51: $03
	inc  bc                                          ; $6b52: $03
	inc  bc                                          ; $6b53: $03
	inc  bc                                          ; $6b54: $03
	dec  h                                           ; $6b55: $25
	dec  h                                           ; $6b56: $25
	dec  h                                           ; $6b57: $25
	dec  h                                           ; $6b58: $25
	dec  h                                           ; $6b59: $25
	dec  h                                           ; $6b5a: $25
	dec  h                                           ; $6b5b: $25
	inc  bc                                          ; $6b5c: $03
	inc  bc                                          ; $6b5d: $03
	inc  bc                                          ; $6b5e: $03
	inc  bc                                          ; $6b5f: $03
	inc  bc                                          ; $6b60: $03
	inc  bc                                          ; $6b61: $03
	inc  bc                                          ; $6b62: $03
	dec  bc                                          ; $6b63: $0b
	inc  c                                           ; $6b64: $0c
	inc  bc                                          ; $6b65: $03
	inc  bc                                          ; $6b66: $03
	inc  bc                                          ; $6b67: $03
	inc  bc                                          ; $6b68: $03
	inc  hl                                          ; $6b69: $23
	inc  hl                                          ; $6b6a: $23
	inc  hl                                          ; $6b6b: $23
	inc  hl                                          ; $6b6c: $23
	inc  hl                                          ; $6b6d: $23
	inc  hl                                          ; $6b6e: $23
	inc  hl                                          ; $6b6f: $23
	inc  bc                                          ; $6b70: $03
	inc  bc                                          ; $6b71: $03
	inc  bc                                          ; $6b72: $03
	inc  bc                                          ; $6b73: $03
	inc  bc                                          ; $6b74: $03
	inc  bc                                          ; $6b75: $03
	inc  bc                                          ; $6b76: $03
	inc  bc                                          ; $6b77: $03
	dec  bc                                          ; $6b78: $0b
	inc  bc                                          ; $6b79: $03
	inc  bc                                          ; $6b7a: $03
	inc  bc                                          ; $6b7b: $03
	inc  bc                                          ; $6b7c: $03
	inc  hl                                          ; $6b7d: $23
	inc  hl                                          ; $6b7e: $23
	inc  hl                                          ; $6b7f: $23
	inc  hl                                          ; $6b80: $23
	inc  hl                                          ; $6b81: $23
	inc  hl                                          ; $6b82: $23
	inc  hl                                          ; $6b83: $23
	inc  bc                                          ; $6b84: $03
	inc  bc                                          ; $6b85: $03
	inc  bc                                          ; $6b86: $03
	inc  bc                                          ; $6b87: $03
	inc  bc                                          ; $6b88: $03
	inc  bc                                          ; $6b89: $03
	inc  bc                                          ; $6b8a: $03
	inc  bc                                          ; $6b8b: $03
	inc  bc                                          ; $6b8c: $03
	inc  bc                                          ; $6b8d: $03
	inc  bc                                          ; $6b8e: $03
	inc  bc                                          ; $6b8f: $03
	inc  bc                                          ; $6b90: $03
	inc  hl                                          ; $6b91: $23
	inc  hl                                          ; $6b92: $23
	inc  hl                                          ; $6b93: $23
	inc  hl                                          ; $6b94: $23
	inc  hl                                          ; $6b95: $23
	inc  hl                                          ; $6b96: $23
	inc  hl                                          ; $6b97: $23
	inc  bc                                          ; $6b98: $03
	inc  bc                                          ; $6b99: $03
	inc  bc                                          ; $6b9a: $03
	inc  bc                                          ; $6b9b: $03
	inc  bc                                          ; $6b9c: $03
	inc  bc                                          ; $6b9d: $03
	inc  bc                                          ; $6b9e: $03
	inc  bc                                          ; $6b9f: $03
	inc  bc                                          ; $6ba0: $03
	inc  bc                                          ; $6ba1: $03
	inc  bc                                          ; $6ba2: $03
	inc  bc                                          ; $6ba3: $03
	inc  bc                                          ; $6ba4: $03
	inc  bc                                          ; $6ba5: $03
	inc  bc                                          ; $6ba6: $03
	inc  bc                                          ; $6ba7: $03
	inc  bc                                          ; $6ba8: $03
	inc  bc                                          ; $6ba9: $03
	inc  bc                                          ; $6baa: $03
	inc  bc                                          ; $6bab: $03
	inc  bc                                          ; $6bac: $03
	inc  bc                                          ; $6bad: $03
	inc  bc                                          ; $6bae: $03
	inc  bc                                          ; $6baf: $03
	inc  bc                                          ; $6bb0: $03
	inc  bc                                          ; $6bb1: $03
	inc  bc                                          ; $6bb2: $03
	inc  bc                                          ; $6bb3: $03
	inc  bc                                          ; $6bb4: $03
	inc  bc                                          ; $6bb5: $03
	inc  bc                                          ; $6bb6: $03
	inc  bc                                          ; $6bb7: $03
	inc  bc                                          ; $6bb8: $03
	inc  bc                                          ; $6bb9: $03
	inc  bc                                          ; $6bba: $03
	inc  bc                                          ; $6bbb: $03
	inc  bc                                          ; $6bbc: $03
	inc  bc                                          ; $6bbd: $03
	inc  bc                                          ; $6bbe: $03
	inc  bc                                          ; $6bbf: $03
	nop                                              ; $6bc0: $00
	ld   bc, $0302                                   ; $6bc1: $01 $02 $03
	inc  b                                           ; $6bc4: $04
	inc  b                                           ; $6bc5: $04
	inc  b                                           ; $6bc6: $04
	rlca                                             ; $6bc7: $07
	halt                                             ; $6bc8: $76
	ld   [hl], a                                     ; $6bc9: $77
	ld   a, b                                        ; $6bca: $78
	ld   a, c                                        ; $6bcb: $79
	inc  c                                           ; $6bcc: $0c
	inc  b                                           ; $6bcd: $04
	inc  b                                           ; $6bce: $04
	inc  b                                           ; $6bcf: $04
	inc  bc                                          ; $6bd0: $03
	ld   [bc], a                                     ; $6bd1: $02
	ld   bc, $1000                                   ; $6bd2: $01 $00 $10
	ld   de, $0412                                   ; $6bd5: $11 $12 $04
	inc  b                                           ; $6bd8: $04
	inc  b                                           ; $6bd9: $04
	inc  b                                           ; $6bda: $04
	rla                                              ; $6bdb: $17
	ld   a, d                                        ; $6bdc: $7a
	ld   a, e                                        ; $6bdd: $7b
	ld   a, h                                        ; $6bde: $7c
	ld   a, l                                        ; $6bdf: $7d
	inc  e                                           ; $6be0: $1c
	inc  b                                           ; $6be1: $04
	inc  b                                           ; $6be2: $04
	inc  b                                           ; $6be3: $04
	inc  b                                           ; $6be4: $04
	ld   [de], a                                     ; $6be5: $12
	ld   de, $2010                                   ; $6be6: $11 $10 $20
	ld   hl, $0404                                   ; $6be9: $21 $04 $04
	inc  b                                           ; $6bec: $04
	inc  b                                           ; $6bed: $04
	inc  b                                           ; $6bee: $04
	daa                                              ; $6bef: $27
	ld   a, [hl]                                     ; $6bf0: $7e
	ld   a, a                                        ; $6bf1: $7f
	nop                                              ; $6bf2: $00
	ld   bc, $041c                                   ; $6bf3: $01 $1c $04
	inc  b                                           ; $6bf6: $04
	inc  b                                           ; $6bf7: $04
	inc  b                                           ; $6bf8: $04
	inc  b                                           ; $6bf9: $04
	ld   hl, $3020                                   ; $6bfa: $21 $20 $30
	inc  b                                           ; $6bfd: $04
	inc  b                                           ; $6bfe: $04
	inc  b                                           ; $6bff: $04
	inc  b                                           ; $6c00: $04
	inc  b                                           ; $6c01: $04
	inc  b                                           ; $6c02: $04
	scf                                              ; $6c03: $37
	ld   a, [hl]                                     ; $6c04: $7e
	ld   [bc], a                                     ; $6c05: $02
	inc  bc                                          ; $6c06: $03
	inc  b                                           ; $6c07: $04
	inc  e                                           ; $6c08: $1c
	inc  b                                           ; $6c09: $04
	inc  b                                           ; $6c0a: $04
	inc  b                                           ; $6c0b: $04
	inc  b                                           ; $6c0c: $04
	inc  b                                           ; $6c0d: $04
	inc  b                                           ; $6c0e: $04
	jr   nc, jr_082_6c51                             ; $6c0f: $30 $40

	ld   b, c                                        ; $6c11: $41
	ld   b, c                                        ; $6c12: $41
	ld   b, c                                        ; $6c13: $41
	ld   b, c                                        ; $6c14: $41
	ld   b, c                                        ; $6c15: $41
	ld   b, c                                        ; $6c16: $41
	ld   b, a                                        ; $6c17: $47
	dec  b                                           ; $6c18: $05
	ld   b, $07                                      ; $6c19: $06 $07
	ld   [$414c], sp                                 ; $6c1b: $08 $4c $41
	ld   b, c                                        ; $6c1e: $41
	ld   b, c                                        ; $6c1f: $41
	ld   b, c                                        ; $6c20: $41
	ld   b, c                                        ; $6c21: $41
	ld   b, c                                        ; $6c22: $41
	ld   b, b                                        ; $6c23: $40
	ld   d, b                                        ; $6c24: $50
	ld   d, c                                        ; $6c25: $51
	ld   d, d                                        ; $6c26: $52
	ld   d, e                                        ; $6c27: $53
	ld   d, h                                        ; $6c28: $54
	ld   d, l                                        ; $6c29: $55
	ld   d, [hl]                                     ; $6c2a: $56
	add  hl, bc                                      ; $6c2b: $09
	ld   a, [bc]                                     ; $6c2c: $0a
	dec  bc                                          ; $6c2d: $0b
	inc  c                                           ; $6c2e: $0c
	dec  c                                           ; $6c2f: $0d
	ld   e, h                                        ; $6c30: $5c
	ld   d, [hl]                                     ; $6c31: $56
	ld   d, l                                        ; $6c32: $55
	ld   d, h                                        ; $6c33: $54
	ld   d, e                                        ; $6c34: $53
	ld   d, d                                        ; $6c35: $52
	ld   d, c                                        ; $6c36: $51
	ld   d, b                                        ; $6c37: $50
	ld   h, b                                        ; $6c38: $60
	ld   h, c                                        ; $6c39: $61
	ld   h, d                                        ; $6c3a: $62
	ld   h, e                                        ; $6c3b: $63
	ld   h, h                                        ; $6c3c: $64
	ld   h, l                                        ; $6c3d: $65
	ld   h, [hl]                                     ; $6c3e: $66
	ld   h, a                                        ; $6c3f: $67
	ld   c, $0f                                      ; $6c40: $0e $0f
	db   $10                                         ; $6c42: $10
	ld   de, $666c                                   ; $6c43: $11 $6c $66
	ld   h, l                                        ; $6c46: $65
	ld   h, h                                        ; $6c47: $64
	ld   h, e                                        ; $6c48: $63
	ld   h, d                                        ; $6c49: $62
	ld   h, c                                        ; $6c4a: $61
	ld   h, b                                        ; $6c4b: $60
	ld   e, l                                        ; $6c4c: $5d
	ld   h, c                                        ; $6c4d: $61
	ld   e, [hl]                                     ; $6c4e: $5e
	ld   e, a                                        ; $6c4f: $5f
	ld   h, h                                        ; $6c50: $64

jr_082_6c51:
	ld   h, l                                        ; $6c51: $65
	ld   h, [hl]                                     ; $6c52: $66
	ld   h, a                                        ; $6c53: $67
	ld   c, $12                                      ; $6c54: $0e $12
	inc  de                                          ; $6c56: $13
	inc  d                                           ; $6c57: $14
	ld   l, h                                        ; $6c58: $6c
	ld   h, [hl]                                     ; $6c59: $66
	ld   h, l                                        ; $6c5a: $65
	ld   h, h                                        ; $6c5b: $64
	ld   e, a                                        ; $6c5c: $5f
	ld   e, [hl]                                     ; $6c5d: $5e
	ld   h, c                                        ; $6c5e: $61
	ld   e, l                                        ; $6c5f: $5d
	dec  b                                           ; $6c60: $05
	ld   b, $0d                                      ; $6c61: $06 $0d
	ld   c, $0f                                      ; $6c63: $0e $0f
	inc  de                                          ; $6c65: $13
	inc  d                                           ; $6c66: $14
	dec  d                                           ; $6c67: $15
	dec  d                                           ; $6c68: $15
	ld   d, $17                                      ; $6c69: $16 $17
	jr   jr_082_6c8f                                 ; $6c6b: $18 $22

	inc  hl                                          ; $6c6d: $23
	inc  h                                           ; $6c6e: $24
	dec  h                                           ; $6c6f: $25
	ld   h, $2c                                      ; $6c70: $26 $2c
	dec  l                                           ; $6c72: $2d
	ld   l, $2f                                      ; $6c73: $2e $2f
	ld   sp, $3332                                   ; $6c75: $31 $32 $33
	inc  [hl]                                        ; $6c78: $34
	dec  [hl]                                        ; $6c79: $35
	ld   [hl], $19                                   ; $6c7a: $36 $19
	ld   a, [de]                                     ; $6c7c: $1a
	dec  de                                          ; $6c7d: $1b
	inc  e                                           ; $6c7e: $1c
	dec  e                                           ; $6c7f: $1d
	ld   b, d                                        ; $6c80: $42
	ld   b, e                                        ; $6c81: $43
	ld   b, h                                        ; $6c82: $44
	ld   b, l                                        ; $6c83: $45
	ld   b, [hl]                                     ; $6c84: $46
	ld   c, l                                        ; $6c85: $4d
	ld   c, [hl]                                     ; $6c86: $4e
	ld   c, a                                        ; $6c87: $4f
	dec  b                                           ; $6c88: $05
	dec  b                                           ; $6c89: $05
	dec  b                                           ; $6c8a: $05
	dec  b                                           ; $6c8b: $05
	dec  b                                           ; $6c8c: $05
	dec  b                                           ; $6c8d: $05
	dec  b                                           ; $6c8e: $05

jr_082_6c8f:
	inc  bc                                          ; $6c8f: $03
	inc  bc                                          ; $6c90: $03
	inc  bc                                          ; $6c91: $03
	inc  bc                                          ; $6c92: $03
	inc  bc                                          ; $6c93: $03
	inc  bc                                          ; $6c94: $03
	dec  h                                           ; $6c95: $25
	dec  h                                           ; $6c96: $25
	dec  h                                           ; $6c97: $25
	dec  h                                           ; $6c98: $25
	dec  h                                           ; $6c99: $25
	dec  h                                           ; $6c9a: $25
	dec  h                                           ; $6c9b: $25
	dec  b                                           ; $6c9c: $05
	dec  b                                           ; $6c9d: $05
	dec  b                                           ; $6c9e: $05
	dec  b                                           ; $6c9f: $05
	dec  b                                           ; $6ca0: $05
	dec  b                                           ; $6ca1: $05
	dec  b                                           ; $6ca2: $05
	inc  bc                                          ; $6ca3: $03
	inc  bc                                          ; $6ca4: $03
	inc  b                                           ; $6ca5: $04
	inc  b                                           ; $6ca6: $04
	inc  bc                                          ; $6ca7: $03
	inc  bc                                          ; $6ca8: $03
	dec  h                                           ; $6ca9: $25
	dec  h                                           ; $6caa: $25
	dec  h                                           ; $6cab: $25
	dec  h                                           ; $6cac: $25
	dec  h                                           ; $6cad: $25
	dec  h                                           ; $6cae: $25
	dec  h                                           ; $6caf: $25
	dec  b                                           ; $6cb0: $05
	dec  b                                           ; $6cb1: $05
	dec  b                                           ; $6cb2: $05
	dec  b                                           ; $6cb3: $05
	dec  b                                           ; $6cb4: $05
	dec  b                                           ; $6cb5: $05
	dec  b                                           ; $6cb6: $05
	inc  bc                                          ; $6cb7: $03
	inc  bc                                          ; $6cb8: $03
	inc  b                                           ; $6cb9: $04
	inc  c                                           ; $6cba: $0c
	dec  bc                                          ; $6cbb: $0b
	inc  bc                                          ; $6cbc: $03
	dec  h                                           ; $6cbd: $25
	dec  h                                           ; $6cbe: $25
	dec  h                                           ; $6cbf: $25
	dec  h                                           ; $6cc0: $25
	dec  h                                           ; $6cc1: $25
	dec  h                                           ; $6cc2: $25
	dec  h                                           ; $6cc3: $25
	dec  b                                           ; $6cc4: $05
	dec  b                                           ; $6cc5: $05
	dec  b                                           ; $6cc6: $05
	dec  b                                           ; $6cc7: $05
	dec  b                                           ; $6cc8: $05
	dec  b                                           ; $6cc9: $05
	dec  b                                           ; $6cca: $05
	inc  bc                                          ; $6ccb: $03
	inc  bc                                          ; $6ccc: $03
	dec  bc                                          ; $6ccd: $0b
	dec  bc                                          ; $6cce: $0b
	dec  bc                                          ; $6ccf: $0b
	inc  bc                                          ; $6cd0: $03
	dec  h                                           ; $6cd1: $25
	dec  h                                           ; $6cd2: $25
	dec  h                                           ; $6cd3: $25
	dec  h                                           ; $6cd4: $25
	dec  h                                           ; $6cd5: $25
	dec  h                                           ; $6cd6: $25
	dec  h                                           ; $6cd7: $25
	dec  b                                           ; $6cd8: $05
	dec  b                                           ; $6cd9: $05
	dec  b                                           ; $6cda: $05
	dec  b                                           ; $6cdb: $05
	dec  b                                           ; $6cdc: $05
	dec  b                                           ; $6cdd: $05
	dec  b                                           ; $6cde: $05
	inc  bc                                          ; $6cdf: $03
	dec  bc                                          ; $6ce0: $0b
	dec  bc                                          ; $6ce1: $0b
	dec  bc                                          ; $6ce2: $0b
	dec  bc                                          ; $6ce3: $0b
	inc  bc                                          ; $6ce4: $03
	dec  h                                           ; $6ce5: $25
	dec  h                                           ; $6ce6: $25
	dec  h                                           ; $6ce7: $25
	dec  h                                           ; $6ce8: $25
	dec  h                                           ; $6ce9: $25
	dec  h                                           ; $6cea: $25
	dec  h                                           ; $6ceb: $25
	inc  bc                                          ; $6cec: $03
	inc  bc                                          ; $6ced: $03
	inc  bc                                          ; $6cee: $03
	inc  bc                                          ; $6cef: $03
	inc  bc                                          ; $6cf0: $03
	inc  bc                                          ; $6cf1: $03
	inc  bc                                          ; $6cf2: $03
	dec  bc                                          ; $6cf3: $0b
	dec  bc                                          ; $6cf4: $0b
	inc  c                                           ; $6cf5: $0c
	dec  bc                                          ; $6cf6: $0b
	dec  bc                                          ; $6cf7: $0b
	inc  bc                                          ; $6cf8: $03
	inc  hl                                          ; $6cf9: $23
	inc  hl                                          ; $6cfa: $23
	inc  hl                                          ; $6cfb: $23
	inc  hl                                          ; $6cfc: $23
	inc  hl                                          ; $6cfd: $23
	inc  hl                                          ; $6cfe: $23
	inc  hl                                          ; $6cff: $23
	inc  bc                                          ; $6d00: $03
	inc  bc                                          ; $6d01: $03
	inc  bc                                          ; $6d02: $03
	inc  bc                                          ; $6d03: $03
	inc  bc                                          ; $6d04: $03
	inc  bc                                          ; $6d05: $03
	inc  bc                                          ; $6d06: $03
	inc  bc                                          ; $6d07: $03
	dec  bc                                          ; $6d08: $0b
	dec  bc                                          ; $6d09: $0b
	dec  bc                                          ; $6d0a: $0b
	dec  bc                                          ; $6d0b: $0b
	inc  bc                                          ; $6d0c: $03
	inc  hl                                          ; $6d0d: $23
	inc  hl                                          ; $6d0e: $23
	inc  hl                                          ; $6d0f: $23
	inc  hl                                          ; $6d10: $23
	inc  hl                                          ; $6d11: $23
	inc  hl                                          ; $6d12: $23
	inc  hl                                          ; $6d13: $23
	inc  bc                                          ; $6d14: $03
	inc  bc                                          ; $6d15: $03
	inc  bc                                          ; $6d16: $03
	inc  bc                                          ; $6d17: $03
	inc  bc                                          ; $6d18: $03
	inc  bc                                          ; $6d19: $03
	inc  bc                                          ; $6d1a: $03
	inc  bc                                          ; $6d1b: $03
	dec  bc                                          ; $6d1c: $0b
	dec  bc                                          ; $6d1d: $0b
	dec  bc                                          ; $6d1e: $0b
	dec  bc                                          ; $6d1f: $0b
	inc  bc                                          ; $6d20: $03
	inc  hl                                          ; $6d21: $23
	inc  hl                                          ; $6d22: $23
	inc  hl                                          ; $6d23: $23
	inc  hl                                          ; $6d24: $23
	inc  hl                                          ; $6d25: $23
	inc  hl                                          ; $6d26: $23
	inc  hl                                          ; $6d27: $23
	inc  bc                                          ; $6d28: $03
	inc  bc                                          ; $6d29: $03
	inc  bc                                          ; $6d2a: $03
	inc  bc                                          ; $6d2b: $03
	inc  bc                                          ; $6d2c: $03
	inc  bc                                          ; $6d2d: $03
	inc  bc                                          ; $6d2e: $03
	inc  bc                                          ; $6d2f: $03
	dec  bc                                          ; $6d30: $0b
	dec  bc                                          ; $6d31: $0b
	dec  bc                                          ; $6d32: $0b
	dec  bc                                          ; $6d33: $0b
	inc  bc                                          ; $6d34: $03
	inc  bc                                          ; $6d35: $03
	inc  bc                                          ; $6d36: $03
	inc  bc                                          ; $6d37: $03
	inc  bc                                          ; $6d38: $03
	inc  bc                                          ; $6d39: $03
	inc  bc                                          ; $6d3a: $03
	inc  bc                                          ; $6d3b: $03
	inc  bc                                          ; $6d3c: $03
	inc  bc                                          ; $6d3d: $03
	inc  bc                                          ; $6d3e: $03
	inc  bc                                          ; $6d3f: $03
	inc  bc                                          ; $6d40: $03
	inc  bc                                          ; $6d41: $03
	inc  bc                                          ; $6d42: $03
	dec  bc                                          ; $6d43: $0b
	dec  bc                                          ; $6d44: $0b
	dec  bc                                          ; $6d45: $0b
	dec  bc                                          ; $6d46: $0b
	dec  bc                                          ; $6d47: $0b
	inc  bc                                          ; $6d48: $03
	inc  bc                                          ; $6d49: $03
	inc  bc                                          ; $6d4a: $03
	inc  bc                                          ; $6d4b: $03
	inc  bc                                          ; $6d4c: $03
	inc  bc                                          ; $6d4d: $03
	inc  bc                                          ; $6d4e: $03
	inc  bc                                          ; $6d4f: $03
	nop                                              ; $6d50: $00
	ld   bc, $0302                                   ; $6d51: $01 $02 $03
	inc  b                                           ; $6d54: $04
	inc  b                                           ; $6d55: $04
	inc  b                                           ; $6d56: $04
	rlca                                             ; $6d57: $07
	ld   [$0808], sp                                 ; $6d58: $08 $08 $08
	ld   [$040c], sp                                 ; $6d5b: $08 $0c $04
	inc  b                                           ; $6d5e: $04
	inc  b                                           ; $6d5f: $04
	inc  bc                                          ; $6d60: $03
	ld   [bc], a                                     ; $6d61: $02
	ld   bc, $1000                                   ; $6d62: $01 $00 $10
	ld   de, $0412                                   ; $6d65: $11 $12 $04
	inc  b                                           ; $6d68: $04
	inc  b                                           ; $6d69: $04
	inc  b                                           ; $6d6a: $04
	rla                                              ; $6d6b: $17
	jr   jr_082_6de9                                 ; $6d6c: $18 $7b

	ld   a, h                                        ; $6d6e: $7c
	dec  de                                          ; $6d6f: $1b
	inc  e                                           ; $6d70: $1c
	inc  b                                           ; $6d71: $04
	inc  b                                           ; $6d72: $04
	inc  b                                           ; $6d73: $04
	inc  b                                           ; $6d74: $04
	ld   [de], a                                     ; $6d75: $12
	ld   de, $2010                                   ; $6d76: $11 $10 $20
	ld   hl, $0404                                   ; $6d79: $21 $04 $04
	inc  b                                           ; $6d7c: $04
	inc  b                                           ; $6d7d: $04
	inc  b                                           ; $6d7e: $04
	daa                                              ; $6d7f: $27
	jr   z, @+$7f                                    ; $6d80: $28 $7d

	ld   a, [hl+]                                    ; $6d82: $2a
	dec  hl                                          ; $6d83: $2b
	inc  e                                           ; $6d84: $1c
	inc  b                                           ; $6d85: $04
	inc  b                                           ; $6d86: $04
	inc  b                                           ; $6d87: $04
	inc  b                                           ; $6d88: $04
	inc  b                                           ; $6d89: $04
	ld   hl, $3020                                   ; $6d8a: $21 $20 $30
	inc  b                                           ; $6d8d: $04
	inc  b                                           ; $6d8e: $04
	inc  b                                           ; $6d8f: $04
	inc  b                                           ; $6d90: $04
	inc  b                                           ; $6d91: $04
	inc  b                                           ; $6d92: $04
	scf                                              ; $6d93: $37
	jr   c, jr_082_6e14                              ; $6d94: $38 $7e

	ld   a, [hl-]                                    ; $6d96: $3a
	dec  sp                                          ; $6d97: $3b
	inc  e                                           ; $6d98: $1c
	inc  b                                           ; $6d99: $04
	inc  b                                           ; $6d9a: $04
	inc  b                                           ; $6d9b: $04
	inc  b                                           ; $6d9c: $04
	inc  b                                           ; $6d9d: $04
	inc  b                                           ; $6d9e: $04
	jr   nc, jr_082_6de1                             ; $6d9f: $30 $40

	ld   b, c                                        ; $6da1: $41
	ld   b, c                                        ; $6da2: $41
	ld   b, c                                        ; $6da3: $41
	ld   b, c                                        ; $6da4: $41
	ld   b, c                                        ; $6da5: $41
	ld   b, c                                        ; $6da6: $41
	ld   b, a                                        ; $6da7: $47
	ld   c, b                                        ; $6da8: $48
	ld   c, c                                        ; $6da9: $49
	ld   c, d                                        ; $6daa: $4a
	ld   c, e                                        ; $6dab: $4b
	ld   c, h                                        ; $6dac: $4c
	ld   b, c                                        ; $6dad: $41
	ld   b, c                                        ; $6dae: $41
	ld   b, c                                        ; $6daf: $41
	ld   b, c                                        ; $6db0: $41
	ld   b, c                                        ; $6db1: $41
	ld   b, c                                        ; $6db2: $41
	ld   b, b                                        ; $6db3: $40
	ld   d, b                                        ; $6db4: $50
	ld   d, c                                        ; $6db5: $51
	ld   d, d                                        ; $6db6: $52
	ld   d, e                                        ; $6db7: $53
	ld   d, h                                        ; $6db8: $54
	ld   d, l                                        ; $6db9: $55
	ld   d, [hl]                                     ; $6dba: $56
	ld   a, b                                        ; $6dbb: $78
	ld   a, c                                        ; $6dbc: $79
	ld   e, c                                        ; $6dbd: $59
	ld   e, d                                        ; $6dbe: $5a
	ld   a, a                                        ; $6dbf: $7f
	ld   e, h                                        ; $6dc0: $5c
	ld   d, [hl]                                     ; $6dc1: $56
	ld   d, l                                        ; $6dc2: $55
	ld   d, h                                        ; $6dc3: $54
	ld   d, e                                        ; $6dc4: $53
	ld   d, d                                        ; $6dc5: $52
	ld   d, c                                        ; $6dc6: $51
	ld   d, b                                        ; $6dc7: $50
	ld   h, b                                        ; $6dc8: $60
	ld   h, c                                        ; $6dc9: $61
	ld   h, d                                        ; $6dca: $62
	ld   h, e                                        ; $6dcb: $63
	ld   h, h                                        ; $6dcc: $64
	ld   h, l                                        ; $6dcd: $65
	ld   h, [hl]                                     ; $6dce: $66
	ld   h, a                                        ; $6dcf: $67
	ld   a, d                                        ; $6dd0: $7a
	ld   l, c                                        ; $6dd1: $69
	ld   l, d                                        ; $6dd2: $6a
	ld   l, e                                        ; $6dd3: $6b
	ld   l, h                                        ; $6dd4: $6c
	ld   h, [hl]                                     ; $6dd5: $66
	ld   h, l                                        ; $6dd6: $65
	ld   h, h                                        ; $6dd7: $64
	ld   h, e                                        ; $6dd8: $63
	ld   h, d                                        ; $6dd9: $62
	ld   h, c                                        ; $6dda: $61
	ld   h, b                                        ; $6ddb: $60
	ld   c, l                                        ; $6ddc: $4d
	ld   h, c                                        ; $6ddd: $61
	ld   c, [hl]                                     ; $6dde: $4e
	ld   c, a                                        ; $6ddf: $4f
	ld   h, h                                        ; $6de0: $64

jr_082_6de1:
	ld   h, l                                        ; $6de1: $65
	ld   h, [hl]                                     ; $6de2: $66
	ld   h, a                                        ; $6de3: $67
	ld   e, l                                        ; $6de4: $5d
	ld   e, [hl]                                     ; $6de5: $5e
	ld   e, a                                        ; $6de6: $5f
	ld   l, l                                        ; $6de7: $6d
	ld   l, h                                        ; $6de8: $6c

jr_082_6de9:
	ld   h, [hl]                                     ; $6de9: $66
	ld   h, l                                        ; $6dea: $65
	ld   h, h                                        ; $6deb: $64
	ld   c, a                                        ; $6dec: $4f
	ld   c, [hl]                                     ; $6ded: $4e
	ld   h, c                                        ; $6dee: $61
	ld   c, l                                        ; $6def: $4d
	dec  b                                           ; $6df0: $05
	ld   b, $09                                      ; $6df1: $06 $09
	ld   a, [bc]                                     ; $6df3: $0a
	dec  bc                                          ; $6df4: $0b
	dec  c                                           ; $6df5: $0d
	ld   c, $0f                                      ; $6df6: $0e $0f
	inc  de                                          ; $6df8: $13
	inc  d                                           ; $6df9: $14
	dec  d                                           ; $6dfa: $15
	ld   d, $1a                                      ; $6dfb: $16 $1a
	dec  e                                           ; $6dfd: $1d
	ld   e, $1f                                      ; $6dfe: $1e $1f
	ld   [hl+], a                                    ; $6e00: $22
	inc  hl                                          ; $6e01: $23
	inc  h                                           ; $6e02: $24
	dec  h                                           ; $6e03: $25
	ld   h, $2c                                      ; $6e04: $26 $2c
	dec  l                                           ; $6e06: $2d
	ld   l, $2f                                      ; $6e07: $2e $2f
	ld   sp, $3332                                   ; $6e09: $31 $32 $33
	inc  [hl]                                        ; $6e0c: $34
	dec  [hl]                                        ; $6e0d: $35
	ld   [hl], $3c                                   ; $6e0e: $36 $3c
	dec  a                                           ; $6e10: $3d
	ld   a, $3f                                      ; $6e11: $3e $3f
	ld   b, d                                        ; $6e13: $42

jr_082_6e14:
	ld   b, e                                        ; $6e14: $43
	ld   b, h                                        ; $6e15: $44
	ld   b, l                                        ; $6e16: $45
	ld   b, [hl]                                     ; $6e17: $46
	dec  b                                           ; $6e18: $05
	dec  b                                           ; $6e19: $05
	dec  b                                           ; $6e1a: $05
	dec  b                                           ; $6e1b: $05
	dec  b                                           ; $6e1c: $05
	dec  b                                           ; $6e1d: $05
	dec  b                                           ; $6e1e: $05
	inc  bc                                          ; $6e1f: $03
	inc  bc                                          ; $6e20: $03
	inc  bc                                          ; $6e21: $03
	inc  bc                                          ; $6e22: $03
	inc  bc                                          ; $6e23: $03
	inc  bc                                          ; $6e24: $03
	dec  h                                           ; $6e25: $25
	dec  h                                           ; $6e26: $25
	dec  h                                           ; $6e27: $25
	dec  h                                           ; $6e28: $25
	dec  h                                           ; $6e29: $25
	dec  h                                           ; $6e2a: $25
	dec  h                                           ; $6e2b: $25
	dec  b                                           ; $6e2c: $05
	dec  b                                           ; $6e2d: $05
	dec  b                                           ; $6e2e: $05
	dec  b                                           ; $6e2f: $05
	dec  b                                           ; $6e30: $05
	dec  b                                           ; $6e31: $05
	dec  b                                           ; $6e32: $05
	inc  bc                                          ; $6e33: $03
	inc  bc                                          ; $6e34: $03
	inc  bc                                          ; $6e35: $03
	inc  bc                                          ; $6e36: $03
	inc  bc                                          ; $6e37: $03
	inc  bc                                          ; $6e38: $03
	dec  h                                           ; $6e39: $25
	dec  h                                           ; $6e3a: $25
	dec  h                                           ; $6e3b: $25
	dec  h                                           ; $6e3c: $25
	dec  h                                           ; $6e3d: $25
	dec  h                                           ; $6e3e: $25
	dec  h                                           ; $6e3f: $25
	dec  b                                           ; $6e40: $05
	dec  b                                           ; $6e41: $05
	dec  b                                           ; $6e42: $05
	dec  b                                           ; $6e43: $05
	dec  b                                           ; $6e44: $05
	dec  b                                           ; $6e45: $05
	dec  b                                           ; $6e46: $05
	inc  bc                                          ; $6e47: $03
	inc  bc                                          ; $6e48: $03
	inc  bc                                          ; $6e49: $03
	inc  bc                                          ; $6e4a: $03
	inc  bc                                          ; $6e4b: $03
	inc  bc                                          ; $6e4c: $03
	dec  h                                           ; $6e4d: $25
	dec  h                                           ; $6e4e: $25
	dec  h                                           ; $6e4f: $25
	dec  h                                           ; $6e50: $25
	dec  h                                           ; $6e51: $25
	dec  h                                           ; $6e52: $25
	dec  h                                           ; $6e53: $25
	dec  b                                           ; $6e54: $05
	dec  b                                           ; $6e55: $05
	dec  b                                           ; $6e56: $05
	dec  b                                           ; $6e57: $05
	dec  b                                           ; $6e58: $05
	dec  b                                           ; $6e59: $05
	dec  b                                           ; $6e5a: $05
	inc  bc                                          ; $6e5b: $03
	inc  bc                                          ; $6e5c: $03
	inc  bc                                          ; $6e5d: $03
	inc  bc                                          ; $6e5e: $03
	inc  bc                                          ; $6e5f: $03
	inc  bc                                          ; $6e60: $03
	dec  h                                           ; $6e61: $25
	dec  h                                           ; $6e62: $25
	dec  h                                           ; $6e63: $25
	dec  h                                           ; $6e64: $25
	dec  h                                           ; $6e65: $25
	dec  h                                           ; $6e66: $25
	dec  h                                           ; $6e67: $25
	dec  b                                           ; $6e68: $05
	dec  b                                           ; $6e69: $05
	dec  b                                           ; $6e6a: $05
	dec  b                                           ; $6e6b: $05
	dec  b                                           ; $6e6c: $05
	dec  b                                           ; $6e6d: $05
	dec  b                                           ; $6e6e: $05
	inc  bc                                          ; $6e6f: $03
	inc  bc                                          ; $6e70: $03
	inc  bc                                          ; $6e71: $03
	inc  bc                                          ; $6e72: $03
	inc  bc                                          ; $6e73: $03
	inc  bc                                          ; $6e74: $03
	dec  h                                           ; $6e75: $25
	dec  h                                           ; $6e76: $25
	dec  h                                           ; $6e77: $25
	dec  h                                           ; $6e78: $25
	dec  h                                           ; $6e79: $25
	dec  h                                           ; $6e7a: $25
	dec  h                                           ; $6e7b: $25
	inc  bc                                          ; $6e7c: $03
	inc  bc                                          ; $6e7d: $03
	inc  bc                                          ; $6e7e: $03
	inc  bc                                          ; $6e7f: $03
	inc  bc                                          ; $6e80: $03
	inc  bc                                          ; $6e81: $03
	inc  bc                                          ; $6e82: $03
	inc  bc                                          ; $6e83: $03
	inc  bc                                          ; $6e84: $03
	inc  bc                                          ; $6e85: $03
	inc  bc                                          ; $6e86: $03
	inc  bc                                          ; $6e87: $03
	inc  bc                                          ; $6e88: $03
	inc  hl                                          ; $6e89: $23
	inc  hl                                          ; $6e8a: $23
	inc  hl                                          ; $6e8b: $23
	inc  hl                                          ; $6e8c: $23
	inc  hl                                          ; $6e8d: $23
	inc  hl                                          ; $6e8e: $23
	inc  hl                                          ; $6e8f: $23
	inc  bc                                          ; $6e90: $03
	inc  bc                                          ; $6e91: $03
	inc  bc                                          ; $6e92: $03
	inc  bc                                          ; $6e93: $03
	inc  bc                                          ; $6e94: $03
	inc  bc                                          ; $6e95: $03
	inc  bc                                          ; $6e96: $03
	inc  bc                                          ; $6e97: $03
	inc  bc                                          ; $6e98: $03
	inc  bc                                          ; $6e99: $03
	inc  bc                                          ; $6e9a: $03
	inc  bc                                          ; $6e9b: $03
	inc  bc                                          ; $6e9c: $03
	inc  hl                                          ; $6e9d: $23
	inc  hl                                          ; $6e9e: $23
	inc  hl                                          ; $6e9f: $23
	inc  hl                                          ; $6ea0: $23
	inc  hl                                          ; $6ea1: $23
	inc  hl                                          ; $6ea2: $23
	inc  hl                                          ; $6ea3: $23
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
	inc  hl                                          ; $6eb1: $23
	inc  hl                                          ; $6eb2: $23
	inc  hl                                          ; $6eb3: $23
	inc  hl                                          ; $6eb4: $23
	inc  hl                                          ; $6eb5: $23
	inc  hl                                          ; $6eb6: $23
	inc  hl                                          ; $6eb7: $23
	inc  bc                                          ; $6eb8: $03
	inc  bc                                          ; $6eb9: $03
	inc  bc                                          ; $6eba: $03
	inc  bc                                          ; $6ebb: $03
	inc  bc                                          ; $6ebc: $03
	inc  bc                                          ; $6ebd: $03
	inc  bc                                          ; $6ebe: $03
	inc  bc                                          ; $6ebf: $03
	inc  bc                                          ; $6ec0: $03
	inc  bc                                          ; $6ec1: $03
	inc  bc                                          ; $6ec2: $03
	inc  bc                                          ; $6ec3: $03
	inc  bc                                          ; $6ec4: $03
	inc  bc                                          ; $6ec5: $03
	inc  bc                                          ; $6ec6: $03
	inc  bc                                          ; $6ec7: $03
	inc  bc                                          ; $6ec8: $03
	inc  bc                                          ; $6ec9: $03
	inc  bc                                          ; $6eca: $03
	inc  bc                                          ; $6ecb: $03
	inc  bc                                          ; $6ecc: $03
	inc  bc                                          ; $6ecd: $03
	inc  bc                                          ; $6ece: $03
	inc  bc                                          ; $6ecf: $03
	inc  bc                                          ; $6ed0: $03
	inc  bc                                          ; $6ed1: $03
	inc  bc                                          ; $6ed2: $03
	inc  bc                                          ; $6ed3: $03
	inc  bc                                          ; $6ed4: $03
	inc  bc                                          ; $6ed5: $03
	inc  bc                                          ; $6ed6: $03
	inc  bc                                          ; $6ed7: $03
	inc  bc                                          ; $6ed8: $03
	inc  bc                                          ; $6ed9: $03
	inc  bc                                          ; $6eda: $03
	inc  bc                                          ; $6edb: $03
	inc  bc                                          ; $6edc: $03
	inc  bc                                          ; $6edd: $03
	inc  bc                                          ; $6ede: $03
	inc  bc                                          ; $6edf: $03
	nop                                              ; $6ee0: $00
	ld   bc, $0302                                   ; $6ee1: $01 $02 $03
	inc  b                                           ; $6ee4: $04
	inc  b                                           ; $6ee5: $04
	inc  b                                           ; $6ee6: $04
	rlca                                             ; $6ee7: $07
	ld   [$0a09], sp                                 ; $6ee8: $08 $09 $0a
	dec  bc                                          ; $6eeb: $0b
	inc  c                                           ; $6eec: $0c
	inc  b                                           ; $6eed: $04
	inc  b                                           ; $6eee: $04
	inc  b                                           ; $6eef: $04
	inc  bc                                          ; $6ef0: $03
	ld   [bc], a                                     ; $6ef1: $02
	ld   bc, $1000                                   ; $6ef2: $01 $00 $10
	ld   de, $0412                                   ; $6ef5: $11 $12 $04
	inc  b                                           ; $6ef8: $04
	inc  b                                           ; $6ef9: $04
	inc  b                                           ; $6efa: $04
	rla                                              ; $6efb: $17
	jr   jr_082_6f17                                 ; $6efc: $18 $19

	ld   a, [de]                                     ; $6efe: $1a
	dec  de                                          ; $6eff: $1b
	inc  e                                           ; $6f00: $1c
	inc  b                                           ; $6f01: $04
	inc  b                                           ; $6f02: $04
	inc  b                                           ; $6f03: $04
	inc  b                                           ; $6f04: $04
	ld   [de], a                                     ; $6f05: $12
	ld   de, $2010                                   ; $6f06: $11 $10 $20
	ld   hl, $0404                                   ; $6f09: $21 $04 $04
	inc  b                                           ; $6f0c: $04
	inc  b                                           ; $6f0d: $04
	inc  b                                           ; $6f0e: $04
	daa                                              ; $6f0f: $27
	jr   z, @+$72                                    ; $6f10: $28 $70

	ld   a, [hl+]                                    ; $6f12: $2a
	dec  hl                                          ; $6f13: $2b
	inc  e                                           ; $6f14: $1c
	inc  b                                           ; $6f15: $04
	inc  b                                           ; $6f16: $04

jr_082_6f17:
	inc  b                                           ; $6f17: $04
	inc  b                                           ; $6f18: $04
	inc  b                                           ; $6f19: $04
	ld   hl, $3020                                   ; $6f1a: $21 $20 $30
	inc  b                                           ; $6f1d: $04
	inc  b                                           ; $6f1e: $04
	inc  b                                           ; $6f1f: $04
	inc  b                                           ; $6f20: $04
	inc  b                                           ; $6f21: $04
	inc  b                                           ; $6f22: $04
	scf                                              ; $6f23: $37
	ld   [hl], c                                     ; $6f24: $71
	ld   [hl], d                                     ; $6f25: $72
	ld   a, [hl-]                                    ; $6f26: $3a
	dec  hl                                          ; $6f27: $2b
	inc  e                                           ; $6f28: $1c
	inc  b                                           ; $6f29: $04
	inc  b                                           ; $6f2a: $04
	inc  b                                           ; $6f2b: $04
	inc  b                                           ; $6f2c: $04
	inc  b                                           ; $6f2d: $04
	inc  b                                           ; $6f2e: $04
	jr   nc, jr_082_6f71                             ; $6f2f: $30 $40

	ld   b, c                                        ; $6f31: $41
	ld   b, c                                        ; $6f32: $41
	ld   b, c                                        ; $6f33: $41
	ld   b, c                                        ; $6f34: $41
	ld   b, c                                        ; $6f35: $41
	ld   b, c                                        ; $6f36: $41
	ld   b, a                                        ; $6f37: $47
	ld   c, b                                        ; $6f38: $48
	ld   c, c                                        ; $6f39: $49
	ld   c, d                                        ; $6f3a: $4a
	ld   c, e                                        ; $6f3b: $4b
	ld   c, h                                        ; $6f3c: $4c
	ld   b, c                                        ; $6f3d: $41
	ld   b, c                                        ; $6f3e: $41
	ld   b, c                                        ; $6f3f: $41
	ld   b, c                                        ; $6f40: $41
	ld   b, c                                        ; $6f41: $41
	ld   b, c                                        ; $6f42: $41
	ld   b, b                                        ; $6f43: $40
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
	ld   [hl], e                                     ; $6f4e: $73
	ld   e, e                                        ; $6f4f: $5b
	ld   e, h                                        ; $6f50: $5c
	ld   d, [hl]                                     ; $6f51: $56
	ld   d, l                                        ; $6f52: $55
	ld   d, h                                        ; $6f53: $54
	ld   d, e                                        ; $6f54: $53
	ld   d, d                                        ; $6f55: $52
	ld   d, c                                        ; $6f56: $51
	ld   d, b                                        ; $6f57: $50
	ld   h, b                                        ; $6f58: $60
	ld   h, c                                        ; $6f59: $61
	ld   h, d                                        ; $6f5a: $62
	ld   h, e                                        ; $6f5b: $63
	ld   h, h                                        ; $6f5c: $64
	ld   h, l                                        ; $6f5d: $65
	ld   h, [hl]                                     ; $6f5e: $66
	ld   h, a                                        ; $6f5f: $67
	ld   l, b                                        ; $6f60: $68
	ld   l, c                                        ; $6f61: $69
	ld   [hl], h                                     ; $6f62: $74
	ld   l, e                                        ; $6f63: $6b
	ld   l, h                                        ; $6f64: $6c
	ld   h, [hl]                                     ; $6f65: $66
	ld   h, l                                        ; $6f66: $65
	ld   h, h                                        ; $6f67: $64
	ld   h, e                                        ; $6f68: $63
	ld   h, d                                        ; $6f69: $62
	ld   h, c                                        ; $6f6a: $61
	ld   h, b                                        ; $6f6b: $60
	ld   e, l                                        ; $6f6c: $5d
	ld   h, c                                        ; $6f6d: $61
	ld   e, [hl]                                     ; $6f6e: $5e
	ld   e, a                                        ; $6f6f: $5f
	ld   h, h                                        ; $6f70: $64

jr_082_6f71:
	ld   h, l                                        ; $6f71: $65
	ld   h, [hl]                                     ; $6f72: $66
	ld   h, a                                        ; $6f73: $67
	ld   l, l                                        ; $6f74: $6d
	ld   l, [hl]                                     ; $6f75: $6e
	ld   l, a                                        ; $6f76: $6f
	ld   l, e                                        ; $6f77: $6b
	ld   l, h                                        ; $6f78: $6c
	ld   h, [hl]                                     ; $6f79: $66
	ld   h, l                                        ; $6f7a: $65
	ld   h, h                                        ; $6f7b: $64
	ld   e, a                                        ; $6f7c: $5f
	ld   e, [hl]                                     ; $6f7d: $5e
	ld   h, c                                        ; $6f7e: $61
	ld   e, l                                        ; $6f7f: $5d
	dec  b                                           ; $6f80: $05
	ld   b, $0d                                      ; $6f81: $06 $0d
	ld   c, $0f                                      ; $6f83: $0e $0f
	inc  de                                          ; $6f85: $13
	inc  d                                           ; $6f86: $14
	dec  d                                           ; $6f87: $15
	ld   d, $1d                                      ; $6f88: $16 $1d
	ld   e, $1f                                      ; $6f8a: $1e $1f
	ld   [hl+], a                                    ; $6f8c: $22
	inc  hl                                          ; $6f8d: $23
	inc  h                                           ; $6f8e: $24
	dec  h                                           ; $6f8f: $25
	ld   h, $2c                                      ; $6f90: $26 $2c
	dec  l                                           ; $6f92: $2d
	ld   l, $2f                                      ; $6f93: $2e $2f
	ld   sp, $3332                                   ; $6f95: $31 $32 $33
	inc  [hl]                                        ; $6f98: $34
	dec  [hl]                                        ; $6f99: $35
	ld   [hl], $3b                                   ; $6f9a: $36 $3b
	inc  a                                           ; $6f9c: $3c
	dec  a                                           ; $6f9d: $3d
	ld   a, $3f                                      ; $6f9e: $3e $3f
	ld   b, d                                        ; $6fa0: $42
	ld   b, e                                        ; $6fa1: $43
	ld   b, h                                        ; $6fa2: $44
	ld   b, l                                        ; $6fa3: $45
	ld   b, [hl]                                     ; $6fa4: $46
	ld   c, l                                        ; $6fa5: $4d
	ld   c, [hl]                                     ; $6fa6: $4e
	ld   c, a                                        ; $6fa7: $4f
	dec  b                                           ; $6fa8: $05
	dec  b                                           ; $6fa9: $05
	dec  b                                           ; $6faa: $05
	dec  b                                           ; $6fab: $05
	dec  b                                           ; $6fac: $05
	dec  b                                           ; $6fad: $05
	dec  b                                           ; $6fae: $05
	inc  bc                                          ; $6faf: $03
	inc  bc                                          ; $6fb0: $03
	inc  bc                                          ; $6fb1: $03
	inc  bc                                          ; $6fb2: $03
	inc  bc                                          ; $6fb3: $03
	inc  bc                                          ; $6fb4: $03
	dec  h                                           ; $6fb5: $25
	dec  h                                           ; $6fb6: $25
	dec  h                                           ; $6fb7: $25
	dec  h                                           ; $6fb8: $25
	dec  h                                           ; $6fb9: $25
	dec  h                                           ; $6fba: $25
	dec  h                                           ; $6fbb: $25
	dec  b                                           ; $6fbc: $05
	dec  b                                           ; $6fbd: $05
	dec  b                                           ; $6fbe: $05
	dec  b                                           ; $6fbf: $05
	dec  b                                           ; $6fc0: $05
	dec  b                                           ; $6fc1: $05
	dec  b                                           ; $6fc2: $05
	inc  bc                                          ; $6fc3: $03
	inc  bc                                          ; $6fc4: $03
	inc  bc                                          ; $6fc5: $03
	inc  bc                                          ; $6fc6: $03
	inc  bc                                          ; $6fc7: $03
	inc  bc                                          ; $6fc8: $03
	dec  h                                           ; $6fc9: $25
	dec  h                                           ; $6fca: $25
	dec  h                                           ; $6fcb: $25
	dec  h                                           ; $6fcc: $25
	dec  h                                           ; $6fcd: $25
	dec  h                                           ; $6fce: $25
	dec  h                                           ; $6fcf: $25
	dec  b                                           ; $6fd0: $05
	dec  b                                           ; $6fd1: $05
	dec  b                                           ; $6fd2: $05
	dec  b                                           ; $6fd3: $05
	dec  b                                           ; $6fd4: $05
	dec  b                                           ; $6fd5: $05
	dec  b                                           ; $6fd6: $05
	inc  bc                                          ; $6fd7: $03
	inc  bc                                          ; $6fd8: $03
	inc  bc                                          ; $6fd9: $03
	inc  bc                                          ; $6fda: $03
	inc  bc                                          ; $6fdb: $03
	inc  bc                                          ; $6fdc: $03
	dec  h                                           ; $6fdd: $25
	dec  h                                           ; $6fde: $25
	dec  h                                           ; $6fdf: $25
	dec  h                                           ; $6fe0: $25
	dec  h                                           ; $6fe1: $25
	dec  h                                           ; $6fe2: $25
	dec  h                                           ; $6fe3: $25
	dec  b                                           ; $6fe4: $05
	dec  b                                           ; $6fe5: $05
	dec  b                                           ; $6fe6: $05
	dec  b                                           ; $6fe7: $05
	dec  b                                           ; $6fe8: $05
	dec  b                                           ; $6fe9: $05
	dec  b                                           ; $6fea: $05
	inc  bc                                          ; $6feb: $03
	inc  bc                                          ; $6fec: $03
	inc  bc                                          ; $6fed: $03
	inc  bc                                          ; $6fee: $03
	inc  bc                                          ; $6fef: $03
	inc  bc                                          ; $6ff0: $03
	dec  h                                           ; $6ff1: $25
	dec  h                                           ; $6ff2: $25
	dec  h                                           ; $6ff3: $25
	dec  h                                           ; $6ff4: $25
	dec  h                                           ; $6ff5: $25
	dec  h                                           ; $6ff6: $25
	dec  h                                           ; $6ff7: $25
	dec  b                                           ; $6ff8: $05
	dec  b                                           ; $6ff9: $05
	dec  b                                           ; $6ffa: $05
	dec  b                                           ; $6ffb: $05
	dec  b                                           ; $6ffc: $05
	dec  b                                           ; $6ffd: $05
	dec  b                                           ; $6ffe: $05
	inc  bc                                          ; $6fff: $03
	inc  bc                                          ; $7000: $03
	inc  bc                                          ; $7001: $03
	inc  bc                                          ; $7002: $03
	inc  bc                                          ; $7003: $03
	inc  bc                                          ; $7004: $03
	dec  h                                           ; $7005: $25
	dec  h                                           ; $7006: $25
	dec  h                                           ; $7007: $25
	dec  h                                           ; $7008: $25
	dec  h                                           ; $7009: $25
	dec  h                                           ; $700a: $25
	dec  h                                           ; $700b: $25
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
	inc  bc                                          ; $7016: $03
	inc  bc                                          ; $7017: $03
	inc  bc                                          ; $7018: $03
	inc  hl                                          ; $7019: $23
	inc  hl                                          ; $701a: $23
	inc  hl                                          ; $701b: $23
	inc  hl                                          ; $701c: $23
	inc  hl                                          ; $701d: $23
	inc  hl                                          ; $701e: $23
	inc  hl                                          ; $701f: $23
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
	inc  bc                                          ; $702a: $03
	inc  bc                                          ; $702b: $03
	inc  bc                                          ; $702c: $03
	inc  hl                                          ; $702d: $23
	inc  hl                                          ; $702e: $23
	inc  hl                                          ; $702f: $23
	inc  hl                                          ; $7030: $23
	inc  hl                                          ; $7031: $23
	inc  hl                                          ; $7032: $23
	inc  hl                                          ; $7033: $23
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
	inc  hl                                          ; $7041: $23
	inc  hl                                          ; $7042: $23
	inc  hl                                          ; $7043: $23
	inc  hl                                          ; $7044: $23
	inc  hl                                          ; $7045: $23
	inc  hl                                          ; $7046: $23
	inc  hl                                          ; $7047: $23
	inc  bc                                          ; $7048: $03
	inc  bc                                          ; $7049: $03
	inc  bc                                          ; $704a: $03
	inc  bc                                          ; $704b: $03
	inc  bc                                          ; $704c: $03
	inc  bc                                          ; $704d: $03
	inc  bc                                          ; $704e: $03
	inc  bc                                          ; $704f: $03
	inc  bc                                          ; $7050: $03
	inc  bc                                          ; $7051: $03
	inc  bc                                          ; $7052: $03
	inc  bc                                          ; $7053: $03
	inc  bc                                          ; $7054: $03
	inc  bc                                          ; $7055: $03
	inc  bc                                          ; $7056: $03
	inc  bc                                          ; $7057: $03
	inc  bc                                          ; $7058: $03
	inc  bc                                          ; $7059: $03
	inc  bc                                          ; $705a: $03
	inc  bc                                          ; $705b: $03
	inc  bc                                          ; $705c: $03
	inc  bc                                          ; $705d: $03
	inc  bc                                          ; $705e: $03
	inc  bc                                          ; $705f: $03
	inc  bc                                          ; $7060: $03
	inc  bc                                          ; $7061: $03
	inc  bc                                          ; $7062: $03
	inc  bc                                          ; $7063: $03
	inc  bc                                          ; $7064: $03
	inc  bc                                          ; $7065: $03
	inc  bc                                          ; $7066: $03
	inc  bc                                          ; $7067: $03
	inc  bc                                          ; $7068: $03
	inc  bc                                          ; $7069: $03
	inc  bc                                          ; $706a: $03
	inc  bc                                          ; $706b: $03
	inc  bc                                          ; $706c: $03
	inc  bc                                          ; $706d: $03
	inc  bc                                          ; $706e: $03
	inc  bc                                          ; $706f: $03
	nop                                              ; $7070: $00
	ld   bc, $0302                                   ; $7071: $01 $02 $03
	inc  b                                           ; $7074: $04
	inc  b                                           ; $7075: $04
	inc  b                                           ; $7076: $04
	rlca                                             ; $7077: $07
	ld   [$0808], sp                                 ; $7078: $08 $08 $08
	ld   [$040c], sp                                 ; $707b: $08 $0c $04
	inc  b                                           ; $707e: $04
	inc  b                                           ; $707f: $04
	inc  bc                                          ; $7080: $03
	ld   [bc], a                                     ; $7081: $02
	ld   bc, $1000                                   ; $7082: $01 $00 $10
	ld   de, $0412                                   ; $7085: $11 $12 $04
	inc  b                                           ; $7088: $04
	inc  b                                           ; $7089: $04
	inc  b                                           ; $708a: $04
	rla                                              ; $708b: $17
	jr   jr_082_708e                                 ; $708c: $18 $00

jr_082_708e:
	ld   bc, $1c1b                                   ; $708e: $01 $1b $1c
	inc  b                                           ; $7091: $04
	inc  b                                           ; $7092: $04
	inc  b                                           ; $7093: $04
	inc  b                                           ; $7094: $04
	ld   [de], a                                     ; $7095: $12
	ld   de, $2010                                   ; $7096: $11 $10 $20
	ld   hl, $0404                                   ; $7099: $21 $04 $04
	inc  b                                           ; $709c: $04
	inc  b                                           ; $709d: $04
	inc  b                                           ; $709e: $04
	daa                                              ; $709f: $27
	jr   z, jr_082_70a4                              ; $70a0: $28 $02

	inc  bc                                          ; $70a2: $03
	dec  hl                                          ; $70a3: $2b

jr_082_70a4:
	inc  e                                           ; $70a4: $1c
	inc  b                                           ; $70a5: $04
	inc  b                                           ; $70a6: $04
	inc  b                                           ; $70a7: $04
	inc  b                                           ; $70a8: $04
	inc  b                                           ; $70a9: $04
	ld   hl, $3020                                   ; $70aa: $21 $20 $30
	inc  b                                           ; $70ad: $04
	inc  b                                           ; $70ae: $04
	inc  b                                           ; $70af: $04
	inc  b                                           ; $70b0: $04
	inc  b                                           ; $70b1: $04
	inc  b                                           ; $70b2: $04
	scf                                              ; $70b3: $37
	jr   c, jr_082_70ba                              ; $70b4: $38 $04

	dec  b                                           ; $70b6: $05
	dec  sp                                          ; $70b7: $3b
	inc  e                                           ; $70b8: $1c
	inc  b                                           ; $70b9: $04

jr_082_70ba:
	inc  b                                           ; $70ba: $04
	inc  b                                           ; $70bb: $04
	inc  b                                           ; $70bc: $04
	inc  b                                           ; $70bd: $04
	inc  b                                           ; $70be: $04
	jr   nc, jr_082_7101                             ; $70bf: $30 $40

	ld   b, c                                        ; $70c1: $41
	ld   b, c                                        ; $70c2: $41
	ld   b, c                                        ; $70c3: $41
	ld   b, c                                        ; $70c4: $41
	ld   b, c                                        ; $70c5: $41
	ld   b, c                                        ; $70c6: $41
	ld   b, a                                        ; $70c7: $47
	ld   c, b                                        ; $70c8: $48
	ld   c, c                                        ; $70c9: $49
	ld   c, d                                        ; $70ca: $4a
	ld   c, e                                        ; $70cb: $4b
	ld   c, h                                        ; $70cc: $4c
	ld   b, c                                        ; $70cd: $41
	ld   b, c                                        ; $70ce: $41
	ld   b, c                                        ; $70cf: $41
	ld   b, c                                        ; $70d0: $41
	ld   b, c                                        ; $70d1: $41
	ld   b, c                                        ; $70d2: $41
	ld   b, b                                        ; $70d3: $40
	ld   d, b                                        ; $70d4: $50
	ld   d, c                                        ; $70d5: $51
	ld   d, d                                        ; $70d6: $52
	ld   d, e                                        ; $70d7: $53
	ld   d, h                                        ; $70d8: $54
	ld   d, l                                        ; $70d9: $55
	ld   d, [hl]                                     ; $70da: $56
	ld   a, b                                        ; $70db: $78
	ld   a, c                                        ; $70dc: $79
	ld   e, c                                        ; $70dd: $59
	ld   e, d                                        ; $70de: $5a
	ld   a, a                                        ; $70df: $7f
	ld   e, h                                        ; $70e0: $5c
	ld   d, [hl]                                     ; $70e1: $56
	ld   d, l                                        ; $70e2: $55
	ld   d, h                                        ; $70e3: $54
	ld   d, e                                        ; $70e4: $53
	ld   d, d                                        ; $70e5: $52
	ld   d, c                                        ; $70e6: $51
	ld   d, b                                        ; $70e7: $50
	ld   h, b                                        ; $70e8: $60
	ld   h, c                                        ; $70e9: $61
	ld   h, d                                        ; $70ea: $62
	ld   h, e                                        ; $70eb: $63
	ld   h, h                                        ; $70ec: $64
	ld   h, l                                        ; $70ed: $65
	ld   h, [hl]                                     ; $70ee: $66
	ld   h, a                                        ; $70ef: $67
	ld   a, d                                        ; $70f0: $7a
	ld   l, c                                        ; $70f1: $69
	ld   l, d                                        ; $70f2: $6a
	ld   l, e                                        ; $70f3: $6b
	ld   l, h                                        ; $70f4: $6c
	ld   h, [hl]                                     ; $70f5: $66
	ld   h, l                                        ; $70f6: $65
	ld   h, h                                        ; $70f7: $64
	ld   h, e                                        ; $70f8: $63
	ld   h, d                                        ; $70f9: $62
	ld   h, c                                        ; $70fa: $61
	ld   h, b                                        ; $70fb: $60
	ld   c, l                                        ; $70fc: $4d
	ld   h, c                                        ; $70fd: $61
	ld   c, [hl]                                     ; $70fe: $4e
	ld   c, a                                        ; $70ff: $4f
	ld   h, h                                        ; $7100: $64

jr_082_7101:
	ld   h, l                                        ; $7101: $65
	ld   h, [hl]                                     ; $7102: $66
	ld   h, a                                        ; $7103: $67
	ld   e, l                                        ; $7104: $5d
	ld   e, [hl]                                     ; $7105: $5e
	ld   e, a                                        ; $7106: $5f
	ld   l, l                                        ; $7107: $6d
	ld   l, h                                        ; $7108: $6c
	ld   h, [hl]                                     ; $7109: $66
	ld   h, l                                        ; $710a: $65
	ld   h, h                                        ; $710b: $64
	ld   c, a                                        ; $710c: $4f
	ld   c, [hl]                                     ; $710d: $4e
	ld   h, c                                        ; $710e: $61
	ld   c, l                                        ; $710f: $4d
	dec  b                                           ; $7110: $05
	ld   b, $09                                      ; $7111: $06 $09
	ld   a, [bc]                                     ; $7113: $0a
	dec  bc                                          ; $7114: $0b
	dec  c                                           ; $7115: $0d
	ld   c, $0f                                      ; $7116: $0e $0f
	inc  de                                          ; $7118: $13
	inc  d                                           ; $7119: $14
	dec  d                                           ; $711a: $15
	ld   d, $1a                                      ; $711b: $16 $1a
	dec  e                                           ; $711d: $1d
	ld   e, $1f                                      ; $711e: $1e $1f
	ld   [hl+], a                                    ; $7120: $22
	inc  hl                                          ; $7121: $23
	inc  h                                           ; $7122: $24
	dec  h                                           ; $7123: $25
	ld   h, $2c                                      ; $7124: $26 $2c
	dec  l                                           ; $7126: $2d
	ld   l, $2f                                      ; $7127: $2e $2f
	ld   sp, $3332                                   ; $7129: $31 $32 $33
	inc  [hl]                                        ; $712c: $34
	dec  [hl]                                        ; $712d: $35
	ld   [hl], $3c                                   ; $712e: $36 $3c
	dec  a                                           ; $7130: $3d
	ld   a, $3f                                      ; $7131: $3e $3f
	ld   b, d                                        ; $7133: $42
	ld   b, e                                        ; $7134: $43
	ld   b, h                                        ; $7135: $44
	ld   b, l                                        ; $7136: $45
	ld   b, [hl]                                     ; $7137: $46
	dec  b                                           ; $7138: $05
	dec  b                                           ; $7139: $05
	dec  b                                           ; $713a: $05
	dec  b                                           ; $713b: $05
	dec  b                                           ; $713c: $05
	dec  b                                           ; $713d: $05
	dec  b                                           ; $713e: $05
	inc  bc                                          ; $713f: $03
	inc  bc                                          ; $7140: $03
	inc  bc                                          ; $7141: $03
	inc  bc                                          ; $7142: $03
	inc  bc                                          ; $7143: $03
	inc  bc                                          ; $7144: $03
	dec  h                                           ; $7145: $25
	dec  h                                           ; $7146: $25
	dec  h                                           ; $7147: $25
	dec  h                                           ; $7148: $25
	dec  h                                           ; $7149: $25
	dec  h                                           ; $714a: $25
	dec  h                                           ; $714b: $25
	dec  b                                           ; $714c: $05
	dec  b                                           ; $714d: $05
	dec  b                                           ; $714e: $05
	dec  b                                           ; $714f: $05
	dec  b                                           ; $7150: $05
	dec  b                                           ; $7151: $05
	dec  b                                           ; $7152: $05
	inc  bc                                          ; $7153: $03
	inc  bc                                          ; $7154: $03
	dec  bc                                          ; $7155: $0b
	dec  bc                                          ; $7156: $0b
	inc  bc                                          ; $7157: $03
	inc  bc                                          ; $7158: $03
	dec  h                                           ; $7159: $25
	dec  h                                           ; $715a: $25
	dec  h                                           ; $715b: $25
	dec  h                                           ; $715c: $25
	dec  h                                           ; $715d: $25
	dec  h                                           ; $715e: $25
	dec  h                                           ; $715f: $25
	dec  b                                           ; $7160: $05
	dec  b                                           ; $7161: $05
	dec  b                                           ; $7162: $05
	dec  b                                           ; $7163: $05
	dec  b                                           ; $7164: $05
	dec  b                                           ; $7165: $05
	dec  b                                           ; $7166: $05
	inc  bc                                          ; $7167: $03
	inc  bc                                          ; $7168: $03
	dec  bc                                          ; $7169: $0b
	dec  bc                                          ; $716a: $0b
	inc  bc                                          ; $716b: $03
	inc  bc                                          ; $716c: $03
	dec  h                                           ; $716d: $25
	dec  h                                           ; $716e: $25
	dec  h                                           ; $716f: $25
	dec  h                                           ; $7170: $25
	dec  h                                           ; $7171: $25
	dec  h                                           ; $7172: $25
	dec  h                                           ; $7173: $25
	dec  b                                           ; $7174: $05
	dec  b                                           ; $7175: $05
	dec  b                                           ; $7176: $05
	dec  b                                           ; $7177: $05
	dec  b                                           ; $7178: $05
	dec  b                                           ; $7179: $05
	dec  b                                           ; $717a: $05
	inc  bc                                          ; $717b: $03
	inc  bc                                          ; $717c: $03
	dec  bc                                          ; $717d: $0b
	dec  bc                                          ; $717e: $0b
	inc  bc                                          ; $717f: $03
	inc  bc                                          ; $7180: $03
	dec  h                                           ; $7181: $25
	dec  h                                           ; $7182: $25
	dec  h                                           ; $7183: $25
	dec  h                                           ; $7184: $25
	dec  h                                           ; $7185: $25
	dec  h                                           ; $7186: $25
	dec  h                                           ; $7187: $25
	dec  b                                           ; $7188: $05
	dec  b                                           ; $7189: $05
	dec  b                                           ; $718a: $05
	dec  b                                           ; $718b: $05
	dec  b                                           ; $718c: $05
	dec  b                                           ; $718d: $05
	dec  b                                           ; $718e: $05
	inc  bc                                          ; $718f: $03
	inc  bc                                          ; $7190: $03
	inc  bc                                          ; $7191: $03
	inc  bc                                          ; $7192: $03
	inc  bc                                          ; $7193: $03
	inc  bc                                          ; $7194: $03
	dec  h                                           ; $7195: $25
	dec  h                                           ; $7196: $25
	dec  h                                           ; $7197: $25
	dec  h                                           ; $7198: $25
	dec  h                                           ; $7199: $25
	dec  h                                           ; $719a: $25
	dec  h                                           ; $719b: $25
	inc  bc                                          ; $719c: $03
	inc  bc                                          ; $719d: $03
	inc  bc                                          ; $719e: $03
	inc  bc                                          ; $719f: $03
	inc  bc                                          ; $71a0: $03
	inc  bc                                          ; $71a1: $03
	inc  bc                                          ; $71a2: $03
	inc  bc                                          ; $71a3: $03
	inc  bc                                          ; $71a4: $03
	inc  bc                                          ; $71a5: $03
	inc  bc                                          ; $71a6: $03
	inc  bc                                          ; $71a7: $03
	inc  bc                                          ; $71a8: $03
	inc  hl                                          ; $71a9: $23
	inc  hl                                          ; $71aa: $23
	inc  hl                                          ; $71ab: $23
	inc  hl                                          ; $71ac: $23
	inc  hl                                          ; $71ad: $23
	inc  hl                                          ; $71ae: $23
	inc  hl                                          ; $71af: $23
	inc  bc                                          ; $71b0: $03
	inc  bc                                          ; $71b1: $03
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
	inc  bc                                          ; $71bc: $03
	inc  hl                                          ; $71bd: $23
	inc  hl                                          ; $71be: $23
	inc  hl                                          ; $71bf: $23
	inc  hl                                          ; $71c0: $23
	inc  hl                                          ; $71c1: $23
	inc  hl                                          ; $71c2: $23
	inc  hl                                          ; $71c3: $23
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
	inc  hl                                          ; $71d1: $23
	inc  hl                                          ; $71d2: $23
	inc  hl                                          ; $71d3: $23
	inc  hl                                          ; $71d4: $23
	inc  hl                                          ; $71d5: $23
	inc  hl                                          ; $71d6: $23
	inc  hl                                          ; $71d7: $23
	inc  bc                                          ; $71d8: $03
	inc  bc                                          ; $71d9: $03
	inc  bc                                          ; $71da: $03
	inc  bc                                          ; $71db: $03
	inc  bc                                          ; $71dc: $03
	inc  bc                                          ; $71dd: $03
	inc  bc                                          ; $71de: $03
	inc  bc                                          ; $71df: $03
	inc  bc                                          ; $71e0: $03
	inc  bc                                          ; $71e1: $03
	inc  bc                                          ; $71e2: $03
	inc  bc                                          ; $71e3: $03
	inc  bc                                          ; $71e4: $03
	inc  bc                                          ; $71e5: $03
	inc  bc                                          ; $71e6: $03
	inc  bc                                          ; $71e7: $03
	inc  bc                                          ; $71e8: $03
	inc  bc                                          ; $71e9: $03
	inc  bc                                          ; $71ea: $03
	inc  bc                                          ; $71eb: $03
	inc  bc                                          ; $71ec: $03
	inc  bc                                          ; $71ed: $03
	inc  bc                                          ; $71ee: $03
	inc  bc                                          ; $71ef: $03
	inc  bc                                          ; $71f0: $03
	inc  bc                                          ; $71f1: $03
	inc  bc                                          ; $71f2: $03
	inc  bc                                          ; $71f3: $03
	inc  bc                                          ; $71f4: $03
	inc  bc                                          ; $71f5: $03
	inc  bc                                          ; $71f6: $03
	inc  bc                                          ; $71f7: $03
	inc  bc                                          ; $71f8: $03
	inc  bc                                          ; $71f9: $03
	inc  bc                                          ; $71fa: $03
	inc  bc                                          ; $71fb: $03
	inc  bc                                          ; $71fc: $03
	inc  bc                                          ; $71fd: $03
	inc  bc                                          ; $71fe: $03
	inc  bc                                          ; $71ff: $03
	nop                                              ; $7200: $00
	ld   bc, $0302                                   ; $7201: $01 $02 $03
	inc  b                                           ; $7204: $04
	inc  b                                           ; $7205: $04
	inc  b                                           ; $7206: $04
	rlca                                             ; $7207: $07
	ld   [$0a09], sp                                 ; $7208: $08 $09 $0a
	dec  bc                                          ; $720b: $0b
	inc  c                                           ; $720c: $0c
	inc  b                                           ; $720d: $04
	inc  b                                           ; $720e: $04
	inc  b                                           ; $720f: $04
	inc  bc                                          ; $7210: $03
	ld   [bc], a                                     ; $7211: $02
	ld   bc, $1000                                   ; $7212: $01 $00 $10
	ld   de, $0412                                   ; $7215: $11 $12 $04
	inc  b                                           ; $7218: $04
	inc  b                                           ; $7219: $04
	inc  b                                           ; $721a: $04
	rla                                              ; $721b: $17
	jr   jr_082_7237                                 ; $721c: $18 $19

	ld   a, [de]                                     ; $721e: $1a
	dec  de                                          ; $721f: $1b
	inc  e                                           ; $7220: $1c
	inc  b                                           ; $7221: $04
	inc  b                                           ; $7222: $04
	inc  b                                           ; $7223: $04
	inc  b                                           ; $7224: $04
	ld   [de], a                                     ; $7225: $12
	ld   de, $2010                                   ; $7226: $11 $10 $20
	ld   hl, $0404                                   ; $7229: $21 $04 $04
	inc  b                                           ; $722c: $04
	inc  b                                           ; $722d: $04
	inc  b                                           ; $722e: $04
	daa                                              ; $722f: $27
	jr   z, jr_082_72a7                              ; $7230: $28 $75

	ld   a, [hl+]                                    ; $7232: $2a
	dec  hl                                          ; $7233: $2b
	inc  e                                           ; $7234: $1c
	inc  b                                           ; $7235: $04
	inc  b                                           ; $7236: $04

jr_082_7237:
	inc  b                                           ; $7237: $04
	inc  b                                           ; $7238: $04
	inc  b                                           ; $7239: $04
	ld   hl, $3020                                   ; $723a: $21 $20 $30
	inc  b                                           ; $723d: $04
	inc  b                                           ; $723e: $04
	inc  b                                           ; $723f: $04
	inc  b                                           ; $7240: $04
	inc  b                                           ; $7241: $04
	inc  b                                           ; $7242: $04
	scf                                              ; $7243: $37
	ld   [hl], c                                     ; $7244: $71
	ld   [hl], d                                     ; $7245: $72
	ld   a, [hl-]                                    ; $7246: $3a
	dec  hl                                          ; $7247: $2b
	inc  e                                           ; $7248: $1c
	inc  b                                           ; $7249: $04
	inc  b                                           ; $724a: $04
	inc  b                                           ; $724b: $04
	inc  b                                           ; $724c: $04
	inc  b                                           ; $724d: $04
	inc  b                                           ; $724e: $04
	jr   nc, jr_082_7291                             ; $724f: $30 $40

	ld   b, c                                        ; $7251: $41
	ld   b, c                                        ; $7252: $41
	ld   b, c                                        ; $7253: $41
	ld   b, c                                        ; $7254: $41
	ld   b, c                                        ; $7255: $41
	ld   b, c                                        ; $7256: $41
	ld   b, a                                        ; $7257: $47
	ld   c, b                                        ; $7258: $48
	ld   c, c                                        ; $7259: $49
	ld   c, d                                        ; $725a: $4a
	ld   c, e                                        ; $725b: $4b
	ld   c, h                                        ; $725c: $4c
	ld   b, c                                        ; $725d: $41
	ld   b, c                                        ; $725e: $41
	ld   b, c                                        ; $725f: $41
	ld   b, c                                        ; $7260: $41
	ld   b, c                                        ; $7261: $41
	ld   b, c                                        ; $7262: $41
	ld   b, b                                        ; $7263: $40
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
	ld   [hl], e                                     ; $726e: $73
	ld   e, e                                        ; $726f: $5b
	ld   e, h                                        ; $7270: $5c
	ld   d, [hl]                                     ; $7271: $56
	ld   d, l                                        ; $7272: $55
	ld   d, h                                        ; $7273: $54
	ld   d, e                                        ; $7274: $53
	ld   d, d                                        ; $7275: $52
	ld   d, c                                        ; $7276: $51
	ld   d, b                                        ; $7277: $50
	ld   h, b                                        ; $7278: $60
	ld   h, c                                        ; $7279: $61
	ld   h, d                                        ; $727a: $62
	ld   h, e                                        ; $727b: $63
	ld   h, h                                        ; $727c: $64
	ld   h, l                                        ; $727d: $65
	ld   h, [hl]                                     ; $727e: $66
	ld   h, a                                        ; $727f: $67
	ld   l, b                                        ; $7280: $68
	ld   l, c                                        ; $7281: $69
	ld   [hl], h                                     ; $7282: $74
	ld   l, e                                        ; $7283: $6b
	ld   l, h                                        ; $7284: $6c
	ld   h, [hl]                                     ; $7285: $66
	ld   h, l                                        ; $7286: $65
	ld   h, h                                        ; $7287: $64
	ld   h, e                                        ; $7288: $63
	ld   h, d                                        ; $7289: $62
	ld   h, c                                        ; $728a: $61
	ld   h, b                                        ; $728b: $60
	ld   e, l                                        ; $728c: $5d
	ld   h, c                                        ; $728d: $61
	ld   e, [hl]                                     ; $728e: $5e
	ld   e, a                                        ; $728f: $5f
	ld   h, h                                        ; $7290: $64

jr_082_7291:
	ld   h, l                                        ; $7291: $65
	ld   h, [hl]                                     ; $7292: $66
	ld   h, a                                        ; $7293: $67
	ld   l, l                                        ; $7294: $6d
	ld   l, [hl]                                     ; $7295: $6e
	ld   l, a                                        ; $7296: $6f
	ld   l, e                                        ; $7297: $6b
	ld   l, h                                        ; $7298: $6c
	ld   h, [hl]                                     ; $7299: $66
	ld   h, l                                        ; $729a: $65
	ld   h, h                                        ; $729b: $64
	ld   e, a                                        ; $729c: $5f
	ld   e, [hl]                                     ; $729d: $5e
	ld   h, c                                        ; $729e: $61
	ld   e, l                                        ; $729f: $5d
	dec  b                                           ; $72a0: $05
	ld   b, $0d                                      ; $72a1: $06 $0d
	ld   c, $0f                                      ; $72a3: $0e $0f
	inc  de                                          ; $72a5: $13
	inc  d                                           ; $72a6: $14

jr_082_72a7:
	dec  d                                           ; $72a7: $15
	ld   d, $1d                                      ; $72a8: $16 $1d
	ld   e, $1f                                      ; $72aa: $1e $1f
	ld   [hl+], a                                    ; $72ac: $22
	inc  hl                                          ; $72ad: $23
	inc  h                                           ; $72ae: $24
	dec  h                                           ; $72af: $25
	ld   h, $2c                                      ; $72b0: $26 $2c
	dec  l                                           ; $72b2: $2d
	ld   l, $2f                                      ; $72b3: $2e $2f
	ld   sp, $3332                                   ; $72b5: $31 $32 $33
	inc  [hl]                                        ; $72b8: $34
	dec  [hl]                                        ; $72b9: $35
	ld   [hl], $3b                                   ; $72ba: $36 $3b
	inc  a                                           ; $72bc: $3c
	dec  a                                           ; $72bd: $3d
	ld   a, $3f                                      ; $72be: $3e $3f
	ld   b, d                                        ; $72c0: $42
	ld   b, e                                        ; $72c1: $43
	ld   b, h                                        ; $72c2: $44
	ld   b, l                                        ; $72c3: $45
	ld   b, [hl]                                     ; $72c4: $46
	ld   c, l                                        ; $72c5: $4d
	ld   c, [hl]                                     ; $72c6: $4e
	ld   c, a                                        ; $72c7: $4f
	dec  b                                           ; $72c8: $05
	dec  b                                           ; $72c9: $05
	dec  b                                           ; $72ca: $05
	dec  b                                           ; $72cb: $05
	dec  b                                           ; $72cc: $05
	dec  b                                           ; $72cd: $05
	dec  b                                           ; $72ce: $05
	inc  bc                                          ; $72cf: $03
	inc  bc                                          ; $72d0: $03
	inc  bc                                          ; $72d1: $03
	inc  bc                                          ; $72d2: $03
	inc  bc                                          ; $72d3: $03
	inc  bc                                          ; $72d4: $03
	dec  h                                           ; $72d5: $25
	dec  h                                           ; $72d6: $25
	dec  h                                           ; $72d7: $25
	dec  h                                           ; $72d8: $25
	dec  h                                           ; $72d9: $25
	dec  h                                           ; $72da: $25
	dec  h                                           ; $72db: $25
	dec  b                                           ; $72dc: $05
	dec  b                                           ; $72dd: $05
	dec  b                                           ; $72de: $05
	dec  b                                           ; $72df: $05
	dec  b                                           ; $72e0: $05
	dec  b                                           ; $72e1: $05
	dec  b                                           ; $72e2: $05
	inc  bc                                          ; $72e3: $03
	inc  bc                                          ; $72e4: $03
	inc  bc                                          ; $72e5: $03
	inc  bc                                          ; $72e6: $03
	inc  bc                                          ; $72e7: $03
	inc  bc                                          ; $72e8: $03
	dec  h                                           ; $72e9: $25
	dec  h                                           ; $72ea: $25
	dec  h                                           ; $72eb: $25
	dec  h                                           ; $72ec: $25
	dec  h                                           ; $72ed: $25
	dec  h                                           ; $72ee: $25
	dec  h                                           ; $72ef: $25
	dec  b                                           ; $72f0: $05
	dec  b                                           ; $72f1: $05
	dec  b                                           ; $72f2: $05
	dec  b                                           ; $72f3: $05
	dec  b                                           ; $72f4: $05
	dec  b                                           ; $72f5: $05
	dec  b                                           ; $72f6: $05
	inc  bc                                          ; $72f7: $03
	inc  bc                                          ; $72f8: $03
	inc  bc                                          ; $72f9: $03
	inc  bc                                          ; $72fa: $03
	inc  bc                                          ; $72fb: $03
	inc  bc                                          ; $72fc: $03
	dec  h                                           ; $72fd: $25
	dec  h                                           ; $72fe: $25
	dec  h                                           ; $72ff: $25
	dec  h                                           ; $7300: $25
	dec  h                                           ; $7301: $25
	dec  h                                           ; $7302: $25
	dec  h                                           ; $7303: $25
	dec  b                                           ; $7304: $05
	dec  b                                           ; $7305: $05
	dec  b                                           ; $7306: $05
	dec  b                                           ; $7307: $05
	dec  b                                           ; $7308: $05
	dec  b                                           ; $7309: $05
	dec  b                                           ; $730a: $05
	inc  bc                                          ; $730b: $03
	inc  bc                                          ; $730c: $03
	inc  bc                                          ; $730d: $03
	inc  bc                                          ; $730e: $03
	inc  bc                                          ; $730f: $03
	inc  bc                                          ; $7310: $03
	dec  h                                           ; $7311: $25
	dec  h                                           ; $7312: $25
	dec  h                                           ; $7313: $25
	dec  h                                           ; $7314: $25
	dec  h                                           ; $7315: $25
	dec  h                                           ; $7316: $25
	dec  h                                           ; $7317: $25
	dec  b                                           ; $7318: $05
	dec  b                                           ; $7319: $05
	dec  b                                           ; $731a: $05
	dec  b                                           ; $731b: $05
	dec  b                                           ; $731c: $05
	dec  b                                           ; $731d: $05
	dec  b                                           ; $731e: $05
	inc  bc                                          ; $731f: $03
	inc  bc                                          ; $7320: $03
	inc  bc                                          ; $7321: $03
	inc  bc                                          ; $7322: $03
	inc  bc                                          ; $7323: $03
	inc  bc                                          ; $7324: $03
	dec  h                                           ; $7325: $25
	dec  h                                           ; $7326: $25
	dec  h                                           ; $7327: $25
	dec  h                                           ; $7328: $25
	dec  h                                           ; $7329: $25
	dec  h                                           ; $732a: $25
	dec  h                                           ; $732b: $25
	inc  bc                                          ; $732c: $03
	inc  bc                                          ; $732d: $03
	inc  bc                                          ; $732e: $03
	inc  bc                                          ; $732f: $03
	inc  bc                                          ; $7330: $03
	inc  bc                                          ; $7331: $03
	inc  bc                                          ; $7332: $03
	inc  bc                                          ; $7333: $03
	inc  bc                                          ; $7334: $03
	inc  bc                                          ; $7335: $03
	inc  bc                                          ; $7336: $03
	inc  bc                                          ; $7337: $03
	inc  bc                                          ; $7338: $03
	inc  hl                                          ; $7339: $23
	inc  hl                                          ; $733a: $23
	inc  hl                                          ; $733b: $23
	inc  hl                                          ; $733c: $23
	inc  hl                                          ; $733d: $23
	inc  hl                                          ; $733e: $23
	inc  hl                                          ; $733f: $23
	inc  bc                                          ; $7340: $03
	inc  bc                                          ; $7341: $03
	inc  bc                                          ; $7342: $03
	inc  bc                                          ; $7343: $03
	inc  bc                                          ; $7344: $03
	inc  bc                                          ; $7345: $03
	inc  bc                                          ; $7346: $03
	inc  bc                                          ; $7347: $03
	inc  bc                                          ; $7348: $03
	inc  bc                                          ; $7349: $03
	inc  bc                                          ; $734a: $03
	inc  bc                                          ; $734b: $03
	inc  bc                                          ; $734c: $03
	inc  hl                                          ; $734d: $23
	inc  hl                                          ; $734e: $23
	inc  hl                                          ; $734f: $23
	inc  hl                                          ; $7350: $23
	inc  hl                                          ; $7351: $23
	inc  hl                                          ; $7352: $23
	inc  hl                                          ; $7353: $23
	inc  bc                                          ; $7354: $03
	inc  bc                                          ; $7355: $03
	inc  bc                                          ; $7356: $03
	inc  bc                                          ; $7357: $03
	inc  bc                                          ; $7358: $03
	inc  bc                                          ; $7359: $03
	inc  bc                                          ; $735a: $03
	inc  bc                                          ; $735b: $03
	inc  bc                                          ; $735c: $03
	inc  bc                                          ; $735d: $03
	inc  bc                                          ; $735e: $03
	inc  bc                                          ; $735f: $03
	inc  bc                                          ; $7360: $03
	inc  hl                                          ; $7361: $23
	inc  hl                                          ; $7362: $23
	inc  hl                                          ; $7363: $23
	inc  hl                                          ; $7364: $23
	inc  hl                                          ; $7365: $23
	inc  hl                                          ; $7366: $23
	inc  hl                                          ; $7367: $23
	inc  bc                                          ; $7368: $03
	inc  bc                                          ; $7369: $03
	inc  bc                                          ; $736a: $03
	inc  bc                                          ; $736b: $03
	inc  bc                                          ; $736c: $03
	inc  bc                                          ; $736d: $03
	inc  bc                                          ; $736e: $03
	inc  bc                                          ; $736f: $03
	inc  bc                                          ; $7370: $03
	inc  bc                                          ; $7371: $03
	inc  bc                                          ; $7372: $03
	inc  bc                                          ; $7373: $03
	inc  bc                                          ; $7374: $03
	inc  bc                                          ; $7375: $03
	inc  bc                                          ; $7376: $03
	inc  bc                                          ; $7377: $03
	inc  bc                                          ; $7378: $03
	inc  bc                                          ; $7379: $03
	inc  bc                                          ; $737a: $03
	inc  bc                                          ; $737b: $03
	inc  bc                                          ; $737c: $03
	inc  bc                                          ; $737d: $03
	inc  bc                                          ; $737e: $03
	inc  bc                                          ; $737f: $03
	inc  bc                                          ; $7380: $03
	inc  bc                                          ; $7381: $03
	inc  bc                                          ; $7382: $03
	inc  bc                                          ; $7383: $03
	inc  bc                                          ; $7384: $03
	inc  bc                                          ; $7385: $03
	inc  bc                                          ; $7386: $03
	inc  bc                                          ; $7387: $03
	inc  bc                                          ; $7388: $03
	inc  bc                                          ; $7389: $03
	inc  bc                                          ; $738a: $03
	inc  bc                                          ; $738b: $03
	inc  bc                                          ; $738c: $03
	inc  bc                                          ; $738d: $03
	inc  bc                                          ; $738e: $03
	inc  bc                                          ; $738f: $03
	nop                                              ; $7390: $00
	ld   bc, $0302                                   ; $7391: $01 $02 $03
	inc  b                                           ; $7394: $04
	inc  b                                           ; $7395: $04
	inc  b                                           ; $7396: $04
	rlca                                             ; $7397: $07
	ld   [$0808], sp                                 ; $7398: $08 $08 $08
	ld   [$040c], sp                                 ; $739b: $08 $0c $04
	inc  b                                           ; $739e: $04
	inc  b                                           ; $739f: $04
	inc  bc                                          ; $73a0: $03
	ld   [bc], a                                     ; $73a1: $02
	ld   bc, $1000                                   ; $73a2: $01 $00 $10
	ld   de, $0412                                   ; $73a5: $11 $12 $04
	inc  b                                           ; $73a8: $04
	inc  b                                           ; $73a9: $04
	inc  b                                           ; $73aa: $04
	rla                                              ; $73ab: $17
	jr   jr_082_73c7                                 ; $73ac: $18 $19

	add  hl, de                                      ; $73ae: $19
	dec  de                                          ; $73af: $1b
	inc  e                                           ; $73b0: $1c
	inc  b                                           ; $73b1: $04
	inc  b                                           ; $73b2: $04
	inc  b                                           ; $73b3: $04
	inc  b                                           ; $73b4: $04
	ld   [de], a                                     ; $73b5: $12
	ld   de, $2010                                   ; $73b6: $11 $10 $20
	ld   hl, $0404                                   ; $73b9: $21 $04 $04
	inc  b                                           ; $73bc: $04
	inc  b                                           ; $73bd: $04
	inc  b                                           ; $73be: $04
	daa                                              ; $73bf: $27
	jr   z, jr_082_73cf                              ; $73c0: $28 $0d

	ld   c, $2b                                      ; $73c2: $0e $2b
	inc  e                                           ; $73c4: $1c
	inc  b                                           ; $73c5: $04
	inc  b                                           ; $73c6: $04

jr_082_73c7:
	inc  b                                           ; $73c7: $04
	inc  b                                           ; $73c8: $04
	inc  b                                           ; $73c9: $04
	ld   hl, $3020                                   ; $73ca: $21 $20 $30
	inc  b                                           ; $73cd: $04
	inc  b                                           ; $73ce: $04

jr_082_73cf:
	inc  b                                           ; $73cf: $04
	inc  b                                           ; $73d0: $04
	inc  b                                           ; $73d1: $04
	inc  b                                           ; $73d2: $04
	scf                                              ; $73d3: $37
	jr   c, jr_082_73e5                              ; $73d4: $38 $0f

	db   $10                                         ; $73d6: $10
	dec  sp                                          ; $73d7: $3b
	inc  e                                           ; $73d8: $1c
	inc  b                                           ; $73d9: $04
	inc  b                                           ; $73da: $04
	inc  b                                           ; $73db: $04
	inc  b                                           ; $73dc: $04
	inc  b                                           ; $73dd: $04
	inc  b                                           ; $73de: $04
	jr   nc, jr_082_7421                             ; $73df: $30 $40

	ld   b, c                                        ; $73e1: $41
	ld   b, c                                        ; $73e2: $41
	ld   b, c                                        ; $73e3: $41
	ld   b, c                                        ; $73e4: $41

jr_082_73e5:
	ld   b, c                                        ; $73e5: $41
	ld   b, c                                        ; $73e6: $41
	ld   b, a                                        ; $73e7: $47
	ld   c, b                                        ; $73e8: $48
	ld   c, c                                        ; $73e9: $49
	ld   c, d                                        ; $73ea: $4a
	ld   c, e                                        ; $73eb: $4b
	ld   c, h                                        ; $73ec: $4c
	ld   b, c                                        ; $73ed: $41
	ld   b, c                                        ; $73ee: $41
	ld   b, c                                        ; $73ef: $41
	ld   b, c                                        ; $73f0: $41
	ld   b, c                                        ; $73f1: $41
	ld   b, c                                        ; $73f2: $41
	ld   b, b                                        ; $73f3: $40
	ld   d, b                                        ; $73f4: $50
	ld   d, c                                        ; $73f5: $51
	ld   d, d                                        ; $73f6: $52
	ld   d, e                                        ; $73f7: $53
	ld   d, h                                        ; $73f8: $54
	ld   d, l                                        ; $73f9: $55
	ld   d, [hl]                                     ; $73fa: $56
	ld   a, [bc]                                     ; $73fb: $0a
	ld   de, $5a59                                   ; $73fc: $11 $59 $5a
	ld   e, e                                        ; $73ff: $5b
	ld   e, h                                        ; $7400: $5c
	ld   d, [hl]                                     ; $7401: $56
	ld   d, l                                        ; $7402: $55
	ld   d, h                                        ; $7403: $54
	ld   d, e                                        ; $7404: $53
	ld   d, d                                        ; $7405: $52
	ld   d, c                                        ; $7406: $51
	ld   d, b                                        ; $7407: $50
	ld   h, b                                        ; $7408: $60
	ld   h, c                                        ; $7409: $61
	ld   h, d                                        ; $740a: $62
	ld   h, e                                        ; $740b: $63
	ld   h, h                                        ; $740c: $64
	ld   h, l                                        ; $740d: $65
	ld   h, [hl]                                     ; $740e: $66
	ld   h, a                                        ; $740f: $67
	ld   [de], a                                     ; $7410: $12
	ld   l, c                                        ; $7411: $69
	ld   l, d                                        ; $7412: $6a
	ld   l, e                                        ; $7413: $6b
	ld   l, h                                        ; $7414: $6c
	ld   h, [hl]                                     ; $7415: $66
	ld   h, l                                        ; $7416: $65
	ld   h, h                                        ; $7417: $64
	ld   h, e                                        ; $7418: $63
	ld   h, d                                        ; $7419: $62
	ld   h, c                                        ; $741a: $61
	ld   h, b                                        ; $741b: $60
	ld   c, l                                        ; $741c: $4d
	ld   h, c                                        ; $741d: $61
	ld   c, [hl]                                     ; $741e: $4e
	ld   c, a                                        ; $741f: $4f
	ld   h, h                                        ; $7420: $64

jr_082_7421:
	ld   h, l                                        ; $7421: $65
	ld   h, [hl]                                     ; $7422: $66
	ld   h, a                                        ; $7423: $67
	ld   e, l                                        ; $7424: $5d
	ld   e, [hl]                                     ; $7425: $5e
	ld   e, a                                        ; $7426: $5f
	ld   l, l                                        ; $7427: $6d
	ld   l, h                                        ; $7428: $6c
	ld   h, [hl]                                     ; $7429: $66
	ld   h, l                                        ; $742a: $65
	ld   h, h                                        ; $742b: $64
	ld   c, a                                        ; $742c: $4f
	ld   c, [hl]                                     ; $742d: $4e
	ld   h, c                                        ; $742e: $61
	ld   c, l                                        ; $742f: $4d
	dec  b                                           ; $7430: $05
	ld   b, $09                                      ; $7431: $06 $09
	ld   a, [bc]                                     ; $7433: $0a
	dec  bc                                          ; $7434: $0b
	dec  c                                           ; $7435: $0d
	ld   c, $0f                                      ; $7436: $0e $0f
	inc  de                                          ; $7438: $13
	inc  d                                           ; $7439: $14
	dec  d                                           ; $743a: $15
	ld   d, $1a                                      ; $743b: $16 $1a
	dec  e                                           ; $743d: $1d
	ld   e, $1f                                      ; $743e: $1e $1f
	ld   [hl+], a                                    ; $7440: $22
	inc  hl                                          ; $7441: $23
	inc  h                                           ; $7442: $24
	dec  h                                           ; $7443: $25
	ld   h, $2c                                      ; $7444: $26 $2c
	dec  l                                           ; $7446: $2d
	ld   l, $2f                                      ; $7447: $2e $2f
	ld   sp, $3332                                   ; $7449: $31 $32 $33
	inc  [hl]                                        ; $744c: $34
	dec  [hl]                                        ; $744d: $35
	ld   [hl], $3c                                   ; $744e: $36 $3c
	dec  a                                           ; $7450: $3d
	ld   a, $3f                                      ; $7451: $3e $3f
	ld   b, d                                        ; $7453: $42
	ld   b, e                                        ; $7454: $43
	ld   b, h                                        ; $7455: $44
	ld   b, l                                        ; $7456: $45
	ld   b, [hl]                                     ; $7457: $46
	dec  b                                           ; $7458: $05
	dec  b                                           ; $7459: $05
	dec  b                                           ; $745a: $05
	dec  b                                           ; $745b: $05
	dec  b                                           ; $745c: $05
	dec  b                                           ; $745d: $05
	dec  b                                           ; $745e: $05
	inc  bc                                          ; $745f: $03
	inc  bc                                          ; $7460: $03
	inc  bc                                          ; $7461: $03
	inc  bc                                          ; $7462: $03
	inc  bc                                          ; $7463: $03
	inc  bc                                          ; $7464: $03
	dec  h                                           ; $7465: $25
	dec  h                                           ; $7466: $25
	dec  h                                           ; $7467: $25
	dec  h                                           ; $7468: $25
	dec  h                                           ; $7469: $25
	dec  h                                           ; $746a: $25
	dec  h                                           ; $746b: $25
	dec  b                                           ; $746c: $05
	dec  b                                           ; $746d: $05
	dec  b                                           ; $746e: $05
	dec  b                                           ; $746f: $05
	dec  b                                           ; $7470: $05
	dec  b                                           ; $7471: $05
	dec  b                                           ; $7472: $05
	inc  bc                                          ; $7473: $03
	inc  bc                                          ; $7474: $03
	inc  bc                                          ; $7475: $03
	inc  bc                                          ; $7476: $03
	inc  bc                                          ; $7477: $03
	inc  bc                                          ; $7478: $03
	dec  h                                           ; $7479: $25
	dec  h                                           ; $747a: $25
	dec  h                                           ; $747b: $25
	dec  h                                           ; $747c: $25
	dec  h                                           ; $747d: $25
	dec  h                                           ; $747e: $25
	dec  h                                           ; $747f: $25
	dec  b                                           ; $7480: $05
	dec  b                                           ; $7481: $05
	dec  b                                           ; $7482: $05
	dec  b                                           ; $7483: $05
	dec  b                                           ; $7484: $05
	dec  b                                           ; $7485: $05
	dec  b                                           ; $7486: $05
	inc  bc                                          ; $7487: $03
	inc  bc                                          ; $7488: $03
	inc  c                                           ; $7489: $0c
	inc  c                                           ; $748a: $0c
	inc  bc                                          ; $748b: $03
	inc  bc                                          ; $748c: $03
	dec  h                                           ; $748d: $25
	dec  h                                           ; $748e: $25
	dec  h                                           ; $748f: $25
	dec  h                                           ; $7490: $25
	dec  h                                           ; $7491: $25
	dec  h                                           ; $7492: $25
	dec  h                                           ; $7493: $25
	dec  b                                           ; $7494: $05
	dec  b                                           ; $7495: $05
	dec  b                                           ; $7496: $05
	dec  b                                           ; $7497: $05
	dec  b                                           ; $7498: $05
	dec  b                                           ; $7499: $05
	dec  b                                           ; $749a: $05
	inc  bc                                          ; $749b: $03
	inc  bc                                          ; $749c: $03
	inc  c                                           ; $749d: $0c
	inc  c                                           ; $749e: $0c
	inc  bc                                          ; $749f: $03
	inc  bc                                          ; $74a0: $03
	dec  h                                           ; $74a1: $25
	dec  h                                           ; $74a2: $25
	dec  h                                           ; $74a3: $25
	dec  h                                           ; $74a4: $25
	dec  h                                           ; $74a5: $25
	dec  h                                           ; $74a6: $25
	dec  h                                           ; $74a7: $25
	dec  b                                           ; $74a8: $05
	dec  b                                           ; $74a9: $05
	dec  b                                           ; $74aa: $05
	dec  b                                           ; $74ab: $05
	dec  b                                           ; $74ac: $05
	dec  b                                           ; $74ad: $05
	dec  b                                           ; $74ae: $05
	inc  bc                                          ; $74af: $03
	inc  bc                                          ; $74b0: $03
	inc  bc                                          ; $74b1: $03
	inc  bc                                          ; $74b2: $03
	inc  bc                                          ; $74b3: $03
	inc  bc                                          ; $74b4: $03
	dec  h                                           ; $74b5: $25
	dec  h                                           ; $74b6: $25
	dec  h                                           ; $74b7: $25
	dec  h                                           ; $74b8: $25
	dec  h                                           ; $74b9: $25
	dec  h                                           ; $74ba: $25
	dec  h                                           ; $74bb: $25
	inc  bc                                          ; $74bc: $03
	inc  bc                                          ; $74bd: $03
	inc  bc                                          ; $74be: $03
	inc  bc                                          ; $74bf: $03
	inc  bc                                          ; $74c0: $03
	inc  bc                                          ; $74c1: $03
	inc  bc                                          ; $74c2: $03
	dec  bc                                          ; $74c3: $0b
	inc  c                                           ; $74c4: $0c
	inc  bc                                          ; $74c5: $03
	inc  bc                                          ; $74c6: $03
	inc  bc                                          ; $74c7: $03
	inc  bc                                          ; $74c8: $03
	inc  hl                                          ; $74c9: $23
	inc  hl                                          ; $74ca: $23
	inc  hl                                          ; $74cb: $23
	inc  hl                                          ; $74cc: $23
	inc  hl                                          ; $74cd: $23
	inc  hl                                          ; $74ce: $23
	inc  hl                                          ; $74cf: $23
	inc  bc                                          ; $74d0: $03
	inc  bc                                          ; $74d1: $03
	inc  bc                                          ; $74d2: $03
	inc  bc                                          ; $74d3: $03
	inc  bc                                          ; $74d4: $03
	inc  bc                                          ; $74d5: $03
	inc  bc                                          ; $74d6: $03
	inc  bc                                          ; $74d7: $03
	inc  c                                           ; $74d8: $0c
	inc  bc                                          ; $74d9: $03
	inc  bc                                          ; $74da: $03
	inc  bc                                          ; $74db: $03
	inc  bc                                          ; $74dc: $03
	inc  hl                                          ; $74dd: $23
	inc  hl                                          ; $74de: $23
	inc  hl                                          ; $74df: $23
	inc  hl                                          ; $74e0: $23
	inc  hl                                          ; $74e1: $23
	inc  hl                                          ; $74e2: $23
	inc  hl                                          ; $74e3: $23
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
	inc  hl                                          ; $74f1: $23
	inc  hl                                          ; $74f2: $23
	inc  hl                                          ; $74f3: $23
	inc  hl                                          ; $74f4: $23
	inc  hl                                          ; $74f5: $23
	inc  hl                                          ; $74f6: $23
	inc  hl                                          ; $74f7: $23
	inc  bc                                          ; $74f8: $03
	inc  bc                                          ; $74f9: $03
	inc  bc                                          ; $74fa: $03
	inc  bc                                          ; $74fb: $03
	inc  bc                                          ; $74fc: $03
	inc  bc                                          ; $74fd: $03
	inc  bc                                          ; $74fe: $03
	inc  bc                                          ; $74ff: $03
	inc  bc                                          ; $7500: $03
	inc  bc                                          ; $7501: $03
	inc  bc                                          ; $7502: $03
	inc  bc                                          ; $7503: $03
	inc  bc                                          ; $7504: $03
	inc  bc                                          ; $7505: $03
	inc  bc                                          ; $7506: $03
	inc  bc                                          ; $7507: $03
	inc  bc                                          ; $7508: $03
	inc  bc                                          ; $7509: $03
	inc  bc                                          ; $750a: $03
	inc  bc                                          ; $750b: $03
	inc  bc                                          ; $750c: $03
	inc  bc                                          ; $750d: $03
	inc  bc                                          ; $750e: $03
	inc  bc                                          ; $750f: $03
	inc  bc                                          ; $7510: $03
	inc  bc                                          ; $7511: $03
	inc  bc                                          ; $7512: $03
	inc  bc                                          ; $7513: $03
	inc  bc                                          ; $7514: $03
	inc  bc                                          ; $7515: $03
	inc  bc                                          ; $7516: $03
	inc  bc                                          ; $7517: $03
	inc  bc                                          ; $7518: $03
	inc  bc                                          ; $7519: $03
	inc  bc                                          ; $751a: $03
	inc  bc                                          ; $751b: $03
	inc  bc                                          ; $751c: $03
	inc  bc                                          ; $751d: $03
	inc  bc                                          ; $751e: $03
	inc  bc                                          ; $751f: $03
	nop                                              ; $7520: $00
	ld   bc, $0302                                   ; $7521: $01 $02 $03
	inc  b                                           ; $7524: $04
	inc  b                                           ; $7525: $04
	inc  b                                           ; $7526: $04
	rlca                                             ; $7527: $07
	halt                                             ; $7528: $76
	ld   [hl], a                                     ; $7529: $77
	ld   a, b                                        ; $752a: $78
	ld   a, c                                        ; $752b: $79
	inc  c                                           ; $752c: $0c
	inc  b                                           ; $752d: $04
	inc  b                                           ; $752e: $04
	inc  b                                           ; $752f: $04
	inc  bc                                          ; $7530: $03
	ld   [bc], a                                     ; $7531: $02
	ld   bc, $1000                                   ; $7532: $01 $00 $10
	ld   de, $0412                                   ; $7535: $11 $12 $04
	inc  b                                           ; $7538: $04
	inc  b                                           ; $7539: $04
	inc  b                                           ; $753a: $04
	rla                                              ; $753b: $17
	ld   a, d                                        ; $753c: $7a
	ld   e, $1f                                      ; $753d: $1e $1f
	ld   a, l                                        ; $753f: $7d
	inc  e                                           ; $7540: $1c
	inc  b                                           ; $7541: $04
	inc  b                                           ; $7542: $04
	inc  b                                           ; $7543: $04
	inc  b                                           ; $7544: $04
	ld   [de], a                                     ; $7545: $12
	ld   de, $2010                                   ; $7546: $11 $10 $20
	ld   hl, $0404                                   ; $7549: $21 $04 $04
	inc  b                                           ; $754c: $04
	inc  b                                           ; $754d: $04
	inc  b                                           ; $754e: $04
	daa                                              ; $754f: $27
	ld   a, [hl]                                     ; $7550: $7e
	jr   nz, jr_082_7574                             ; $7551: $20 $21

	ld   bc, $041c                                   ; $7553: $01 $1c $04
	inc  b                                           ; $7556: $04
	inc  b                                           ; $7557: $04
	inc  b                                           ; $7558: $04
	inc  b                                           ; $7559: $04
	ld   hl, $3020                                   ; $755a: $21 $20 $30
	inc  b                                           ; $755d: $04
	inc  b                                           ; $755e: $04
	inc  b                                           ; $755f: $04
	inc  b                                           ; $7560: $04
	inc  b                                           ; $7561: $04
	inc  b                                           ; $7562: $04
	scf                                              ; $7563: $37
	ld   a, [hl]                                     ; $7564: $7e
	ld   [bc], a                                     ; $7565: $02
	ld   [hl+], a                                    ; $7566: $22
	inc  b                                           ; $7567: $04
	inc  e                                           ; $7568: $1c
	inc  b                                           ; $7569: $04
	inc  b                                           ; $756a: $04
	inc  b                                           ; $756b: $04
	inc  b                                           ; $756c: $04
	inc  b                                           ; $756d: $04
	inc  b                                           ; $756e: $04
	jr   nc, jr_082_75b1                             ; $756f: $30 $40

	ld   b, c                                        ; $7571: $41
	ld   b, c                                        ; $7572: $41
	ld   b, c                                        ; $7573: $41

jr_082_7574:
	ld   b, c                                        ; $7574: $41
	ld   b, c                                        ; $7575: $41
	ld   b, c                                        ; $7576: $41
	ld   b, a                                        ; $7577: $47
	dec  b                                           ; $7578: $05
	ld   b, $07                                      ; $7579: $06 $07
	ld   [$414c], sp                                 ; $757b: $08 $4c $41
	ld   b, c                                        ; $757e: $41
	ld   b, c                                        ; $757f: $41
	ld   b, c                                        ; $7580: $41
	ld   b, c                                        ; $7581: $41
	ld   b, c                                        ; $7582: $41
	ld   b, b                                        ; $7583: $40
	ld   d, b                                        ; $7584: $50
	ld   d, c                                        ; $7585: $51
	ld   d, d                                        ; $7586: $52
	ld   d, e                                        ; $7587: $53
	ld   d, h                                        ; $7588: $54
	ld   d, l                                        ; $7589: $55
	ld   d, [hl]                                     ; $758a: $56
	add  hl, bc                                      ; $758b: $09
	ld   a, [bc]                                     ; $758c: $0a
	inc  hl                                          ; $758d: $23
	inc  c                                           ; $758e: $0c
	dec  c                                           ; $758f: $0d
	ld   e, h                                        ; $7590: $5c
	ld   d, [hl]                                     ; $7591: $56
	ld   d, l                                        ; $7592: $55
	ld   d, h                                        ; $7593: $54
	ld   d, e                                        ; $7594: $53
	ld   d, d                                        ; $7595: $52
	ld   d, c                                        ; $7596: $51
	ld   d, b                                        ; $7597: $50
	ld   h, b                                        ; $7598: $60
	ld   h, c                                        ; $7599: $61
	ld   h, d                                        ; $759a: $62
	ld   h, e                                        ; $759b: $63
	ld   h, h                                        ; $759c: $64
	ld   h, l                                        ; $759d: $65
	ld   h, [hl]                                     ; $759e: $66
	ld   h, a                                        ; $759f: $67
	ld   c, $24                                      ; $75a0: $0e $24
	db   $10                                         ; $75a2: $10
	ld   de, $666c                                   ; $75a3: $11 $6c $66
	ld   h, l                                        ; $75a6: $65
	ld   h, h                                        ; $75a7: $64
	ld   h, e                                        ; $75a8: $63
	ld   h, d                                        ; $75a9: $62
	ld   h, c                                        ; $75aa: $61
	ld   h, b                                        ; $75ab: $60
	ld   e, l                                        ; $75ac: $5d
	ld   h, c                                        ; $75ad: $61
	ld   e, [hl]                                     ; $75ae: $5e
	ld   e, a                                        ; $75af: $5f
	ld   h, h                                        ; $75b0: $64

jr_082_75b1:
	ld   h, l                                        ; $75b1: $65
	ld   h, [hl]                                     ; $75b2: $66
	ld   h, a                                        ; $75b3: $67
	ld   c, $12                                      ; $75b4: $0e $12
	inc  de                                          ; $75b6: $13
	inc  d                                           ; $75b7: $14
	ld   l, h                                        ; $75b8: $6c
	ld   h, [hl]                                     ; $75b9: $66
	ld   h, l                                        ; $75ba: $65
	ld   h, h                                        ; $75bb: $64
	ld   e, a                                        ; $75bc: $5f
	ld   e, [hl]                                     ; $75bd: $5e
	ld   h, c                                        ; $75be: $61
	ld   e, l                                        ; $75bf: $5d
	dec  b                                           ; $75c0: $05
	ld   b, $0d                                      ; $75c1: $06 $0d
	ld   c, $0f                                      ; $75c3: $0e $0f
	inc  de                                          ; $75c5: $13
	inc  d                                           ; $75c6: $14
	dec  d                                           ; $75c7: $15
	dec  d                                           ; $75c8: $15
	ld   d, $17                                      ; $75c9: $16 $17
	jr   jr_082_75ef                                 ; $75cb: $18 $22

	inc  hl                                          ; $75cd: $23
	inc  h                                           ; $75ce: $24
	dec  h                                           ; $75cf: $25
	ld   h, $2c                                      ; $75d0: $26 $2c
	dec  l                                           ; $75d2: $2d
	ld   l, $2f                                      ; $75d3: $2e $2f
	ld   sp, $3332                                   ; $75d5: $31 $32 $33
	inc  [hl]                                        ; $75d8: $34
	dec  [hl]                                        ; $75d9: $35
	ld   [hl], $19                                   ; $75da: $36 $19
	ld   a, [de]                                     ; $75dc: $1a
	dec  de                                          ; $75dd: $1b
	inc  e                                           ; $75de: $1c
	dec  e                                           ; $75df: $1d
	ld   b, d                                        ; $75e0: $42
	ld   b, e                                        ; $75e1: $43
	ld   b, h                                        ; $75e2: $44
	ld   b, l                                        ; $75e3: $45
	ld   b, [hl]                                     ; $75e4: $46
	ld   c, l                                        ; $75e5: $4d
	ld   c, [hl]                                     ; $75e6: $4e
	ld   c, a                                        ; $75e7: $4f
	dec  b                                           ; $75e8: $05
	dec  b                                           ; $75e9: $05
	dec  b                                           ; $75ea: $05
	dec  b                                           ; $75eb: $05
	dec  b                                           ; $75ec: $05
	dec  b                                           ; $75ed: $05
	dec  b                                           ; $75ee: $05

jr_082_75ef:
	inc  bc                                          ; $75ef: $03
	inc  bc                                          ; $75f0: $03
	inc  bc                                          ; $75f1: $03
	inc  bc                                          ; $75f2: $03
	inc  bc                                          ; $75f3: $03
	inc  bc                                          ; $75f4: $03
	dec  h                                           ; $75f5: $25
	dec  h                                           ; $75f6: $25
	dec  h                                           ; $75f7: $25
	dec  h                                           ; $75f8: $25
	dec  h                                           ; $75f9: $25
	dec  h                                           ; $75fa: $25
	dec  h                                           ; $75fb: $25
	dec  b                                           ; $75fc: $05
	dec  b                                           ; $75fd: $05
	dec  b                                           ; $75fe: $05
	dec  b                                           ; $75ff: $05
	dec  b                                           ; $7600: $05
	dec  b                                           ; $7601: $05
	dec  b                                           ; $7602: $05
	inc  bc                                          ; $7603: $03
	inc  bc                                          ; $7604: $03
	dec  bc                                          ; $7605: $0b
	inc  c                                           ; $7606: $0c
	inc  bc                                          ; $7607: $03
	inc  bc                                          ; $7608: $03
	dec  h                                           ; $7609: $25
	dec  h                                           ; $760a: $25
	dec  h                                           ; $760b: $25
	dec  h                                           ; $760c: $25
	dec  h                                           ; $760d: $25
	dec  h                                           ; $760e: $25
	dec  h                                           ; $760f: $25
	dec  b                                           ; $7610: $05
	dec  b                                           ; $7611: $05
	dec  b                                           ; $7612: $05
	dec  b                                           ; $7613: $05
	dec  b                                           ; $7614: $05
	dec  b                                           ; $7615: $05
	dec  b                                           ; $7616: $05
	inc  bc                                          ; $7617: $03
	inc  bc                                          ; $7618: $03
	inc  c                                           ; $7619: $0c
	inc  c                                           ; $761a: $0c
	dec  bc                                          ; $761b: $0b
	inc  bc                                          ; $761c: $03
	dec  h                                           ; $761d: $25
	dec  h                                           ; $761e: $25
	dec  h                                           ; $761f: $25
	dec  h                                           ; $7620: $25
	dec  h                                           ; $7621: $25
	dec  h                                           ; $7622: $25
	dec  h                                           ; $7623: $25
	dec  b                                           ; $7624: $05
	dec  b                                           ; $7625: $05
	dec  b                                           ; $7626: $05
	dec  b                                           ; $7627: $05
	dec  b                                           ; $7628: $05
	dec  b                                           ; $7629: $05
	dec  b                                           ; $762a: $05
	inc  bc                                          ; $762b: $03
	inc  bc                                          ; $762c: $03
	dec  bc                                          ; $762d: $0b
	inc  c                                           ; $762e: $0c
	dec  bc                                          ; $762f: $0b
	inc  bc                                          ; $7630: $03
	dec  h                                           ; $7631: $25
	dec  h                                           ; $7632: $25
	dec  h                                           ; $7633: $25
	dec  h                                           ; $7634: $25
	dec  h                                           ; $7635: $25
	dec  h                                           ; $7636: $25
	dec  h                                           ; $7637: $25
	dec  b                                           ; $7638: $05
	dec  b                                           ; $7639: $05
	dec  b                                           ; $763a: $05
	dec  b                                           ; $763b: $05
	dec  b                                           ; $763c: $05
	dec  b                                           ; $763d: $05
	dec  b                                           ; $763e: $05
	inc  bc                                          ; $763f: $03
	dec  bc                                          ; $7640: $0b
	dec  bc                                          ; $7641: $0b
	dec  bc                                          ; $7642: $0b
	dec  bc                                          ; $7643: $0b
	inc  bc                                          ; $7644: $03
	dec  h                                           ; $7645: $25
	dec  h                                           ; $7646: $25
	dec  h                                           ; $7647: $25
	dec  h                                           ; $7648: $25
	dec  h                                           ; $7649: $25
	dec  h                                           ; $764a: $25
	dec  h                                           ; $764b: $25
	inc  bc                                          ; $764c: $03
	inc  bc                                          ; $764d: $03
	inc  bc                                          ; $764e: $03
	inc  bc                                          ; $764f: $03
	inc  bc                                          ; $7650: $03
	inc  bc                                          ; $7651: $03
	inc  bc                                          ; $7652: $03
	dec  bc                                          ; $7653: $0b
	dec  bc                                          ; $7654: $0b
	inc  c                                           ; $7655: $0c
	dec  bc                                          ; $7656: $0b
	dec  bc                                          ; $7657: $0b
	inc  bc                                          ; $7658: $03
	inc  hl                                          ; $7659: $23
	inc  hl                                          ; $765a: $23
	inc  hl                                          ; $765b: $23
	inc  hl                                          ; $765c: $23
	inc  hl                                          ; $765d: $23
	inc  hl                                          ; $765e: $23
	inc  hl                                          ; $765f: $23
	inc  bc                                          ; $7660: $03
	inc  bc                                          ; $7661: $03
	inc  bc                                          ; $7662: $03
	inc  bc                                          ; $7663: $03
	inc  bc                                          ; $7664: $03
	inc  bc                                          ; $7665: $03
	inc  bc                                          ; $7666: $03
	inc  bc                                          ; $7667: $03
	dec  bc                                          ; $7668: $0b
	dec  bc                                          ; $7669: $0b
	dec  bc                                          ; $766a: $0b
	dec  bc                                          ; $766b: $0b
	inc  bc                                          ; $766c: $03
	inc  hl                                          ; $766d: $23
	inc  hl                                          ; $766e: $23
	inc  hl                                          ; $766f: $23
	inc  hl                                          ; $7670: $23
	inc  hl                                          ; $7671: $23
	inc  hl                                          ; $7672: $23
	inc  hl                                          ; $7673: $23
	inc  bc                                          ; $7674: $03
	inc  bc                                          ; $7675: $03
	inc  bc                                          ; $7676: $03
	inc  bc                                          ; $7677: $03
	inc  bc                                          ; $7678: $03
	inc  bc                                          ; $7679: $03
	inc  bc                                          ; $767a: $03
	inc  bc                                          ; $767b: $03
	dec  bc                                          ; $767c: $0b
	dec  bc                                          ; $767d: $0b
	dec  bc                                          ; $767e: $0b
	dec  bc                                          ; $767f: $0b
	inc  bc                                          ; $7680: $03
	inc  hl                                          ; $7681: $23
	inc  hl                                          ; $7682: $23
	inc  hl                                          ; $7683: $23
	inc  hl                                          ; $7684: $23
	inc  hl                                          ; $7685: $23
	inc  hl                                          ; $7686: $23
	inc  hl                                          ; $7687: $23
	inc  bc                                          ; $7688: $03
	inc  bc                                          ; $7689: $03
	inc  bc                                          ; $768a: $03
	inc  bc                                          ; $768b: $03
	inc  bc                                          ; $768c: $03
	inc  bc                                          ; $768d: $03
	inc  bc                                          ; $768e: $03
	inc  bc                                          ; $768f: $03
	dec  bc                                          ; $7690: $0b
	dec  bc                                          ; $7691: $0b
	dec  bc                                          ; $7692: $0b
	dec  bc                                          ; $7693: $0b
	inc  bc                                          ; $7694: $03
	inc  bc                                          ; $7695: $03
	inc  bc                                          ; $7696: $03
	inc  bc                                          ; $7697: $03
	inc  bc                                          ; $7698: $03
	inc  bc                                          ; $7699: $03
	inc  bc                                          ; $769a: $03
	inc  bc                                          ; $769b: $03
	inc  bc                                          ; $769c: $03
	inc  bc                                          ; $769d: $03
	inc  bc                                          ; $769e: $03
	inc  bc                                          ; $769f: $03
	inc  bc                                          ; $76a0: $03
	inc  bc                                          ; $76a1: $03
	inc  bc                                          ; $76a2: $03
	dec  bc                                          ; $76a3: $0b
	dec  bc                                          ; $76a4: $0b
	dec  bc                                          ; $76a5: $0b
	dec  bc                                          ; $76a6: $0b
	dec  bc                                          ; $76a7: $0b
	inc  bc                                          ; $76a8: $03
	inc  bc                                          ; $76a9: $03
	inc  bc                                          ; $76aa: $03
	inc  bc                                          ; $76ab: $03
	inc  bc                                          ; $76ac: $03
	inc  bc                                          ; $76ad: $03
	inc  bc                                          ; $76ae: $03
	inc  bc                                          ; $76af: $03
	nop                                              ; $76b0: $00
	ld   bc, $0302                                   ; $76b1: $01 $02 $03
	inc  b                                           ; $76b4: $04
	inc  b                                           ; $76b5: $04
	inc  b                                           ; $76b6: $04
	rlca                                             ; $76b7: $07
	ld   [$0808], sp                                 ; $76b8: $08 $08 $08
	ld   [$040c], sp                                 ; $76bb: $08 $0c $04
	inc  b                                           ; $76be: $04
	inc  b                                           ; $76bf: $04
	inc  bc                                          ; $76c0: $03
	ld   [bc], a                                     ; $76c1: $02
	ld   bc, $1000                                   ; $76c2: $01 $00 $10
	ld   de, $0412                                   ; $76c5: $11 $12 $04
	inc  b                                           ; $76c8: $04
	inc  b                                           ; $76c9: $04
	inc  b                                           ; $76ca: $04
	rla                                              ; $76cb: $17
	jr   jr_082_76ce                                 ; $76cc: $18 $00

jr_082_76ce:
	ld   bc, $1c1b                                   ; $76ce: $01 $1b $1c
	inc  b                                           ; $76d1: $04
	inc  b                                           ; $76d2: $04
	inc  b                                           ; $76d3: $04
	inc  b                                           ; $76d4: $04
	ld   [de], a                                     ; $76d5: $12
	ld   de, $2010                                   ; $76d6: $11 $10 $20
	ld   hl, $0404                                   ; $76d9: $21 $04 $04
	inc  b                                           ; $76dc: $04
	inc  b                                           ; $76dd: $04
	inc  b                                           ; $76de: $04
	daa                                              ; $76df: $27
	jr   z, @+$15                                    ; $76e0: $28 $13

	inc  bc                                          ; $76e2: $03
	dec  hl                                          ; $76e3: $2b
	inc  e                                           ; $76e4: $1c
	inc  b                                           ; $76e5: $04
	inc  b                                           ; $76e6: $04
	inc  b                                           ; $76e7: $04
	inc  b                                           ; $76e8: $04
	inc  b                                           ; $76e9: $04
	ld   hl, $3020                                   ; $76ea: $21 $20 $30
	inc  b                                           ; $76ed: $04
	inc  b                                           ; $76ee: $04
	inc  b                                           ; $76ef: $04
	inc  b                                           ; $76f0: $04
	inc  b                                           ; $76f1: $04
	inc  b                                           ; $76f2: $04
	scf                                              ; $76f3: $37
	jr   c, jr_082_76fa                              ; $76f4: $38 $04

	dec  b                                           ; $76f6: $05
	dec  sp                                          ; $76f7: $3b
	inc  e                                           ; $76f8: $1c
	inc  b                                           ; $76f9: $04

jr_082_76fa:
	inc  b                                           ; $76fa: $04
	inc  b                                           ; $76fb: $04
	inc  b                                           ; $76fc: $04
	inc  b                                           ; $76fd: $04
	inc  b                                           ; $76fe: $04
	jr   nc, jr_082_7741                             ; $76ff: $30 $40

	ld   b, c                                        ; $7701: $41
	ld   b, c                                        ; $7702: $41
	ld   b, c                                        ; $7703: $41
	ld   b, c                                        ; $7704: $41
	ld   b, c                                        ; $7705: $41
	ld   b, c                                        ; $7706: $41
	ld   b, a                                        ; $7707: $47
	ld   c, b                                        ; $7708: $48
	ld   c, c                                        ; $7709: $49
	ld   c, d                                        ; $770a: $4a
	ld   c, e                                        ; $770b: $4b
	ld   c, h                                        ; $770c: $4c
	ld   b, c                                        ; $770d: $41
	ld   b, c                                        ; $770e: $41
	ld   b, c                                        ; $770f: $41
	ld   b, c                                        ; $7710: $41
	ld   b, c                                        ; $7711: $41
	ld   b, c                                        ; $7712: $41
	ld   b, b                                        ; $7713: $40
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
	ld   e, e                                        ; $771f: $5b
	ld   e, h                                        ; $7720: $5c
	ld   d, [hl]                                     ; $7721: $56
	ld   d, l                                        ; $7722: $55
	ld   d, h                                        ; $7723: $54
	ld   d, e                                        ; $7724: $53
	ld   d, d                                        ; $7725: $52
	ld   d, c                                        ; $7726: $51
	ld   d, b                                        ; $7727: $50
	ld   h, b                                        ; $7728: $60
	ld   h, c                                        ; $7729: $61
	ld   h, d                                        ; $772a: $62
	ld   h, e                                        ; $772b: $63
	ld   h, h                                        ; $772c: $64
	ld   h, l                                        ; $772d: $65
	ld   h, [hl]                                     ; $772e: $66
	ld   h, a                                        ; $772f: $67
	ld   l, b                                        ; $7730: $68
	ld   l, c                                        ; $7731: $69
	ld   l, d                                        ; $7732: $6a
	ld   l, e                                        ; $7733: $6b
	ld   l, h                                        ; $7734: $6c
	ld   h, [hl]                                     ; $7735: $66
	ld   h, l                                        ; $7736: $65
	ld   h, h                                        ; $7737: $64
	ld   h, e                                        ; $7738: $63
	ld   h, d                                        ; $7739: $62
	ld   h, c                                        ; $773a: $61
	ld   h, b                                        ; $773b: $60
	ld   c, l                                        ; $773c: $4d
	ld   h, c                                        ; $773d: $61
	ld   c, [hl]                                     ; $773e: $4e
	ld   c, a                                        ; $773f: $4f
	ld   h, h                                        ; $7740: $64

jr_082_7741:
	ld   h, l                                        ; $7741: $65
	ld   h, [hl]                                     ; $7742: $66
	ld   h, a                                        ; $7743: $67
	ld   e, l                                        ; $7744: $5d
	ld   e, [hl]                                     ; $7745: $5e
	ld   e, a                                        ; $7746: $5f
	ld   l, l                                        ; $7747: $6d
	ld   l, h                                        ; $7748: $6c
	ld   h, [hl]                                     ; $7749: $66
	ld   h, l                                        ; $774a: $65
	ld   h, h                                        ; $774b: $64
	ld   c, a                                        ; $774c: $4f
	ld   c, [hl]                                     ; $774d: $4e
	ld   h, c                                        ; $774e: $61
	ld   c, l                                        ; $774f: $4d
	dec  b                                           ; $7750: $05
	ld   b, $09                                      ; $7751: $06 $09
	ld   a, [bc]                                     ; $7753: $0a
	dec  bc                                          ; $7754: $0b
	dec  c                                           ; $7755: $0d
	ld   c, $0f                                      ; $7756: $0e $0f
	inc  de                                          ; $7758: $13
	inc  d                                           ; $7759: $14
	dec  d                                           ; $775a: $15
	ld   d, $1a                                      ; $775b: $16 $1a
	dec  e                                           ; $775d: $1d
	ld   e, $1f                                      ; $775e: $1e $1f
	ld   [hl+], a                                    ; $7760: $22
	inc  hl                                          ; $7761: $23
	inc  h                                           ; $7762: $24
	dec  h                                           ; $7763: $25
	ld   h, $2c                                      ; $7764: $26 $2c
	dec  l                                           ; $7766: $2d
	ld   l, $2f                                      ; $7767: $2e $2f
	ld   sp, $3332                                   ; $7769: $31 $32 $33
	inc  [hl]                                        ; $776c: $34
	dec  [hl]                                        ; $776d: $35
	ld   [hl], $3c                                   ; $776e: $36 $3c
	dec  a                                           ; $7770: $3d
	ld   a, $3f                                      ; $7771: $3e $3f
	ld   b, d                                        ; $7773: $42
	ld   b, e                                        ; $7774: $43
	ld   b, h                                        ; $7775: $44
	ld   b, l                                        ; $7776: $45
	ld   b, [hl]                                     ; $7777: $46
	dec  b                                           ; $7778: $05
	dec  b                                           ; $7779: $05
	dec  b                                           ; $777a: $05
	dec  b                                           ; $777b: $05
	dec  b                                           ; $777c: $05
	dec  b                                           ; $777d: $05
	dec  b                                           ; $777e: $05
	inc  bc                                          ; $777f: $03
	inc  bc                                          ; $7780: $03
	inc  bc                                          ; $7781: $03
	inc  bc                                          ; $7782: $03
	inc  bc                                          ; $7783: $03
	inc  bc                                          ; $7784: $03
	dec  h                                           ; $7785: $25
	dec  h                                           ; $7786: $25
	dec  h                                           ; $7787: $25
	dec  h                                           ; $7788: $25
	dec  h                                           ; $7789: $25
	dec  h                                           ; $778a: $25
	dec  h                                           ; $778b: $25
	dec  b                                           ; $778c: $05
	dec  b                                           ; $778d: $05
	dec  b                                           ; $778e: $05
	dec  b                                           ; $778f: $05
	dec  b                                           ; $7790: $05
	dec  b                                           ; $7791: $05
	dec  b                                           ; $7792: $05
	inc  bc                                          ; $7793: $03
	inc  bc                                          ; $7794: $03
	dec  bc                                          ; $7795: $0b
	dec  bc                                          ; $7796: $0b
	inc  bc                                          ; $7797: $03
	inc  bc                                          ; $7798: $03
	dec  h                                           ; $7799: $25
	dec  h                                           ; $779a: $25
	dec  h                                           ; $779b: $25
	dec  h                                           ; $779c: $25
	dec  h                                           ; $779d: $25
	dec  h                                           ; $779e: $25
	dec  h                                           ; $779f: $25
	dec  b                                           ; $77a0: $05
	dec  b                                           ; $77a1: $05
	dec  b                                           ; $77a2: $05
	dec  b                                           ; $77a3: $05
	dec  b                                           ; $77a4: $05
	dec  b                                           ; $77a5: $05
	dec  b                                           ; $77a6: $05
	inc  bc                                          ; $77a7: $03
	inc  bc                                          ; $77a8: $03
	dec  bc                                          ; $77a9: $0b
	dec  bc                                          ; $77aa: $0b
	inc  bc                                          ; $77ab: $03
	inc  bc                                          ; $77ac: $03
	dec  h                                           ; $77ad: $25
	dec  h                                           ; $77ae: $25
	dec  h                                           ; $77af: $25
	dec  h                                           ; $77b0: $25
	dec  h                                           ; $77b1: $25
	dec  h                                           ; $77b2: $25
	dec  h                                           ; $77b3: $25
	dec  b                                           ; $77b4: $05
	dec  b                                           ; $77b5: $05
	dec  b                                           ; $77b6: $05
	dec  b                                           ; $77b7: $05
	dec  b                                           ; $77b8: $05
	dec  b                                           ; $77b9: $05
	dec  b                                           ; $77ba: $05
	inc  bc                                          ; $77bb: $03
	inc  bc                                          ; $77bc: $03
	dec  bc                                          ; $77bd: $0b
	dec  bc                                          ; $77be: $0b
	inc  bc                                          ; $77bf: $03
	inc  bc                                          ; $77c0: $03
	dec  h                                           ; $77c1: $25
	dec  h                                           ; $77c2: $25
	dec  h                                           ; $77c3: $25
	dec  h                                           ; $77c4: $25
	dec  h                                           ; $77c5: $25
	dec  h                                           ; $77c6: $25
	dec  h                                           ; $77c7: $25
	dec  b                                           ; $77c8: $05
	dec  b                                           ; $77c9: $05
	dec  b                                           ; $77ca: $05
	dec  b                                           ; $77cb: $05
	dec  b                                           ; $77cc: $05
	dec  b                                           ; $77cd: $05
	dec  b                                           ; $77ce: $05
	inc  bc                                          ; $77cf: $03
	inc  bc                                          ; $77d0: $03
	inc  bc                                          ; $77d1: $03
	inc  bc                                          ; $77d2: $03
	inc  bc                                          ; $77d3: $03
	inc  bc                                          ; $77d4: $03
	dec  h                                           ; $77d5: $25
	dec  h                                           ; $77d6: $25
	dec  h                                           ; $77d7: $25
	dec  h                                           ; $77d8: $25
	dec  h                                           ; $77d9: $25
	dec  h                                           ; $77da: $25
	dec  h                                           ; $77db: $25
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
	inc  hl                                          ; $77e9: $23
	inc  hl                                          ; $77ea: $23
	inc  hl                                          ; $77eb: $23
	inc  hl                                          ; $77ec: $23
	inc  hl                                          ; $77ed: $23
	inc  hl                                          ; $77ee: $23
	inc  hl                                          ; $77ef: $23
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
	inc  hl                                          ; $77fd: $23
	inc  hl                                          ; $77fe: $23
	inc  hl                                          ; $77ff: $23
	inc  hl                                          ; $7800: $23
	inc  hl                                          ; $7801: $23
	inc  hl                                          ; $7802: $23
	inc  hl                                          ; $7803: $23
	inc  bc                                          ; $7804: $03
	inc  bc                                          ; $7805: $03
	inc  bc                                          ; $7806: $03
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
	inc  hl                                          ; $7811: $23
	inc  hl                                          ; $7812: $23
	inc  hl                                          ; $7813: $23
	inc  hl                                          ; $7814: $23
	inc  hl                                          ; $7815: $23
	inc  hl                                          ; $7816: $23
	inc  hl                                          ; $7817: $23
	inc  bc                                          ; $7818: $03
	inc  bc                                          ; $7819: $03
	inc  bc                                          ; $781a: $03
	inc  bc                                          ; $781b: $03
	inc  bc                                          ; $781c: $03
	inc  bc                                          ; $781d: $03
	inc  bc                                          ; $781e: $03
	inc  bc                                          ; $781f: $03
	inc  bc                                          ; $7820: $03
	inc  bc                                          ; $7821: $03
	inc  bc                                          ; $7822: $03
	inc  bc                                          ; $7823: $03
	inc  bc                                          ; $7824: $03
	inc  bc                                          ; $7825: $03
	inc  bc                                          ; $7826: $03
	inc  bc                                          ; $7827: $03
	inc  bc                                          ; $7828: $03
	inc  bc                                          ; $7829: $03
	inc  bc                                          ; $782a: $03
	inc  bc                                          ; $782b: $03
	inc  bc                                          ; $782c: $03
	inc  bc                                          ; $782d: $03
	inc  bc                                          ; $782e: $03
	inc  bc                                          ; $782f: $03
	inc  bc                                          ; $7830: $03
	inc  bc                                          ; $7831: $03
	inc  bc                                          ; $7832: $03
	inc  bc                                          ; $7833: $03
	inc  bc                                          ; $7834: $03
	inc  bc                                          ; $7835: $03
	inc  bc                                          ; $7836: $03
	inc  bc                                          ; $7837: $03
	inc  bc                                          ; $7838: $03
	inc  bc                                          ; $7839: $03
	inc  bc                                          ; $783a: $03
	inc  bc                                          ; $783b: $03
	inc  bc                                          ; $783c: $03
	inc  bc                                          ; $783d: $03
	inc  bc                                          ; $783e: $03
	inc  bc                                          ; $783f: $03
	nop                                              ; $7840: $00
	ld   bc, $0302                                   ; $7841: $01 $02 $03
	inc  b                                           ; $7844: $04
	inc  b                                           ; $7845: $04
	inc  b                                           ; $7846: $04
	rlca                                             ; $7847: $07
	halt                                             ; $7848: $76
	ld   [hl], a                                     ; $7849: $77
	ld   a, b                                        ; $784a: $78
	ld   a, c                                        ; $784b: $79
	inc  c                                           ; $784c: $0c
	inc  b                                           ; $784d: $04
	inc  b                                           ; $784e: $04
	inc  b                                           ; $784f: $04
	inc  bc                                          ; $7850: $03
	ld   [bc], a                                     ; $7851: $02
	ld   bc, $1000                                   ; $7852: $01 $00 $10
	ld   de, $0412                                   ; $7855: $11 $12 $04
	inc  b                                           ; $7858: $04
	inc  b                                           ; $7859: $04
	inc  b                                           ; $785a: $04
	rla                                              ; $785b: $17
	ld   a, d                                        ; $785c: $7a
	ld   e, $25                                      ; $785d: $1e $25
	ld   a, l                                        ; $785f: $7d
	inc  e                                           ; $7860: $1c
	inc  b                                           ; $7861: $04
	inc  b                                           ; $7862: $04
	inc  b                                           ; $7863: $04
	inc  b                                           ; $7864: $04
	ld   [de], a                                     ; $7865: $12
	ld   de, $2010                                   ; $7866: $11 $10 $20
	ld   hl, $0404                                   ; $7869: $21 $04 $04
	inc  b                                           ; $786c: $04
	inc  b                                           ; $786d: $04
	inc  b                                           ; $786e: $04
	daa                                              ; $786f: $27
	ld   a, [hl]                                     ; $7870: $7e
	ld   h, $27                                      ; $7871: $26 $27
	ld   bc, $041c                                   ; $7873: $01 $1c $04
	inc  b                                           ; $7876: $04
	inc  b                                           ; $7877: $04
	inc  b                                           ; $7878: $04
	inc  b                                           ; $7879: $04
	ld   hl, $3020                                   ; $787a: $21 $20 $30
	inc  b                                           ; $787d: $04
	inc  b                                           ; $787e: $04
	inc  b                                           ; $787f: $04
	inc  b                                           ; $7880: $04
	inc  b                                           ; $7881: $04
	inc  b                                           ; $7882: $04
	scf                                              ; $7883: $37
	ld   a, [hl]                                     ; $7884: $7e
	ld   [bc], a                                     ; $7885: $02
	inc  bc                                          ; $7886: $03
	inc  b                                           ; $7887: $04
	inc  e                                           ; $7888: $1c
	inc  b                                           ; $7889: $04
	inc  b                                           ; $788a: $04
	inc  b                                           ; $788b: $04
	inc  b                                           ; $788c: $04
	inc  b                                           ; $788d: $04
	inc  b                                           ; $788e: $04
	jr   nc, jr_082_78d1                             ; $788f: $30 $40

	ld   b, c                                        ; $7891: $41
	ld   b, c                                        ; $7892: $41
	ld   b, c                                        ; $7893: $41
	ld   b, c                                        ; $7894: $41
	ld   b, c                                        ; $7895: $41
	ld   b, c                                        ; $7896: $41
	ld   b, a                                        ; $7897: $47
	dec  b                                           ; $7898: $05
	ld   b, $07                                      ; $7899: $06 $07
	ld   [$414c], sp                                 ; $789b: $08 $4c $41
	ld   b, c                                        ; $789e: $41
	ld   b, c                                        ; $789f: $41
	ld   b, c                                        ; $78a0: $41
	ld   b, c                                        ; $78a1: $41
	ld   b, c                                        ; $78a2: $41
	ld   b, b                                        ; $78a3: $40
	ld   d, b                                        ; $78a4: $50
	ld   d, c                                        ; $78a5: $51
	ld   d, d                                        ; $78a6: $52
	ld   d, e                                        ; $78a7: $53
	ld   d, h                                        ; $78a8: $54
	ld   d, l                                        ; $78a9: $55
	ld   d, [hl]                                     ; $78aa: $56
	add  hl, bc                                      ; $78ab: $09
	jr   z, jr_082_78d7                              ; $78ac: $28 $29

	inc  c                                           ; $78ae: $0c
	dec  c                                           ; $78af: $0d
	ld   e, h                                        ; $78b0: $5c
	ld   d, [hl]                                     ; $78b1: $56
	ld   d, l                                        ; $78b2: $55
	ld   d, h                                        ; $78b3: $54
	ld   d, e                                        ; $78b4: $53
	ld   d, d                                        ; $78b5: $52
	ld   d, c                                        ; $78b6: $51
	ld   d, b                                        ; $78b7: $50
	ld   h, b                                        ; $78b8: $60
	ld   h, c                                        ; $78b9: $61
	ld   h, d                                        ; $78ba: $62
	ld   h, e                                        ; $78bb: $63
	ld   h, h                                        ; $78bc: $64
	ld   h, l                                        ; $78bd: $65
	ld   h, [hl]                                     ; $78be: $66
	ld   h, a                                        ; $78bf: $67
	ld   c, $24                                      ; $78c0: $0e $24
	db   $10                                         ; $78c2: $10
	ld   de, $666c                                   ; $78c3: $11 $6c $66
	ld   h, l                                        ; $78c6: $65
	ld   h, h                                        ; $78c7: $64
	ld   h, e                                        ; $78c8: $63
	ld   h, d                                        ; $78c9: $62
	ld   h, c                                        ; $78ca: $61
	ld   h, b                                        ; $78cb: $60
	ld   e, l                                        ; $78cc: $5d
	ld   h, c                                        ; $78cd: $61
	ld   e, [hl]                                     ; $78ce: $5e
	ld   e, a                                        ; $78cf: $5f
	ld   h, h                                        ; $78d0: $64

jr_082_78d1:
	ld   h, l                                        ; $78d1: $65
	ld   h, [hl]                                     ; $78d2: $66
	ld   h, a                                        ; $78d3: $67
	ld   c, $12                                      ; $78d4: $0e $12
	inc  de                                          ; $78d6: $13

jr_082_78d7:
	inc  d                                           ; $78d7: $14
	ld   l, h                                        ; $78d8: $6c
	ld   h, [hl]                                     ; $78d9: $66
	ld   h, l                                        ; $78da: $65
	ld   h, h                                        ; $78db: $64
	ld   e, a                                        ; $78dc: $5f
	ld   e, [hl]                                     ; $78dd: $5e
	ld   h, c                                        ; $78de: $61
	ld   e, l                                        ; $78df: $5d
	dec  b                                           ; $78e0: $05
	ld   b, $0d                                      ; $78e1: $06 $0d
	ld   c, $0f                                      ; $78e3: $0e $0f
	inc  de                                          ; $78e5: $13
	inc  d                                           ; $78e6: $14
	dec  d                                           ; $78e7: $15
	dec  d                                           ; $78e8: $15
	ld   d, $17                                      ; $78e9: $16 $17
	jr   jr_082_790f                                 ; $78eb: $18 $22

	inc  hl                                          ; $78ed: $23
	inc  h                                           ; $78ee: $24
	dec  h                                           ; $78ef: $25
	ld   h, $2c                                      ; $78f0: $26 $2c
	dec  l                                           ; $78f2: $2d
	ld   l, $2f                                      ; $78f3: $2e $2f
	ld   sp, $3332                                   ; $78f5: $31 $32 $33
	inc  [hl]                                        ; $78f8: $34
	dec  [hl]                                        ; $78f9: $35
	ld   [hl], $19                                   ; $78fa: $36 $19
	ld   a, [de]                                     ; $78fc: $1a
	dec  de                                          ; $78fd: $1b
	inc  e                                           ; $78fe: $1c
	dec  e                                           ; $78ff: $1d
	ld   b, d                                        ; $7900: $42
	ld   b, e                                        ; $7901: $43
	ld   b, h                                        ; $7902: $44
	ld   b, l                                        ; $7903: $45
	ld   b, [hl]                                     ; $7904: $46
	ld   c, l                                        ; $7905: $4d
	ld   c, [hl]                                     ; $7906: $4e
	ld   c, a                                        ; $7907: $4f
	dec  b                                           ; $7908: $05
	dec  b                                           ; $7909: $05
	dec  b                                           ; $790a: $05
	dec  b                                           ; $790b: $05
	dec  b                                           ; $790c: $05
	dec  b                                           ; $790d: $05
	dec  b                                           ; $790e: $05

jr_082_790f:
	inc  bc                                          ; $790f: $03
	inc  bc                                          ; $7910: $03
	inc  bc                                          ; $7911: $03
	inc  bc                                          ; $7912: $03
	inc  bc                                          ; $7913: $03
	inc  bc                                          ; $7914: $03
	dec  h                                           ; $7915: $25
	dec  h                                           ; $7916: $25
	dec  h                                           ; $7917: $25
	dec  h                                           ; $7918: $25
	dec  h                                           ; $7919: $25
	dec  h                                           ; $791a: $25
	dec  h                                           ; $791b: $25
	dec  b                                           ; $791c: $05
	dec  b                                           ; $791d: $05
	dec  b                                           ; $791e: $05
	dec  b                                           ; $791f: $05
	dec  b                                           ; $7920: $05
	dec  b                                           ; $7921: $05
	dec  b                                           ; $7922: $05
	inc  bc                                          ; $7923: $03
	inc  bc                                          ; $7924: $03
	dec  bc                                          ; $7925: $0b
	dec  bc                                          ; $7926: $0b
	inc  bc                                          ; $7927: $03
	inc  bc                                          ; $7928: $03
	dec  h                                           ; $7929: $25
	dec  h                                           ; $792a: $25
	dec  h                                           ; $792b: $25
	dec  h                                           ; $792c: $25
	dec  h                                           ; $792d: $25
	dec  h                                           ; $792e: $25
	dec  h                                           ; $792f: $25
	dec  b                                           ; $7930: $05
	dec  b                                           ; $7931: $05
	dec  b                                           ; $7932: $05
	dec  b                                           ; $7933: $05
	dec  b                                           ; $7934: $05
	dec  b                                           ; $7935: $05
	dec  b                                           ; $7936: $05
	inc  bc                                          ; $7937: $03
	inc  bc                                          ; $7938: $03
	dec  bc                                          ; $7939: $0b
	dec  bc                                          ; $793a: $0b
	dec  bc                                          ; $793b: $0b
	inc  bc                                          ; $793c: $03
	dec  h                                           ; $793d: $25
	dec  h                                           ; $793e: $25
	dec  h                                           ; $793f: $25
	dec  h                                           ; $7940: $25
	dec  h                                           ; $7941: $25
	dec  h                                           ; $7942: $25
	dec  h                                           ; $7943: $25
	dec  b                                           ; $7944: $05
	dec  b                                           ; $7945: $05
	dec  b                                           ; $7946: $05
	dec  b                                           ; $7947: $05
	dec  b                                           ; $7948: $05
	dec  b                                           ; $7949: $05
	dec  b                                           ; $794a: $05
	inc  bc                                          ; $794b: $03
	inc  bc                                          ; $794c: $03
	dec  bc                                          ; $794d: $0b
	dec  bc                                          ; $794e: $0b
	dec  bc                                          ; $794f: $0b
	inc  bc                                          ; $7950: $03
	dec  h                                           ; $7951: $25
	dec  h                                           ; $7952: $25
	dec  h                                           ; $7953: $25
	dec  h                                           ; $7954: $25
	dec  h                                           ; $7955: $25
	dec  h                                           ; $7956: $25
	dec  h                                           ; $7957: $25
	dec  b                                           ; $7958: $05
	dec  b                                           ; $7959: $05
	dec  b                                           ; $795a: $05
	dec  b                                           ; $795b: $05
	dec  b                                           ; $795c: $05
	dec  b                                           ; $795d: $05
	dec  b                                           ; $795e: $05
	inc  bc                                          ; $795f: $03
	dec  bc                                          ; $7960: $0b
	dec  bc                                          ; $7961: $0b
	dec  bc                                          ; $7962: $0b
	dec  bc                                          ; $7963: $0b
	inc  bc                                          ; $7964: $03
	dec  h                                           ; $7965: $25
	dec  h                                           ; $7966: $25
	dec  h                                           ; $7967: $25
	dec  h                                           ; $7968: $25
	dec  h                                           ; $7969: $25
	dec  h                                           ; $796a: $25
	dec  h                                           ; $796b: $25
	inc  bc                                          ; $796c: $03
	inc  bc                                          ; $796d: $03
	inc  bc                                          ; $796e: $03
	inc  bc                                          ; $796f: $03
	inc  bc                                          ; $7970: $03
	inc  bc                                          ; $7971: $03
	inc  bc                                          ; $7972: $03
	dec  bc                                          ; $7973: $0b
	dec  bc                                          ; $7974: $0b
	dec  bc                                          ; $7975: $0b
	dec  bc                                          ; $7976: $0b
	dec  bc                                          ; $7977: $0b
	inc  bc                                          ; $7978: $03
	inc  hl                                          ; $7979: $23
	inc  hl                                          ; $797a: $23
	inc  hl                                          ; $797b: $23
	inc  hl                                          ; $797c: $23
	inc  hl                                          ; $797d: $23
	inc  hl                                          ; $797e: $23
	inc  hl                                          ; $797f: $23
	inc  bc                                          ; $7980: $03
	inc  bc                                          ; $7981: $03
	inc  bc                                          ; $7982: $03
	inc  bc                                          ; $7983: $03
	inc  bc                                          ; $7984: $03
	inc  bc                                          ; $7985: $03
	inc  bc                                          ; $7986: $03
	inc  bc                                          ; $7987: $03
	dec  bc                                          ; $7988: $0b
	dec  bc                                          ; $7989: $0b
	dec  bc                                          ; $798a: $0b
	dec  bc                                          ; $798b: $0b
	inc  bc                                          ; $798c: $03
	inc  hl                                          ; $798d: $23
	inc  hl                                          ; $798e: $23
	inc  hl                                          ; $798f: $23
	inc  hl                                          ; $7990: $23
	inc  hl                                          ; $7991: $23
	inc  hl                                          ; $7992: $23
	inc  hl                                          ; $7993: $23
	inc  bc                                          ; $7994: $03
	inc  bc                                          ; $7995: $03
	inc  bc                                          ; $7996: $03
	inc  bc                                          ; $7997: $03
	inc  bc                                          ; $7998: $03
	inc  bc                                          ; $7999: $03
	inc  bc                                          ; $799a: $03
	inc  bc                                          ; $799b: $03
	dec  bc                                          ; $799c: $0b
	dec  bc                                          ; $799d: $0b
	dec  bc                                          ; $799e: $0b
	dec  bc                                          ; $799f: $0b
	inc  bc                                          ; $79a0: $03
	inc  hl                                          ; $79a1: $23
	inc  hl                                          ; $79a2: $23
	inc  hl                                          ; $79a3: $23
	inc  hl                                          ; $79a4: $23
	inc  hl                                          ; $79a5: $23
	inc  hl                                          ; $79a6: $23
	inc  hl                                          ; $79a7: $23
	inc  bc                                          ; $79a8: $03
	inc  bc                                          ; $79a9: $03
	inc  bc                                          ; $79aa: $03
	inc  bc                                          ; $79ab: $03
	inc  bc                                          ; $79ac: $03
	inc  bc                                          ; $79ad: $03
	inc  bc                                          ; $79ae: $03
	inc  bc                                          ; $79af: $03
	dec  bc                                          ; $79b0: $0b
	dec  bc                                          ; $79b1: $0b
	dec  bc                                          ; $79b2: $0b
	dec  bc                                          ; $79b3: $0b
	inc  bc                                          ; $79b4: $03
	inc  bc                                          ; $79b5: $03
	inc  bc                                          ; $79b6: $03
	inc  bc                                          ; $79b7: $03
	inc  bc                                          ; $79b8: $03
	inc  bc                                          ; $79b9: $03
	inc  bc                                          ; $79ba: $03
	inc  bc                                          ; $79bb: $03
	inc  bc                                          ; $79bc: $03
	inc  bc                                          ; $79bd: $03
	inc  bc                                          ; $79be: $03
	inc  bc                                          ; $79bf: $03
	inc  bc                                          ; $79c0: $03
	inc  bc                                          ; $79c1: $03
	inc  bc                                          ; $79c2: $03
	dec  bc                                          ; $79c3: $0b
	dec  bc                                          ; $79c4: $0b
	dec  bc                                          ; $79c5: $0b
	dec  bc                                          ; $79c6: $0b
	dec  bc                                          ; $79c7: $0b
	inc  bc                                          ; $79c8: $03
	inc  bc                                          ; $79c9: $03
	inc  bc                                          ; $79ca: $03
	inc  bc                                          ; $79cb: $03
	inc  bc                                          ; $79cc: $03
	inc  bc                                          ; $79cd: $03
	inc  bc                                          ; $79ce: $03
	inc  bc                                          ; $79cf: $03
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
	jr   nz, jr_082_7a03                             ; $79e0: $20 $21

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
	ld   e, $1f                                      ; $79f2: $1e $1f
	jr   nc, jr_082_7a27                             ; $79f4: $30 $31

	ld   [hl-], a                                    ; $79f6: $32
	inc  sp                                          ; $79f7: $33
	jr   nz, @+$23                                   ; $79f8: $20 $21

	ld   [hl+], a                                    ; $79fa: $22
	inc  hl                                          ; $79fb: $23
	inc  h                                           ; $79fc: $24
	dec  h                                           ; $79fd: $25
	ld   h, $27                                      ; $79fe: $26 $27
	jr   z, jr_082_7a2b                              ; $7a00: $28 $29

	ld   a, [hl+]                                    ; $7a02: $2a

jr_082_7a03:
	dec  hl                                          ; $7a03: $2b
	inc  l                                           ; $7a04: $2c
	dec  l                                           ; $7a05: $2d
	ld   l, $2f                                      ; $7a06: $2e $2f
	inc  h                                           ; $7a08: $24
	dec  h                                           ; $7a09: $25
	ld   h, $27                                      ; $7a0a: $26 $27
	jr   nc, jr_082_7a3f                             ; $7a0c: $30 $31

	ld   [hl-], a                                    ; $7a0e: $32
	inc  sp                                          ; $7a0f: $33
	inc  [hl]                                        ; $7a10: $34
	dec  [hl]                                        ; $7a11: $35
	ld   [hl], $37                                   ; $7a12: $36 $37
	jr   c, jr_082_7a4f                              ; $7a14: $38 $39

	ld   a, [hl-]                                    ; $7a16: $3a
	dec  sp                                          ; $7a17: $3b
	inc  a                                           ; $7a18: $3c
	dec  a                                           ; $7a19: $3d
	ld   a, $3f                                      ; $7a1a: $3e $3f
	inc  [hl]                                        ; $7a1c: $34
	dec  [hl]                                        ; $7a1d: $35
	ld   [hl], $37                                   ; $7a1e: $36 $37
	ld   b, b                                        ; $7a20: $40
	ld   b, c                                        ; $7a21: $41
	ld   b, d                                        ; $7a22: $42
	ld   b, e                                        ; $7a23: $43
	ld   b, h                                        ; $7a24: $44
	ld   b, l                                        ; $7a25: $45
	ld   b, [hl]                                     ; $7a26: $46

jr_082_7a27:
	ld   b, a                                        ; $7a27: $47
	ld   c, b                                        ; $7a28: $48
	ld   c, c                                        ; $7a29: $49
	ld   c, d                                        ; $7a2a: $4a

jr_082_7a2b:
	ld   c, e                                        ; $7a2b: $4b
	ld   c, h                                        ; $7a2c: $4c
	ld   c, l                                        ; $7a2d: $4d
	ld   c, [hl]                                     ; $7a2e: $4e
	ld   c, a                                        ; $7a2f: $4f
	jr   z, @+$2b                                    ; $7a30: $28 $29

	ld   a, [hl+]                                    ; $7a32: $2a
	dec  hl                                          ; $7a33: $2b
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

jr_082_7a3f:
	ld   e, e                                        ; $7a3f: $5b
	ld   e, h                                        ; $7a40: $5c
	ld   e, l                                        ; $7a41: $5d
	ld   e, [hl]                                     ; $7a42: $5e
	ld   e, a                                        ; $7a43: $5f
	jr   c, @+$3b                                    ; $7a44: $38 $39

	ld   a, [hl-]                                    ; $7a46: $3a
	dec  sp                                          ; $7a47: $3b
	ld   h, b                                        ; $7a48: $60
	ld   h, c                                        ; $7a49: $61
	ld   h, d                                        ; $7a4a: $62
	ld   h, e                                        ; $7a4b: $63
	ld   h, h                                        ; $7a4c: $64
	ld   h, l                                        ; $7a4d: $65
	ld   h, [hl]                                     ; $7a4e: $66

jr_082_7a4f:
	ld   h, a                                        ; $7a4f: $67
	ld   l, b                                        ; $7a50: $68
	ld   l, c                                        ; $7a51: $69
	ld   l, d                                        ; $7a52: $6a
	ld   l, e                                        ; $7a53: $6b
	ld   l, h                                        ; $7a54: $6c
	ld   l, l                                        ; $7a55: $6d
	ld   l, [hl]                                     ; $7a56: $6e
	ld   l, a                                        ; $7a57: $6f
	inc  l                                           ; $7a58: $2c
	dec  l                                           ; $7a59: $2d
	ld   l, $2f                                      ; $7a5a: $2e $2f
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
	ld   a, a                                        ; $7a6b: $7f
	inc  a                                           ; $7a6c: $3c
	dec  a                                           ; $7a6d: $3d
	ld   a, $3f                                      ; $7a6e: $3e $3f
	nop                                              ; $7a70: $00
	ld   bc, $0302                                   ; $7a71: $01 $02 $03
	inc  b                                           ; $7a74: $04
	dec  b                                           ; $7a75: $05
	ld   b, $07                                      ; $7a76: $06 $07
	ld   [$0a09], sp                                 ; $7a78: $08 $09 $0a
	dec  bc                                          ; $7a7b: $0b
	inc  c                                           ; $7a7c: $0c
	dec  c                                           ; $7a7d: $0d
	ld   c, $0f                                      ; $7a7e: $0e $0f
	ld   b, b                                        ; $7a80: $40
	ld   b, c                                        ; $7a81: $41
	ld   b, d                                        ; $7a82: $42
	ld   b, e                                        ; $7a83: $43
	db   $10                                         ; $7a84: $10
	ld   de, $1312                                   ; $7a85: $11 $12 $13
	inc  d                                           ; $7a88: $14
	dec  d                                           ; $7a89: $15
	ld   d, $17                                      ; $7a8a: $16 $17
	jr   jr_082_7aa7                                 ; $7a8c: $18 $19

	ld   a, [de]                                     ; $7a8e: $1a
	dec  de                                          ; $7a8f: $1b
	inc  e                                           ; $7a90: $1c
	dec  e                                           ; $7a91: $1d
	ld   e, $1f                                      ; $7a92: $1e $1f
	ld   b, h                                        ; $7a94: $44
	ld   b, l                                        ; $7a95: $45
	ld   b, [hl]                                     ; $7a96: $46
	ld   b, a                                        ; $7a97: $47
	dec  b                                           ; $7a98: $05
	dec  b                                           ; $7a99: $05
	dec  b                                           ; $7a9a: $05
	dec  b                                           ; $7a9b: $05
	dec  b                                           ; $7a9c: $05
	dec  b                                           ; $7a9d: $05
	dec  b                                           ; $7a9e: $05
	dec  b                                           ; $7a9f: $05
	dec  b                                           ; $7aa0: $05
	dec  b                                           ; $7aa1: $05
	dec  b                                           ; $7aa2: $05
	dec  b                                           ; $7aa3: $05
	dec  b                                           ; $7aa4: $05
	dec  b                                           ; $7aa5: $05
	dec  b                                           ; $7aa6: $05

jr_082_7aa7:
	dec  b                                           ; $7aa7: $05
	dec  c                                           ; $7aa8: $0d
	dec  c                                           ; $7aa9: $0d
	dec  c                                           ; $7aaa: $0d
	dec  c                                           ; $7aab: $0d
	dec  b                                           ; $7aac: $05
	dec  b                                           ; $7aad: $05
	dec  b                                           ; $7aae: $05
	dec  b                                           ; $7aaf: $05
	dec  b                                           ; $7ab0: $05
	dec  b                                           ; $7ab1: $05
	dec  b                                           ; $7ab2: $05
	dec  b                                           ; $7ab3: $05
	inc  bc                                          ; $7ab4: $03
	inc  bc                                          ; $7ab5: $03
	inc  bc                                          ; $7ab6: $03
	inc  bc                                          ; $7ab7: $03
	dec  b                                           ; $7ab8: $05
	dec  b                                           ; $7ab9: $05
	dec  b                                           ; $7aba: $05
	dec  b                                           ; $7abb: $05
	dec  c                                           ; $7abc: $0d
	dec  c                                           ; $7abd: $0d
	dec  c                                           ; $7abe: $0d
	dec  c                                           ; $7abf: $0d
	dec  b                                           ; $7ac0: $05
	dec  b                                           ; $7ac1: $05
	dec  b                                           ; $7ac2: $05
	dec  b                                           ; $7ac3: $05
	dec  b                                           ; $7ac4: $05
	dec  b                                           ; $7ac5: $05
	dec  b                                           ; $7ac6: $05
	dec  b                                           ; $7ac7: $05
	inc  bc                                          ; $7ac8: $03
	inc  bc                                          ; $7ac9: $03
	inc  bc                                          ; $7aca: $03
	inc  bc                                          ; $7acb: $03
	dec  b                                           ; $7acc: $05
	dec  b                                           ; $7acd: $05
	dec  b                                           ; $7ace: $05
	dec  b                                           ; $7acf: $05
	dec  c                                           ; $7ad0: $0d
	dec  c                                           ; $7ad1: $0d
	dec  c                                           ; $7ad2: $0d
	dec  c                                           ; $7ad3: $0d
	dec  b                                           ; $7ad4: $05
	dec  b                                           ; $7ad5: $05
	dec  b                                           ; $7ad6: $05
	dec  b                                           ; $7ad7: $05
	dec  b                                           ; $7ad8: $05
	dec  b                                           ; $7ad9: $05
	dec  b                                           ; $7ada: $05
	dec  b                                           ; $7adb: $05
	inc  bc                                          ; $7adc: $03
	inc  bc                                          ; $7add: $03
	inc  bc                                          ; $7ade: $03
	inc  bc                                          ; $7adf: $03
	dec  b                                           ; $7ae0: $05
	dec  b                                           ; $7ae1: $05
	dec  b                                           ; $7ae2: $05
	dec  b                                           ; $7ae3: $05
	dec  c                                           ; $7ae4: $0d
	dec  c                                           ; $7ae5: $0d
	dec  c                                           ; $7ae6: $0d
	dec  c                                           ; $7ae7: $0d
	dec  b                                           ; $7ae8: $05
	dec  b                                           ; $7ae9: $05
	dec  b                                           ; $7aea: $05
	dec  b                                           ; $7aeb: $05
	dec  b                                           ; $7aec: $05
	dec  b                                           ; $7aed: $05
	dec  b                                           ; $7aee: $05
	dec  b                                           ; $7aef: $05
	inc  bc                                          ; $7af0: $03
	inc  bc                                          ; $7af1: $03
	inc  bc                                          ; $7af2: $03
	inc  bc                                          ; $7af3: $03
	dec  b                                           ; $7af4: $05
	dec  b                                           ; $7af5: $05
	dec  b                                           ; $7af6: $05
	dec  b                                           ; $7af7: $05
	dec  c                                           ; $7af8: $0d
	dec  c                                           ; $7af9: $0d
	dec  c                                           ; $7afa: $0d
	dec  c                                           ; $7afb: $0d
	dec  b                                           ; $7afc: $05
	dec  b                                           ; $7afd: $05
	dec  b                                           ; $7afe: $05
	dec  b                                           ; $7aff: $05
	dec  b                                           ; $7b00: $05
	dec  b                                           ; $7b01: $05
	dec  b                                           ; $7b02: $05
	dec  b                                           ; $7b03: $05
	inc  bc                                          ; $7b04: $03
	dec  b                                           ; $7b05: $05
	inc  bc                                          ; $7b06: $03
	inc  bc                                          ; $7b07: $03
	inc  b                                           ; $7b08: $04
	inc  b                                           ; $7b09: $04
	dec  b                                           ; $7b0a: $05
	dec  b                                           ; $7b0b: $05
	dec  c                                           ; $7b0c: $0d
	dec  c                                           ; $7b0d: $0d
	dec  c                                           ; $7b0e: $0d
	dec  c                                           ; $7b0f: $0d
	dec  b                                           ; $7b10: $05
	dec  b                                           ; $7b11: $05
	dec  b                                           ; $7b12: $05
	dec  b                                           ; $7b13: $05
	inc  b                                           ; $7b14: $04
	inc  b                                           ; $7b15: $04
	inc  b                                           ; $7b16: $04
	inc  b                                           ; $7b17: $04
	dec  b                                           ; $7b18: $05
	dec  b                                           ; $7b19: $05
	dec  b                                           ; $7b1a: $05
	inc  bc                                          ; $7b1b: $03
	dec  b                                           ; $7b1c: $05
	inc  b                                           ; $7b1d: $04
	dec  b                                           ; $7b1e: $05
	inc  b                                           ; $7b1f: $04
	inc  c                                           ; $7b20: $0c
	dec  c                                           ; $7b21: $0d
	dec  c                                           ; $7b22: $0d
	dec  c                                           ; $7b23: $0d
	dec  b                                           ; $7b24: $05
	dec  b                                           ; $7b25: $05
	dec  b                                           ; $7b26: $05
	inc  b                                           ; $7b27: $04
	inc  b                                           ; $7b28: $04
	inc  b                                           ; $7b29: $04
	dec  b                                           ; $7b2a: $05
	inc  b                                           ; $7b2b: $04
	dec  b                                           ; $7b2c: $05
	dec  b                                           ; $7b2d: $05
	dec  b                                           ; $7b2e: $05
	inc  bc                                          ; $7b2f: $03
	dec  b                                           ; $7b30: $05
	inc  b                                           ; $7b31: $04
	inc  b                                           ; $7b32: $04
	inc  b                                           ; $7b33: $04
	inc  c                                           ; $7b34: $0c
	dec  c                                           ; $7b35: $0d
	dec  c                                           ; $7b36: $0d
	dec  c                                           ; $7b37: $0d
	dec  c                                           ; $7b38: $0d
	dec  c                                           ; $7b39: $0d
	dec  c                                           ; $7b3a: $0d
	dec  c                                           ; $7b3b: $0d
	dec  c                                           ; $7b3c: $0d
	dec  c                                           ; $7b3d: $0d
	dec  c                                           ; $7b3e: $0d
	dec  bc                                          ; $7b3f: $0b
	dec  c                                           ; $7b40: $0d
	dec  c                                           ; $7b41: $0d
	dec  c                                           ; $7b42: $0d
	dec  c                                           ; $7b43: $0d
	inc  c                                           ; $7b44: $0c
	inc  c                                           ; $7b45: $0c
	inc  c                                           ; $7b46: $0c
	inc  c                                           ; $7b47: $0c
	inc  c                                           ; $7b48: $0c
	dec  c                                           ; $7b49: $0d
	dec  c                                           ; $7b4a: $0d
	dec  c                                           ; $7b4b: $0d
	dec  bc                                          ; $7b4c: $0b
	dec  bc                                          ; $7b4d: $0b
	dec  bc                                          ; $7b4e: $0b
	dec  bc                                          ; $7b4f: $0b
	dec  bc                                          ; $7b50: $0b
	dec  bc                                          ; $7b51: $0b
	dec  bc                                          ; $7b52: $0b
	dec  bc                                          ; $7b53: $0b
	dec  c                                           ; $7b54: $0d
	dec  c                                           ; $7b55: $0d
	dec  c                                           ; $7b56: $0d
	dec  c                                           ; $7b57: $0d
	dec  c                                           ; $7b58: $0d
	inc  c                                           ; $7b59: $0c
	inc  c                                           ; $7b5a: $0c
	inc  c                                           ; $7b5b: $0c
	inc  c                                           ; $7b5c: $0c
	inc  c                                           ; $7b5d: $0c
	inc  c                                           ; $7b5e: $0c
	dec  c                                           ; $7b5f: $0d
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
	jr   nz, jr_082_7b93                             ; $7b70: $20 $21

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
	jr   nc, jr_082_7bb7                             ; $7b84: $30 $31

	ld   [hl-], a                                    ; $7b86: $32
	inc  sp                                          ; $7b87: $33
	jr   nz, @+$23                                   ; $7b88: $20 $21

	ld   [hl+], a                                    ; $7b8a: $22
	inc  hl                                          ; $7b8b: $23
	inc  h                                           ; $7b8c: $24
	dec  h                                           ; $7b8d: $25
	ld   h, $27                                      ; $7b8e: $26 $27
	jr   z, jr_082_7bbb                              ; $7b90: $28 $29

	ld   a, [hl+]                                    ; $7b92: $2a

jr_082_7b93:
	dec  hl                                          ; $7b93: $2b
	inc  l                                           ; $7b94: $2c
	dec  l                                           ; $7b95: $2d
	ld   l, $2f                                      ; $7b96: $2e $2f
	inc  h                                           ; $7b98: $24
	dec  h                                           ; $7b99: $25
	ld   h, $27                                      ; $7b9a: $26 $27
	jr   nc, jr_082_7bcf                             ; $7b9c: $30 $31

	ld   [hl-], a                                    ; $7b9e: $32
	inc  sp                                          ; $7b9f: $33
	inc  [hl]                                        ; $7ba0: $34
	dec  [hl]                                        ; $7ba1: $35
	ld   [hl], $37                                   ; $7ba2: $36 $37
	jr   c, jr_082_7bdf                              ; $7ba4: $38 $39

	ld   a, [hl-]                                    ; $7ba6: $3a
	dec  sp                                          ; $7ba7: $3b
	inc  a                                           ; $7ba8: $3c
	dec  a                                           ; $7ba9: $3d
	ld   a, $3f                                      ; $7baa: $3e $3f
	inc  [hl]                                        ; $7bac: $34
	dec  [hl]                                        ; $7bad: $35
	ld   [hl], $37                                   ; $7bae: $36 $37
	ld   b, b                                        ; $7bb0: $40
	ld   b, c                                        ; $7bb1: $41
	ld   b, d                                        ; $7bb2: $42
	ld   b, e                                        ; $7bb3: $43
	ld   b, h                                        ; $7bb4: $44
	ld   b, l                                        ; $7bb5: $45
	ld   b, [hl]                                     ; $7bb6: $46

jr_082_7bb7:
	ld   b, a                                        ; $7bb7: $47
	ld   c, b                                        ; $7bb8: $48
	ld   c, c                                        ; $7bb9: $49
	ld   c, d                                        ; $7bba: $4a

jr_082_7bbb:
	ld   c, e                                        ; $7bbb: $4b
	ld   c, h                                        ; $7bbc: $4c
	ld   c, l                                        ; $7bbd: $4d
	ld   c, [hl]                                     ; $7bbe: $4e
	ld   c, a                                        ; $7bbf: $4f
	jr   z, @+$2b                                    ; $7bc0: $28 $29

	ld   a, [hl+]                                    ; $7bc2: $2a
	dec  hl                                          ; $7bc3: $2b
	ld   d, b                                        ; $7bc4: $50
	ld   d, c                                        ; $7bc5: $51
	ld   d, d                                        ; $7bc6: $52
	ld   d, e                                        ; $7bc7: $53
	ld   d, h                                        ; $7bc8: $54
	ld   d, l                                        ; $7bc9: $55
	ld   d, [hl]                                     ; $7bca: $56
	ld   d, a                                        ; $7bcb: $57
	ld   e, b                                        ; $7bcc: $58
	ld   e, c                                        ; $7bcd: $59
	ld   e, d                                        ; $7bce: $5a

jr_082_7bcf:
	ld   e, e                                        ; $7bcf: $5b
	ld   e, h                                        ; $7bd0: $5c
	ld   e, l                                        ; $7bd1: $5d
	ld   e, [hl]                                     ; $7bd2: $5e
	ld   e, a                                        ; $7bd3: $5f
	jr   c, @+$3b                                    ; $7bd4: $38 $39

	ld   a, [hl-]                                    ; $7bd6: $3a
	dec  sp                                          ; $7bd7: $3b
	ld   h, b                                        ; $7bd8: $60
	ld   h, c                                        ; $7bd9: $61
	ld   h, d                                        ; $7bda: $62
	ld   h, e                                        ; $7bdb: $63
	ld   h, h                                        ; $7bdc: $64
	ld   h, l                                        ; $7bdd: $65
	ld   h, [hl]                                     ; $7bde: $66

jr_082_7bdf:
	ld   h, a                                        ; $7bdf: $67
	ld   l, b                                        ; $7be0: $68
	ld   l, c                                        ; $7be1: $69
	ld   l, d                                        ; $7be2: $6a
	ld   l, e                                        ; $7be3: $6b
	ld   l, h                                        ; $7be4: $6c
	ld   l, l                                        ; $7be5: $6d
	ld   l, [hl]                                     ; $7be6: $6e
	ld   l, a                                        ; $7be7: $6f
	inc  l                                           ; $7be8: $2c
	dec  l                                           ; $7be9: $2d
	ld   l, $2f                                      ; $7bea: $2e $2f
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
	inc  a                                           ; $7bfc: $3c
	dec  a                                           ; $7bfd: $3d
	ld   a, $3f                                      ; $7bfe: $3e $3f
	nop                                              ; $7c00: $00
	ld   bc, $0302                                   ; $7c01: $01 $02 $03
	inc  b                                           ; $7c04: $04
	dec  b                                           ; $7c05: $05
	ld   b, $07                                      ; $7c06: $06 $07
	ld   [$0a09], sp                                 ; $7c08: $08 $09 $0a
	dec  bc                                          ; $7c0b: $0b
	inc  c                                           ; $7c0c: $0c
	dec  c                                           ; $7c0d: $0d
	ld   c, $0f                                      ; $7c0e: $0e $0f
	ld   b, b                                        ; $7c10: $40
	ld   b, c                                        ; $7c11: $41
	ld   b, d                                        ; $7c12: $42
	ld   b, e                                        ; $7c13: $43
	db   $10                                         ; $7c14: $10
	ld   de, $1312                                   ; $7c15: $11 $12 $13
	inc  d                                           ; $7c18: $14
	dec  d                                           ; $7c19: $15
	ld   d, $17                                      ; $7c1a: $16 $17
	jr   jr_082_7c37                                 ; $7c1c: $18 $19

	ld   a, [de]                                     ; $7c1e: $1a
	dec  de                                          ; $7c1f: $1b
	inc  e                                           ; $7c20: $1c
	dec  e                                           ; $7c21: $1d
	ld   e, $1f                                      ; $7c22: $1e $1f
	ld   b, h                                        ; $7c24: $44
	ld   b, l                                        ; $7c25: $45
	ld   b, [hl]                                     ; $7c26: $46
	ld   b, a                                        ; $7c27: $47
	dec  b                                           ; $7c28: $05
	dec  b                                           ; $7c29: $05
	dec  b                                           ; $7c2a: $05
	dec  b                                           ; $7c2b: $05
	dec  b                                           ; $7c2c: $05
	dec  b                                           ; $7c2d: $05
	dec  b                                           ; $7c2e: $05
	dec  b                                           ; $7c2f: $05
	dec  b                                           ; $7c30: $05
	dec  b                                           ; $7c31: $05
	dec  b                                           ; $7c32: $05
	dec  b                                           ; $7c33: $05
	dec  b                                           ; $7c34: $05
	dec  b                                           ; $7c35: $05
	dec  b                                           ; $7c36: $05

jr_082_7c37:
	dec  b                                           ; $7c37: $05
	dec  c                                           ; $7c38: $0d
	dec  c                                           ; $7c39: $0d
	dec  c                                           ; $7c3a: $0d
	dec  c                                           ; $7c3b: $0d
	dec  b                                           ; $7c3c: $05
	dec  b                                           ; $7c3d: $05
	dec  b                                           ; $7c3e: $05
	dec  b                                           ; $7c3f: $05
	dec  b                                           ; $7c40: $05
	dec  b                                           ; $7c41: $05
	dec  b                                           ; $7c42: $05
	dec  b                                           ; $7c43: $05
	inc  bc                                          ; $7c44: $03
	inc  bc                                          ; $7c45: $03
	inc  bc                                          ; $7c46: $03
	inc  bc                                          ; $7c47: $03
	dec  b                                           ; $7c48: $05
	dec  b                                           ; $7c49: $05
	dec  b                                           ; $7c4a: $05
	dec  b                                           ; $7c4b: $05
	dec  c                                           ; $7c4c: $0d
	dec  c                                           ; $7c4d: $0d
	dec  c                                           ; $7c4e: $0d
	dec  c                                           ; $7c4f: $0d
	dec  b                                           ; $7c50: $05
	dec  b                                           ; $7c51: $05
	dec  b                                           ; $7c52: $05
	dec  b                                           ; $7c53: $05
	dec  b                                           ; $7c54: $05
	dec  b                                           ; $7c55: $05
	dec  b                                           ; $7c56: $05
	inc  bc                                          ; $7c57: $03
	inc  bc                                          ; $7c58: $03
	inc  bc                                          ; $7c59: $03
	inc  bc                                          ; $7c5a: $03
	inc  bc                                          ; $7c5b: $03
	dec  b                                           ; $7c5c: $05
	dec  b                                           ; $7c5d: $05
	dec  b                                           ; $7c5e: $05
	dec  b                                           ; $7c5f: $05
	dec  c                                           ; $7c60: $0d
	dec  c                                           ; $7c61: $0d
	dec  c                                           ; $7c62: $0d
	dec  c                                           ; $7c63: $0d
	dec  b                                           ; $7c64: $05
	dec  b                                           ; $7c65: $05
	dec  b                                           ; $7c66: $05
	dec  b                                           ; $7c67: $05
	dec  b                                           ; $7c68: $05
	dec  b                                           ; $7c69: $05
	dec  b                                           ; $7c6a: $05
	dec  b                                           ; $7c6b: $05
	inc  bc                                          ; $7c6c: $03
	inc  bc                                          ; $7c6d: $03
	inc  bc                                          ; $7c6e: $03
	inc  bc                                          ; $7c6f: $03
	dec  b                                           ; $7c70: $05
	dec  b                                           ; $7c71: $05
	dec  b                                           ; $7c72: $05
	dec  b                                           ; $7c73: $05
	dec  c                                           ; $7c74: $0d
	dec  c                                           ; $7c75: $0d
	dec  c                                           ; $7c76: $0d
	dec  c                                           ; $7c77: $0d
	dec  b                                           ; $7c78: $05
	dec  b                                           ; $7c79: $05
	dec  b                                           ; $7c7a: $05
	dec  b                                           ; $7c7b: $05
	dec  b                                           ; $7c7c: $05
	dec  b                                           ; $7c7d: $05
	dec  b                                           ; $7c7e: $05
	dec  b                                           ; $7c7f: $05
	inc  bc                                          ; $7c80: $03
	inc  bc                                          ; $7c81: $03
	inc  bc                                          ; $7c82: $03
	inc  bc                                          ; $7c83: $03
	dec  b                                           ; $7c84: $05
	dec  b                                           ; $7c85: $05
	dec  b                                           ; $7c86: $05
	dec  b                                           ; $7c87: $05
	dec  c                                           ; $7c88: $0d
	dec  c                                           ; $7c89: $0d
	dec  c                                           ; $7c8a: $0d
	dec  c                                           ; $7c8b: $0d
	dec  b                                           ; $7c8c: $05
	dec  b                                           ; $7c8d: $05
	dec  b                                           ; $7c8e: $05
	dec  b                                           ; $7c8f: $05
	dec  b                                           ; $7c90: $05
	dec  b                                           ; $7c91: $05
	dec  b                                           ; $7c92: $05
	dec  b                                           ; $7c93: $05
	inc  bc                                          ; $7c94: $03
	inc  bc                                          ; $7c95: $03
	inc  bc                                          ; $7c96: $03
	inc  bc                                          ; $7c97: $03
	dec  b                                           ; $7c98: $05
	dec  b                                           ; $7c99: $05
	dec  b                                           ; $7c9a: $05
	dec  b                                           ; $7c9b: $05
	dec  c                                           ; $7c9c: $0d
	dec  c                                           ; $7c9d: $0d
	dec  c                                           ; $7c9e: $0d
	dec  c                                           ; $7c9f: $0d
	dec  b                                           ; $7ca0: $05
	dec  b                                           ; $7ca1: $05
	dec  b                                           ; $7ca2: $05
	dec  b                                           ; $7ca3: $05
	inc  b                                           ; $7ca4: $04
	inc  b                                           ; $7ca5: $04
	inc  b                                           ; $7ca6: $04
	inc  b                                           ; $7ca7: $04
	inc  bc                                          ; $7ca8: $03
	inc  bc                                          ; $7ca9: $03
	inc  bc                                          ; $7caa: $03
	inc  bc                                          ; $7cab: $03
	dec  b                                           ; $7cac: $05
	dec  b                                           ; $7cad: $05
	dec  b                                           ; $7cae: $05
	inc  b                                           ; $7caf: $04
	inc  c                                           ; $7cb0: $0c
	dec  c                                           ; $7cb1: $0d
	dec  c                                           ; $7cb2: $0d
	dec  c                                           ; $7cb3: $0d
	dec  b                                           ; $7cb4: $05
	dec  b                                           ; $7cb5: $05
	dec  b                                           ; $7cb6: $05
	dec  b                                           ; $7cb7: $05
	inc  b                                           ; $7cb8: $04
	inc  b                                           ; $7cb9: $04
	dec  b                                           ; $7cba: $05
	inc  b                                           ; $7cbb: $04
	inc  b                                           ; $7cbc: $04
	inc  b                                           ; $7cbd: $04
	inc  bc                                          ; $7cbe: $03
	inc  bc                                          ; $7cbf: $03
	dec  b                                           ; $7cc0: $05
	inc  b                                           ; $7cc1: $04
	inc  b                                           ; $7cc2: $04
	inc  b                                           ; $7cc3: $04
	inc  c                                           ; $7cc4: $0c
	dec  c                                           ; $7cc5: $0d
	dec  c                                           ; $7cc6: $0d
	dec  c                                           ; $7cc7: $0d
	dec  c                                           ; $7cc8: $0d
	dec  c                                           ; $7cc9: $0d
	dec  c                                           ; $7cca: $0d
	dec  c                                           ; $7ccb: $0d
	dec  c                                           ; $7ccc: $0d
	dec  c                                           ; $7ccd: $0d
	dec  c                                           ; $7cce: $0d
	dec  bc                                          ; $7ccf: $0b
	inc  c                                           ; $7cd0: $0c
	inc  c                                           ; $7cd1: $0c
	inc  c                                           ; $7cd2: $0c
	dec  c                                           ; $7cd3: $0d
	inc  c                                           ; $7cd4: $0c
	inc  c                                           ; $7cd5: $0c
	inc  c                                           ; $7cd6: $0c
	inc  c                                           ; $7cd7: $0c
	inc  c                                           ; $7cd8: $0c
	dec  c                                           ; $7cd9: $0d
	dec  c                                           ; $7cda: $0d
	dec  c                                           ; $7cdb: $0d
	dec  bc                                          ; $7cdc: $0b
	dec  bc                                          ; $7cdd: $0b
	dec  bc                                          ; $7cde: $0b
	dec  bc                                          ; $7cdf: $0b
	dec  bc                                          ; $7ce0: $0b
	dec  bc                                          ; $7ce1: $0b
	dec  bc                                          ; $7ce2: $0b
	dec  bc                                          ; $7ce3: $0b
	dec  c                                           ; $7ce4: $0d
	dec  c                                           ; $7ce5: $0d
	inc  c                                           ; $7ce6: $0c
	dec  c                                           ; $7ce7: $0d
	inc  c                                           ; $7ce8: $0c
	inc  c                                           ; $7ce9: $0c
	inc  c                                           ; $7cea: $0c
	inc  c                                           ; $7ceb: $0c
	inc  c                                           ; $7cec: $0c
	inc  c                                           ; $7ced: $0c
	inc  c                                           ; $7cee: $0c
	dec  c                                           ; $7cef: $0d
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
	jr   nz, jr_082_7d23                             ; $7d00: $20 $21

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
	jr   nc, jr_082_7d47                             ; $7d14: $30 $31

	ld   [hl-], a                                    ; $7d16: $32
	inc  sp                                          ; $7d17: $33
	jr   nz, @+$23                                   ; $7d18: $20 $21

	ld   [hl+], a                                    ; $7d1a: $22
	inc  hl                                          ; $7d1b: $23
	inc  h                                           ; $7d1c: $24
	dec  h                                           ; $7d1d: $25
	ld   h, $27                                      ; $7d1e: $26 $27
	jr   z, jr_082_7d4b                              ; $7d20: $28 $29

	ld   a, [hl+]                                    ; $7d22: $2a

jr_082_7d23:
	dec  hl                                          ; $7d23: $2b
	inc  l                                           ; $7d24: $2c
	dec  l                                           ; $7d25: $2d
	ld   l, $2f                                      ; $7d26: $2e $2f
	inc  h                                           ; $7d28: $24
	dec  h                                           ; $7d29: $25
	ld   h, $27                                      ; $7d2a: $26 $27
	jr   nc, jr_082_7d5f                             ; $7d2c: $30 $31

	ld   [hl-], a                                    ; $7d2e: $32
	inc  sp                                          ; $7d2f: $33
	inc  [hl]                                        ; $7d30: $34
	dec  [hl]                                        ; $7d31: $35
	ld   [hl], $37                                   ; $7d32: $36 $37
	jr   c, jr_082_7d6f                              ; $7d34: $38 $39

	ld   a, [hl-]                                    ; $7d36: $3a
	dec  sp                                          ; $7d37: $3b
	inc  a                                           ; $7d38: $3c
	dec  a                                           ; $7d39: $3d
	ld   a, $3f                                      ; $7d3a: $3e $3f
	inc  [hl]                                        ; $7d3c: $34
	dec  [hl]                                        ; $7d3d: $35
	ld   [hl], $37                                   ; $7d3e: $36 $37
	ld   b, b                                        ; $7d40: $40
	ld   b, c                                        ; $7d41: $41
	ld   b, d                                        ; $7d42: $42
	ld   b, e                                        ; $7d43: $43
	ld   b, h                                        ; $7d44: $44
	ld   b, l                                        ; $7d45: $45
	ld   b, [hl]                                     ; $7d46: $46

jr_082_7d47:
	ld   b, a                                        ; $7d47: $47
	ld   c, b                                        ; $7d48: $48
	ld   c, c                                        ; $7d49: $49
	ld   c, d                                        ; $7d4a: $4a

jr_082_7d4b:
	ld   c, e                                        ; $7d4b: $4b
	ld   c, h                                        ; $7d4c: $4c
	ld   c, l                                        ; $7d4d: $4d
	ld   c, [hl]                                     ; $7d4e: $4e
	ld   c, a                                        ; $7d4f: $4f
	jr   z, @+$2b                                    ; $7d50: $28 $29

	ld   a, [hl+]                                    ; $7d52: $2a
	dec  hl                                          ; $7d53: $2b
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

jr_082_7d5f:
	ld   e, e                                        ; $7d5f: $5b
	ld   e, h                                        ; $7d60: $5c
	ld   e, l                                        ; $7d61: $5d
	ld   e, [hl]                                     ; $7d62: $5e
	ld   e, a                                        ; $7d63: $5f
	jr   c, @+$3b                                    ; $7d64: $38 $39

	ld   a, [hl-]                                    ; $7d66: $3a
	dec  sp                                          ; $7d67: $3b
	ld   h, b                                        ; $7d68: $60
	ld   h, c                                        ; $7d69: $61
	ld   h, d                                        ; $7d6a: $62
	ld   h, e                                        ; $7d6b: $63
	ld   h, h                                        ; $7d6c: $64
	ld   h, l                                        ; $7d6d: $65
	ld   h, [hl]                                     ; $7d6e: $66

jr_082_7d6f:
	ld   h, a                                        ; $7d6f: $67
	ld   l, b                                        ; $7d70: $68
	ld   l, c                                        ; $7d71: $69
	ld   l, d                                        ; $7d72: $6a
	ld   l, e                                        ; $7d73: $6b
	ld   l, h                                        ; $7d74: $6c
	ld   l, l                                        ; $7d75: $6d
	ld   l, [hl]                                     ; $7d76: $6e
	ld   l, a                                        ; $7d77: $6f
	inc  l                                           ; $7d78: $2c
	dec  l                                           ; $7d79: $2d
	ld   l, $2f                                      ; $7d7a: $2e $2f
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
	inc  a                                           ; $7d8c: $3c
	dec  a                                           ; $7d8d: $3d
	ld   a, $3f                                      ; $7d8e: $3e $3f
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
	ld   b, b                                        ; $7da0: $40
	ld   b, c                                        ; $7da1: $41
	ld   b, d                                        ; $7da2: $42
	ld   b, e                                        ; $7da3: $43
	db   $10                                         ; $7da4: $10
	ld   de, $1312                                   ; $7da5: $11 $12 $13
	inc  d                                           ; $7da8: $14
	dec  d                                           ; $7da9: $15
	ld   d, $17                                      ; $7daa: $16 $17
	jr   jr_082_7dc7                                 ; $7dac: $18 $19

	ld   a, [de]                                     ; $7dae: $1a
	dec  de                                          ; $7daf: $1b
	inc  e                                           ; $7db0: $1c
	dec  e                                           ; $7db1: $1d
	ld   e, $1f                                      ; $7db2: $1e $1f
	ld   b, h                                        ; $7db4: $44
	ld   b, l                                        ; $7db5: $45
	ld   b, [hl]                                     ; $7db6: $46
	ld   b, a                                        ; $7db7: $47
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

jr_082_7dc7:
	inc  bc                                          ; $7dc7: $03
	dec  bc                                          ; $7dc8: $0b
	dec  bc                                          ; $7dc9: $0b
	dec  bc                                          ; $7dca: $0b
	dec  bc                                          ; $7dcb: $0b
	inc  bc                                          ; $7dcc: $03
	inc  bc                                          ; $7dcd: $03
	inc  bc                                          ; $7dce: $03
	inc  bc                                          ; $7dcf: $03
	inc  bc                                          ; $7dd0: $03
	inc  bc                                          ; $7dd1: $03
	inc  bc                                          ; $7dd2: $03
	inc  bc                                          ; $7dd3: $03
	dec  b                                           ; $7dd4: $05
	dec  b                                           ; $7dd5: $05
	inc  bc                                          ; $7dd6: $03
	dec  b                                           ; $7dd7: $05
	dec  b                                           ; $7dd8: $05
	inc  bc                                          ; $7dd9: $03
	inc  bc                                          ; $7dda: $03
	inc  bc                                          ; $7ddb: $03
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
	dec  b                                           ; $7de8: $05
	dec  b                                           ; $7de9: $05
	dec  b                                           ; $7dea: $05
	dec  b                                           ; $7deb: $05
	dec  b                                           ; $7dec: $05
	inc  bc                                          ; $7ded: $03
	inc  bc                                          ; $7dee: $03
	inc  bc                                          ; $7def: $03
	dec  bc                                          ; $7df0: $0b
	dec  bc                                          ; $7df1: $0b
	dec  bc                                          ; $7df2: $0b
	dec  bc                                          ; $7df3: $0b
	inc  bc                                          ; $7df4: $03
	dec  b                                           ; $7df5: $05
	dec  b                                           ; $7df6: $05
	dec  b                                           ; $7df7: $05
	dec  b                                           ; $7df8: $05
	dec  b                                           ; $7df9: $05
	dec  b                                           ; $7dfa: $05
	dec  b                                           ; $7dfb: $05
	dec  b                                           ; $7dfc: $05
	dec  b                                           ; $7dfd: $05
	dec  b                                           ; $7dfe: $05
	dec  b                                           ; $7dff: $05
	dec  b                                           ; $7e00: $05
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
	dec  b                                           ; $7e0c: $05
	dec  b                                           ; $7e0d: $05
	dec  b                                           ; $7e0e: $05
	dec  b                                           ; $7e0f: $05
	dec  b                                           ; $7e10: $05
	dec  b                                           ; $7e11: $05
	dec  b                                           ; $7e12: $05
	dec  b                                           ; $7e13: $05
	dec  b                                           ; $7e14: $05
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
	dec  b                                           ; $7e21: $05
	dec  b                                           ; $7e22: $05
	dec  b                                           ; $7e23: $05
	dec  b                                           ; $7e24: $05
	inc  bc                                          ; $7e25: $03
	inc  bc                                          ; $7e26: $03
	dec  b                                           ; $7e27: $05
	dec  b                                           ; $7e28: $05
	inc  bc                                          ; $7e29: $03
	inc  b                                           ; $7e2a: $04
	inc  b                                           ; $7e2b: $04
	inc  c                                           ; $7e2c: $0c
	inc  c                                           ; $7e2d: $0c
	dec  bc                                          ; $7e2e: $0b
	dec  bc                                          ; $7e2f: $0b
	inc  bc                                          ; $7e30: $03
	inc  bc                                          ; $7e31: $03
	inc  bc                                          ; $7e32: $03
	inc  bc                                          ; $7e33: $03
	dec  b                                           ; $7e34: $05
	dec  b                                           ; $7e35: $05
	dec  b                                           ; $7e36: $05
	dec  b                                           ; $7e37: $05
	dec  b                                           ; $7e38: $05
	inc  bc                                          ; $7e39: $03
	inc  bc                                          ; $7e3a: $03
	inc  bc                                          ; $7e3b: $03
	inc  bc                                          ; $7e3c: $03
	inc  b                                           ; $7e3d: $04
	inc  b                                           ; $7e3e: $04
	inc  b                                           ; $7e3f: $04
	inc  c                                           ; $7e40: $0c
	inc  c                                           ; $7e41: $0c
	dec  bc                                          ; $7e42: $0b
	dec  bc                                          ; $7e43: $0b
	inc  bc                                          ; $7e44: $03
	dec  b                                           ; $7e45: $05
	dec  b                                           ; $7e46: $05
	dec  b                                           ; $7e47: $05
	dec  b                                           ; $7e48: $05
	dec  b                                           ; $7e49: $05
	dec  b                                           ; $7e4a: $05
	dec  b                                           ; $7e4b: $05
	dec  b                                           ; $7e4c: $05
	inc  bc                                          ; $7e4d: $03
	inc  bc                                          ; $7e4e: $03
	inc  bc                                          ; $7e4f: $03
	inc  bc                                          ; $7e50: $03
	inc  b                                           ; $7e51: $04
	inc  b                                           ; $7e52: $04
	inc  b                                           ; $7e53: $04
	inc  c                                           ; $7e54: $0c
	inc  c                                           ; $7e55: $0c
	dec  bc                                          ; $7e56: $0b
	dec  bc                                          ; $7e57: $0b
	dec  c                                           ; $7e58: $0d
	dec  c                                           ; $7e59: $0d
	dec  c                                           ; $7e5a: $0d
	dec  c                                           ; $7e5b: $0d
	dec  c                                           ; $7e5c: $0d
	dec  c                                           ; $7e5d: $0d
	dec  c                                           ; $7e5e: $0d
	dec  c                                           ; $7e5f: $0d
	dec  c                                           ; $7e60: $0d
	dec  bc                                          ; $7e61: $0b
	dec  bc                                          ; $7e62: $0b
	dec  bc                                          ; $7e63: $0b
	dec  bc                                          ; $7e64: $0b
	dec  bc                                          ; $7e65: $0b
	inc  c                                           ; $7e66: $0c
	inc  c                                           ; $7e67: $0c
	inc  c                                           ; $7e68: $0c
	inc  c                                           ; $7e69: $0c
	dec  bc                                          ; $7e6a: $0b
	dec  bc                                          ; $7e6b: $0b
	dec  c                                           ; $7e6c: $0d
	dec  c                                           ; $7e6d: $0d
	dec  c                                           ; $7e6e: $0d
	dec  c                                           ; $7e6f: $0d
	dec  c                                           ; $7e70: $0d
	dec  c                                           ; $7e71: $0d
	dec  c                                           ; $7e72: $0d
	dec  c                                           ; $7e73: $0d
	dec  bc                                          ; $7e74: $0b
	dec  bc                                          ; $7e75: $0b
	dec  bc                                          ; $7e76: $0b
	dec  bc                                          ; $7e77: $0b
	dec  bc                                          ; $7e78: $0b
	dec  bc                                          ; $7e79: $0b
	dec  bc                                          ; $7e7a: $0b
	dec  bc                                          ; $7e7b: $0b
	dec  bc                                          ; $7e7c: $0b
	dec  bc                                          ; $7e7d: $0b
	dec  bc                                          ; $7e7e: $0b
	dec  bc                                          ; $7e7f: $0b
	ld   e, b                                        ; $7e80: $58
	nop                                              ; $7e81: $00
	add  c                                           ; $7e82: $81
	rst  $38                                         ; $7e83: $ff
	add  h                                           ; $7e84: $84
	nop                                              ; $7e85: $00
	add  b                                           ; $7e86: $80
	rst  $38                                         ; $7e87: $ff
	nop                                              ; $7e88: $00
	nop                                              ; $7e89: $00
	add  c                                           ; $7e8a: $81
	ldh  a, [rSB]                                    ; $7e8b: $f0 $01
	rst  $30                                         ; $7e8d: $f7
	rlca                                             ; $7e8e: $07
	add  b                                           ; $7e8f: $80
	rst  $38                                         ; $7e90: $ff
	add  h                                           ; $7e91: $84
	nop                                              ; $7e92: $00
	add  b                                           ; $7e93: $80
	rst  $38                                         ; $7e94: $ff
	nop                                              ; $7e95: $00
	nop                                              ; $7e96: $00
	add  d                                           ; $7e97: $82
	ld   a, a                                        ; $7e98: $7f
	inc  b                                           ; $7e99: $04
	ld   [bc], a                                     ; $7e9a: $02
	dec  b                                           ; $7e9b: $05
	nop                                              ; $7e9c: $00
	rst  $30                                         ; $7e9d: $f7
	ldh  a, [c]                                      ; $7e9e: $f2
	add  c                                           ; $7e9f: $81
	push af                                          ; $7ea0: $f5
	add  b                                           ; $7ea1: $80
	rst  $30                                         ; $7ea2: $f7
	ld   [$f7f0], sp                                 ; $7ea3: $08 $f0 $f7
	ldh  a, [c]                                      ; $7ea6: $f2
	push af                                          ; $7ea7: $f5
	rst  $30                                         ; $7ea8: $f7
	rlca                                             ; $7ea9: $07

jr_082_7eaa:
	inc  b                                           ; $7eaa: $04
	inc  bc                                          ; $7eab: $03
	dec  bc                                          ; $7eac: $0b
	add  e                                           ; $7ead: $83
	ld   a, e                                        ; $7eae: $7b
	add  hl, bc                                      ; $7eaf: $09
	dec  hl                                          ; $7eb0: $2b
	ld   a, e                                        ; $7eb1: $7b
	dec  bc                                          ; $7eb2: $0b
	ld   a, e                                        ; $7eb3: $7b
	dec  bc                                          ; $7eb4: $0b
	ld   a, e                                        ; $7eb5: $7b
	inc  hl                                          ; $7eb6: $23
	inc  bc                                          ; $7eb7: $03
	jr   nc, jr_082_7eaa                             ; $7eb8: $30 $f0

	add  b                                           ; $7eba: $80
	rst  $38                                         ; $7ebb: $ff
	rlca                                             ; $7ebc: $07
	ret  nz                                          ; $7ebd: $c0

	nop                                              ; $7ebe: $00

jr_082_7ebf:
	ld   sp, hl                                      ; $7ebf: $f9
	rst  $38                                         ; $7ec0: $ff
	db   $f4                                         ; $7ec1: $f4
	rst  $38                                         ; $7ec2: $ff
	dec  c                                           ; $7ec3: $0d
	nop                                              ; $7ec4: $00
	add  d                                           ; $7ec5: $82
	rst  $38                                         ; $7ec6: $ff
	add  b                                           ; $7ec7: $80
	ld   a, l                                        ; $7ec8: $7d
	add  b                                           ; $7ec9: $80
	cp   $80                                         ; $7eca: $fe $80
	nop                                              ; $7ecc: $00
	dec  b                                           ; $7ecd: $05
	ld   a, a                                        ; $7ece: $7f
	rst  $38                                         ; $7ecf: $ff
	ld   a, [hl]                                     ; $7ed0: $7e
	rst  $38                                         ; $7ed1: $ff
	ld   bc, $8000                                   ; $7ed2: $01 $00 $80
	cp   $80                                         ; $7ed5: $fe $80
	db   $fd                                         ; $7ed7: $fd
	nop                                              ; $7ed8: $00
	nop                                              ; $7ed9: $00
	add  b                                           ; $7eda: $80
	rst  $38                                         ; $7edb: $ff
	add  h                                           ; $7edc: $84
	nop                                              ; $7edd: $00
	rlca                                             ; $7ede: $07
	rst  $38                                         ; $7edf: $ff
	ld   sp, hl                                      ; $7ee0: $f9
	nop                                              ; $7ee1: $00
	add  hl, de                                      ; $7ee2: $19
	ld   hl, sp-$48                                  ; $7ee3: $f8 $b8
	pop  af                                          ; $7ee5: $f1
	xor  [hl]                                        ; $7ee6: $ae
	add  b                                           ; $7ee7: $80
	rst  $38                                         ; $7ee8: $ff
	add  h                                           ; $7ee9: $84
	nop                                              ; $7eea: $00
	add  b                                           ; $7eeb: $80
	rst  $38                                         ; $7eec: $ff
	dec  bc                                          ; $7eed: $0b
	nop                                              ; $7eee: $00
	ret  nz                                          ; $7eef: $c0

	cp   a                                           ; $7ef0: $bf
	sbc  a                                           ; $7ef1: $9f
	ld   e, a                                        ; $7ef2: $5f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ef3: $cf
	nop                                              ; $7ef4: $00
	sub  b                                           ; $7ef5: $90
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ef6: $cf
	ld   c, a                                        ; $7ef7: $4f
	adc  a                                           ; $7ef8: $8f
	rrca                                             ; $7ef9: $0f
	add  b                                           ; $7efa: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7efb: $cf
	inc  de                                          ; $7efc: $13
	adc  a                                           ; $7efd: $8f
	ld   d, $b0                                      ; $7efe: $16 $b0
	or   $a4                                         ; $7f00: $f6 $a4
	adc  l                                           ; $7f02: $8d
	add  h                                           ; $7f03: $84
	ld   [hl], d                                     ; $7f04: $72
	inc  bc                                          ; $7f05: $03
	sub  e                                           ; $7f06: $93
	ld   a, e                                        ; $7f07: $7b
	ld   l, e                                        ; $7f08: $6b
	dec  sp                                          ; $7f09: $3b
	dec  hl                                          ; $7f0a: $2b
	dec  bc                                          ; $7f0b: $0b
	dec  de                                          ; $7f0c: $1b
	ld   a, e                                        ; $7f0d: $7b
	ei                                               ; $7f0e: $fb
	dec  sp                                          ; $7f0f: $3b
	dec  de                                          ; $7f10: $1b
	add  c                                           ; $7f11: $81
	sbc  e                                           ; $7f12: $9b
	inc  b                                           ; $7f13: $04
	ld   d, d                                        ; $7f14: $52
	dec  l                                           ; $7f15: $2d
	ld   l, l                                        ; $7f16: $6d
	db   $ed                                         ; $7f17: $ed
	xor  l                                           ; $7f18: $ad
	add  c                                           ; $7f19: $81
	dec  l                                           ; $7f1a: $2d
	add  [hl]                                        ; $7f1b: $86
	db   $ed                                         ; $7f1c: $ed
	inc  c                                           ; $7f1d: $0c
	inc  a                                           ; $7f1e: $3c
	jr   nz, @+$46                                   ; $7f1f: $20 $44

	inc  bc                                          ; $7f21: $03
	or   l                                           ; $7f22: $b5
	dec  [hl]                                        ; $7f23: $35
	and  l                                           ; $7f24: $a5
	jr   jr_082_7ebf                                 ; $7f25: $18 $98

	ld   bc, $01bd                                   ; $7f27: $01 $bd $01
	ld   c, a                                        ; $7f2a: $4f
	add  b                                           ; $7f2b: $80
	rla                                              ; $7f2c: $17
	dec  b                                           ; $7f2d: $05
	nop                                              ; $7f2e: $00
	ld   b, a                                        ; $7f2f: $47
	rst  ToBoot                                         ; $7f30: $c7
	and  e                                           ; $7f31: $a3
	dec  bc                                          ; $7f32: $0b
	ld   c, h                                        ; $7f33: $4c
	adc  c                                           ; $7f34: $89
	ld   l, h                                        ; $7f35: $6c
	ld   [bc], a                                     ; $7f36: $02
	jr   jr_082_7f68                                 ; $7f37: $18 $2f

	rst  $28                                         ; $7f39: $ef
	add  d                                           ; $7f3a: $82
	rst  ToBoot                                         ; $7f3b: $c7
	ld   bc, $bac0                                   ; $7f3c: $01 $c0 $ba
	add  b                                           ; $7f3f: $80
	ldh  a, [c]                                      ; $7f40: $f2
	ld   [bc], a                                     ; $7f41: $02
	ld   a, [$f8bf]                                  ; $7f42: $fa $bf $f8
	add  b                                           ; $7f45: $80
	ld   [hl], b                                     ; $7f46: $70
	ld   [bc], a                                     ; $7f47: $02
	call c, $bba3                                    ; $7f48: $dc $a3 $bb
	add  e                                           ; $7f4b: $83
	dec  de                                          ; $7f4c: $1b
	nop                                              ; $7f4d: $00
	db   $eb                                         ; $7f4e: $eb
	add  b                                           ; $7f4f: $80
	ld   a, e                                        ; $7f50: $7b
	add  b                                           ; $7f51: $80
	ei                                               ; $7f52: $fb
	add  hl, bc                                      ; $7f53: $09
	db   $eb                                         ; $7f54: $eb
	ld   [hl], e                                     ; $7f55: $73
	ld   d, e                                        ; $7f56: $53
	ccf                                              ; $7f57: $3f
	ld   hl, sp-$19                                  ; $7f58: $f8 $e7
	ldh  [rAUD3LEN], a                               ; $7f5a: $e0 $1b
	db   $10                                         ; $7f5c: $10
	db   $fd                                         ; $7f5d: $fd
	add  b                                           ; $7f5e: $80
	ldh  [$03], a                                    ; $7f5f: $e0 $03
	ldh  a, [$1f]                                    ; $7f61: $f0 $1f
	nop                                              ; $7f63: $00
	and  $80                                         ; $7f64: $e6 $80
	db   $f4                                         ; $7f66: $f4
	nop                                              ; $7f67: $00

jr_082_7f68:
	rst  $38                                         ; $7f68: $ff
	add  b                                           ; $7f69: $80
	dec  c                                           ; $7f6a: $0d
	add  b                                           ; $7f6b: $80
	ld   a, [hl]                                     ; $7f6c: $7e
	add  b                                           ; $7f6d: $80
	nop                                              ; $7f6e: $00
	nop                                              ; $7f6f: $00
	rst  $38                                         ; $7f70: $ff
	add  b                                           ; $7f71: $80
	ld   a, a                                        ; $7f72: $7f
	inc  b                                           ; $7f73: $04
	rst  $38                                         ; $7f74: $ff
	add  b                                           ; $7f75: $80
	nop                                              ; $7f76: $00
	ld   a, [hl]                                     ; $7f77: $7e
	cp   $80                                         ; $7f78: $fe $80
	db   $fd                                         ; $7f7a: $fd
	ld   [bc], a                                     ; $7f7b: $02
	ld   a, h                                        ; $7f7c: $7c
	inc  d                                           ; $7f7d: $14
	sub  a                                           ; $7f7e: $97
	add  b                                           ; $7f7f: $80
	ld   [hl], e                                     ; $7f80: $73
	ld   a, [bc]                                     ; $7f81: $0a
	ld   c, e                                        ; $7f82: $4b
	ld   c, b                                        ; $7f83: $48
	ld   c, h                                        ; $7f84: $4c
	ld   c, a                                        ; $7f85: $4f
	dec  sp                                          ; $7f86: $3b
	cp   e                                           ; $7f87: $bb
	ld   d, a                                        ; $7f88: $57
	dec  de                                          ; $7f89: $1b
	inc  bc                                          ; $7f8a: $03
	ld   c, h                                        ; $7f8b: $4c
	inc  [hl]                                        ; $7f8c: $34
	add  d                                           ; $7f8d: $82
	scf                                              ; $7f8e: $37
	nop                                              ; $7f8f: $00
	inc  h                                           ; $7f90: $24
	adc  c                                           ; $7f91: $89
	ld   l, h                                        ; $7f92: $6c
	db   $10                                         ; $7f93: $10
	ld   [bc], a                                     ; $7f94: $02
	rlca                                             ; $7f95: $07
	nop                                              ; $7f96: $00
	rst  $30                                         ; $7f97: $f7
	ldh  a, [$f7]                                    ; $7f98: $f0 $f7
	push af                                          ; $7f9a: $f5
	rst  $30                                         ; $7f9b: $f7
	ldh  a, [c]                                      ; $7f9c: $f2
	rst  $30                                         ; $7f9d: $f7
	db   $f4                                         ; $7f9e: $f4
	rst  $30                                         ; $7f9f: $f7
	db   $f4                                         ; $7fa0: $f4
	rst  $30                                         ; $7fa1: $f7
	ldh  a, [c]                                      ; $7fa2: $f2
	rlca                                             ; $7fa3: $07
	ld   hl, sp-$01                                  ; $7fa4: $f8 $ff
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
	rst  $38                                         ; $7fbb: $ff
	nop                                              ; $7fbc: $00
	rst  $38                                         ; $7fbd: $ff
	nop                                              ; $7fbe: $00
	or   b                                           ; $7fbf: $b0
	nop                                              ; $7fc0: $00
	stop                                             ; $7fc1: $10 $00
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
	rst  $38                                         ; $7fdd: $ff
	nop                                              ; $7fde: $00
	rst  $38                                         ; $7fdf: $ff
	nop                                              ; $7fe0: $00
	rst  $28                                         ; $7fe1: $ef
	nop                                              ; $7fe2: $00
	rst  $38                                         ; $7fe3: $ff
	ld   a, a                                        ; $7fe4: $7f
	inc  de                                          ; $7fe5: $13
	ld   [hl], a                                     ; $7fe6: $77
	jp   z, $e92d                                    ; $7fe7: $ca $2d $e9

	inc  [hl]                                        ; $7fea: $34
	rst  $38                                         ; $7feb: $ff
	ld   a, a                                        ; $7fec: $7f
	ld   d, $3f                                      ; $7fed: $16 $3f
	sub  e                                           ; $7fef: $93
	add  hl, hl                                      ; $7ff0: $29
	dec  c                                           ; $7ff1: $0d
	ld   hl, $7fff                                   ; $7ff2: $21 $ff $7f
	dec  e                                           ; $7ff5: $1d
	inc  hl                                          ; $7ff6: $23
	add  hl, sp                                      ; $7ff7: $39
	add  hl, hl                                      ; $7ff8: $29
	dec  bc                                          ; $7ff9: $0b
	ld   de, $0000                                   ; $7ffa: $11 $00 $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
