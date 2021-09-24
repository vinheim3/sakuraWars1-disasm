; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $085", ROMX[$4000], BANK[$85]

	dec  c                                           ; $4000: $0d
	ld   c, $0e                                      ; $4001: $0e $0e
	ld   c, $0e                                      ; $4003: $0e $0e
	ld   c, $0e                                      ; $4005: $0e $0e
	ld   c, $0e                                      ; $4007: $0e $0e
	ld   c, $0e                                      ; $4009: $0e $0e
	ld   c, $0e                                      ; $400b: $0e $0e
	ld   c, $0e                                      ; $400d: $0e $0e
	ld   c, $0e                                      ; $400f: $0e $0e
	ld   c, $0e                                      ; $4011: $0e $0e
	dec  c                                           ; $4013: $0d
	rrca                                             ; $4014: $0f
	ld   l, d                                        ; $4015: $6a
	ld   l, d                                        ; $4016: $6a
	ld   l, d                                        ; $4017: $6a
	ld   l, d                                        ; $4018: $6a
	ld   l, d                                        ; $4019: $6a
	ld   l, d                                        ; $401a: $6a
	ld   l, d                                        ; $401b: $6a
	ld   l, d                                        ; $401c: $6a
	ld   l, d                                        ; $401d: $6a
	ld   l, d                                        ; $401e: $6a
	ld   l, d                                        ; $401f: $6a
	ld   l, d                                        ; $4020: $6a
	ld   l, d                                        ; $4021: $6a
	ld   l, d                                        ; $4022: $6a
	ld   l, d                                        ; $4023: $6a
	ld   l, d                                        ; $4024: $6a
	ld   l, d                                        ; $4025: $6a
	ld   l, d                                        ; $4026: $6a
	ld   e, b                                        ; $4027: $58
	ld   h, l                                        ; $4028: $65
	ld   h, [hl]                                     ; $4029: $66
	ld   l, h                                        ; $402a: $6c
	ld   l, l                                        ; $402b: $6d
	ld   l, [hl]                                     ; $402c: $6e
	ld   l, [hl]                                     ; $402d: $6e
	ld   l, [hl]                                     ; $402e: $6e
	ld   l, [hl]                                     ; $402f: $6e
	ld   l, [hl]                                     ; $4030: $6e
	ld   l, [hl]                                     ; $4031: $6e
	ld   l, [hl]                                     ; $4032: $6e
	ld   l, [hl]                                     ; $4033: $6e
	ld   l, [hl]                                     ; $4034: $6e
	ld   l, [hl]                                     ; $4035: $6e
	ld   l, [hl]                                     ; $4036: $6e
	ld   l, [hl]                                     ; $4037: $6e
	ld   l, [hl]                                     ; $4038: $6e
	ld   l, [hl]                                     ; $4039: $6e
	ld   l, [hl]                                     ; $403a: $6e
	ld   e, c                                        ; $403b: $59
	nop                                              ; $403c: $00
	ld   bc, $0302                                   ; $403d: $01 $02 $03
	inc  b                                           ; $4040: $04
	dec  b                                           ; $4041: $05
	ld   b, $07                                      ; $4042: $06 $07
	ld   [$0a09], sp                                 ; $4044: $08 $09 $0a
	dec  bc                                          ; $4047: $0b
	inc  c                                           ; $4048: $0c
	inc  c                                           ; $4049: $0c
	inc  c                                           ; $404a: $0c
	inc  c                                           ; $404b: $0c
	inc  b                                           ; $404c: $04
	inc  c                                           ; $404d: $0c
	inc  c                                           ; $404e: $0c
	dec  b                                           ; $404f: $05
	db   $10                                         ; $4050: $10
	ld   de, $1312                                   ; $4051: $11 $12 $13
	inc  d                                           ; $4054: $14
	dec  d                                           ; $4055: $15
	ld   d, $17                                      ; $4056: $16 $17
	jr   @+$1b                                       ; $4058: $18 $19

	ld   a, [de]                                     ; $405a: $1a
	dec  de                                          ; $405b: $1b
	inc  e                                           ; $405c: $1c
	dec  e                                           ; $405d: $1d
	ld   e, $1f                                      ; $405e: $1e $1f
	ld   [hl], b                                     ; $4060: $70
	inc  c                                           ; $4061: $0c
	ld   [hl], d                                     ; $4062: $72
	ld   [hl], e                                     ; $4063: $73
	jr   nz, @+$23                                   ; $4064: $20 $21

	ld   [hl+], a                                    ; $4066: $22
	inc  hl                                          ; $4067: $23
	inc  h                                           ; $4068: $24
	dec  h                                           ; $4069: $25
	ld   h, $27                                      ; $406a: $26 $27
	jr   z, jr_085_4097                              ; $406c: $28 $29

	ld   a, [hl+]                                    ; $406e: $2a
	dec  hl                                          ; $406f: $2b
	inc  l                                           ; $4070: $2c
	dec  l                                           ; $4071: $2d
	ld   l, $2f                                      ; $4072: $2e $2f
	ld   [hl], h                                     ; $4074: $74
	ld   [hl], l                                     ; $4075: $75
	halt                                             ; $4076: $76
	ld   [hl], a                                     ; $4077: $77
	jr   nc, jr_085_40ab                             ; $4078: $30 $31

	ld   [hl-], a                                    ; $407a: $32
	inc  sp                                          ; $407b: $33
	inc  [hl]                                        ; $407c: $34
	dec  [hl]                                        ; $407d: $35
	ld   [hl], $37                                   ; $407e: $36 $37
	jr   c, jr_085_40bb                              ; $4080: $38 $39

	ld   a, [hl-]                                    ; $4082: $3a
	dec  sp                                          ; $4083: $3b
	inc  a                                           ; $4084: $3c
	dec  a                                           ; $4085: $3d
	ld   a, $3f                                      ; $4086: $3e $3f
	ld   a, b                                        ; $4088: $78
	ld   b, [hl]                                     ; $4089: $46
	ld   b, a                                        ; $408a: $47
	ld   c, b                                        ; $408b: $48
	ld   b, b                                        ; $408c: $40
	ld   b, c                                        ; $408d: $41
	ld   b, d                                        ; $408e: $42
	ld   b, e                                        ; $408f: $43
	ld   b, h                                        ; $4090: $44
	ld   b, l                                        ; $4091: $45
	ld   b, [hl]                                     ; $4092: $46
	ld   b, a                                        ; $4093: $47
	ld   c, b                                        ; $4094: $48
	ld   c, c                                        ; $4095: $49
	dec  hl                                          ; $4096: $2b

jr_085_4097:
	ld   a, [bc]                                     ; $4097: $0a
	dec  bc                                          ; $4098: $0b
	dec  l                                           ; $4099: $2d
	ld   c, [hl]                                     ; $409a: $4e
	ld   c, a                                        ; $409b: $4f
	ld   c, c                                        ; $409c: $49
	ld   c, d                                        ; $409d: $4a
	ld   c, e                                        ; $409e: $4b
	dec  sp                                          ; $409f: $3b
	ld   d, b                                        ; $40a0: $50
	ld   d, c                                        ; $40a1: $51
	ld   d, d                                        ; $40a2: $52
	ld   d, e                                        ; $40a3: $53
	ld   d, h                                        ; $40a4: $54
	ld   d, l                                        ; $40a5: $55
	ld   d, [hl]                                     ; $40a6: $56
	ld   d, a                                        ; $40a7: $57
	ld   l, d                                        ; $40a8: $6a
	ld   l, d                                        ; $40a9: $6a
	inc  l                                           ; $40aa: $2c

jr_085_40ab:
	inc  h                                           ; $40ab: $24
	ld   [de], a                                     ; $40ac: $12
	ld   l, $5e                                      ; $40ad: $2e $5e
	ld   e, a                                        ; $40af: $5f
	ld   c, h                                        ; $40b0: $4c
	ld   c, l                                        ; $40b1: $4d
	ld   c, [hl]                                     ; $40b2: $4e
	ld   c, a                                        ; $40b3: $4f
	ld   h, b                                        ; $40b4: $60
	ld   h, c                                        ; $40b5: $61
	ld   h, d                                        ; $40b6: $62
	ld   h, e                                        ; $40b7: $63
	ld   h, h                                        ; $40b8: $64
	inc  c                                           ; $40b9: $0c
	inc  c                                           ; $40ba: $0c

jr_085_40bb:
	ld   h, a                                        ; $40bb: $67
	ld   l, b                                        ; $40bc: $68
	cpl                                              ; $40bd: $2f
	jr   nc, jr_085_40f1                             ; $40be: $30 $31

	ld   [hl-], a                                    ; $40c0: $32
	inc  sp                                          ; $40c1: $33
	inc  c                                           ; $40c2: $0c
	ld   l, a                                        ; $40c3: $6f
	ld   d, b                                        ; $40c4: $50
	ld   d, c                                        ; $40c5: $51
	ld   d, d                                        ; $40c6: $52
	ld   d, e                                        ; $40c7: $53
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
	inc  bc                                          ; $40d7: $03
	inc  bc                                          ; $40d8: $03
	inc  bc                                          ; $40d9: $03
	inc  bc                                          ; $40da: $03
	inc  hl                                          ; $40db: $23
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
	inc  bc                                          ; $40ec: $03
	inc  bc                                          ; $40ed: $03
	inc  bc                                          ; $40ee: $03
	inc  bc                                          ; $40ef: $03
	inc  bc                                          ; $40f0: $03

jr_085_40f1:
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
	inc  bc                                          ; $4100: $03
	inc  bc                                          ; $4101: $03
	inc  bc                                          ; $4102: $03
	inc  bc                                          ; $4103: $03
	inc  b                                           ; $4104: $04
	inc  b                                           ; $4105: $04
	inc  b                                           ; $4106: $04
	inc  b                                           ; $4107: $04
	inc  b                                           ; $4108: $04
	inc  bc                                          ; $4109: $03
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
	dec  c                                           ; $4114: $0d
	inc  bc                                          ; $4115: $03
	inc  bc                                          ; $4116: $03
	dec  c                                           ; $4117: $0d
	inc  b                                           ; $4118: $04
	inc  b                                           ; $4119: $04
	inc  b                                           ; $411a: $04
	inc  b                                           ; $411b: $04
	inc  b                                           ; $411c: $04
	inc  b                                           ; $411d: $04
	inc  b                                           ; $411e: $04
	inc  b                                           ; $411f: $04
	inc  b                                           ; $4120: $04
	inc  b                                           ; $4121: $04
	inc  b                                           ; $4122: $04
	inc  b                                           ; $4123: $04
	dec  b                                           ; $4124: $05
	dec  b                                           ; $4125: $05
	dec  b                                           ; $4126: $05
	dec  b                                           ; $4127: $05
	dec  b                                           ; $4128: $05
	inc  bc                                          ; $4129: $03
	dec  b                                           ; $412a: $05
	dec  b                                           ; $412b: $05
	inc  b                                           ; $412c: $04
	inc  b                                           ; $412d: $04
	inc  b                                           ; $412e: $04
	inc  b                                           ; $412f: $04
	inc  b                                           ; $4130: $04
	inc  b                                           ; $4131: $04
	inc  b                                           ; $4132: $04
	inc  b                                           ; $4133: $04
	inc  b                                           ; $4134: $04
	inc  b                                           ; $4135: $04
	inc  b                                           ; $4136: $04
	inc  b                                           ; $4137: $04
	dec  b                                           ; $4138: $05
	dec  b                                           ; $4139: $05
	dec  b                                           ; $413a: $05
	dec  b                                           ; $413b: $05
	dec  b                                           ; $413c: $05
	dec  b                                           ; $413d: $05
	dec  b                                           ; $413e: $05
	dec  b                                           ; $413f: $05
	inc  b                                           ; $4140: $04
	inc  b                                           ; $4141: $04
	inc  b                                           ; $4142: $04
	inc  b                                           ; $4143: $04
	inc  b                                           ; $4144: $04
	inc  b                                           ; $4145: $04
	inc  b                                           ; $4146: $04
	inc  b                                           ; $4147: $04
	inc  b                                           ; $4148: $04
	inc  b                                           ; $4149: $04
	inc  b                                           ; $414a: $04
	inc  b                                           ; $414b: $04
	dec  b                                           ; $414c: $05
	dec  b                                           ; $414d: $05
	dec  b                                           ; $414e: $05
	dec  b                                           ; $414f: $05
	dec  b                                           ; $4150: $05
	dec  c                                           ; $4151: $0d
	dec  c                                           ; $4152: $0d
	dec  c                                           ; $4153: $0d
	dec  b                                           ; $4154: $05
	dec  b                                           ; $4155: $05
	dec  b                                           ; $4156: $05
	dec  b                                           ; $4157: $05
	dec  b                                           ; $4158: $05
	dec  b                                           ; $4159: $05
	dec  b                                           ; $415a: $05
	dec  b                                           ; $415b: $05
	dec  b                                           ; $415c: $05
	dec  b                                           ; $415d: $05
	dec  c                                           ; $415e: $0d
	dec  c                                           ; $415f: $0d
	dec  c                                           ; $4160: $0d
	dec  c                                           ; $4161: $0d
	dec  b                                           ; $4162: $05
	dec  b                                           ; $4163: $05
	dec  c                                           ; $4164: $0d
	dec  c                                           ; $4165: $0d
	dec  c                                           ; $4166: $0d
	dec  c                                           ; $4167: $0d
	dec  b                                           ; $4168: $05
	dec  b                                           ; $4169: $05
	dec  b                                           ; $416a: $05
	dec  b                                           ; $416b: $05
	dec  b                                           ; $416c: $05
	dec  b                                           ; $416d: $05
	dec  b                                           ; $416e: $05
	dec  b                                           ; $416f: $05
	dec  b                                           ; $4170: $05
	dec  b                                           ; $4171: $05
	dec  c                                           ; $4172: $0d
	dec  c                                           ; $4173: $0d
	dec  c                                           ; $4174: $0d
	dec  c                                           ; $4175: $0d
	dec  b                                           ; $4176: $05
	dec  b                                           ; $4177: $05
	dec  c                                           ; $4178: $0d
	dec  c                                           ; $4179: $0d
	dec  c                                           ; $417a: $0d
	dec  c                                           ; $417b: $0d
	dec  b                                           ; $417c: $05
	dec  b                                           ; $417d: $05
	dec  b                                           ; $417e: $05
	dec  b                                           ; $417f: $05
	dec  b                                           ; $4180: $05
	inc  bc                                          ; $4181: $03
	inc  bc                                          ; $4182: $03
	dec  b                                           ; $4183: $05
	dec  b                                           ; $4184: $05
	dec  c                                           ; $4185: $0d
	dec  c                                           ; $4186: $0d
	dec  c                                           ; $4187: $0d
	dec  c                                           ; $4188: $0d
	dec  c                                           ; $4189: $0d
	inc  bc                                          ; $418a: $03
	dec  b                                           ; $418b: $05
	dec  c                                           ; $418c: $0d
	dec  c                                           ; $418d: $0d
	dec  c                                           ; $418e: $0d
	dec  c                                           ; $418f: $0d
	dec  c                                           ; $4190: $0d
	ld   c, $0e                                      ; $4191: $0e $0e
	ld   c, $0e                                      ; $4193: $0e $0e
	ld   c, $0e                                      ; $4195: $0e $0e
	ld   c, $0e                                      ; $4197: $0e $0e
	ld   c, $0e                                      ; $4199: $0e $0e
	ld   c, $0e                                      ; $419b: $0e $0e
	ld   c, $0e                                      ; $419d: $0e $0e
	ld   c, $0e                                      ; $419f: $0e $0e
	ld   c, $0e                                      ; $41a1: $0e $0e
	dec  c                                           ; $41a3: $0d
	rrca                                             ; $41a4: $0f
	ld   l, d                                        ; $41a5: $6a
	ld   l, d                                        ; $41a6: $6a
	ld   l, d                                        ; $41a7: $6a
	ld   l, d                                        ; $41a8: $6a
	ld   l, d                                        ; $41a9: $6a
	ld   l, d                                        ; $41aa: $6a
	ld   l, d                                        ; $41ab: $6a
	ld   l, d                                        ; $41ac: $6a
	ld   l, d                                        ; $41ad: $6a
	ld   l, d                                        ; $41ae: $6a
	ld   l, d                                        ; $41af: $6a
	ld   l, d                                        ; $41b0: $6a
	ld   l, d                                        ; $41b1: $6a
	ld   l, d                                        ; $41b2: $6a
	ld   l, d                                        ; $41b3: $6a
	ld   l, d                                        ; $41b4: $6a
	ld   l, d                                        ; $41b5: $6a
	ld   l, d                                        ; $41b6: $6a
	ld   e, b                                        ; $41b7: $58
	ld   h, l                                        ; $41b8: $65
	ld   h, [hl]                                     ; $41b9: $66
	ld   l, h                                        ; $41ba: $6c
	ld   l, l                                        ; $41bb: $6d
	ld   l, [hl]                                     ; $41bc: $6e
	ld   l, [hl]                                     ; $41bd: $6e
	ld   l, [hl]                                     ; $41be: $6e
	ld   l, [hl]                                     ; $41bf: $6e
	ld   l, [hl]                                     ; $41c0: $6e
	ld   l, [hl]                                     ; $41c1: $6e
	ld   l, [hl]                                     ; $41c2: $6e
	ld   l, [hl]                                     ; $41c3: $6e
	ld   l, [hl]                                     ; $41c4: $6e
	ld   l, [hl]                                     ; $41c5: $6e
	ld   l, [hl]                                     ; $41c6: $6e
	ld   l, [hl]                                     ; $41c7: $6e
	ld   l, [hl]                                     ; $41c8: $6e
	ld   l, [hl]                                     ; $41c9: $6e
	ld   l, [hl]                                     ; $41ca: $6e
	ld   e, c                                        ; $41cb: $59
	nop                                              ; $41cc: $00
	ld   bc, $0302                                   ; $41cd: $01 $02 $03
	inc  b                                           ; $41d0: $04
	dec  b                                           ; $41d1: $05
	ld   b, $07                                      ; $41d2: $06 $07
	ld   [$0a09], sp                                 ; $41d4: $08 $09 $0a
	dec  bc                                          ; $41d7: $0b
	inc  c                                           ; $41d8: $0c
	inc  c                                           ; $41d9: $0c
	inc  c                                           ; $41da: $0c
	inc  c                                           ; $41db: $0c
	inc  b                                           ; $41dc: $04
	inc  c                                           ; $41dd: $0c
	inc  c                                           ; $41de: $0c
	dec  b                                           ; $41df: $05
	db   $10                                         ; $41e0: $10
	ld   de, $1312                                   ; $41e1: $11 $12 $13
	inc  d                                           ; $41e4: $14
	dec  d                                           ; $41e5: $15
	ld   d, $17                                      ; $41e6: $16 $17
	jr   @+$1b                                       ; $41e8: $18 $19

	ld   a, [de]                                     ; $41ea: $1a
	dec  de                                          ; $41eb: $1b
	inc  e                                           ; $41ec: $1c
	dec  e                                           ; $41ed: $1d
	ld   e, $1f                                      ; $41ee: $1e $1f
	ld   [hl], b                                     ; $41f0: $70
	inc  c                                           ; $41f1: $0c
	ld   [hl], d                                     ; $41f2: $72
	ld   [hl], e                                     ; $41f3: $73
	jr   nz, @+$23                                   ; $41f4: $20 $21

	ld   [hl+], a                                    ; $41f6: $22
	inc  hl                                          ; $41f7: $23
	inc  h                                           ; $41f8: $24
	dec  h                                           ; $41f9: $25
	ld   h, $27                                      ; $41fa: $26 $27
	jr   z, jr_085_4227                              ; $41fc: $28 $29

	ld   a, [hl+]                                    ; $41fe: $2a
	dec  hl                                          ; $41ff: $2b
	inc  l                                           ; $4200: $2c
	dec  l                                           ; $4201: $2d
	ld   l, $2f                                      ; $4202: $2e $2f
	ld   [hl], h                                     ; $4204: $74
	ld   [hl], l                                     ; $4205: $75
	halt                                             ; $4206: $76
	ld   [hl], a                                     ; $4207: $77
	jr   nc, jr_085_423b                             ; $4208: $30 $31

	ld   [hl-], a                                    ; $420a: $32
	inc  sp                                          ; $420b: $33
	inc  [hl]                                        ; $420c: $34
	dec  [hl]                                        ; $420d: $35
	ld   [hl], $37                                   ; $420e: $36 $37
	jr   c, jr_085_424b                              ; $4210: $38 $39

	ld   a, [hl-]                                    ; $4212: $3a
	dec  sp                                          ; $4213: $3b
	inc  a                                           ; $4214: $3c
	dec  a                                           ; $4215: $3d
	ld   a, $3f                                      ; $4216: $3e $3f
	ld   a, b                                        ; $4218: $78
	ld   b, [hl]                                     ; $4219: $46
	ld   b, a                                        ; $421a: $47
	ld   c, b                                        ; $421b: $48
	ld   b, b                                        ; $421c: $40
	ld   d, h                                        ; $421d: $54
	ld   d, l                                        ; $421e: $55
	ld   d, [hl]                                     ; $421f: $56
	ld   d, a                                        ; $4220: $57
	ld   b, l                                        ; $4221: $45
	ld   b, [hl]                                     ; $4222: $46
	ld   b, a                                        ; $4223: $47
	ld   c, b                                        ; $4224: $48
	ld   c, c                                        ; $4225: $49
	ld   c, d                                        ; $4226: $4a

jr_085_4227:
	ld   c, e                                        ; $4227: $4b
	ld   c, h                                        ; $4228: $4c
	ld   c, l                                        ; $4229: $4d
	ld   c, [hl]                                     ; $422a: $4e
	ld   c, a                                        ; $422b: $4f
	ld   c, c                                        ; $422c: $49
	ld   c, d                                        ; $422d: $4a
	ld   c, e                                        ; $422e: $4b
	dec  sp                                          ; $422f: $3b
	ld   d, b                                        ; $4230: $50
	ld   e, b                                        ; $4231: $58
	ld   e, c                                        ; $4232: $59
	ld   e, d                                        ; $4233: $5a
	ld   e, e                                        ; $4234: $5b
	ld   d, l                                        ; $4235: $55
	ld   d, [hl]                                     ; $4236: $56
	ld   d, a                                        ; $4237: $57
	ld   l, d                                        ; $4238: $6a
	ld   l, d                                        ; $4239: $6a
	ld   e, d                                        ; $423a: $5a

jr_085_423b:
	ld   e, e                                        ; $423b: $5b
	ld   e, h                                        ; $423c: $5c
	ld   e, l                                        ; $423d: $5d
	ld   e, [hl]                                     ; $423e: $5e
	ld   e, a                                        ; $423f: $5f
	ld   c, h                                        ; $4240: $4c
	ld   c, l                                        ; $4241: $4d
	ld   c, [hl]                                     ; $4242: $4e
	ld   c, a                                        ; $4243: $4f
	ld   h, b                                        ; $4244: $60
	ld   e, h                                        ; $4245: $5c
	ld   e, l                                        ; $4246: $5d
	ld   e, [hl]                                     ; $4247: $5e
	ld   e, a                                        ; $4248: $5f
	inc  c                                           ; $4249: $0c
	inc  c                                           ; $424a: $0c

jr_085_424b:
	ld   h, a                                        ; $424b: $67
	ld   l, b                                        ; $424c: $68
	ld   l, c                                        ; $424d: $69
	ld   h, h                                        ; $424e: $64
	ld   l, e                                        ; $424f: $6b
	inc  c                                           ; $4250: $0c
	inc  c                                           ; $4251: $0c
	inc  c                                           ; $4252: $0c
	ld   l, a                                        ; $4253: $6f
	ld   d, b                                        ; $4254: $50
	ld   d, c                                        ; $4255: $51
	ld   d, d                                        ; $4256: $52
	ld   d, e                                        ; $4257: $53
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
	inc  bc                                          ; $4267: $03
	inc  bc                                          ; $4268: $03
	inc  bc                                          ; $4269: $03
	inc  bc                                          ; $426a: $03
	inc  hl                                          ; $426b: $23
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
	inc  bc                                          ; $427c: $03
	inc  bc                                          ; $427d: $03
	inc  bc                                          ; $427e: $03
	inc  bc                                          ; $427f: $03
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
	inc  bc                                          ; $4290: $03
	inc  bc                                          ; $4291: $03
	inc  bc                                          ; $4292: $03
	inc  bc                                          ; $4293: $03
	inc  b                                           ; $4294: $04
	inc  b                                           ; $4295: $04
	inc  b                                           ; $4296: $04
	inc  b                                           ; $4297: $04
	inc  b                                           ; $4298: $04
	inc  bc                                          ; $4299: $03
	inc  b                                           ; $429a: $04
	inc  b                                           ; $429b: $04
	inc  b                                           ; $429c: $04
	inc  b                                           ; $429d: $04
	inc  b                                           ; $429e: $04
	inc  b                                           ; $429f: $04
	inc  bc                                          ; $42a0: $03
	inc  bc                                          ; $42a1: $03
	inc  bc                                          ; $42a2: $03
	inc  bc                                          ; $42a3: $03
	dec  c                                           ; $42a4: $0d
	inc  bc                                          ; $42a5: $03
	inc  bc                                          ; $42a6: $03
	dec  c                                           ; $42a7: $0d
	inc  b                                           ; $42a8: $04
	inc  b                                           ; $42a9: $04
	inc  b                                           ; $42aa: $04
	inc  b                                           ; $42ab: $04
	inc  b                                           ; $42ac: $04
	inc  b                                           ; $42ad: $04
	inc  b                                           ; $42ae: $04
	inc  b                                           ; $42af: $04
	inc  b                                           ; $42b0: $04
	inc  b                                           ; $42b1: $04
	inc  b                                           ; $42b2: $04
	inc  b                                           ; $42b3: $04
	dec  b                                           ; $42b4: $05
	dec  b                                           ; $42b5: $05
	dec  b                                           ; $42b6: $05
	dec  b                                           ; $42b7: $05
	dec  b                                           ; $42b8: $05
	inc  bc                                          ; $42b9: $03
	dec  b                                           ; $42ba: $05
	dec  b                                           ; $42bb: $05
	inc  b                                           ; $42bc: $04
	inc  b                                           ; $42bd: $04
	inc  b                                           ; $42be: $04
	inc  b                                           ; $42bf: $04
	inc  b                                           ; $42c0: $04
	inc  b                                           ; $42c1: $04
	inc  b                                           ; $42c2: $04
	inc  b                                           ; $42c3: $04
	inc  b                                           ; $42c4: $04
	inc  b                                           ; $42c5: $04
	inc  b                                           ; $42c6: $04
	inc  b                                           ; $42c7: $04
	dec  b                                           ; $42c8: $05
	dec  b                                           ; $42c9: $05
	dec  b                                           ; $42ca: $05
	dec  b                                           ; $42cb: $05
	dec  b                                           ; $42cc: $05
	dec  b                                           ; $42cd: $05
	dec  b                                           ; $42ce: $05
	dec  b                                           ; $42cf: $05
	inc  b                                           ; $42d0: $04
	inc  b                                           ; $42d1: $04
	inc  b                                           ; $42d2: $04
	inc  b                                           ; $42d3: $04
	inc  b                                           ; $42d4: $04
	inc  b                                           ; $42d5: $04
	inc  b                                           ; $42d6: $04
	inc  b                                           ; $42d7: $04
	inc  b                                           ; $42d8: $04
	inc  b                                           ; $42d9: $04
	inc  b                                           ; $42da: $04
	inc  b                                           ; $42db: $04
	dec  b                                           ; $42dc: $05
	dec  b                                           ; $42dd: $05
	dec  b                                           ; $42de: $05
	dec  b                                           ; $42df: $05
	dec  b                                           ; $42e0: $05
	dec  c                                           ; $42e1: $0d
	dec  c                                           ; $42e2: $0d
	dec  c                                           ; $42e3: $0d
	dec  b                                           ; $42e4: $05
	dec  c                                           ; $42e5: $0d
	dec  c                                           ; $42e6: $0d
	dec  c                                           ; $42e7: $0d
	dec  c                                           ; $42e8: $0d
	dec  b                                           ; $42e9: $05
	dec  b                                           ; $42ea: $05
	dec  b                                           ; $42eb: $05
	dec  b                                           ; $42ec: $05
	dec  b                                           ; $42ed: $05
	dec  b                                           ; $42ee: $05
	dec  b                                           ; $42ef: $05
	dec  b                                           ; $42f0: $05
	dec  b                                           ; $42f1: $05
	dec  b                                           ; $42f2: $05
	dec  b                                           ; $42f3: $05
	dec  c                                           ; $42f4: $0d
	dec  c                                           ; $42f5: $0d
	dec  c                                           ; $42f6: $0d
	dec  c                                           ; $42f7: $0d
	dec  b                                           ; $42f8: $05
	dec  c                                           ; $42f9: $0d
	dec  c                                           ; $42fa: $0d
	dec  c                                           ; $42fb: $0d
	dec  c                                           ; $42fc: $0d
	dec  b                                           ; $42fd: $05
	dec  b                                           ; $42fe: $05
	dec  b                                           ; $42ff: $05
	dec  b                                           ; $4300: $05
	dec  b                                           ; $4301: $05
	dec  b                                           ; $4302: $05
	dec  b                                           ; $4303: $05
	dec  b                                           ; $4304: $05
	dec  b                                           ; $4305: $05
	dec  b                                           ; $4306: $05
	dec  b                                           ; $4307: $05
	dec  c                                           ; $4308: $0d
	dec  c                                           ; $4309: $0d
	dec  c                                           ; $430a: $0d
	dec  c                                           ; $430b: $0d
	dec  b                                           ; $430c: $05
	dec  c                                           ; $430d: $0d
	dec  c                                           ; $430e: $0d
	dec  c                                           ; $430f: $0d
	dec  c                                           ; $4310: $0d
	inc  bc                                          ; $4311: $03
	inc  bc                                          ; $4312: $03
	dec  b                                           ; $4313: $05
	dec  b                                           ; $4314: $05
	dec  b                                           ; $4315: $05
	ld   h, l                                        ; $4316: $65
	dec  b                                           ; $4317: $05
	inc  bc                                          ; $4318: $03
	inc  bc                                          ; $4319: $03
	inc  bc                                          ; $431a: $03
	dec  b                                           ; $431b: $05
	dec  c                                           ; $431c: $0d
	dec  c                                           ; $431d: $0d
	dec  c                                           ; $431e: $0d
	dec  c                                           ; $431f: $0d
	dec  c                                           ; $4320: $0d
	ld   c, $0e                                      ; $4321: $0e $0e
	ld   c, $0e                                      ; $4323: $0e $0e
	ld   c, $0e                                      ; $4325: $0e $0e
	ld   c, $0e                                      ; $4327: $0e $0e
	ld   c, $0e                                      ; $4329: $0e $0e
	ld   c, $0e                                      ; $432b: $0e $0e
	ld   c, $0e                                      ; $432d: $0e $0e
	ld   c, $0e                                      ; $432f: $0e $0e
	ld   c, $0e                                      ; $4331: $0e $0e
	dec  c                                           ; $4333: $0d
	rrca                                             ; $4334: $0f
	ld   l, d                                        ; $4335: $6a
	ld   l, d                                        ; $4336: $6a
	ld   l, d                                        ; $4337: $6a
	ld   l, d                                        ; $4338: $6a
	ld   l, d                                        ; $4339: $6a
	ld   l, d                                        ; $433a: $6a
	ld   l, d                                        ; $433b: $6a
	ld   l, d                                        ; $433c: $6a
	ld   l, d                                        ; $433d: $6a
	ld   l, d                                        ; $433e: $6a
	ld   l, d                                        ; $433f: $6a
	ld   l, d                                        ; $4340: $6a
	ld   l, d                                        ; $4341: $6a
	ld   l, d                                        ; $4342: $6a
	ld   l, d                                        ; $4343: $6a
	ld   l, d                                        ; $4344: $6a
	ld   l, d                                        ; $4345: $6a
	ld   l, d                                        ; $4346: $6a
	ld   e, b                                        ; $4347: $58
	ld   h, l                                        ; $4348: $65
	ld   h, [hl]                                     ; $4349: $66
	ld   l, h                                        ; $434a: $6c
	ld   l, l                                        ; $434b: $6d
	ld   l, [hl]                                     ; $434c: $6e
	ld   l, [hl]                                     ; $434d: $6e
	ld   l, [hl]                                     ; $434e: $6e
	ld   l, [hl]                                     ; $434f: $6e
	ld   l, [hl]                                     ; $4350: $6e
	ld   l, [hl]                                     ; $4351: $6e
	ld   l, [hl]                                     ; $4352: $6e
	ld   l, [hl]                                     ; $4353: $6e
	ld   l, [hl]                                     ; $4354: $6e
	ld   l, [hl]                                     ; $4355: $6e
	ld   l, [hl]                                     ; $4356: $6e
	ld   l, [hl]                                     ; $4357: $6e
	ld   l, [hl]                                     ; $4358: $6e
	ld   l, [hl]                                     ; $4359: $6e
	ld   l, [hl]                                     ; $435a: $6e
	ld   e, c                                        ; $435b: $59
	nop                                              ; $435c: $00
	ld   bc, $0302                                   ; $435d: $01 $02 $03
	inc  b                                           ; $4360: $04
	dec  b                                           ; $4361: $05
	ld   b, $07                                      ; $4362: $06 $07
	ld   [$0a09], sp                                 ; $4364: $08 $09 $0a
	dec  bc                                          ; $4367: $0b
	inc  c                                           ; $4368: $0c
	inc  c                                           ; $4369: $0c
	inc  c                                           ; $436a: $0c
	inc  c                                           ; $436b: $0c
	inc  b                                           ; $436c: $04
	inc  c                                           ; $436d: $0c
	inc  c                                           ; $436e: $0c
	dec  b                                           ; $436f: $05
	db   $10                                         ; $4370: $10
	ld   de, $1312                                   ; $4371: $11 $12 $13
	inc  d                                           ; $4374: $14
	dec  d                                           ; $4375: $15
	ld   d, $17                                      ; $4376: $16 $17
	jr   @+$1b                                       ; $4378: $18 $19

	ld   a, [de]                                     ; $437a: $1a
	dec  de                                          ; $437b: $1b
	inc  e                                           ; $437c: $1c
	dec  e                                           ; $437d: $1d
	ld   e, $1f                                      ; $437e: $1e $1f
	ld   [hl], b                                     ; $4380: $70
	inc  c                                           ; $4381: $0c
	ld   [hl], d                                     ; $4382: $72
	ld   [hl], e                                     ; $4383: $73
	jr   nz, jr_085_43a7                             ; $4384: $20 $21

	ld   [hl+], a                                    ; $4386: $22
	inc  hl                                          ; $4387: $23
	inc  h                                           ; $4388: $24
	dec  h                                           ; $4389: $25
	ld   h, $27                                      ; $438a: $26 $27
	jr   z, jr_085_43b7                              ; $438c: $28 $29

	ld   a, [hl+]                                    ; $438e: $2a
	dec  hl                                          ; $438f: $2b
	inc  l                                           ; $4390: $2c
	dec  l                                           ; $4391: $2d
	ld   l, $2f                                      ; $4392: $2e $2f
	ld   [hl], h                                     ; $4394: $74
	ld   [hl], l                                     ; $4395: $75
	halt                                             ; $4396: $76
	ld   [hl], a                                     ; $4397: $77
	jr   nc, jr_085_43cb                             ; $4398: $30 $31

	ld   [hl-], a                                    ; $439a: $32
	inc  sp                                          ; $439b: $33
	inc  [hl]                                        ; $439c: $34
	dec  [hl]                                        ; $439d: $35
	ld   [hl], $37                                   ; $439e: $36 $37
	jr   c, jr_085_43db                              ; $43a0: $38 $39

	ld   a, [hl-]                                    ; $43a2: $3a
	dec  sp                                          ; $43a3: $3b
	inc  a                                           ; $43a4: $3c
	dec  a                                           ; $43a5: $3d
	ld   h, b                                        ; $43a6: $60

jr_085_43a7:
	ccf                                              ; $43a7: $3f
	ld   a, b                                        ; $43a8: $78
	ld   b, [hl]                                     ; $43a9: $46
	ld   b, a                                        ; $43aa: $47
	ld   c, b                                        ; $43ab: $48
	ld   b, b                                        ; $43ac: $40
	ld   b, c                                        ; $43ad: $41
	ld   b, d                                        ; $43ae: $42
	ld   b, e                                        ; $43af: $43
	ld   b, h                                        ; $43b0: $44
	ld   b, l                                        ; $43b1: $45
	ld   b, [hl]                                     ; $43b2: $46
	ld   b, a                                        ; $43b3: $47
	ld   c, b                                        ; $43b4: $48
	ld   c, c                                        ; $43b5: $49
	ld   c, d                                        ; $43b6: $4a

jr_085_43b7:
	ld   c, e                                        ; $43b7: $4b
	ld   c, h                                        ; $43b8: $4c
	ld   c, l                                        ; $43b9: $4d
	ld   h, c                                        ; $43ba: $61
	ld   h, d                                        ; $43bb: $62
	ld   c, c                                        ; $43bc: $49
	ld   c, d                                        ; $43bd: $4a
	ld   c, e                                        ; $43be: $4b
	dec  sp                                          ; $43bf: $3b
	ld   d, b                                        ; $43c0: $50
	ld   d, c                                        ; $43c1: $51
	ld   d, d                                        ; $43c2: $52
	ld   d, e                                        ; $43c3: $53
	ld   d, h                                        ; $43c4: $54
	ld   d, l                                        ; $43c5: $55
	ld   d, [hl]                                     ; $43c6: $56
	ld   d, a                                        ; $43c7: $57
	ld   l, d                                        ; $43c8: $6a
	ld   l, d                                        ; $43c9: $6a
	ld   e, d                                        ; $43ca: $5a

jr_085_43cb:
	ld   e, e                                        ; $43cb: $5b
	ld   e, h                                        ; $43cc: $5c
	ld   h, e                                        ; $43cd: $63
	ld   h, h                                        ; $43ce: $64
	ld   h, l                                        ; $43cf: $65
	ld   c, h                                        ; $43d0: $4c
	ld   c, l                                        ; $43d1: $4d
	ld   c, [hl]                                     ; $43d2: $4e
	ld   c, a                                        ; $43d3: $4f
	ld   h, b                                        ; $43d4: $60
	ld   h, c                                        ; $43d5: $61
	ld   h, d                                        ; $43d6: $62
	ld   h, e                                        ; $43d7: $63
	ld   h, h                                        ; $43d8: $64
	inc  c                                           ; $43d9: $0c
	inc  c                                           ; $43da: $0c

jr_085_43db:
	ld   h, a                                        ; $43db: $67
	ld   l, b                                        ; $43dc: $68
	ld   l, c                                        ; $43dd: $69
	ld   h, h                                        ; $43de: $64
	ld   l, e                                        ; $43df: $6b
	ld   h, [hl]                                     ; $43e0: $66
	ld   h, a                                        ; $43e1: $67
	ld   l, b                                        ; $43e2: $68
	ld   l, c                                        ; $43e3: $69
	ld   d, b                                        ; $43e4: $50
	ld   d, c                                        ; $43e5: $51
	ld   d, d                                        ; $43e6: $52
	ld   d, e                                        ; $43e7: $53
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
	inc  bc                                          ; $43f7: $03
	inc  bc                                          ; $43f8: $03
	inc  bc                                          ; $43f9: $03
	inc  bc                                          ; $43fa: $03
	inc  hl                                          ; $43fb: $23
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
	inc  bc                                          ; $440c: $03
	inc  bc                                          ; $440d: $03
	inc  bc                                          ; $440e: $03
	inc  bc                                          ; $440f: $03
	inc  bc                                          ; $4410: $03
	inc  bc                                          ; $4411: $03
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
	inc  bc                                          ; $4420: $03
	inc  bc                                          ; $4421: $03
	inc  bc                                          ; $4422: $03
	inc  bc                                          ; $4423: $03
	inc  b                                           ; $4424: $04
	inc  b                                           ; $4425: $04
	inc  b                                           ; $4426: $04
	inc  b                                           ; $4427: $04
	inc  b                                           ; $4428: $04
	inc  bc                                          ; $4429: $03
	inc  b                                           ; $442a: $04
	inc  b                                           ; $442b: $04
	inc  b                                           ; $442c: $04
	inc  b                                           ; $442d: $04
	inc  b                                           ; $442e: $04
	inc  b                                           ; $442f: $04
	inc  bc                                          ; $4430: $03
	inc  bc                                          ; $4431: $03
	inc  bc                                          ; $4432: $03
	inc  bc                                          ; $4433: $03
	dec  c                                           ; $4434: $0d
	inc  bc                                          ; $4435: $03
	inc  bc                                          ; $4436: $03
	dec  c                                           ; $4437: $0d
	inc  b                                           ; $4438: $04
	inc  b                                           ; $4439: $04
	inc  b                                           ; $443a: $04
	inc  b                                           ; $443b: $04
	inc  b                                           ; $443c: $04
	inc  b                                           ; $443d: $04
	inc  b                                           ; $443e: $04
	inc  b                                           ; $443f: $04
	inc  b                                           ; $4440: $04
	inc  b                                           ; $4441: $04
	inc  b                                           ; $4442: $04
	inc  b                                           ; $4443: $04
	dec  b                                           ; $4444: $05
	dec  b                                           ; $4445: $05
	dec  b                                           ; $4446: $05
	dec  b                                           ; $4447: $05
	dec  b                                           ; $4448: $05
	inc  bc                                          ; $4449: $03
	dec  b                                           ; $444a: $05
	dec  b                                           ; $444b: $05
	inc  b                                           ; $444c: $04
	inc  b                                           ; $444d: $04
	inc  b                                           ; $444e: $04
	inc  b                                           ; $444f: $04
	inc  b                                           ; $4450: $04
	inc  b                                           ; $4451: $04
	inc  b                                           ; $4452: $04
	inc  b                                           ; $4453: $04
	inc  b                                           ; $4454: $04
	inc  b                                           ; $4455: $04
	inc  b                                           ; $4456: $04
	inc  b                                           ; $4457: $04
	dec  b                                           ; $4458: $05
	dec  b                                           ; $4459: $05
	dec  b                                           ; $445a: $05
	dec  b                                           ; $445b: $05
	dec  b                                           ; $445c: $05
	dec  b                                           ; $445d: $05
	dec  b                                           ; $445e: $05
	dec  b                                           ; $445f: $05
	inc  b                                           ; $4460: $04
	inc  b                                           ; $4461: $04
	inc  b                                           ; $4462: $04
	inc  b                                           ; $4463: $04
	inc  b                                           ; $4464: $04
	inc  b                                           ; $4465: $04
	inc  b                                           ; $4466: $04
	inc  b                                           ; $4467: $04
	inc  b                                           ; $4468: $04
	inc  b                                           ; $4469: $04
	inc  b                                           ; $446a: $04
	inc  b                                           ; $446b: $04
	dec  b                                           ; $446c: $05
	dec  b                                           ; $446d: $05
	dec  c                                           ; $446e: $0d
	dec  b                                           ; $446f: $05
	dec  b                                           ; $4470: $05
	dec  c                                           ; $4471: $0d
	dec  c                                           ; $4472: $0d
	dec  c                                           ; $4473: $0d
	dec  b                                           ; $4474: $05
	dec  b                                           ; $4475: $05
	dec  b                                           ; $4476: $05
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
	dec  c                                           ; $4482: $0d
	dec  c                                           ; $4483: $0d
	dec  c                                           ; $4484: $0d
	dec  c                                           ; $4485: $0d
	dec  c                                           ; $4486: $0d
	dec  c                                           ; $4487: $0d
	dec  b                                           ; $4488: $05
	dec  b                                           ; $4489: $05
	dec  b                                           ; $448a: $05
	dec  b                                           ; $448b: $05
	dec  b                                           ; $448c: $05
	dec  b                                           ; $448d: $05
	dec  b                                           ; $448e: $05
	dec  b                                           ; $448f: $05
	dec  b                                           ; $4490: $05
	dec  b                                           ; $4491: $05
	dec  b                                           ; $4492: $05
	dec  b                                           ; $4493: $05
	dec  b                                           ; $4494: $05
	dec  c                                           ; $4495: $0d
	dec  c                                           ; $4496: $0d
	dec  c                                           ; $4497: $0d
	dec  c                                           ; $4498: $0d
	dec  c                                           ; $4499: $0d
	dec  c                                           ; $449a: $0d
	dec  c                                           ; $449b: $0d
	dec  b                                           ; $449c: $05
	dec  b                                           ; $449d: $05
	dec  b                                           ; $449e: $05
	dec  b                                           ; $449f: $05
	dec  b                                           ; $44a0: $05
	inc  bc                                          ; $44a1: $03
	inc  bc                                          ; $44a2: $03
	dec  b                                           ; $44a3: $05
	dec  b                                           ; $44a4: $05
	dec  b                                           ; $44a5: $05
	ld   h, l                                        ; $44a6: $65
	dec  b                                           ; $44a7: $05
	dec  c                                           ; $44a8: $0d
	dec  c                                           ; $44a9: $0d
	dec  c                                           ; $44aa: $0d
	dec  c                                           ; $44ab: $0d
	dec  c                                           ; $44ac: $0d
	dec  c                                           ; $44ad: $0d
	dec  c                                           ; $44ae: $0d
	dec  c                                           ; $44af: $0d
	dec  c                                           ; $44b0: $0d
	ld   c, $0e                                      ; $44b1: $0e $0e
	ld   c, $0e                                      ; $44b3: $0e $0e
	ld   c, $0e                                      ; $44b5: $0e $0e
	ld   c, $0e                                      ; $44b7: $0e $0e
	ld   c, $0e                                      ; $44b9: $0e $0e
	ld   c, $0e                                      ; $44bb: $0e $0e
	ld   c, $0e                                      ; $44bd: $0e $0e
	ld   c, $0e                                      ; $44bf: $0e $0e
	ld   c, $0e                                      ; $44c1: $0e $0e
	dec  c                                           ; $44c3: $0d
	rrca                                             ; $44c4: $0f
	ld   l, d                                        ; $44c5: $6a
	ld   l, d                                        ; $44c6: $6a
	ld   l, d                                        ; $44c7: $6a
	ld   l, d                                        ; $44c8: $6a
	ld   l, d                                        ; $44c9: $6a
	ld   l, d                                        ; $44ca: $6a
	ld   l, d                                        ; $44cb: $6a
	ld   l, d                                        ; $44cc: $6a
	ld   l, d                                        ; $44cd: $6a
	ld   l, d                                        ; $44ce: $6a
	ld   l, d                                        ; $44cf: $6a
	ld   l, d                                        ; $44d0: $6a
	ld   l, d                                        ; $44d1: $6a
	ld   l, d                                        ; $44d2: $6a
	ld   l, d                                        ; $44d3: $6a
	ld   l, d                                        ; $44d4: $6a
	ld   l, d                                        ; $44d5: $6a
	ld   l, d                                        ; $44d6: $6a
	ld   e, b                                        ; $44d7: $58
	ld   h, l                                        ; $44d8: $65
	ld   h, [hl]                                     ; $44d9: $66
	ld   l, h                                        ; $44da: $6c
	ld   l, l                                        ; $44db: $6d
	ld   l, [hl]                                     ; $44dc: $6e
	ld   l, [hl]                                     ; $44dd: $6e
	ld   l, [hl]                                     ; $44de: $6e
	ld   l, [hl]                                     ; $44df: $6e
	ld   l, [hl]                                     ; $44e0: $6e
	ld   l, [hl]                                     ; $44e1: $6e
	ld   l, [hl]                                     ; $44e2: $6e
	ld   l, [hl]                                     ; $44e3: $6e
	ld   l, [hl]                                     ; $44e4: $6e
	ld   l, [hl]                                     ; $44e5: $6e
	ld   l, [hl]                                     ; $44e6: $6e
	ld   l, [hl]                                     ; $44e7: $6e
	ld   l, [hl]                                     ; $44e8: $6e
	ld   l, [hl]                                     ; $44e9: $6e
	ld   l, [hl]                                     ; $44ea: $6e
	ld   e, c                                        ; $44eb: $59
	nop                                              ; $44ec: $00
	ld   bc, $0302                                   ; $44ed: $01 $02 $03
	inc  b                                           ; $44f0: $04
	dec  b                                           ; $44f1: $05
	ld   b, $07                                      ; $44f2: $06 $07
	ld   [$0a09], sp                                 ; $44f4: $08 $09 $0a
	dec  bc                                          ; $44f7: $0b
	inc  c                                           ; $44f8: $0c
	inc  c                                           ; $44f9: $0c
	inc  c                                           ; $44fa: $0c
	inc  c                                           ; $44fb: $0c
	inc  b                                           ; $44fc: $04
	inc  c                                           ; $44fd: $0c
	inc  c                                           ; $44fe: $0c
	dec  b                                           ; $44ff: $05
	db   $10                                         ; $4500: $10
	ld   de, $1312                                   ; $4501: $11 $12 $13
	inc  d                                           ; $4504: $14
	dec  d                                           ; $4505: $15
	ld   d, $17                                      ; $4506: $16 $17
	jr   @+$1b                                       ; $4508: $18 $19

	ld   a, [de]                                     ; $450a: $1a
	dec  de                                          ; $450b: $1b
	inc  e                                           ; $450c: $1c
	dec  e                                           ; $450d: $1d
	ld   e, $1f                                      ; $450e: $1e $1f
	ld   [hl], b                                     ; $4510: $70
	inc  c                                           ; $4511: $0c
	ld   [hl], d                                     ; $4512: $72
	ld   [hl], e                                     ; $4513: $73
	jr   nz, @+$23                                   ; $4514: $20 $21

	ld   [hl+], a                                    ; $4516: $22
	inc  hl                                          ; $4517: $23
	inc  h                                           ; $4518: $24
	dec  h                                           ; $4519: $25
	ld   h, $27                                      ; $451a: $26 $27
	jr   z, jr_085_4547                              ; $451c: $28 $29

	ld   a, [hl+]                                    ; $451e: $2a
	dec  hl                                          ; $451f: $2b
	inc  l                                           ; $4520: $2c
	dec  l                                           ; $4521: $2d
	ld   l, $2f                                      ; $4522: $2e $2f
	ld   [hl], h                                     ; $4524: $74
	ld   [hl], l                                     ; $4525: $75
	halt                                             ; $4526: $76
	ld   [hl], a                                     ; $4527: $77
	jr   nc, jr_085_455b                             ; $4528: $30 $31

	ld   [hl-], a                                    ; $452a: $32
	inc  sp                                          ; $452b: $33
	inc  [hl]                                        ; $452c: $34
	dec  [hl]                                        ; $452d: $35
	ld   [hl], $37                                   ; $452e: $36 $37
	jr   c, jr_085_456b                              ; $4530: $38 $39

	ld   a, [hl-]                                    ; $4532: $3a
	dec  sp                                          ; $4533: $3b
	inc  a                                           ; $4534: $3c
	dec  a                                           ; $4535: $3d
	ld   a, $3f                                      ; $4536: $3e $3f
	ld   a, b                                        ; $4538: $78
	ld   a, c                                        ; $4539: $79
	ld   a, d                                        ; $453a: $7a
	ld   a, e                                        ; $453b: $7b
	ld   b, b                                        ; $453c: $40
	ld   b, c                                        ; $453d: $41
	ld   b, d                                        ; $453e: $42
	ld   b, e                                        ; $453f: $43
	ld   b, h                                        ; $4540: $44
	ld   b, l                                        ; $4541: $45
	ld   b, [hl]                                     ; $4542: $46
	ld   b, a                                        ; $4543: $47
	ld   c, b                                        ; $4544: $48
	ld   c, c                                        ; $4545: $49
	ld   c, d                                        ; $4546: $4a

jr_085_4547:
	ld   c, e                                        ; $4547: $4b
	ld   c, h                                        ; $4548: $4c
	ld   a, h                                        ; $4549: $7c
	ld   a, l                                        ; $454a: $7d
	ld   a, [hl]                                     ; $454b: $7e
	ld   a, a                                        ; $454c: $7f
	nop                                              ; $454d: $00
	ld   bc, $5002                                   ; $454e: $01 $02 $50
	ld   d, c                                        ; $4551: $51
	ld   d, d                                        ; $4552: $52
	ld   d, e                                        ; $4553: $53
	ld   d, h                                        ; $4554: $54
	ld   d, l                                        ; $4555: $55
	ld   d, [hl]                                     ; $4556: $56
	ld   d, a                                        ; $4557: $57
	ld   l, d                                        ; $4558: $6a
	ld   l, d                                        ; $4559: $6a
	ld   e, d                                        ; $455a: $5a

jr_085_455b:
	ld   e, e                                        ; $455b: $5b
	ld   [hl], c                                     ; $455c: $71
	inc  bc                                          ; $455d: $03
	ld   b, $07                                      ; $455e: $06 $07
	ld   [$0a09], sp                                 ; $4560: $08 $09 $0a
	dec  bc                                          ; $4563: $0b
	ld   h, b                                        ; $4564: $60
	ld   h, c                                        ; $4565: $61
	ld   h, d                                        ; $4566: $62
	ld   h, e                                        ; $4567: $63
	ld   h, h                                        ; $4568: $64
	inc  c                                           ; $4569: $0c
	inc  c                                           ; $456a: $0c

jr_085_456b:
	ld   h, a                                        ; $456b: $67
	ld   l, b                                        ; $456c: $68
	ld   l, c                                        ; $456d: $69
	ld   h, h                                        ; $456e: $64
	ld   l, e                                        ; $456f: $6b
	inc  c                                           ; $4570: $0c
	inc  c                                           ; $4571: $0c
	dec  c                                           ; $4572: $0d
	ld   c, $0f                                      ; $4573: $0e $0f
	db   $10                                         ; $4575: $10
	ld   de, $0312                                   ; $4576: $11 $12 $03
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
	inc  bc                                          ; $4587: $03
	inc  bc                                          ; $4588: $03
	inc  bc                                          ; $4589: $03
	inc  bc                                          ; $458a: $03
	inc  hl                                          ; $458b: $23
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
	inc  bc                                          ; $459c: $03
	inc  bc                                          ; $459d: $03
	inc  bc                                          ; $459e: $03
	inc  bc                                          ; $459f: $03
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
	inc  bc                                          ; $45b0: $03
	inc  bc                                          ; $45b1: $03
	inc  bc                                          ; $45b2: $03
	inc  bc                                          ; $45b3: $03
	inc  b                                           ; $45b4: $04
	inc  b                                           ; $45b5: $04
	inc  b                                           ; $45b6: $04
	inc  b                                           ; $45b7: $04
	inc  b                                           ; $45b8: $04
	inc  bc                                          ; $45b9: $03
	inc  b                                           ; $45ba: $04
	inc  b                                           ; $45bb: $04
	inc  b                                           ; $45bc: $04
	inc  b                                           ; $45bd: $04
	inc  b                                           ; $45be: $04
	inc  b                                           ; $45bf: $04
	inc  bc                                          ; $45c0: $03
	inc  bc                                          ; $45c1: $03
	inc  bc                                          ; $45c2: $03
	inc  bc                                          ; $45c3: $03
	dec  c                                           ; $45c4: $0d
	inc  bc                                          ; $45c5: $03
	inc  bc                                          ; $45c6: $03
	dec  c                                           ; $45c7: $0d
	inc  b                                           ; $45c8: $04
	inc  b                                           ; $45c9: $04
	inc  b                                           ; $45ca: $04
	inc  b                                           ; $45cb: $04
	inc  b                                           ; $45cc: $04
	inc  b                                           ; $45cd: $04
	inc  b                                           ; $45ce: $04
	inc  b                                           ; $45cf: $04
	inc  b                                           ; $45d0: $04
	inc  b                                           ; $45d1: $04
	inc  b                                           ; $45d2: $04
	inc  b                                           ; $45d3: $04
	dec  b                                           ; $45d4: $05
	dec  b                                           ; $45d5: $05
	dec  b                                           ; $45d6: $05
	dec  b                                           ; $45d7: $05
	dec  b                                           ; $45d8: $05
	inc  bc                                          ; $45d9: $03
	dec  b                                           ; $45da: $05
	dec  b                                           ; $45db: $05
	inc  b                                           ; $45dc: $04
	inc  b                                           ; $45dd: $04
	inc  b                                           ; $45de: $04
	inc  b                                           ; $45df: $04
	inc  b                                           ; $45e0: $04
	inc  b                                           ; $45e1: $04
	inc  b                                           ; $45e2: $04
	inc  b                                           ; $45e3: $04
	inc  b                                           ; $45e4: $04
	inc  b                                           ; $45e5: $04
	inc  b                                           ; $45e6: $04
	inc  b                                           ; $45e7: $04
	dec  b                                           ; $45e8: $05
	dec  b                                           ; $45e9: $05
	dec  b                                           ; $45ea: $05
	dec  b                                           ; $45eb: $05
	dec  b                                           ; $45ec: $05
	dec  b                                           ; $45ed: $05
	dec  b                                           ; $45ee: $05
	dec  b                                           ; $45ef: $05
	inc  b                                           ; $45f0: $04
	inc  b                                           ; $45f1: $04
	inc  b                                           ; $45f2: $04
	inc  b                                           ; $45f3: $04
	inc  b                                           ; $45f4: $04
	inc  b                                           ; $45f5: $04
	inc  b                                           ; $45f6: $04
	inc  b                                           ; $45f7: $04
	inc  b                                           ; $45f8: $04
	inc  b                                           ; $45f9: $04
	inc  b                                           ; $45fa: $04
	inc  b                                           ; $45fb: $04
	dec  b                                           ; $45fc: $05
	dec  b                                           ; $45fd: $05
	dec  b                                           ; $45fe: $05
	dec  b                                           ; $45ff: $05
	dec  b                                           ; $4600: $05
	dec  b                                           ; $4601: $05
	dec  b                                           ; $4602: $05
	dec  b                                           ; $4603: $05
	dec  b                                           ; $4604: $05
	dec  b                                           ; $4605: $05
	dec  b                                           ; $4606: $05
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
	dec  b                                           ; $4612: $05
	dec  b                                           ; $4613: $05
	dec  b                                           ; $4614: $05
	dec  c                                           ; $4615: $0d
	dec  c                                           ; $4616: $0d
	dec  c                                           ; $4617: $0d
	dec  b                                           ; $4618: $05
	dec  b                                           ; $4619: $05
	dec  b                                           ; $461a: $05
	dec  b                                           ; $461b: $05
	dec  b                                           ; $461c: $05
	dec  b                                           ; $461d: $05
	dec  b                                           ; $461e: $05
	dec  b                                           ; $461f: $05
	dec  b                                           ; $4620: $05
	dec  b                                           ; $4621: $05
	dec  b                                           ; $4622: $05
	dec  b                                           ; $4623: $05
	dec  b                                           ; $4624: $05
	dec  c                                           ; $4625: $0d
	dec  c                                           ; $4626: $0d
	dec  c                                           ; $4627: $0d
	dec  c                                           ; $4628: $0d
	dec  c                                           ; $4629: $0d
	dec  c                                           ; $462a: $0d
	dec  c                                           ; $462b: $0d
	dec  b                                           ; $462c: $05
	dec  b                                           ; $462d: $05
	dec  b                                           ; $462e: $05
	dec  b                                           ; $462f: $05
	dec  b                                           ; $4630: $05
	inc  bc                                          ; $4631: $03
	inc  bc                                          ; $4632: $03
	dec  b                                           ; $4633: $05
	dec  b                                           ; $4634: $05
	dec  b                                           ; $4635: $05
	ld   h, l                                        ; $4636: $65
	dec  b                                           ; $4637: $05
	inc  bc                                          ; $4638: $03
	dec  c                                           ; $4639: $0d
	dec  c                                           ; $463a: $0d
	dec  c                                           ; $463b: $0d
	dec  c                                           ; $463c: $0d
	dec  c                                           ; $463d: $0d
	dec  c                                           ; $463e: $0d
	dec  c                                           ; $463f: $0d
	dec  c                                           ; $4640: $0d
	ld   c, $0e                                      ; $4641: $0e $0e
	ld   c, $0e                                      ; $4643: $0e $0e
	ld   c, $0e                                      ; $4645: $0e $0e
	ld   c, $0e                                      ; $4647: $0e $0e
	ld   c, $0e                                      ; $4649: $0e $0e
	ld   c, $0e                                      ; $464b: $0e $0e
	ld   c, $0e                                      ; $464d: $0e $0e
	ld   c, $0e                                      ; $464f: $0e $0e
	ld   c, $0e                                      ; $4651: $0e $0e
	dec  c                                           ; $4653: $0d
	rrca                                             ; $4654: $0f
	ld   l, d                                        ; $4655: $6a
	ld   l, d                                        ; $4656: $6a
	ld   l, d                                        ; $4657: $6a
	ld   l, d                                        ; $4658: $6a
	ld   l, d                                        ; $4659: $6a
	ld   l, d                                        ; $465a: $6a
	ld   l, d                                        ; $465b: $6a
	ld   l, d                                        ; $465c: $6a
	ld   l, d                                        ; $465d: $6a
	ld   l, d                                        ; $465e: $6a
	ld   l, d                                        ; $465f: $6a
	ld   l, d                                        ; $4660: $6a
	ld   l, d                                        ; $4661: $6a
	ld   l, d                                        ; $4662: $6a
	ld   l, d                                        ; $4663: $6a
	ld   l, d                                        ; $4664: $6a
	ld   l, d                                        ; $4665: $6a
	ld   l, d                                        ; $4666: $6a
	ld   e, b                                        ; $4667: $58
	ld   h, l                                        ; $4668: $65
	ld   h, [hl]                                     ; $4669: $66
	ld   l, h                                        ; $466a: $6c
	ld   l, l                                        ; $466b: $6d
	ld   l, [hl]                                     ; $466c: $6e
	ld   l, [hl]                                     ; $466d: $6e
	ld   l, [hl]                                     ; $466e: $6e
	ld   l, [hl]                                     ; $466f: $6e
	ld   l, [hl]                                     ; $4670: $6e
	ld   l, [hl]                                     ; $4671: $6e
	ld   l, [hl]                                     ; $4672: $6e
	ld   l, [hl]                                     ; $4673: $6e
	ld   l, [hl]                                     ; $4674: $6e
	ld   l, [hl]                                     ; $4675: $6e
	ld   l, [hl]                                     ; $4676: $6e
	ld   l, [hl]                                     ; $4677: $6e
	ld   l, [hl]                                     ; $4678: $6e
	ld   l, [hl]                                     ; $4679: $6e
	ld   l, [hl]                                     ; $467a: $6e
	ld   e, c                                        ; $467b: $59
	nop                                              ; $467c: $00
	ld   bc, $0302                                   ; $467d: $01 $02 $03
	inc  b                                           ; $4680: $04
	dec  b                                           ; $4681: $05
	ld   b, $07                                      ; $4682: $06 $07
	ld   [$0a09], sp                                 ; $4684: $08 $09 $0a
	dec  bc                                          ; $4687: $0b
	inc  c                                           ; $4688: $0c
	inc  c                                           ; $4689: $0c
	inc  c                                           ; $468a: $0c
	inc  c                                           ; $468b: $0c
	inc  b                                           ; $468c: $04
	inc  c                                           ; $468d: $0c
	inc  c                                           ; $468e: $0c
	dec  b                                           ; $468f: $05
	db   $10                                         ; $4690: $10
	ld   de, $1312                                   ; $4691: $11 $12 $13
	inc  d                                           ; $4694: $14
	dec  d                                           ; $4695: $15
	ld   d, $17                                      ; $4696: $16 $17
	jr   @+$1b                                       ; $4698: $18 $19

	ld   a, [de]                                     ; $469a: $1a
	dec  de                                          ; $469b: $1b
	inc  e                                           ; $469c: $1c
	dec  e                                           ; $469d: $1d
	ld   e, $1f                                      ; $469e: $1e $1f
	ld   [hl], b                                     ; $46a0: $70
	inc  c                                           ; $46a1: $0c
	ld   [hl], d                                     ; $46a2: $72
	ld   [hl], e                                     ; $46a3: $73
	jr   nz, @+$23                                   ; $46a4: $20 $21

	ld   [hl+], a                                    ; $46a6: $22
	inc  hl                                          ; $46a7: $23
	inc  h                                           ; $46a8: $24
	dec  h                                           ; $46a9: $25
	ld   h, $27                                      ; $46aa: $26 $27
	jr   z, jr_085_46d7                              ; $46ac: $28 $29

	ld   a, [hl+]                                    ; $46ae: $2a
	dec  hl                                          ; $46af: $2b
	inc  l                                           ; $46b0: $2c
	dec  l                                           ; $46b1: $2d
	ld   l, $2f                                      ; $46b2: $2e $2f
	ld   [hl], h                                     ; $46b4: $74
	ld   [hl], l                                     ; $46b5: $75
	halt                                             ; $46b6: $76
	ld   [hl], a                                     ; $46b7: $77
	jr   nc, jr_085_46eb                             ; $46b8: $30 $31

	ld   [hl-], a                                    ; $46ba: $32
	inc  sp                                          ; $46bb: $33
	inc  [hl]                                        ; $46bc: $34
	dec  [hl]                                        ; $46bd: $35
	ld   [hl], $37                                   ; $46be: $36 $37
	jr   c, jr_085_46fb                              ; $46c0: $38 $39

	ld   a, [hl-]                                    ; $46c2: $3a
	dec  sp                                          ; $46c3: $3b
	inc  a                                           ; $46c4: $3c
	dec  a                                           ; $46c5: $3d
	ld   a, $3f                                      ; $46c6: $3e $3f
	ld   a, b                                        ; $46c8: $78
	ld   a, c                                        ; $46c9: $79
	ld   a, d                                        ; $46ca: $7a
	ld   a, e                                        ; $46cb: $7b
	ld   b, b                                        ; $46cc: $40
	ld   b, c                                        ; $46cd: $41
	ld   b, d                                        ; $46ce: $42
	ld   b, e                                        ; $46cf: $43
	ld   b, h                                        ; $46d0: $44
	ld   b, l                                        ; $46d1: $45
	ld   b, [hl]                                     ; $46d2: $46
	ld   b, a                                        ; $46d3: $47
	ld   c, b                                        ; $46d4: $48
	ld   c, c                                        ; $46d5: $49
	ld   c, d                                        ; $46d6: $4a

jr_085_46d7:
	ld   c, e                                        ; $46d7: $4b
	ld   c, h                                        ; $46d8: $4c
	ld   a, h                                        ; $46d9: $7c
	ld   a, l                                        ; $46da: $7d
	ld   a, [hl]                                     ; $46db: $7e
	ld   a, a                                        ; $46dc: $7f
	nop                                              ; $46dd: $00
	ld   bc, $5002                                   ; $46de: $01 $02 $50
	ld   d, c                                        ; $46e1: $51
	inc  de                                          ; $46e2: $13
	inc  d                                           ; $46e3: $14
	ld   d, h                                        ; $46e4: $54
	dec  d                                           ; $46e5: $15
	ld   d, $17                                      ; $46e6: $16 $17
	ld   l, d                                        ; $46e8: $6a
	jr   @+$1b                                       ; $46e9: $18 $19

jr_085_46eb:
	ld   a, [de]                                     ; $46eb: $1a
	dec  de                                          ; $46ec: $1b
	inc  bc                                          ; $46ed: $03
	ld   b, $07                                      ; $46ee: $06 $07
	ld   [$0a09], sp                                 ; $46f0: $08 $09 $0a
	dec  bc                                          ; $46f3: $0b
	ld   h, b                                        ; $46f4: $60
	inc  e                                           ; $46f5: $1c
	dec  e                                           ; $46f6: $1d
	ld   e, $1f                                      ; $46f7: $1e $1f
	jr   nz, jr_085_471c                             ; $46f9: $20 $21

jr_085_46fb:
	ld   [hl+], a                                    ; $46fb: $22
	inc  hl                                          ; $46fc: $23
	inc  h                                           ; $46fd: $24
	dec  h                                           ; $46fe: $25
	ld   h, $27                                      ; $46ff: $26 $27
	inc  c                                           ; $4701: $0c
	dec  c                                           ; $4702: $0d
	ld   c, $0f                                      ; $4703: $0e $0f
	db   $10                                         ; $4705: $10
	ld   de, $0312                                   ; $4706: $11 $12 $03
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
	inc  bc                                          ; $4717: $03
	inc  bc                                          ; $4718: $03
	inc  bc                                          ; $4719: $03
	inc  bc                                          ; $471a: $03
	inc  hl                                          ; $471b: $23

jr_085_471c:
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
	inc  bc                                          ; $472c: $03
	inc  bc                                          ; $472d: $03
	inc  bc                                          ; $472e: $03
	inc  bc                                          ; $472f: $03
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
	inc  bc                                          ; $473c: $03
	inc  bc                                          ; $473d: $03
	inc  bc                                          ; $473e: $03
	inc  bc                                          ; $473f: $03
	inc  bc                                          ; $4740: $03
	inc  bc                                          ; $4741: $03
	inc  bc                                          ; $4742: $03
	inc  bc                                          ; $4743: $03
	inc  b                                           ; $4744: $04
	inc  b                                           ; $4745: $04
	inc  b                                           ; $4746: $04
	inc  b                                           ; $4747: $04
	inc  b                                           ; $4748: $04
	inc  bc                                          ; $4749: $03
	inc  b                                           ; $474a: $04
	inc  b                                           ; $474b: $04
	inc  b                                           ; $474c: $04
	inc  b                                           ; $474d: $04
	inc  b                                           ; $474e: $04
	inc  b                                           ; $474f: $04
	inc  bc                                          ; $4750: $03
	inc  bc                                          ; $4751: $03
	inc  bc                                          ; $4752: $03
	inc  bc                                          ; $4753: $03
	dec  c                                           ; $4754: $0d
	inc  bc                                          ; $4755: $03
	inc  bc                                          ; $4756: $03
	dec  c                                           ; $4757: $0d
	inc  b                                           ; $4758: $04
	inc  b                                           ; $4759: $04
	inc  b                                           ; $475a: $04
	inc  b                                           ; $475b: $04
	inc  b                                           ; $475c: $04
	inc  b                                           ; $475d: $04
	inc  b                                           ; $475e: $04
	inc  b                                           ; $475f: $04
	inc  b                                           ; $4760: $04
	inc  b                                           ; $4761: $04
	inc  b                                           ; $4762: $04
	inc  b                                           ; $4763: $04
	dec  b                                           ; $4764: $05
	dec  b                                           ; $4765: $05
	dec  b                                           ; $4766: $05
	dec  b                                           ; $4767: $05
	dec  b                                           ; $4768: $05
	inc  bc                                          ; $4769: $03
	dec  b                                           ; $476a: $05
	dec  b                                           ; $476b: $05
	inc  b                                           ; $476c: $04
	inc  b                                           ; $476d: $04
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
	dec  b                                           ; $4778: $05
	dec  b                                           ; $4779: $05
	dec  b                                           ; $477a: $05
	dec  b                                           ; $477b: $05
	dec  b                                           ; $477c: $05
	dec  b                                           ; $477d: $05
	dec  b                                           ; $477e: $05
	dec  b                                           ; $477f: $05
	inc  b                                           ; $4780: $04
	inc  b                                           ; $4781: $04
	inc  b                                           ; $4782: $04
	inc  b                                           ; $4783: $04
	inc  b                                           ; $4784: $04
	inc  b                                           ; $4785: $04
	inc  b                                           ; $4786: $04
	inc  b                                           ; $4787: $04
	inc  b                                           ; $4788: $04
	inc  b                                           ; $4789: $04
	inc  b                                           ; $478a: $04
	inc  b                                           ; $478b: $04
	dec  b                                           ; $478c: $05
	dec  b                                           ; $478d: $05
	dec  b                                           ; $478e: $05
	dec  b                                           ; $478f: $05
	dec  b                                           ; $4790: $05
	dec  b                                           ; $4791: $05
	dec  b                                           ; $4792: $05
	dec  b                                           ; $4793: $05
	dec  b                                           ; $4794: $05
	dec  b                                           ; $4795: $05
	dec  b                                           ; $4796: $05
	dec  b                                           ; $4797: $05
	dec  b                                           ; $4798: $05
	dec  b                                           ; $4799: $05
	dec  b                                           ; $479a: $05
	dec  b                                           ; $479b: $05
	dec  b                                           ; $479c: $05
	dec  b                                           ; $479d: $05
	dec  b                                           ; $479e: $05
	dec  b                                           ; $479f: $05
	dec  b                                           ; $47a0: $05
	dec  b                                           ; $47a1: $05
	dec  b                                           ; $47a2: $05
	dec  b                                           ; $47a3: $05
	dec  b                                           ; $47a4: $05
	dec  c                                           ; $47a5: $0d
	dec  c                                           ; $47a6: $0d
	dec  c                                           ; $47a7: $0d
	dec  b                                           ; $47a8: $05
	dec  b                                           ; $47a9: $05
	dec  c                                           ; $47aa: $0d
	dec  c                                           ; $47ab: $0d
	dec  b                                           ; $47ac: $05
	dec  c                                           ; $47ad: $0d
	dec  c                                           ; $47ae: $0d
	dec  c                                           ; $47af: $0d
	dec  b                                           ; $47b0: $05
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
	dec  c                                           ; $47bb: $0d
	dec  b                                           ; $47bc: $05
	dec  c                                           ; $47bd: $0d
	dec  c                                           ; $47be: $0d
	dec  c                                           ; $47bf: $0d
	dec  c                                           ; $47c0: $0d
	dec  c                                           ; $47c1: $0d
	dec  c                                           ; $47c2: $0d
	dec  c                                           ; $47c3: $0d
	dec  c                                           ; $47c4: $0d
	dec  c                                           ; $47c5: $0d
	dec  c                                           ; $47c6: $0d
	dec  c                                           ; $47c7: $0d
	dec  c                                           ; $47c8: $0d
	dec  c                                           ; $47c9: $0d
	dec  c                                           ; $47ca: $0d
	dec  c                                           ; $47cb: $0d
	dec  c                                           ; $47cc: $0d
	dec  c                                           ; $47cd: $0d
	dec  c                                           ; $47ce: $0d
	dec  c                                           ; $47cf: $0d
	dec  c                                           ; $47d0: $0d
	ld   c, $0e                                      ; $47d1: $0e $0e
	ld   c, $0e                                      ; $47d3: $0e $0e
	ld   c, $0e                                      ; $47d5: $0e $0e
	ld   c, $0e                                      ; $47d7: $0e $0e
	ld   c, $0e                                      ; $47d9: $0e $0e
	ld   c, $0e                                      ; $47db: $0e $0e
	ld   c, $0e                                      ; $47dd: $0e $0e
	ld   c, $0e                                      ; $47df: $0e $0e
	ld   c, $0e                                      ; $47e1: $0e $0e
	dec  c                                           ; $47e3: $0d
	rrca                                             ; $47e4: $0f
	ld   l, d                                        ; $47e5: $6a
	ld   l, d                                        ; $47e6: $6a
	ld   l, d                                        ; $47e7: $6a
	ld   l, d                                        ; $47e8: $6a
	ld   l, d                                        ; $47e9: $6a
	ld   l, d                                        ; $47ea: $6a
	ld   l, d                                        ; $47eb: $6a
	ld   l, d                                        ; $47ec: $6a
	ld   l, d                                        ; $47ed: $6a
	ld   l, d                                        ; $47ee: $6a
	ld   l, d                                        ; $47ef: $6a
	ld   l, d                                        ; $47f0: $6a
	ld   l, d                                        ; $47f1: $6a
	ld   l, d                                        ; $47f2: $6a
	ld   l, d                                        ; $47f3: $6a
	ld   l, d                                        ; $47f4: $6a
	ld   l, d                                        ; $47f5: $6a
	ld   l, d                                        ; $47f6: $6a
	ld   e, b                                        ; $47f7: $58
	ld   h, l                                        ; $47f8: $65
	ld   h, [hl]                                     ; $47f9: $66
	ld   l, h                                        ; $47fa: $6c
	ld   l, l                                        ; $47fb: $6d
	ld   l, [hl]                                     ; $47fc: $6e
	ld   l, [hl]                                     ; $47fd: $6e
	ld   l, [hl]                                     ; $47fe: $6e
	ld   l, [hl]                                     ; $47ff: $6e
	ld   l, [hl]                                     ; $4800: $6e
	ld   l, [hl]                                     ; $4801: $6e
	ld   l, [hl]                                     ; $4802: $6e
	ld   l, [hl]                                     ; $4803: $6e
	ld   l, [hl]                                     ; $4804: $6e
	ld   l, [hl]                                     ; $4805: $6e
	ld   l, [hl]                                     ; $4806: $6e
	ld   l, [hl]                                     ; $4807: $6e
	ld   l, [hl]                                     ; $4808: $6e
	ld   l, [hl]                                     ; $4809: $6e
	ld   l, [hl]                                     ; $480a: $6e
	ld   e, c                                        ; $480b: $59
	nop                                              ; $480c: $00
	ld   bc, $0302                                   ; $480d: $01 $02 $03
	inc  b                                           ; $4810: $04
	dec  b                                           ; $4811: $05
	ld   b, $07                                      ; $4812: $06 $07
	ld   [$0a09], sp                                 ; $4814: $08 $09 $0a
	dec  bc                                          ; $4817: $0b
	inc  c                                           ; $4818: $0c
	inc  c                                           ; $4819: $0c
	inc  c                                           ; $481a: $0c
	inc  c                                           ; $481b: $0c
	inc  b                                           ; $481c: $04
	inc  c                                           ; $481d: $0c
	inc  c                                           ; $481e: $0c
	dec  b                                           ; $481f: $05
	db   $10                                         ; $4820: $10
	ld   de, $1312                                   ; $4821: $11 $12 $13
	inc  d                                           ; $4824: $14
	dec  d                                           ; $4825: $15
	ld   d, $28                                      ; $4826: $16 $28
	add  hl, hl                                      ; $4828: $29
	add  hl, de                                      ; $4829: $19
	ld   a, [de]                                     ; $482a: $1a
	dec  de                                          ; $482b: $1b
	inc  e                                           ; $482c: $1c
	dec  e                                           ; $482d: $1d
	ld   e, $1f                                      ; $482e: $1e $1f
	ld   [hl], b                                     ; $4830: $70
	inc  c                                           ; $4831: $0c
	ld   [hl], d                                     ; $4832: $72
	ld   [hl], e                                     ; $4833: $73
	jr   nz, @+$23                                   ; $4834: $20 $21

	ld   [hl+], a                                    ; $4836: $22
	inc  hl                                          ; $4837: $23
	inc  h                                           ; $4838: $24
	dec  h                                           ; $4839: $25
	ld   h, $2a                                      ; $483a: $26 $2a
	dec  hl                                          ; $483c: $2b
	add  hl, hl                                      ; $483d: $29
	ld   a, [hl+]                                    ; $483e: $2a
	dec  hl                                          ; $483f: $2b
	inc  l                                           ; $4840: $2c
	dec  l                                           ; $4841: $2d
	ld   l, $2f                                      ; $4842: $2e $2f
	ld   [hl], h                                     ; $4844: $74
	ld   [hl], l                                     ; $4845: $75
	halt                                             ; $4846: $76
	ld   [hl], a                                     ; $4847: $77
	jr   nc, jr_085_487b                             ; $4848: $30 $31

	ld   [hl-], a                                    ; $484a: $32
	inc  sp                                          ; $484b: $33
	inc  [hl]                                        ; $484c: $34
	dec  [hl]                                        ; $484d: $35
	ld   [hl], $37                                   ; $484e: $36 $37
	inc  l                                           ; $4850: $2c
	add  hl, sp                                      ; $4851: $39
	ld   a, [hl-]                                    ; $4852: $3a
	dec  sp                                          ; $4853: $3b
	inc  a                                           ; $4854: $3c
	dec  a                                           ; $4855: $3d
	ld   a, $3f                                      ; $4856: $3e $3f
	ld   a, b                                        ; $4858: $78
	ld   a, c                                        ; $4859: $79
	ld   a, d                                        ; $485a: $7a
	ld   a, e                                        ; $485b: $7b
	ld   b, b                                        ; $485c: $40
	ld   b, c                                        ; $485d: $41
	ld   b, d                                        ; $485e: $42
	ld   b, e                                        ; $485f: $43
	ld   b, h                                        ; $4860: $44
	ld   b, l                                        ; $4861: $45
	ld   b, [hl]                                     ; $4862: $46
	dec  l                                           ; $4863: $2d
	ld   l, $49                                      ; $4864: $2e $49
	ld   c, d                                        ; $4866: $4a
	ld   c, e                                        ; $4867: $4b
	ld   c, h                                        ; $4868: $4c
	ld   a, h                                        ; $4869: $7c
	ld   a, l                                        ; $486a: $7d
	ld   a, [hl]                                     ; $486b: $7e
	ld   a, a                                        ; $486c: $7f
	nop                                              ; $486d: $00
	ld   bc, $5002                                   ; $486e: $01 $02 $50
	ld   d, c                                        ; $4871: $51
	ld   d, d                                        ; $4872: $52
	ld   d, e                                        ; $4873: $53
	ld   d, h                                        ; $4874: $54
	ld   d, l                                        ; $4875: $55
	ld   d, [hl]                                     ; $4876: $56
	ld   d, a                                        ; $4877: $57
	ld   l, d                                        ; $4878: $6a
	ld   l, d                                        ; $4879: $6a
	ld   e, d                                        ; $487a: $5a

jr_085_487b:
	ld   e, e                                        ; $487b: $5b
	dec  de                                          ; $487c: $1b
	inc  bc                                          ; $487d: $03
	ld   b, $07                                      ; $487e: $06 $07
	ld   [$0a09], sp                                 ; $4880: $08 $09 $0a
	dec  bc                                          ; $4883: $0b
	ld   h, b                                        ; $4884: $60
	ld   h, c                                        ; $4885: $61
	ld   h, d                                        ; $4886: $62
	ld   h, e                                        ; $4887: $63
	ld   h, h                                        ; $4888: $64
	inc  c                                           ; $4889: $0c
	inc  c                                           ; $488a: $0c
	ld   h, a                                        ; $488b: $67
	ld   l, b                                        ; $488c: $68
	ld   l, c                                        ; $488d: $69
	ld   h, h                                        ; $488e: $64
	ld   l, e                                        ; $488f: $6b
	inc  c                                           ; $4890: $0c
	inc  c                                           ; $4891: $0c
	dec  c                                           ; $4892: $0d
	ld   c, $0f                                      ; $4893: $0e $0f
	db   $10                                         ; $4895: $10
	ld   de, $0312                                   ; $4896: $11 $12 $03
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
	inc  bc                                          ; $48a3: $03
	inc  bc                                          ; $48a4: $03
	inc  bc                                          ; $48a5: $03
	inc  bc                                          ; $48a6: $03
	inc  bc                                          ; $48a7: $03
	inc  bc                                          ; $48a8: $03
	inc  bc                                          ; $48a9: $03
	inc  bc                                          ; $48aa: $03
	inc  hl                                          ; $48ab: $23
	inc  bc                                          ; $48ac: $03
	inc  bc                                          ; $48ad: $03
	inc  bc                                          ; $48ae: $03
	inc  bc                                          ; $48af: $03
	inc  bc                                          ; $48b0: $03
	inc  bc                                          ; $48b1: $03
	inc  bc                                          ; $48b2: $03
	inc  bc                                          ; $48b3: $03
	inc  bc                                          ; $48b4: $03
	inc  bc                                          ; $48b5: $03
	inc  bc                                          ; $48b6: $03
	inc  bc                                          ; $48b7: $03
	inc  bc                                          ; $48b8: $03
	inc  bc                                          ; $48b9: $03
	inc  bc                                          ; $48ba: $03
	inc  bc                                          ; $48bb: $03
	inc  bc                                          ; $48bc: $03
	inc  bc                                          ; $48bd: $03
	inc  bc                                          ; $48be: $03
	inc  bc                                          ; $48bf: $03
	inc  bc                                          ; $48c0: $03
	inc  bc                                          ; $48c1: $03
	inc  bc                                          ; $48c2: $03
	inc  bc                                          ; $48c3: $03
	inc  bc                                          ; $48c4: $03
	inc  bc                                          ; $48c5: $03
	inc  bc                                          ; $48c6: $03
	inc  bc                                          ; $48c7: $03
	inc  bc                                          ; $48c8: $03
	inc  bc                                          ; $48c9: $03
	inc  bc                                          ; $48ca: $03
	inc  bc                                          ; $48cb: $03
	inc  bc                                          ; $48cc: $03
	inc  bc                                          ; $48cd: $03
	inc  bc                                          ; $48ce: $03
	inc  bc                                          ; $48cf: $03
	inc  bc                                          ; $48d0: $03
	inc  bc                                          ; $48d1: $03
	inc  bc                                          ; $48d2: $03
	inc  bc                                          ; $48d3: $03
	inc  b                                           ; $48d4: $04
	inc  b                                           ; $48d5: $04
	inc  b                                           ; $48d6: $04
	inc  b                                           ; $48d7: $04
	inc  b                                           ; $48d8: $04
	inc  bc                                          ; $48d9: $03
	inc  b                                           ; $48da: $04
	inc  b                                           ; $48db: $04
	inc  b                                           ; $48dc: $04
	inc  b                                           ; $48dd: $04
	inc  b                                           ; $48de: $04
	inc  b                                           ; $48df: $04
	inc  bc                                          ; $48e0: $03
	inc  bc                                          ; $48e1: $03
	inc  bc                                          ; $48e2: $03
	inc  bc                                          ; $48e3: $03
	dec  c                                           ; $48e4: $0d
	inc  bc                                          ; $48e5: $03
	inc  bc                                          ; $48e6: $03
	dec  c                                           ; $48e7: $0d
	inc  b                                           ; $48e8: $04
	inc  b                                           ; $48e9: $04
	inc  b                                           ; $48ea: $04
	inc  b                                           ; $48eb: $04
	inc  b                                           ; $48ec: $04
	inc  b                                           ; $48ed: $04
	inc  b                                           ; $48ee: $04
	inc  c                                           ; $48ef: $0c
	inc  c                                           ; $48f0: $0c
	inc  b                                           ; $48f1: $04
	inc  b                                           ; $48f2: $04
	inc  b                                           ; $48f3: $04
	dec  b                                           ; $48f4: $05
	dec  b                                           ; $48f5: $05
	dec  b                                           ; $48f6: $05
	dec  b                                           ; $48f7: $05
	dec  b                                           ; $48f8: $05
	inc  bc                                          ; $48f9: $03
	dec  b                                           ; $48fa: $05
	dec  b                                           ; $48fb: $05
	inc  b                                           ; $48fc: $04
	inc  b                                           ; $48fd: $04
	inc  b                                           ; $48fe: $04
	inc  b                                           ; $48ff: $04
	inc  b                                           ; $4900: $04
	inc  b                                           ; $4901: $04
	inc  b                                           ; $4902: $04
	inc  c                                           ; $4903: $0c
	inc  c                                           ; $4904: $0c
	inc  b                                           ; $4905: $04
	inc  b                                           ; $4906: $04
	inc  b                                           ; $4907: $04
	dec  b                                           ; $4908: $05
	dec  b                                           ; $4909: $05
	dec  b                                           ; $490a: $05
	dec  b                                           ; $490b: $05
	dec  b                                           ; $490c: $05
	dec  b                                           ; $490d: $05
	dec  b                                           ; $490e: $05
	dec  b                                           ; $490f: $05
	inc  b                                           ; $4910: $04
	inc  b                                           ; $4911: $04
	inc  b                                           ; $4912: $04
	inc  b                                           ; $4913: $04
	inc  b                                           ; $4914: $04
	inc  b                                           ; $4915: $04
	inc  b                                           ; $4916: $04
	inc  b                                           ; $4917: $04
	inc  c                                           ; $4918: $0c
	inc  b                                           ; $4919: $04
	inc  b                                           ; $491a: $04
	inc  b                                           ; $491b: $04
	dec  b                                           ; $491c: $05
	dec  b                                           ; $491d: $05
	dec  b                                           ; $491e: $05
	dec  b                                           ; $491f: $05
	dec  b                                           ; $4920: $05
	dec  b                                           ; $4921: $05
	dec  b                                           ; $4922: $05
	dec  b                                           ; $4923: $05
	dec  b                                           ; $4924: $05
	dec  b                                           ; $4925: $05
	dec  b                                           ; $4926: $05
	dec  b                                           ; $4927: $05
	dec  b                                           ; $4928: $05
	dec  b                                           ; $4929: $05
	dec  b                                           ; $492a: $05
	dec  c                                           ; $492b: $0d
	dec  c                                           ; $492c: $0d
	dec  b                                           ; $492d: $05
	dec  b                                           ; $492e: $05
	dec  b                                           ; $492f: $05
	dec  b                                           ; $4930: $05
	dec  b                                           ; $4931: $05
	dec  b                                           ; $4932: $05
	dec  b                                           ; $4933: $05
	dec  b                                           ; $4934: $05
	dec  c                                           ; $4935: $0d
	dec  c                                           ; $4936: $0d
	dec  c                                           ; $4937: $0d
	dec  b                                           ; $4938: $05
	dec  b                                           ; $4939: $05
	dec  b                                           ; $493a: $05
	dec  b                                           ; $493b: $05
	dec  b                                           ; $493c: $05
	dec  b                                           ; $493d: $05
	dec  b                                           ; $493e: $05
	dec  b                                           ; $493f: $05
	dec  b                                           ; $4940: $05
	dec  b                                           ; $4941: $05
	dec  b                                           ; $4942: $05
	dec  b                                           ; $4943: $05
	dec  c                                           ; $4944: $0d
	dec  c                                           ; $4945: $0d
	dec  c                                           ; $4946: $0d
	dec  c                                           ; $4947: $0d
	dec  c                                           ; $4948: $0d
	dec  c                                           ; $4949: $0d
	dec  c                                           ; $494a: $0d
	dec  c                                           ; $494b: $0d
	dec  b                                           ; $494c: $05
	dec  b                                           ; $494d: $05
	dec  b                                           ; $494e: $05
	dec  b                                           ; $494f: $05
	dec  b                                           ; $4950: $05
	inc  bc                                          ; $4951: $03
	inc  bc                                          ; $4952: $03
	dec  b                                           ; $4953: $05
	dec  b                                           ; $4954: $05
	dec  b                                           ; $4955: $05
	ld   h, l                                        ; $4956: $65
	dec  b                                           ; $4957: $05
	inc  bc                                          ; $4958: $03
	dec  c                                           ; $4959: $0d
	dec  c                                           ; $495a: $0d
	dec  c                                           ; $495b: $0d
	dec  c                                           ; $495c: $0d
	dec  c                                           ; $495d: $0d
	dec  c                                           ; $495e: $0d
	dec  c                                           ; $495f: $0d
	dec  c                                           ; $4960: $0d
	ld   c, $0e                                      ; $4961: $0e $0e
	ld   c, $0e                                      ; $4963: $0e $0e
	ld   c, $0e                                      ; $4965: $0e $0e
	ld   c, $0e                                      ; $4967: $0e $0e
	ld   c, $0e                                      ; $4969: $0e $0e
	ld   c, $0e                                      ; $496b: $0e $0e
	ld   c, $0e                                      ; $496d: $0e $0e
	ld   c, $0e                                      ; $496f: $0e $0e
	ld   c, $0e                                      ; $4971: $0e $0e
	dec  c                                           ; $4973: $0d
	rrca                                             ; $4974: $0f
	ld   l, d                                        ; $4975: $6a
	ld   l, d                                        ; $4976: $6a
	ld   l, d                                        ; $4977: $6a
	ld   l, d                                        ; $4978: $6a
	ld   l, d                                        ; $4979: $6a
	ld   l, d                                        ; $497a: $6a
	ld   l, d                                        ; $497b: $6a
	ld   l, d                                        ; $497c: $6a
	ld   l, d                                        ; $497d: $6a
	ld   l, d                                        ; $497e: $6a
	ld   l, d                                        ; $497f: $6a
	ld   l, d                                        ; $4980: $6a
	ld   l, d                                        ; $4981: $6a
	ld   l, d                                        ; $4982: $6a
	ld   l, d                                        ; $4983: $6a
	ld   l, d                                        ; $4984: $6a
	ld   l, d                                        ; $4985: $6a
	ld   l, d                                        ; $4986: $6a
	ld   e, b                                        ; $4987: $58
	ld   h, l                                        ; $4988: $65
	ld   h, [hl]                                     ; $4989: $66
	ld   l, h                                        ; $498a: $6c
	ld   l, l                                        ; $498b: $6d
	ld   l, [hl]                                     ; $498c: $6e
	ld   l, [hl]                                     ; $498d: $6e
	ld   l, [hl]                                     ; $498e: $6e
	ld   l, [hl]                                     ; $498f: $6e
	ld   l, [hl]                                     ; $4990: $6e
	ld   l, [hl]                                     ; $4991: $6e
	ld   l, [hl]                                     ; $4992: $6e
	ld   l, [hl]                                     ; $4993: $6e
	ld   l, [hl]                                     ; $4994: $6e
	ld   l, [hl]                                     ; $4995: $6e
	ld   l, [hl]                                     ; $4996: $6e
	ld   l, [hl]                                     ; $4997: $6e
	ld   l, [hl]                                     ; $4998: $6e
	ld   l, [hl]                                     ; $4999: $6e
	ld   l, [hl]                                     ; $499a: $6e
	ld   e, c                                        ; $499b: $59
	nop                                              ; $499c: $00
	ld   bc, $0302                                   ; $499d: $01 $02 $03
	inc  b                                           ; $49a0: $04
	dec  b                                           ; $49a1: $05
	ld   b, $07                                      ; $49a2: $06 $07
	ld   [$0a09], sp                                 ; $49a4: $08 $09 $0a
	dec  bc                                          ; $49a7: $0b
	inc  c                                           ; $49a8: $0c
	inc  c                                           ; $49a9: $0c
	inc  c                                           ; $49aa: $0c
	inc  c                                           ; $49ab: $0c
	inc  b                                           ; $49ac: $04
	inc  c                                           ; $49ad: $0c
	inc  c                                           ; $49ae: $0c
	dec  b                                           ; $49af: $05
	db   $10                                         ; $49b0: $10
	ld   de, $1312                                   ; $49b1: $11 $12 $13
	inc  d                                           ; $49b4: $14
	dec  d                                           ; $49b5: $15
	ld   d, $17                                      ; $49b6: $16 $17
	jr   @+$1b                                       ; $49b8: $18 $19

	ld   a, [de]                                     ; $49ba: $1a
	dec  de                                          ; $49bb: $1b
	inc  e                                           ; $49bc: $1c
	dec  e                                           ; $49bd: $1d
	ld   e, $1f                                      ; $49be: $1e $1f
	ld   [hl], b                                     ; $49c0: $70
	inc  c                                           ; $49c1: $0c
	ld   [hl], d                                     ; $49c2: $72
	ld   [hl], e                                     ; $49c3: $73
	jr   nz, @+$23                                   ; $49c4: $20 $21

	ld   [hl+], a                                    ; $49c6: $22
	inc  hl                                          ; $49c7: $23
	inc  h                                           ; $49c8: $24
	dec  h                                           ; $49c9: $25
	ld   h, $27                                      ; $49ca: $26 $27
	jr   z, jr_085_49f7                              ; $49cc: $28 $29

	ld   a, [hl+]                                    ; $49ce: $2a
	dec  hl                                          ; $49cf: $2b
	inc  l                                           ; $49d0: $2c
	dec  l                                           ; $49d1: $2d
	ld   l, $2f                                      ; $49d2: $2e $2f
	ld   [hl], h                                     ; $49d4: $74
	ld   [hl], l                                     ; $49d5: $75
	halt                                             ; $49d6: $76
	ld   [hl], a                                     ; $49d7: $77
	jr   nc, jr_085_4a0b                             ; $49d8: $30 $31

	ld   [hl-], a                                    ; $49da: $32
	inc  sp                                          ; $49db: $33
	inc  [hl]                                        ; $49dc: $34
	dec  [hl]                                        ; $49dd: $35
	ld   [hl], $37                                   ; $49de: $36 $37
	jr   c, jr_085_4a1b                              ; $49e0: $38 $39

	ld   a, [hl-]                                    ; $49e2: $3a
	dec  sp                                          ; $49e3: $3b
	inc  a                                           ; $49e4: $3c
	dec  a                                           ; $49e5: $3d
	ld   a, $3f                                      ; $49e6: $3e $3f
	ld   a, b                                        ; $49e8: $78
	ld   a, c                                        ; $49e9: $79
	ld   a, d                                        ; $49ea: $7a
	ld   a, e                                        ; $49eb: $7b
	ld   b, b                                        ; $49ec: $40
	ld   b, c                                        ; $49ed: $41
	ld   b, d                                        ; $49ee: $42
	ld   b, e                                        ; $49ef: $43
	ld   b, h                                        ; $49f0: $44
	ld   b, l                                        ; $49f1: $45
	ld   b, [hl]                                     ; $49f2: $46
	ld   b, a                                        ; $49f3: $47
	ld   c, b                                        ; $49f4: $48
	ld   c, c                                        ; $49f5: $49
	ld   c, d                                        ; $49f6: $4a

jr_085_49f7:
	ld   c, e                                        ; $49f7: $4b
	ld   c, h                                        ; $49f8: $4c
	ld   a, h                                        ; $49f9: $7c
	ld   a, l                                        ; $49fa: $7d
	ld   a, [hl]                                     ; $49fb: $7e
	ld   a, a                                        ; $49fc: $7f
	nop                                              ; $49fd: $00
	ld   bc, $5002                                   ; $49fe: $01 $02 $50
	ld   d, c                                        ; $4a01: $51
	ld   d, d                                        ; $4a02: $52
	ld   d, e                                        ; $4a03: $53
	ld   d, h                                        ; $4a04: $54
	ld   d, l                                        ; $4a05: $55
	ld   d, [hl]                                     ; $4a06: $56
	cpl                                              ; $4a07: $2f
	jr   nc, jr_085_4a3b                             ; $4a08: $30 $31

	ld   e, d                                        ; $4a0a: $5a

jr_085_4a0b:
	ld   e, e                                        ; $4a0b: $5b
	dec  de                                          ; $4a0c: $1b
	inc  bc                                          ; $4a0d: $03
	ld   b, $07                                      ; $4a0e: $06 $07
	ld   [$0a09], sp                                 ; $4a10: $08 $09 $0a
	dec  bc                                          ; $4a13: $0b
	ld   h, b                                        ; $4a14: $60
	ld   h, c                                        ; $4a15: $61
	ld   h, d                                        ; $4a16: $62
	ld   h, e                                        ; $4a17: $63
	ld   h, h                                        ; $4a18: $64
	inc  c                                           ; $4a19: $0c
	inc  c                                           ; $4a1a: $0c

jr_085_4a1b:
	ld   [hl-], a                                    ; $4a1b: $32
	inc  sp                                          ; $4a1c: $33
	inc  [hl]                                        ; $4a1d: $34
	ld   h, h                                        ; $4a1e: $64
	ld   l, e                                        ; $4a1f: $6b
	inc  c                                           ; $4a20: $0c
	inc  c                                           ; $4a21: $0c
	dec  c                                           ; $4a22: $0d
	ld   c, $0f                                      ; $4a23: $0e $0f
	db   $10                                         ; $4a25: $10
	ld   de, $0312                                   ; $4a26: $11 $12 $03
	inc  bc                                          ; $4a29: $03
	inc  bc                                          ; $4a2a: $03
	inc  bc                                          ; $4a2b: $03
	inc  bc                                          ; $4a2c: $03
	inc  bc                                          ; $4a2d: $03
	inc  bc                                          ; $4a2e: $03
	inc  bc                                          ; $4a2f: $03
	inc  bc                                          ; $4a30: $03
	inc  bc                                          ; $4a31: $03
	inc  bc                                          ; $4a32: $03
	inc  bc                                          ; $4a33: $03
	inc  bc                                          ; $4a34: $03
	inc  bc                                          ; $4a35: $03
	inc  bc                                          ; $4a36: $03
	inc  bc                                          ; $4a37: $03
	inc  bc                                          ; $4a38: $03
	inc  bc                                          ; $4a39: $03
	inc  bc                                          ; $4a3a: $03

jr_085_4a3b:
	inc  hl                                          ; $4a3b: $23
	inc  bc                                          ; $4a3c: $03
	inc  bc                                          ; $4a3d: $03
	inc  bc                                          ; $4a3e: $03
	inc  bc                                          ; $4a3f: $03
	inc  bc                                          ; $4a40: $03
	inc  bc                                          ; $4a41: $03
	inc  bc                                          ; $4a42: $03
	inc  bc                                          ; $4a43: $03
	inc  bc                                          ; $4a44: $03
	inc  bc                                          ; $4a45: $03
	inc  bc                                          ; $4a46: $03
	inc  bc                                          ; $4a47: $03
	inc  bc                                          ; $4a48: $03
	inc  bc                                          ; $4a49: $03
	inc  bc                                          ; $4a4a: $03
	inc  bc                                          ; $4a4b: $03
	inc  bc                                          ; $4a4c: $03
	inc  bc                                          ; $4a4d: $03
	inc  bc                                          ; $4a4e: $03
	inc  bc                                          ; $4a4f: $03
	inc  bc                                          ; $4a50: $03
	inc  bc                                          ; $4a51: $03
	inc  bc                                          ; $4a52: $03
	inc  bc                                          ; $4a53: $03
	inc  bc                                          ; $4a54: $03
	inc  bc                                          ; $4a55: $03
	inc  bc                                          ; $4a56: $03
	inc  bc                                          ; $4a57: $03
	inc  bc                                          ; $4a58: $03
	inc  bc                                          ; $4a59: $03
	inc  bc                                          ; $4a5a: $03
	inc  bc                                          ; $4a5b: $03
	inc  bc                                          ; $4a5c: $03
	inc  bc                                          ; $4a5d: $03
	inc  bc                                          ; $4a5e: $03
	inc  bc                                          ; $4a5f: $03
	inc  bc                                          ; $4a60: $03
	inc  bc                                          ; $4a61: $03
	inc  bc                                          ; $4a62: $03
	inc  bc                                          ; $4a63: $03
	inc  b                                           ; $4a64: $04
	inc  b                                           ; $4a65: $04
	inc  b                                           ; $4a66: $04
	inc  b                                           ; $4a67: $04
	inc  b                                           ; $4a68: $04
	inc  bc                                          ; $4a69: $03
	inc  b                                           ; $4a6a: $04
	inc  b                                           ; $4a6b: $04
	inc  b                                           ; $4a6c: $04
	inc  b                                           ; $4a6d: $04
	inc  b                                           ; $4a6e: $04
	inc  b                                           ; $4a6f: $04
	inc  bc                                          ; $4a70: $03
	inc  bc                                          ; $4a71: $03
	inc  bc                                          ; $4a72: $03
	inc  bc                                          ; $4a73: $03
	dec  c                                           ; $4a74: $0d
	inc  bc                                          ; $4a75: $03
	inc  bc                                          ; $4a76: $03
	dec  c                                           ; $4a77: $0d
	inc  b                                           ; $4a78: $04
	inc  b                                           ; $4a79: $04
	inc  b                                           ; $4a7a: $04
	inc  b                                           ; $4a7b: $04
	inc  b                                           ; $4a7c: $04
	inc  b                                           ; $4a7d: $04
	inc  b                                           ; $4a7e: $04
	inc  b                                           ; $4a7f: $04
	inc  b                                           ; $4a80: $04
	inc  b                                           ; $4a81: $04
	inc  b                                           ; $4a82: $04
	inc  b                                           ; $4a83: $04
	dec  b                                           ; $4a84: $05
	dec  b                                           ; $4a85: $05
	dec  b                                           ; $4a86: $05
	dec  b                                           ; $4a87: $05
	dec  b                                           ; $4a88: $05
	inc  bc                                          ; $4a89: $03
	dec  b                                           ; $4a8a: $05
	dec  b                                           ; $4a8b: $05
	inc  b                                           ; $4a8c: $04
	inc  b                                           ; $4a8d: $04
	inc  b                                           ; $4a8e: $04
	inc  b                                           ; $4a8f: $04
	inc  b                                           ; $4a90: $04
	inc  b                                           ; $4a91: $04
	inc  b                                           ; $4a92: $04
	inc  b                                           ; $4a93: $04
	inc  b                                           ; $4a94: $04
	inc  b                                           ; $4a95: $04
	inc  b                                           ; $4a96: $04
	inc  b                                           ; $4a97: $04
	dec  b                                           ; $4a98: $05
	dec  b                                           ; $4a99: $05
	dec  b                                           ; $4a9a: $05
	dec  b                                           ; $4a9b: $05
	dec  b                                           ; $4a9c: $05
	dec  b                                           ; $4a9d: $05
	dec  b                                           ; $4a9e: $05
	dec  b                                           ; $4a9f: $05
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
	dec  b                                           ; $4aac: $05
	dec  b                                           ; $4aad: $05
	dec  b                                           ; $4aae: $05
	dec  b                                           ; $4aaf: $05
	dec  b                                           ; $4ab0: $05
	dec  b                                           ; $4ab1: $05
	dec  b                                           ; $4ab2: $05
	dec  b                                           ; $4ab3: $05
	dec  b                                           ; $4ab4: $05
	dec  b                                           ; $4ab5: $05
	dec  b                                           ; $4ab6: $05
	dec  b                                           ; $4ab7: $05
	dec  b                                           ; $4ab8: $05
	dec  b                                           ; $4ab9: $05
	dec  b                                           ; $4aba: $05
	dec  b                                           ; $4abb: $05
	dec  b                                           ; $4abc: $05
	dec  b                                           ; $4abd: $05
	dec  b                                           ; $4abe: $05
	dec  b                                           ; $4abf: $05
	dec  b                                           ; $4ac0: $05
	dec  b                                           ; $4ac1: $05
	dec  b                                           ; $4ac2: $05
	dec  b                                           ; $4ac3: $05
	dec  b                                           ; $4ac4: $05
	dec  c                                           ; $4ac5: $0d
	dec  c                                           ; $4ac6: $0d
	dec  c                                           ; $4ac7: $0d
	dec  b                                           ; $4ac8: $05
	dec  b                                           ; $4ac9: $05
	dec  b                                           ; $4aca: $05
	dec  b                                           ; $4acb: $05
	dec  b                                           ; $4acc: $05
	dec  b                                           ; $4acd: $05
	dec  b                                           ; $4ace: $05
	dec  c                                           ; $4acf: $0d
	dec  c                                           ; $4ad0: $0d
	dec  c                                           ; $4ad1: $0d
	dec  b                                           ; $4ad2: $05
	dec  b                                           ; $4ad3: $05
	dec  c                                           ; $4ad4: $0d
	dec  c                                           ; $4ad5: $0d
	dec  c                                           ; $4ad6: $0d
	dec  c                                           ; $4ad7: $0d
	dec  c                                           ; $4ad8: $0d
	dec  c                                           ; $4ad9: $0d
	dec  c                                           ; $4ada: $0d
	dec  c                                           ; $4adb: $0d
	dec  b                                           ; $4adc: $05
	dec  b                                           ; $4add: $05
	dec  b                                           ; $4ade: $05
	dec  b                                           ; $4adf: $05
	dec  b                                           ; $4ae0: $05
	inc  bc                                          ; $4ae1: $03
	inc  bc                                          ; $4ae2: $03
	dec  c                                           ; $4ae3: $0d
	dec  c                                           ; $4ae4: $0d
	dec  c                                           ; $4ae5: $0d
	ld   h, l                                        ; $4ae6: $65
	dec  b                                           ; $4ae7: $05
	inc  bc                                          ; $4ae8: $03
	dec  c                                           ; $4ae9: $0d
	dec  c                                           ; $4aea: $0d
	dec  c                                           ; $4aeb: $0d
	dec  c                                           ; $4aec: $0d
	dec  c                                           ; $4aed: $0d
	dec  c                                           ; $4aee: $0d
	dec  c                                           ; $4aef: $0d
	dec  c                                           ; $4af0: $0d
	ld   c, $0e                                      ; $4af1: $0e $0e
	ld   c, $0e                                      ; $4af3: $0e $0e
	ld   c, $0e                                      ; $4af5: $0e $0e
	ld   c, $0e                                      ; $4af7: $0e $0e
	ld   c, $0e                                      ; $4af9: $0e $0e
	ld   c, $0e                                      ; $4afb: $0e $0e
	ld   c, $0e                                      ; $4afd: $0e $0e
	ld   c, $0e                                      ; $4aff: $0e $0e
	ld   c, $0e                                      ; $4b01: $0e $0e
	dec  c                                           ; $4b03: $0d
	rrca                                             ; $4b04: $0f
	ld   l, d                                        ; $4b05: $6a
	ld   l, d                                        ; $4b06: $6a
	ld   l, d                                        ; $4b07: $6a
	ld   l, d                                        ; $4b08: $6a
	ld   l, d                                        ; $4b09: $6a
	ld   l, d                                        ; $4b0a: $6a
	ld   l, d                                        ; $4b0b: $6a
	ld   l, d                                        ; $4b0c: $6a
	ld   l, d                                        ; $4b0d: $6a
	ld   l, d                                        ; $4b0e: $6a
	ld   l, d                                        ; $4b0f: $6a
	ld   l, d                                        ; $4b10: $6a
	ld   l, d                                        ; $4b11: $6a
	ld   l, d                                        ; $4b12: $6a
	ld   l, d                                        ; $4b13: $6a
	ld   l, d                                        ; $4b14: $6a
	ld   l, d                                        ; $4b15: $6a
	ld   l, d                                        ; $4b16: $6a
	ld   e, b                                        ; $4b17: $58
	ld   h, l                                        ; $4b18: $65
	ld   h, [hl]                                     ; $4b19: $66
	ld   l, h                                        ; $4b1a: $6c
	ld   l, l                                        ; $4b1b: $6d
	ld   l, [hl]                                     ; $4b1c: $6e
	ld   l, [hl]                                     ; $4b1d: $6e
	ld   l, [hl]                                     ; $4b1e: $6e
	ld   l, [hl]                                     ; $4b1f: $6e
	ld   l, [hl]                                     ; $4b20: $6e
	ld   l, [hl]                                     ; $4b21: $6e
	ld   l, [hl]                                     ; $4b22: $6e
	ld   l, [hl]                                     ; $4b23: $6e
	ld   l, [hl]                                     ; $4b24: $6e
	ld   l, [hl]                                     ; $4b25: $6e
	ld   l, [hl]                                     ; $4b26: $6e
	ld   l, [hl]                                     ; $4b27: $6e
	ld   l, [hl]                                     ; $4b28: $6e
	ld   l, [hl]                                     ; $4b29: $6e
	ld   l, [hl]                                     ; $4b2a: $6e
	ld   e, c                                        ; $4b2b: $59
	nop                                              ; $4b2c: $00
	ld   bc, $0302                                   ; $4b2d: $01 $02 $03
	inc  b                                           ; $4b30: $04
	dec  b                                           ; $4b31: $05
	ld   b, $07                                      ; $4b32: $06 $07
	ld   [$0a09], sp                                 ; $4b34: $08 $09 $0a
	dec  bc                                          ; $4b37: $0b
	inc  c                                           ; $4b38: $0c
	inc  c                                           ; $4b39: $0c
	inc  c                                           ; $4b3a: $0c
	inc  c                                           ; $4b3b: $0c
	inc  b                                           ; $4b3c: $04
	inc  c                                           ; $4b3d: $0c
	inc  c                                           ; $4b3e: $0c
	dec  b                                           ; $4b3f: $05
	db   $10                                         ; $4b40: $10
	ld   de, $1312                                   ; $4b41: $11 $12 $13
	inc  d                                           ; $4b44: $14
	dec  d                                           ; $4b45: $15
	ld   d, $17                                      ; $4b46: $16 $17
	jr   @+$1b                                       ; $4b48: $18 $19

	ld   a, [de]                                     ; $4b4a: $1a
	dec  de                                          ; $4b4b: $1b
	inc  e                                           ; $4b4c: $1c
	dec  e                                           ; $4b4d: $1d
	ld   e, $1f                                      ; $4b4e: $1e $1f
	ld   [hl], b                                     ; $4b50: $70
	inc  c                                           ; $4b51: $0c
	ld   [hl], d                                     ; $4b52: $72
	ld   [hl], e                                     ; $4b53: $73
	jr   nz, @+$23                                   ; $4b54: $20 $21

	ld   [hl+], a                                    ; $4b56: $22
	inc  hl                                          ; $4b57: $23
	inc  h                                           ; $4b58: $24
	dec  h                                           ; $4b59: $25
	ld   h, $27                                      ; $4b5a: $26 $27
	jr   z, jr_085_4b87                              ; $4b5c: $28 $29

	ld   a, [hl+]                                    ; $4b5e: $2a
	dec  hl                                          ; $4b5f: $2b
	inc  l                                           ; $4b60: $2c
	dec  l                                           ; $4b61: $2d
	ld   l, $2f                                      ; $4b62: $2e $2f
	ld   [hl], h                                     ; $4b64: $74
	ld   [hl], l                                     ; $4b65: $75
	halt                                             ; $4b66: $76
	ld   [hl], a                                     ; $4b67: $77
	jr   nc, jr_085_4b9b                             ; $4b68: $30 $31

	ld   [hl-], a                                    ; $4b6a: $32
	inc  sp                                          ; $4b6b: $33
	inc  [hl]                                        ; $4b6c: $34
	dec  [hl]                                        ; $4b6d: $35
	ld   [hl], $37                                   ; $4b6e: $36 $37
	jr   c, @+$3b                                    ; $4b70: $38 $39

	ld   a, [hl-]                                    ; $4b72: $3a
	dec  sp                                          ; $4b73: $3b
	inc  a                                           ; $4b74: $3c
	dec  a                                           ; $4b75: $3d
	ld   a, $3f                                      ; $4b76: $3e $3f
	ld   a, b                                        ; $4b78: $78
	ld   a, c                                        ; $4b79: $79
	ld   a, d                                        ; $4b7a: $7a
	ld   a, e                                        ; $4b7b: $7b
	ld   b, b                                        ; $4b7c: $40
	ld   b, c                                        ; $4b7d: $41
	ld   b, d                                        ; $4b7e: $42
	ld   b, e                                        ; $4b7f: $43
	ld   b, h                                        ; $4b80: $44
	ld   b, l                                        ; $4b81: $45
	ld   b, [hl]                                     ; $4b82: $46
	ld   b, a                                        ; $4b83: $47
	ld   c, b                                        ; $4b84: $48
	ld   c, c                                        ; $4b85: $49
	ld   c, d                                        ; $4b86: $4a

jr_085_4b87:
	ld   c, e                                        ; $4b87: $4b
	ld   c, h                                        ; $4b88: $4c
	ld   a, h                                        ; $4b89: $7c
	ld   a, l                                        ; $4b8a: $7d
	ld   a, [hl]                                     ; $4b8b: $7e
	ld   a, a                                        ; $4b8c: $7f
	nop                                              ; $4b8d: $00
	ld   bc, $5002                                   ; $4b8e: $01 $02 $50
	ld   d, c                                        ; $4b91: $51
	ld   d, d                                        ; $4b92: $52
	ld   d, e                                        ; $4b93: $53
	ld   d, h                                        ; $4b94: $54
	ld   d, l                                        ; $4b95: $55
	ld   d, [hl]                                     ; $4b96: $56
	dec  [hl]                                        ; $4b97: $35
	ld   [hl], $37                                   ; $4b98: $36 $37
	ld   e, d                                        ; $4b9a: $5a

jr_085_4b9b:
	ld   e, e                                        ; $4b9b: $5b
	dec  de                                          ; $4b9c: $1b
	inc  bc                                          ; $4b9d: $03
	ld   b, $07                                      ; $4b9e: $06 $07
	ld   [$0a09], sp                                 ; $4ba0: $08 $09 $0a
	dec  bc                                          ; $4ba3: $0b
	ld   h, b                                        ; $4ba4: $60
	ld   h, c                                        ; $4ba5: $61
	ld   h, d                                        ; $4ba6: $62
	ld   h, e                                        ; $4ba7: $63
	ld   h, h                                        ; $4ba8: $64
	inc  c                                           ; $4ba9: $0c
	jr   c, jr_085_4be5                              ; $4baa: $38 $39

	ld   a, [hl-]                                    ; $4bac: $3a
	dec  sp                                          ; $4bad: $3b
	ld   h, h                                        ; $4bae: $64
	ld   l, e                                        ; $4baf: $6b
	inc  c                                           ; $4bb0: $0c
	inc  c                                           ; $4bb1: $0c
	dec  c                                           ; $4bb2: $0d
	ld   c, $0f                                      ; $4bb3: $0e $0f
	db   $10                                         ; $4bb5: $10
	ld   de, $0312                                   ; $4bb6: $11 $12 $03
	inc  bc                                          ; $4bb9: $03
	inc  bc                                          ; $4bba: $03
	inc  bc                                          ; $4bbb: $03
	inc  bc                                          ; $4bbc: $03
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
	inc  bc                                          ; $4bc7: $03
	inc  bc                                          ; $4bc8: $03
	inc  bc                                          ; $4bc9: $03
	inc  bc                                          ; $4bca: $03
	inc  hl                                          ; $4bcb: $23
	inc  bc                                          ; $4bcc: $03
	inc  bc                                          ; $4bcd: $03
	inc  bc                                          ; $4bce: $03
	inc  bc                                          ; $4bcf: $03
	inc  bc                                          ; $4bd0: $03
	inc  bc                                          ; $4bd1: $03
	inc  bc                                          ; $4bd2: $03
	inc  bc                                          ; $4bd3: $03
	inc  bc                                          ; $4bd4: $03
	inc  bc                                          ; $4bd5: $03
	inc  bc                                          ; $4bd6: $03
	inc  bc                                          ; $4bd7: $03
	inc  bc                                          ; $4bd8: $03
	inc  bc                                          ; $4bd9: $03
	inc  bc                                          ; $4bda: $03
	inc  bc                                          ; $4bdb: $03
	inc  bc                                          ; $4bdc: $03
	inc  bc                                          ; $4bdd: $03
	inc  bc                                          ; $4bde: $03
	inc  bc                                          ; $4bdf: $03
	inc  bc                                          ; $4be0: $03
	inc  bc                                          ; $4be1: $03
	inc  bc                                          ; $4be2: $03
	inc  bc                                          ; $4be3: $03
	inc  bc                                          ; $4be4: $03

jr_085_4be5:
	inc  bc                                          ; $4be5: $03
	inc  bc                                          ; $4be6: $03
	inc  bc                                          ; $4be7: $03
	inc  bc                                          ; $4be8: $03
	inc  bc                                          ; $4be9: $03
	inc  bc                                          ; $4bea: $03
	inc  bc                                          ; $4beb: $03
	inc  bc                                          ; $4bec: $03
	inc  bc                                          ; $4bed: $03
	inc  bc                                          ; $4bee: $03
	inc  bc                                          ; $4bef: $03
	inc  bc                                          ; $4bf0: $03
	inc  bc                                          ; $4bf1: $03
	inc  bc                                          ; $4bf2: $03
	inc  bc                                          ; $4bf3: $03
	inc  b                                           ; $4bf4: $04
	inc  b                                           ; $4bf5: $04
	inc  b                                           ; $4bf6: $04
	inc  b                                           ; $4bf7: $04
	inc  b                                           ; $4bf8: $04
	inc  bc                                          ; $4bf9: $03
	inc  b                                           ; $4bfa: $04
	inc  b                                           ; $4bfb: $04
	inc  b                                           ; $4bfc: $04
	inc  b                                           ; $4bfd: $04
	inc  b                                           ; $4bfe: $04
	inc  b                                           ; $4bff: $04
	inc  bc                                          ; $4c00: $03
	inc  bc                                          ; $4c01: $03
	inc  bc                                          ; $4c02: $03
	inc  bc                                          ; $4c03: $03
	dec  c                                           ; $4c04: $0d
	inc  bc                                          ; $4c05: $03
	inc  bc                                          ; $4c06: $03
	dec  c                                           ; $4c07: $0d
	inc  b                                           ; $4c08: $04
	inc  b                                           ; $4c09: $04
	inc  b                                           ; $4c0a: $04
	inc  b                                           ; $4c0b: $04
	inc  b                                           ; $4c0c: $04
	inc  b                                           ; $4c0d: $04
	inc  b                                           ; $4c0e: $04
	inc  b                                           ; $4c0f: $04
	inc  b                                           ; $4c10: $04
	inc  b                                           ; $4c11: $04
	inc  b                                           ; $4c12: $04
	inc  b                                           ; $4c13: $04
	dec  b                                           ; $4c14: $05
	dec  b                                           ; $4c15: $05
	dec  b                                           ; $4c16: $05
	dec  b                                           ; $4c17: $05
	dec  b                                           ; $4c18: $05
	inc  bc                                          ; $4c19: $03
	dec  b                                           ; $4c1a: $05
	dec  b                                           ; $4c1b: $05
	inc  b                                           ; $4c1c: $04
	inc  b                                           ; $4c1d: $04
	inc  b                                           ; $4c1e: $04
	inc  b                                           ; $4c1f: $04
	inc  b                                           ; $4c20: $04
	inc  b                                           ; $4c21: $04
	inc  b                                           ; $4c22: $04
	inc  b                                           ; $4c23: $04
	inc  b                                           ; $4c24: $04
	inc  b                                           ; $4c25: $04
	inc  b                                           ; $4c26: $04
	inc  b                                           ; $4c27: $04
	dec  b                                           ; $4c28: $05
	dec  b                                           ; $4c29: $05
	dec  b                                           ; $4c2a: $05
	dec  b                                           ; $4c2b: $05
	dec  b                                           ; $4c2c: $05
	dec  b                                           ; $4c2d: $05
	dec  b                                           ; $4c2e: $05
	dec  b                                           ; $4c2f: $05
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
	dec  b                                           ; $4c3c: $05
	dec  b                                           ; $4c3d: $05
	dec  b                                           ; $4c3e: $05
	dec  b                                           ; $4c3f: $05
	dec  b                                           ; $4c40: $05
	dec  b                                           ; $4c41: $05
	dec  b                                           ; $4c42: $05
	dec  b                                           ; $4c43: $05
	dec  b                                           ; $4c44: $05
	dec  b                                           ; $4c45: $05
	dec  b                                           ; $4c46: $05
	dec  b                                           ; $4c47: $05
	dec  b                                           ; $4c48: $05
	dec  b                                           ; $4c49: $05
	dec  b                                           ; $4c4a: $05
	dec  b                                           ; $4c4b: $05
	dec  b                                           ; $4c4c: $05
	dec  b                                           ; $4c4d: $05
	dec  b                                           ; $4c4e: $05
	dec  b                                           ; $4c4f: $05
	dec  b                                           ; $4c50: $05
	dec  b                                           ; $4c51: $05
	dec  b                                           ; $4c52: $05
	dec  b                                           ; $4c53: $05
	dec  b                                           ; $4c54: $05
	dec  c                                           ; $4c55: $0d
	dec  c                                           ; $4c56: $0d
	dec  c                                           ; $4c57: $0d
	dec  b                                           ; $4c58: $05
	dec  b                                           ; $4c59: $05
	dec  b                                           ; $4c5a: $05
	dec  b                                           ; $4c5b: $05
	dec  b                                           ; $4c5c: $05
	dec  b                                           ; $4c5d: $05
	dec  b                                           ; $4c5e: $05
	dec  c                                           ; $4c5f: $0d
	dec  c                                           ; $4c60: $0d
	dec  c                                           ; $4c61: $0d
	dec  b                                           ; $4c62: $05
	dec  b                                           ; $4c63: $05
	dec  c                                           ; $4c64: $0d
	dec  c                                           ; $4c65: $0d
	dec  c                                           ; $4c66: $0d
	dec  c                                           ; $4c67: $0d
	dec  c                                           ; $4c68: $0d
	dec  c                                           ; $4c69: $0d
	dec  c                                           ; $4c6a: $0d
	dec  c                                           ; $4c6b: $0d
	dec  b                                           ; $4c6c: $05
	dec  b                                           ; $4c6d: $05
	dec  b                                           ; $4c6e: $05
	dec  b                                           ; $4c6f: $05
	dec  b                                           ; $4c70: $05
	inc  bc                                          ; $4c71: $03
	dec  c                                           ; $4c72: $0d
	dec  c                                           ; $4c73: $0d
	dec  c                                           ; $4c74: $0d
	dec  c                                           ; $4c75: $0d
	ld   h, l                                        ; $4c76: $65
	dec  b                                           ; $4c77: $05
	inc  bc                                          ; $4c78: $03
	dec  c                                           ; $4c79: $0d
	dec  c                                           ; $4c7a: $0d
	dec  c                                           ; $4c7b: $0d
	dec  c                                           ; $4c7c: $0d
	dec  c                                           ; $4c7d: $0d
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
	jr   nz, jr_085_4cb3                             ; $4c90: $20 $21

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
	jr   nc, jr_085_4cd7                             ; $4ca4: $30 $31

	ld   [hl-], a                                    ; $4ca6: $32
	inc  sp                                          ; $4ca7: $33
	jr   nz, @+$23                                   ; $4ca8: $20 $21

	ld   [hl+], a                                    ; $4caa: $22
	inc  hl                                          ; $4cab: $23
	inc  h                                           ; $4cac: $24
	dec  h                                           ; $4cad: $25
	ld   h, $27                                      ; $4cae: $26 $27
	jr   z, jr_085_4cdb                              ; $4cb0: $28 $29

	ld   a, [hl+]                                    ; $4cb2: $2a

jr_085_4cb3:
	dec  hl                                          ; $4cb3: $2b
	inc  l                                           ; $4cb4: $2c
	dec  l                                           ; $4cb5: $2d
	ld   l, $2f                                      ; $4cb6: $2e $2f
	inc  h                                           ; $4cb8: $24
	dec  h                                           ; $4cb9: $25
	ld   h, $27                                      ; $4cba: $26 $27
	jr   nc, jr_085_4cef                             ; $4cbc: $30 $31

	ld   [hl-], a                                    ; $4cbe: $32
	inc  sp                                          ; $4cbf: $33
	inc  [hl]                                        ; $4cc0: $34
	dec  [hl]                                        ; $4cc1: $35
	ld   [hl], $37                                   ; $4cc2: $36 $37
	jr   c, jr_085_4cff                              ; $4cc4: $38 $39

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

jr_085_4cd7:
	ld   b, a                                        ; $4cd7: $47
	ld   c, b                                        ; $4cd8: $48
	ld   c, c                                        ; $4cd9: $49
	ld   c, d                                        ; $4cda: $4a

jr_085_4cdb:
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

jr_085_4cef:
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

jr_085_4cff:
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
	ld   c, b                                        ; $4d0d: $48
	ld   c, c                                        ; $4d0e: $49
	ld   c, d                                        ; $4d0f: $4a
	ld   c, e                                        ; $4d10: $4b
	ld   c, h                                        ; $4d11: $4c
	ld   c, l                                        ; $4d12: $4d
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
	ld   bc, $4f4e                                   ; $4d21: $01 $4e $4f
	ld   d, b                                        ; $4d24: $50
	ld   d, c                                        ; $4d25: $51
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
	ld   de, $5352                                   ; $4d35: $11 $52 $53
	ld   d, h                                        ; $4d38: $54
	ld   d, l                                        ; $4d39: $55
	ld   d, $17                                      ; $4d3a: $16 $17
	jr   jr_085_4d57                                 ; $4d3c: $18 $19

	ld   a, [de]                                     ; $4d3e: $1a
	dec  de                                          ; $4d3f: $1b
	inc  e                                           ; $4d40: $1c
	dec  e                                           ; $4d41: $1d
	ld   e, $1f                                      ; $4d42: $1e $1f
	ld   b, h                                        ; $4d44: $44
	ld   b, l                                        ; $4d45: $45
	ld   b, [hl]                                     ; $4d46: $46
	ld   b, a                                        ; $4d47: $47
	inc  bc                                          ; $4d48: $03
	inc  bc                                          ; $4d49: $03
	inc  bc                                          ; $4d4a: $03
	inc  bc                                          ; $4d4b: $03
	inc  bc                                          ; $4d4c: $03
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

jr_085_4d57:
	inc  bc                                          ; $4d57: $03
	dec  bc                                          ; $4d58: $0b
	dec  bc                                          ; $4d59: $0b
	dec  bc                                          ; $4d5a: $0b
	dec  bc                                          ; $4d5b: $0b
	inc  bc                                          ; $4d5c: $03
	inc  bc                                          ; $4d5d: $03
	inc  bc                                          ; $4d5e: $03
	inc  bc                                          ; $4d5f: $03
	inc  bc                                          ; $4d60: $03
	inc  bc                                          ; $4d61: $03
	inc  bc                                          ; $4d62: $03
	inc  bc                                          ; $4d63: $03
	dec  b                                           ; $4d64: $05
	dec  b                                           ; $4d65: $05
	inc  bc                                          ; $4d66: $03
	dec  b                                           ; $4d67: $05
	dec  b                                           ; $4d68: $05
	inc  bc                                          ; $4d69: $03
	inc  bc                                          ; $4d6a: $03
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
	dec  b                                           ; $4d78: $05
	dec  b                                           ; $4d79: $05
	dec  b                                           ; $4d7a: $05
	dec  b                                           ; $4d7b: $05
	dec  b                                           ; $4d7c: $05
	inc  bc                                          ; $4d7d: $03
	inc  bc                                          ; $4d7e: $03
	inc  bc                                          ; $4d7f: $03
	dec  bc                                          ; $4d80: $0b
	dec  bc                                          ; $4d81: $0b
	dec  bc                                          ; $4d82: $0b
	dec  bc                                          ; $4d83: $0b
	inc  bc                                          ; $4d84: $03
	dec  b                                           ; $4d85: $05
	dec  b                                           ; $4d86: $05
	dec  b                                           ; $4d87: $05
	dec  b                                           ; $4d88: $05
	dec  b                                           ; $4d89: $05
	dec  b                                           ; $4d8a: $05
	dec  b                                           ; $4d8b: $05
	dec  b                                           ; $4d8c: $05
	dec  b                                           ; $4d8d: $05
	dec  b                                           ; $4d8e: $05
	dec  b                                           ; $4d8f: $05
	dec  b                                           ; $4d90: $05
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
	dec  b                                           ; $4d9c: $05
	dec  b                                           ; $4d9d: $05
	dec  b                                           ; $4d9e: $05
	dec  b                                           ; $4d9f: $05
	dec  b                                           ; $4da0: $05
	dec  b                                           ; $4da1: $05
	dec  b                                           ; $4da2: $05
	dec  b                                           ; $4da3: $05
	dec  b                                           ; $4da4: $05
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
	dec  b                                           ; $4db1: $05
	dec  b                                           ; $4db2: $05
	dec  b                                           ; $4db3: $05
	dec  b                                           ; $4db4: $05
	inc  bc                                          ; $4db5: $03
	inc  bc                                          ; $4db6: $03
	dec  b                                           ; $4db7: $05
	dec  b                                           ; $4db8: $05
	inc  bc                                          ; $4db9: $03
	inc  b                                           ; $4dba: $04
	inc  b                                           ; $4dbb: $04
	inc  c                                           ; $4dbc: $0c
	inc  c                                           ; $4dbd: $0c
	dec  bc                                          ; $4dbe: $0b
	dec  bc                                          ; $4dbf: $0b
	inc  bc                                          ; $4dc0: $03
	inc  bc                                          ; $4dc1: $03
	inc  bc                                          ; $4dc2: $03
	inc  bc                                          ; $4dc3: $03
	dec  b                                           ; $4dc4: $05
	dec  b                                           ; $4dc5: $05
	dec  b                                           ; $4dc6: $05
	dec  b                                           ; $4dc7: $05
	dec  b                                           ; $4dc8: $05
	inc  bc                                          ; $4dc9: $03
	inc  bc                                          ; $4dca: $03
	inc  bc                                          ; $4dcb: $03
	inc  bc                                          ; $4dcc: $03
	inc  b                                           ; $4dcd: $04
	inc  b                                           ; $4dce: $04
	inc  b                                           ; $4dcf: $04
	inc  c                                           ; $4dd0: $0c
	inc  c                                           ; $4dd1: $0c
	dec  bc                                          ; $4dd2: $0b
	dec  bc                                          ; $4dd3: $0b
	inc  bc                                          ; $4dd4: $03
	dec  bc                                          ; $4dd5: $0b
	dec  bc                                          ; $4dd6: $0b
	dec  bc                                          ; $4dd7: $0b
	dec  bc                                          ; $4dd8: $0b
	dec  bc                                          ; $4dd9: $0b
	dec  bc                                          ; $4dda: $0b
	dec  b                                           ; $4ddb: $05
	dec  b                                           ; $4ddc: $05
	inc  bc                                          ; $4ddd: $03
	inc  bc                                          ; $4dde: $03
	inc  bc                                          ; $4ddf: $03
	inc  bc                                          ; $4de0: $03
	inc  b                                           ; $4de1: $04
	inc  b                                           ; $4de2: $04
	inc  b                                           ; $4de3: $04
	inc  c                                           ; $4de4: $0c
	inc  c                                           ; $4de5: $0c
	dec  bc                                          ; $4de6: $0b
	dec  bc                                          ; $4de7: $0b
	dec  c                                           ; $4de8: $0d
	dec  c                                           ; $4de9: $0d
	dec  c                                           ; $4dea: $0d
	dec  c                                           ; $4deb: $0d
	dec  c                                           ; $4dec: $0d
	dec  c                                           ; $4ded: $0d
	dec  c                                           ; $4dee: $0d
	dec  c                                           ; $4def: $0d
	dec  c                                           ; $4df0: $0d
	dec  bc                                          ; $4df1: $0b
	dec  bc                                          ; $4df2: $0b
	dec  bc                                          ; $4df3: $0b
	dec  bc                                          ; $4df4: $0b
	dec  bc                                          ; $4df5: $0b
	inc  c                                           ; $4df6: $0c
	inc  c                                           ; $4df7: $0c
	inc  c                                           ; $4df8: $0c
	inc  c                                           ; $4df9: $0c
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
	dec  b                                           ; $4e15: $05
	ld   b, $07                                      ; $4e16: $06 $07
	ld   [$0a09], sp                                 ; $4e18: $08 $09 $0a
	dec  bc                                          ; $4e1b: $0b
	inc  c                                           ; $4e1c: $0c
	dec  c                                           ; $4e1d: $0d
	ld   c, $0f                                      ; $4e1e: $0e $0f
	jr   nz, jr_085_4e43                             ; $4e20: $20 $21

	ld   [hl+], a                                    ; $4e22: $22
	inc  hl                                          ; $4e23: $23
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
	jr   nc, jr_085_4e67                             ; $4e34: $30 $31

	ld   [hl-], a                                    ; $4e36: $32
	inc  sp                                          ; $4e37: $33
	jr   nz, @+$23                                   ; $4e38: $20 $21

	ld   [hl+], a                                    ; $4e3a: $22
	inc  hl                                          ; $4e3b: $23
	inc  h                                           ; $4e3c: $24
	dec  h                                           ; $4e3d: $25
	ld   h, $27                                      ; $4e3e: $26 $27
	jr   z, jr_085_4e6b                              ; $4e40: $28 $29

	ld   a, [hl+]                                    ; $4e42: $2a

jr_085_4e43:
	dec  hl                                          ; $4e43: $2b
	inc  l                                           ; $4e44: $2c
	dec  l                                           ; $4e45: $2d
	ld   l, $2f                                      ; $4e46: $2e $2f
	inc  h                                           ; $4e48: $24
	dec  h                                           ; $4e49: $25
	ld   h, $27                                      ; $4e4a: $26 $27
	jr   nc, jr_085_4e7f                             ; $4e4c: $30 $31

	ld   [hl-], a                                    ; $4e4e: $32
	inc  sp                                          ; $4e4f: $33
	inc  [hl]                                        ; $4e50: $34
	dec  [hl]                                        ; $4e51: $35
	ld   [hl], $37                                   ; $4e52: $36 $37
	jr   c, jr_085_4e8f                              ; $4e54: $38 $39

	ld   a, [hl-]                                    ; $4e56: $3a
	dec  sp                                          ; $4e57: $3b
	inc  a                                           ; $4e58: $3c
	dec  a                                           ; $4e59: $3d
	ld   a, $3f                                      ; $4e5a: $3e $3f
	inc  [hl]                                        ; $4e5c: $34
	dec  [hl]                                        ; $4e5d: $35
	ld   [hl], $37                                   ; $4e5e: $36 $37
	ld   b, b                                        ; $4e60: $40
	ld   b, c                                        ; $4e61: $41
	ld   b, d                                        ; $4e62: $42
	ld   b, e                                        ; $4e63: $43
	ld   b, h                                        ; $4e64: $44
	ld   b, l                                        ; $4e65: $45
	ld   b, [hl]                                     ; $4e66: $46

jr_085_4e67:
	ld   b, a                                        ; $4e67: $47
	ld   c, b                                        ; $4e68: $48
	ld   c, c                                        ; $4e69: $49
	ld   c, d                                        ; $4e6a: $4a

jr_085_4e6b:
	ld   c, e                                        ; $4e6b: $4b
	ld   c, h                                        ; $4e6c: $4c
	ld   c, l                                        ; $4e6d: $4d
	ld   c, [hl]                                     ; $4e6e: $4e
	ld   c, a                                        ; $4e6f: $4f
	jr   z, @+$2b                                    ; $4e70: $28 $29

	ld   a, [hl+]                                    ; $4e72: $2a
	dec  hl                                          ; $4e73: $2b
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

jr_085_4e7f:
	ld   e, e                                        ; $4e7f: $5b
	ld   e, h                                        ; $4e80: $5c
	ld   e, l                                        ; $4e81: $5d
	ld   e, [hl]                                     ; $4e82: $5e
	ld   e, a                                        ; $4e83: $5f
	jr   c, @+$3b                                    ; $4e84: $38 $39

	ld   a, [hl-]                                    ; $4e86: $3a
	dec  sp                                          ; $4e87: $3b
	ld   h, b                                        ; $4e88: $60
	ld   h, c                                        ; $4e89: $61
	ld   h, d                                        ; $4e8a: $62
	ld   h, e                                        ; $4e8b: $63
	ld   h, h                                        ; $4e8c: $64
	ld   h, l                                        ; $4e8d: $65
	ld   h, [hl]                                     ; $4e8e: $66

jr_085_4e8f:
	ld   h, a                                        ; $4e8f: $67
	ld   l, b                                        ; $4e90: $68
	ld   l, c                                        ; $4e91: $69
	ld   l, d                                        ; $4e92: $6a
	ld   l, e                                        ; $4e93: $6b
	ld   l, h                                        ; $4e94: $6c
	ld   l, l                                        ; $4e95: $6d
	ld   l, [hl]                                     ; $4e96: $6e
	ld   l, a                                        ; $4e97: $6f
	inc  l                                           ; $4e98: $2c
	dec  l                                           ; $4e99: $2d
	ld   l, $2f                                      ; $4e9a: $2e $2f
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
	ld   c, b                                        ; $4eab: $48
	ld   c, c                                        ; $4eac: $49
	ld   c, d                                        ; $4ead: $4a
	ld   c, e                                        ; $4eae: $4b
	ccf                                              ; $4eaf: $3f
	nop                                              ; $4eb0: $00
	ld   bc, $0302                                   ; $4eb1: $01 $02 $03
	inc  b                                           ; $4eb4: $04
	dec  b                                           ; $4eb5: $05
	ld   b, $07                                      ; $4eb6: $06 $07
	ld   [$0a09], sp                                 ; $4eb8: $08 $09 $0a
	dec  bc                                          ; $4ebb: $0b
	inc  c                                           ; $4ebc: $0c
	dec  c                                           ; $4ebd: $0d
	ld   c, $4c                                      ; $4ebe: $0e $4c
	ld   c, l                                        ; $4ec0: $4d
	ld   c, [hl]                                     ; $4ec1: $4e
	ld   c, a                                        ; $4ec2: $4f
	ld   b, e                                        ; $4ec3: $43
	db   $10                                         ; $4ec4: $10
	ld   de, $1312                                   ; $4ec5: $11 $12 $13
	inc  d                                           ; $4ec8: $14
	dec  d                                           ; $4ec9: $15
	ld   d, $17                                      ; $4eca: $16 $17
	jr   jr_085_4ee7                                 ; $4ecc: $18 $19

	ld   a, [de]                                     ; $4ece: $1a
	dec  de                                          ; $4ecf: $1b
	inc  e                                           ; $4ed0: $1c
	dec  e                                           ; $4ed1: $1d
	ld   e, $1f                                      ; $4ed2: $1e $1f
	ld   b, h                                        ; $4ed4: $44
	ld   b, l                                        ; $4ed5: $45
	ld   b, [hl]                                     ; $4ed6: $46
	ld   b, a                                        ; $4ed7: $47
	inc  b                                           ; $4ed8: $04
	inc  b                                           ; $4ed9: $04
	inc  b                                           ; $4eda: $04
	inc  bc                                          ; $4edb: $03
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

jr_085_4ee7:
	inc  bc                                          ; $4ee7: $03
	inc  c                                           ; $4ee8: $0c
	inc  c                                           ; $4ee9: $0c
	inc  c                                           ; $4eea: $0c
	inc  c                                           ; $4eeb: $0c
	inc  b                                           ; $4eec: $04
	inc  b                                           ; $4eed: $04
	inc  b                                           ; $4eee: $04
	inc  b                                           ; $4eef: $04
	inc  b                                           ; $4ef0: $04
	inc  b                                           ; $4ef1: $04
	inc  b                                           ; $4ef2: $04
	inc  b                                           ; $4ef3: $04
	inc  b                                           ; $4ef4: $04
	dec  b                                           ; $4ef5: $05
	dec  b                                           ; $4ef6: $05
	inc  b                                           ; $4ef7: $04
	inc  b                                           ; $4ef8: $04
	inc  b                                           ; $4ef9: $04
	inc  b                                           ; $4efa: $04
	inc  b                                           ; $4efb: $04
	inc  c                                           ; $4efc: $0c
	inc  c                                           ; $4efd: $0c
	inc  c                                           ; $4efe: $0c
	inc  c                                           ; $4eff: $0c
	inc  b                                           ; $4f00: $04
	inc  b                                           ; $4f01: $04
	inc  b                                           ; $4f02: $04
	inc  b                                           ; $4f03: $04
	inc  b                                           ; $4f04: $04
	inc  b                                           ; $4f05: $04
	inc  b                                           ; $4f06: $04
	inc  b                                           ; $4f07: $04
	inc  b                                           ; $4f08: $04
	inc  b                                           ; $4f09: $04
	inc  b                                           ; $4f0a: $04
	inc  b                                           ; $4f0b: $04
	inc  b                                           ; $4f0c: $04
	inc  b                                           ; $4f0d: $04
	inc  b                                           ; $4f0e: $04
	inc  b                                           ; $4f0f: $04
	inc  c                                           ; $4f10: $0c
	inc  c                                           ; $4f11: $0c
	inc  c                                           ; $4f12: $0c
	inc  c                                           ; $4f13: $0c
	inc  b                                           ; $4f14: $04
	inc  b                                           ; $4f15: $04
	inc  b                                           ; $4f16: $04
	dec  b                                           ; $4f17: $05
	inc  b                                           ; $4f18: $04
	inc  b                                           ; $4f19: $04
	inc  b                                           ; $4f1a: $04
	inc  b                                           ; $4f1b: $04
	inc  b                                           ; $4f1c: $04
	inc  b                                           ; $4f1d: $04
	inc  b                                           ; $4f1e: $04
	inc  b                                           ; $4f1f: $04
	inc  b                                           ; $4f20: $04
	inc  b                                           ; $4f21: $04
	inc  b                                           ; $4f22: $04
	inc  b                                           ; $4f23: $04
	inc  c                                           ; $4f24: $0c
	inc  c                                           ; $4f25: $0c
	inc  c                                           ; $4f26: $0c
	inc  c                                           ; $4f27: $0c
	inc  b                                           ; $4f28: $04
	inc  b                                           ; $4f29: $04
	dec  b                                           ; $4f2a: $05
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
	inc  c                                           ; $4f39: $0c
	inc  c                                           ; $4f3a: $0c
	inc  c                                           ; $4f3b: $0c
	inc  b                                           ; $4f3c: $04
	inc  b                                           ; $4f3d: $04
	inc  bc                                          ; $4f3e: $03
	inc  bc                                          ; $4f3f: $03
	inc  bc                                          ; $4f40: $03
	inc  b                                           ; $4f41: $04
	inc  b                                           ; $4f42: $04
	inc  b                                           ; $4f43: $04
	inc  b                                           ; $4f44: $04
	inc  bc                                          ; $4f45: $03
	inc  bc                                          ; $4f46: $03
	inc  b                                           ; $4f47: $04
	dec  b                                           ; $4f48: $05
	dec  b                                           ; $4f49: $05
	dec  b                                           ; $4f4a: $05
	inc  b                                           ; $4f4b: $04
	inc  c                                           ; $4f4c: $0c
	inc  c                                           ; $4f4d: $0c
	inc  c                                           ; $4f4e: $0c
	inc  c                                           ; $4f4f: $0c
	inc  b                                           ; $4f50: $04
	inc  b                                           ; $4f51: $04
	inc  bc                                          ; $4f52: $03
	inc  bc                                          ; $4f53: $03
	inc  bc                                          ; $4f54: $03
	inc  bc                                          ; $4f55: $03
	inc  bc                                          ; $4f56: $03
	dec  b                                           ; $4f57: $05
	inc  bc                                          ; $4f58: $03
	inc  bc                                          ; $4f59: $03
	inc  bc                                          ; $4f5a: $03
	inc  bc                                          ; $4f5b: $03
	dec  b                                           ; $4f5c: $05
	dec  b                                           ; $4f5d: $05
	dec  b                                           ; $4f5e: $05
	dec  b                                           ; $4f5f: $05
	dec  c                                           ; $4f60: $0d
	dec  bc                                          ; $4f61: $0b
	dec  bc                                          ; $4f62: $0b
	inc  c                                           ; $4f63: $0c
	inc  bc                                          ; $4f64: $03
	inc  bc                                          ; $4f65: $03
	inc  bc                                          ; $4f66: $03
	inc  bc                                          ; $4f67: $03
	inc  bc                                          ; $4f68: $03
	inc  bc                                          ; $4f69: $03
	dec  b                                           ; $4f6a: $05
	dec  b                                           ; $4f6b: $05
	inc  bc                                          ; $4f6c: $03
	inc  bc                                          ; $4f6d: $03
	inc  bc                                          ; $4f6e: $03
	inc  bc                                          ; $4f6f: $03
	dec  b                                           ; $4f70: $05
	dec  b                                           ; $4f71: $05
	dec  b                                           ; $4f72: $05
	dec  bc                                          ; $4f73: $0b
	dec  bc                                          ; $4f74: $0b
	dec  bc                                          ; $4f75: $0b
	dec  bc                                          ; $4f76: $0b
	dec  bc                                          ; $4f77: $0b
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
	dec  c                                           ; $4f84: $0d
	dec  bc                                          ; $4f85: $0b
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
	jr   nz, jr_085_4fd3                             ; $4fb0: $20 $21

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
	jr   nc, jr_085_4ff7                             ; $4fc4: $30 $31

	ld   [hl-], a                                    ; $4fc6: $32
	inc  sp                                          ; $4fc7: $33
	jr   nz, @+$23                                   ; $4fc8: $20 $21

	ld   [hl+], a                                    ; $4fca: $22
	inc  hl                                          ; $4fcb: $23
	inc  h                                           ; $4fcc: $24
	dec  h                                           ; $4fcd: $25
	ld   h, $27                                      ; $4fce: $26 $27
	jr   z, jr_085_4ffb                              ; $4fd0: $28 $29

	ld   a, [hl+]                                    ; $4fd2: $2a

jr_085_4fd3:
	dec  hl                                          ; $4fd3: $2b
	inc  l                                           ; $4fd4: $2c
	dec  l                                           ; $4fd5: $2d
	ld   l, $2f                                      ; $4fd6: $2e $2f
	inc  h                                           ; $4fd8: $24
	dec  h                                           ; $4fd9: $25
	ld   h, $27                                      ; $4fda: $26 $27
	jr   nc, jr_085_500f                             ; $4fdc: $30 $31

	ld   [hl-], a                                    ; $4fde: $32
	inc  sp                                          ; $4fdf: $33
	inc  [hl]                                        ; $4fe0: $34
	dec  [hl]                                        ; $4fe1: $35
	ld   [hl], $37                                   ; $4fe2: $36 $37
	jr   c, jr_085_501f                              ; $4fe4: $38 $39

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

jr_085_4ff7:
	ld   b, a                                        ; $4ff7: $47
	ld   c, b                                        ; $4ff8: $48
	ld   c, c                                        ; $4ff9: $49
	ld   c, d                                        ; $4ffa: $4a

jr_085_4ffb:
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

jr_085_500f:
	ld   e, e                                        ; $500f: $5b
	ld   e, h                                        ; $5010: $5c
	ld   c, b                                        ; $5011: $48
	ld   c, c                                        ; $5012: $49
	ld   c, d                                        ; $5013: $4a
	jr   c, jr_085_504f                              ; $5014: $38 $39

	ld   a, [hl-]                                    ; $5016: $3a
	dec  sp                                          ; $5017: $3b
	ld   h, b                                        ; $5018: $60
	ld   h, c                                        ; $5019: $61
	ld   h, d                                        ; $501a: $62
	ld   h, e                                        ; $501b: $63
	ld   h, h                                        ; $501c: $64
	ld   h, l                                        ; $501d: $65
	ld   h, [hl]                                     ; $501e: $66

jr_085_501f:
	ld   h, a                                        ; $501f: $67
	ld   l, b                                        ; $5020: $68
	ld   l, c                                        ; $5021: $69
	ld   l, d                                        ; $5022: $6a
	ld   l, e                                        ; $5023: $6b
	ld   l, h                                        ; $5024: $6c
	ld   c, e                                        ; $5025: $4b
	ld   c, h                                        ; $5026: $4c
	ld   c, l                                        ; $5027: $4d
	inc  l                                           ; $5028: $2c
	dec  l                                           ; $5029: $2d
	ld   l, $2f                                      ; $502a: $2e $2f
	ld   [hl], b                                     ; $502c: $70
	ld   [hl], c                                     ; $502d: $71
	ld   [hl], d                                     ; $502e: $72
	ld   [hl], e                                     ; $502f: $73
	ld   [hl], h                                     ; $5030: $74

Call_085_5031:
	ld   [hl], l                                     ; $5031: $75
	halt                                             ; $5032: $76
	ld   [hl], a                                     ; $5033: $77
	ld   a, b                                        ; $5034: $78
	ld   a, c                                        ; $5035: $79
	ld   a, d                                        ; $5036: $7a
	ld   a, e                                        ; $5037: $7b
	ld   a, h                                        ; $5038: $7c
	ld   c, [hl]                                     ; $5039: $4e
	ld   c, a                                        ; $503a: $4f
	ld   d, b                                        ; $503b: $50
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
	ld   d, c                                        ; $504d: $51
	ld   d, d                                        ; $504e: $52

jr_085_504f:
	ld   d, e                                        ; $504f: $53
	ld   b, b                                        ; $5050: $40
	ld   b, c                                        ; $5051: $41
	ld   b, d                                        ; $5052: $42
	ld   b, e                                        ; $5053: $43
	db   $10                                         ; $5054: $10
	ld   de, $1312                                   ; $5055: $11 $12 $13
	inc  d                                           ; $5058: $14
	dec  d                                           ; $5059: $15
	ld   d, $17                                      ; $505a: $16 $17
	jr   jr_085_5077                                 ; $505c: $18 $19

	ld   a, [de]                                     ; $505e: $1a
	dec  de                                          ; $505f: $1b
	ld   d, h                                        ; $5060: $54
	ld   d, l                                        ; $5061: $55
	ld   d, [hl]                                     ; $5062: $56
	ld   d, a                                        ; $5063: $57
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

jr_085_5077:
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
	dec  bc                                          ; $50b6: $0b
	dec  bc                                          ; $50b7: $0b
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
	dec  bc                                          ; $50ca: $0b
	dec  bc                                          ; $50cb: $0b
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
	dec  b                                           ; $50d8: $05
	dec  bc                                          ; $50d9: $0b
	dec  bc                                          ; $50da: $0b
	dec  bc                                          ; $50db: $0b
	dec  bc                                          ; $50dc: $0b
	dec  bc                                          ; $50dd: $0b
	dec  bc                                          ; $50de: $0b
	dec  bc                                          ; $50df: $0b
	inc  bc                                          ; $50e0: $03
	inc  bc                                          ; $50e1: $03
	inc  b                                           ; $50e2: $04
	inc  b                                           ; $50e3: $04
	inc  b                                           ; $50e4: $04
	inc  b                                           ; $50e5: $04
	inc  b                                           ; $50e6: $04
	inc  b                                           ; $50e7: $04
	inc  bc                                          ; $50e8: $03
	inc  bc                                          ; $50e9: $03
	inc  bc                                          ; $50ea: $03
	inc  bc                                          ; $50eb: $03
	dec  b                                           ; $50ec: $05
	dec  bc                                          ; $50ed: $0b
	dec  bc                                          ; $50ee: $0b
	dec  bc                                          ; $50ef: $0b
	dec  bc                                          ; $50f0: $0b
	dec  bc                                          ; $50f1: $0b
	dec  bc                                          ; $50f2: $0b
	dec  bc                                          ; $50f3: $0b
	inc  b                                           ; $50f4: $04
	inc  b                                           ; $50f5: $04
	inc  b                                           ; $50f6: $04
	inc  b                                           ; $50f7: $04
	inc  b                                           ; $50f8: $04
	inc  b                                           ; $50f9: $04
	inc  b                                           ; $50fa: $04
	inc  b                                           ; $50fb: $04
	inc  b                                           ; $50fc: $04
	inc  bc                                          ; $50fd: $03
	inc  bc                                          ; $50fe: $03
	inc  bc                                          ; $50ff: $03
	inc  bc                                          ; $5100: $03
	dec  bc                                          ; $5101: $0b
	dec  bc                                          ; $5102: $0b
	dec  bc                                          ; $5103: $0b
	dec  bc                                          ; $5104: $0b
	dec  bc                                          ; $5105: $0b
	dec  bc                                          ; $5106: $0b
	dec  bc                                          ; $5107: $0b
	inc  c                                           ; $5108: $0c
	inc  c                                           ; $5109: $0c
	inc  c                                           ; $510a: $0c
	inc  c                                           ; $510b: $0c
	inc  c                                           ; $510c: $0c
	inc  c                                           ; $510d: $0c
	inc  c                                           ; $510e: $0c
	dec  bc                                          ; $510f: $0b
	dec  bc                                          ; $5110: $0b
	dec  bc                                          ; $5111: $0b
	dec  bc                                          ; $5112: $0b
	dec  bc                                          ; $5113: $0b
	dec  bc                                          ; $5114: $0b
	dec  bc                                          ; $5115: $0b
	dec  bc                                          ; $5116: $0b
	dec  bc                                          ; $5117: $0b
	dec  bc                                          ; $5118: $0b
	dec  bc                                          ; $5119: $0b
	dec  bc                                          ; $511a: $0b
	dec  bc                                          ; $511b: $0b
	inc  c                                           ; $511c: $0c
	inc  c                                           ; $511d: $0c
	inc  c                                           ; $511e: $0c
	inc  c                                           ; $511f: $0c
	inc  c                                           ; $5120: $0c
	inc  c                                           ; $5121: $0c
	inc  c                                           ; $5122: $0c
	dec  bc                                          ; $5123: $0b
	dec  bc                                          ; $5124: $0b
	dec  bc                                          ; $5125: $0b
	dec  bc                                          ; $5126: $0b
	dec  bc                                          ; $5127: $0b
	dec  bc                                          ; $5128: $0b
	dec  bc                                          ; $5129: $0b
	dec  bc                                          ; $512a: $0b
	dec  bc                                          ; $512b: $0b
	dec  bc                                          ; $512c: $0b
	dec  bc                                          ; $512d: $0b
	dec  bc                                          ; $512e: $0b
	dec  bc                                          ; $512f: $0b
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
	jr   nz, jr_085_5163                             ; $5140: $20 $21

	ld   [hl+], a                                    ; $5142: $22
	inc  hl                                          ; $5143: $23
	db   $10                                         ; $5144: $10
	ld   de, $1312                                   ; $5145: $11 $12 $13
	inc  d                                           ; $5148: $14
	dec  d                                           ; $5149: $15
	ld   d, $48                                      ; $514a: $16 $48
	ld   c, c                                        ; $514c: $49
	ld   c, d                                        ; $514d: $4a
	ld   a, [de]                                     ; $514e: $1a
	dec  de                                          ; $514f: $1b
	inc  e                                           ; $5150: $1c
	dec  e                                           ; $5151: $1d
	ld   e, $1f                                      ; $5152: $1e $1f
	jr   nc, jr_085_5187                             ; $5154: $30 $31

	ld   [hl-], a                                    ; $5156: $32
	inc  sp                                          ; $5157: $33
	jr   nz, @+$23                                   ; $5158: $20 $21

	ld   [hl+], a                                    ; $515a: $22
	inc  hl                                          ; $515b: $23
	inc  h                                           ; $515c: $24
	dec  h                                           ; $515d: $25
	ld   h, $4b                                      ; $515e: $26 $4b
	ld   c, h                                        ; $5160: $4c
	ld   c, l                                        ; $5161: $4d
	ld   a, [hl+]                                    ; $5162: $2a

jr_085_5163:
	dec  hl                                          ; $5163: $2b
	inc  l                                           ; $5164: $2c
	dec  l                                           ; $5165: $2d
	ld   l, $2f                                      ; $5166: $2e $2f
	inc  h                                           ; $5168: $24
	dec  h                                           ; $5169: $25
	ld   h, $27                                      ; $516a: $26 $27
	jr   nc, jr_085_519f                             ; $516c: $30 $31

	ld   [hl-], a                                    ; $516e: $32
	inc  sp                                          ; $516f: $33
	inc  [hl]                                        ; $5170: $34
	dec  [hl]                                        ; $5171: $35
	ld   [hl], $4e                                   ; $5172: $36 $4e
	ld   c, a                                        ; $5174: $4f
	ld   d, b                                        ; $5175: $50
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

jr_085_5187:
	ld   d, c                                        ; $5187: $51
	ld   d, d                                        ; $5188: $52
	ld   d, e                                        ; $5189: $53
	ld   c, d                                        ; $518a: $4a
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
	ld   d, h                                        ; $519b: $54
	ld   d, l                                        ; $519c: $55
	ld   d, [hl]                                     ; $519d: $56
	ld   e, d                                        ; $519e: $5a

jr_085_519f:
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
	ld   d, a                                        ; $51af: $57
	ld   e, b                                        ; $51b0: $58
	ld   e, c                                        ; $51b1: $59
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
	jr   jr_085_5207                                 ; $51ec: $18 $19

	ld   a, [de]                                     ; $51ee: $1a
	dec  de                                          ; $51ef: $1b
	inc  e                                           ; $51f0: $1c
	dec  e                                           ; $51f1: $1d
	ld   e, $1f                                      ; $51f2: $1e $1f
	ld   b, h                                        ; $51f4: $44
	ld   b, l                                        ; $51f5: $45
	ld   b, [hl]                                     ; $51f6: $46
	ld   b, a                                        ; $51f7: $47
	dec  b                                           ; $51f8: $05
	dec  b                                           ; $51f9: $05
	inc  bc                                          ; $51fa: $03
	dec  b                                           ; $51fb: $05
	dec  b                                           ; $51fc: $05
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

jr_085_5207:
	dec  b                                           ; $5207: $05
	dec  c                                           ; $5208: $0d
	dec  c                                           ; $5209: $0d
	dec  c                                           ; $520a: $0d
	dec  c                                           ; $520b: $0d
	dec  b                                           ; $520c: $05
	dec  b                                           ; $520d: $05
	inc  bc                                          ; $520e: $03
	inc  bc                                          ; $520f: $03
	inc  b                                           ; $5210: $04
	inc  b                                           ; $5211: $04
	inc  b                                           ; $5212: $04
	inc  c                                           ; $5213: $0c
	dec  bc                                          ; $5214: $0b
	dec  bc                                          ; $5215: $0b
	inc  bc                                          ; $5216: $03
	inc  bc                                          ; $5217: $03
	inc  b                                           ; $5218: $04
	inc  b                                           ; $5219: $04
	inc  b                                           ; $521a: $04
	dec  b                                           ; $521b: $05
	dec  c                                           ; $521c: $0d
	dec  c                                           ; $521d: $0d
	dec  c                                           ; $521e: $0d
	dec  c                                           ; $521f: $0d
	dec  b                                           ; $5220: $05
	dec  b                                           ; $5221: $05
	inc  bc                                          ; $5222: $03
	inc  bc                                          ; $5223: $03
	inc  b                                           ; $5224: $04
	inc  b                                           ; $5225: $04
	inc  b                                           ; $5226: $04
	inc  c                                           ; $5227: $0c
	dec  bc                                          ; $5228: $0b
	dec  bc                                          ; $5229: $0b
	inc  bc                                          ; $522a: $03
	inc  bc                                          ; $522b: $03
	inc  b                                           ; $522c: $04
	inc  b                                           ; $522d: $04
	inc  b                                           ; $522e: $04
	inc  b                                           ; $522f: $04
	inc  c                                           ; $5230: $0c
	inc  c                                           ; $5231: $0c
	inc  c                                           ; $5232: $0c
	dec  c                                           ; $5233: $0d
	dec  b                                           ; $5234: $05
	dec  b                                           ; $5235: $05
	inc  bc                                          ; $5236: $03
	inc  bc                                          ; $5237: $03
	inc  b                                           ; $5238: $04
	inc  b                                           ; $5239: $04
	inc  b                                           ; $523a: $04
	dec  c                                           ; $523b: $0d
	dec  bc                                          ; $523c: $0b
	dec  bc                                          ; $523d: $0b
	inc  bc                                          ; $523e: $03
	inc  bc                                          ; $523f: $03
	inc  b                                           ; $5240: $04
	inc  b                                           ; $5241: $04
	inc  b                                           ; $5242: $04
	inc  b                                           ; $5243: $04
	inc  c                                           ; $5244: $0c
	dec  c                                           ; $5245: $0d
	dec  c                                           ; $5246: $0d
	dec  c                                           ; $5247: $0d
	dec  b                                           ; $5248: $05
	dec  b                                           ; $5249: $05
	inc  bc                                          ; $524a: $03
	inc  bc                                          ; $524b: $03
	inc  b                                           ; $524c: $04
	inc  b                                           ; $524d: $04
	inc  b                                           ; $524e: $04
	dec  c                                           ; $524f: $0d
	dec  bc                                          ; $5250: $0b
	dec  bc                                          ; $5251: $0b
	inc  bc                                          ; $5252: $03
	inc  bc                                          ; $5253: $03
	inc  b                                           ; $5254: $04
	inc  b                                           ; $5255: $04
	inc  b                                           ; $5256: $04
	dec  b                                           ; $5257: $05
	inc  c                                           ; $5258: $0c
	inc  c                                           ; $5259: $0c
	inc  c                                           ; $525a: $0c
	dec  c                                           ; $525b: $0d
	dec  b                                           ; $525c: $05
	dec  b                                           ; $525d: $05
	inc  bc                                          ; $525e: $03
	inc  bc                                          ; $525f: $03
	inc  b                                           ; $5260: $04
	inc  bc                                          ; $5261: $03
	inc  bc                                          ; $5262: $03
	dec  c                                           ; $5263: $0d
	dec  bc                                          ; $5264: $0b
	dec  bc                                          ; $5265: $0b
	inc  bc                                          ; $5266: $03
	inc  bc                                          ; $5267: $03
	inc  b                                           ; $5268: $04
	inc  bc                                          ; $5269: $03
	inc  bc                                          ; $526a: $03
	dec  b                                           ; $526b: $05
	inc  c                                           ; $526c: $0c
	dec  c                                           ; $526d: $0d
	dec  c                                           ; $526e: $0d
	dec  c                                           ; $526f: $0d
	dec  b                                           ; $5270: $05
	dec  b                                           ; $5271: $05
	dec  b                                           ; $5272: $05
	inc  b                                           ; $5273: $04
	inc  b                                           ; $5274: $04
	inc  bc                                          ; $5275: $03
	inc  bc                                          ; $5276: $03
	dec  bc                                          ; $5277: $0b
	dec  bc                                          ; $5278: $0b
	dec  bc                                          ; $5279: $0b
	inc  bc                                          ; $527a: $03
	inc  bc                                          ; $527b: $03
	inc  bc                                          ; $527c: $03
	inc  bc                                          ; $527d: $03
	inc  b                                           ; $527e: $04
	inc  b                                           ; $527f: $04
	inc  c                                           ; $5280: $0c
	inc  c                                           ; $5281: $0c
	dec  c                                           ; $5282: $0d
	dec  c                                           ; $5283: $0d
	dec  b                                           ; $5284: $05
	inc  b                                           ; $5285: $04
	inc  b                                           ; $5286: $04
	inc  bc                                          ; $5287: $03
	inc  bc                                          ; $5288: $03
	inc  bc                                          ; $5289: $03
	inc  bc                                          ; $528a: $03
	inc  bc                                          ; $528b: $03
	inc  bc                                          ; $528c: $03
	inc  bc                                          ; $528d: $03
	inc  bc                                          ; $528e: $03
	inc  bc                                          ; $528f: $03
	inc  bc                                          ; $5290: $03
	inc  bc                                          ; $5291: $03
	inc  b                                           ; $5292: $04
	inc  b                                           ; $5293: $04
	dec  bc                                          ; $5294: $0b
	dec  c                                           ; $5295: $0d
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
	dec  bc                                          ; $52a7: $0b
	dec  bc                                          ; $52a8: $0b
	dec  bc                                          ; $52a9: $0b
	dec  bc                                          ; $52aa: $0b
	dec  bc                                          ; $52ab: $0b
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
	dec  bc                                          ; $52bc: $0b
	dec  bc                                          ; $52bd: $0b
	dec  bc                                          ; $52be: $0b
	dec  bc                                          ; $52bf: $0b
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
	jr   nz, jr_085_52f3                             ; $52d0: $20 $21

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
	jr   nc, jr_085_5317                             ; $52e4: $30 $31

	ld   [hl-], a                                    ; $52e6: $32
	inc  sp                                          ; $52e7: $33
	jr   nz, @+$23                                   ; $52e8: $20 $21

	ld   [hl+], a                                    ; $52ea: $22
	inc  hl                                          ; $52eb: $23
	inc  h                                           ; $52ec: $24
	dec  h                                           ; $52ed: $25
	ld   h, $27                                      ; $52ee: $26 $27
	jr   z, jr_085_531b                              ; $52f0: $28 $29

	ld   a, [hl+]                                    ; $52f2: $2a

jr_085_52f3:
	dec  hl                                          ; $52f3: $2b
	inc  l                                           ; $52f4: $2c
	dec  l                                           ; $52f5: $2d
	ld   l, $2f                                      ; $52f6: $2e $2f
	inc  h                                           ; $52f8: $24
	dec  h                                           ; $52f9: $25
	ld   h, $27                                      ; $52fa: $26 $27
	jr   nc, jr_085_532f                             ; $52fc: $30 $31

	ld   [hl-], a                                    ; $52fe: $32
	inc  sp                                          ; $52ff: $33
	inc  [hl]                                        ; $5300: $34
	dec  [hl]                                        ; $5301: $35
	ld   [hl], $37                                   ; $5302: $36 $37
	jr   c, jr_085_533f                              ; $5304: $38 $39

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

jr_085_5317:
	ld   b, a                                        ; $5317: $47
	ld   c, b                                        ; $5318: $48
	ld   c, c                                        ; $5319: $49
	ld   c, d                                        ; $531a: $4a

jr_085_531b:
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

jr_085_532f:
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

jr_085_533f:
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
	jr   jr_085_5397                                 ; $537c: $18 $19

	ld   a, [de]                                     ; $537e: $1a
	dec  de                                          ; $537f: $1b
	inc  e                                           ; $5380: $1c
	dec  e                                           ; $5381: $1d
	ld   e, $1f                                      ; $5382: $1e $1f
	ld   b, h                                        ; $5384: $44
	ld   b, l                                        ; $5385: $45
	ld   b, [hl]                                     ; $5386: $46
	ld   b, a                                        ; $5387: $47
	inc  b                                           ; $5388: $04
	inc  b                                           ; $5389: $04
	inc  b                                           ; $538a: $04
	inc  b                                           ; $538b: $04
	inc  b                                           ; $538c: $04
	inc  b                                           ; $538d: $04
	inc  b                                           ; $538e: $04
	inc  b                                           ; $538f: $04
	inc  b                                           ; $5390: $04
	inc  b                                           ; $5391: $04
	inc  b                                           ; $5392: $04
	inc  b                                           ; $5393: $04
	inc  b                                           ; $5394: $04
	dec  b                                           ; $5395: $05
	dec  b                                           ; $5396: $05

jr_085_5397:
	inc  b                                           ; $5397: $04
	inc  c                                           ; $5398: $0c
	dec  bc                                          ; $5399: $0b
	dec  bc                                          ; $539a: $0b
	dec  bc                                          ; $539b: $0b
	inc  b                                           ; $539c: $04
	inc  bc                                          ; $539d: $03
	inc  b                                           ; $539e: $04
	inc  b                                           ; $539f: $04
	inc  b                                           ; $53a0: $04
	inc  b                                           ; $53a1: $04
	inc  b                                           ; $53a2: $04
	inc  b                                           ; $53a3: $04
	inc  b                                           ; $53a4: $04
	inc  b                                           ; $53a5: $04
	inc  b                                           ; $53a6: $04
	inc  b                                           ; $53a7: $04
	inc  b                                           ; $53a8: $04
	dec  b                                           ; $53a9: $05
	dec  b                                           ; $53aa: $05
	dec  b                                           ; $53ab: $05
	inc  c                                           ; $53ac: $0c
	dec  bc                                          ; $53ad: $0b
	dec  bc                                          ; $53ae: $0b
	dec  bc                                          ; $53af: $0b
	inc  bc                                          ; $53b0: $03
	inc  bc                                          ; $53b1: $03
	inc  bc                                          ; $53b2: $03
	inc  bc                                          ; $53b3: $03
	inc  bc                                          ; $53b4: $03
	inc  b                                           ; $53b5: $04
	inc  b                                           ; $53b6: $04
	inc  b                                           ; $53b7: $04
	inc  b                                           ; $53b8: $04
	inc  bc                                          ; $53b9: $03
	inc  bc                                          ; $53ba: $03
	inc  bc                                          ; $53bb: $03
	dec  b                                           ; $53bc: $05
	dec  b                                           ; $53bd: $05
	dec  b                                           ; $53be: $05
	dec  b                                           ; $53bf: $05
	dec  c                                           ; $53c0: $0d
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
	inc  b                                           ; $53cf: $04
	dec  b                                           ; $53d0: $05
	dec  b                                           ; $53d1: $05
	dec  b                                           ; $53d2: $05
	dec  b                                           ; $53d3: $05
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
	inc  b                                           ; $53e3: $04
	dec  b                                           ; $53e4: $05
	dec  b                                           ; $53e5: $05
	dec  b                                           ; $53e6: $05
	dec  b                                           ; $53e7: $05
	inc  c                                           ; $53e8: $0c
	dec  bc                                          ; $53e9: $0b
	dec  bc                                          ; $53ea: $0b
	dec  bc                                          ; $53eb: $0b
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
	dec  b                                           ; $53f7: $05
	dec  b                                           ; $53f8: $05
	dec  b                                           ; $53f9: $05
	dec  b                                           ; $53fa: $05
	dec  b                                           ; $53fb: $05
	inc  c                                           ; $53fc: $0c
	dec  bc                                          ; $53fd: $0b
	dec  bc                                          ; $53fe: $0b
	dec  bc                                          ; $53ff: $0b
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
	dec  b                                           ; $540c: $05
	dec  b                                           ; $540d: $05
	dec  b                                           ; $540e: $05
	dec  b                                           ; $540f: $05
	dec  bc                                          ; $5410: $0b
	dec  bc                                          ; $5411: $0b
	dec  bc                                          ; $5412: $0b
	dec  bc                                          ; $5413: $0b
	inc  bc                                          ; $5414: $03
	inc  bc                                          ; $5415: $03
	inc  bc                                          ; $5416: $03
	inc  bc                                          ; $5417: $03
	inc  bc                                          ; $5418: $03
	inc  bc                                          ; $5419: $03
	inc  bc                                          ; $541a: $03
	inc  bc                                          ; $541b: $03
	inc  bc                                          ; $541c: $03
	inc  bc                                          ; $541d: $03
	inc  bc                                          ; $541e: $03
	inc  bc                                          ; $541f: $03
	dec  b                                           ; $5420: $05
	dec  b                                           ; $5421: $05
	dec  b                                           ; $5422: $05
	dec  b                                           ; $5423: $05
	dec  c                                           ; $5424: $0d
	dec  bc                                          ; $5425: $0b
	dec  bc                                          ; $5426: $0b
	dec  bc                                          ; $5427: $0b
	dec  bc                                          ; $5428: $0b
	dec  bc                                          ; $5429: $0b
	dec  bc                                          ; $542a: $0b
	dec  bc                                          ; $542b: $0b
	dec  bc                                          ; $542c: $0b
	dec  bc                                          ; $542d: $0b
	dec  bc                                          ; $542e: $0b
	dec  bc                                          ; $542f: $0b
	dec  bc                                          ; $5430: $0b
	dec  bc                                          ; $5431: $0b
	dec  bc                                          ; $5432: $0b
	dec  bc                                          ; $5433: $0b
	dec  c                                           ; $5434: $0d
	dec  c                                           ; $5435: $0d
	dec  c                                           ; $5436: $0d
	dec  c                                           ; $5437: $0d
	dec  c                                           ; $5438: $0d
	dec  bc                                          ; $5439: $0b
	dec  bc                                          ; $543a: $0b
	dec  bc                                          ; $543b: $0b
	dec  bc                                          ; $543c: $0b
	dec  bc                                          ; $543d: $0b
	dec  bc                                          ; $543e: $0b
	dec  bc                                          ; $543f: $0b
	dec  bc                                          ; $5440: $0b
	dec  bc                                          ; $5441: $0b
	dec  bc                                          ; $5442: $0b
	dec  bc                                          ; $5443: $0b
	dec  bc                                          ; $5444: $0b
	dec  bc                                          ; $5445: $0b
	dec  bc                                          ; $5446: $0b
	dec  bc                                          ; $5447: $0b
	dec  c                                           ; $5448: $0d
	dec  c                                           ; $5449: $0d
	inc  c                                           ; $544a: $0c
	dec  bc                                          ; $544b: $0b
	dec  bc                                          ; $544c: $0b
	dec  bc                                          ; $544d: $0b
	dec  bc                                          ; $544e: $0b
	dec  bc                                          ; $544f: $0b
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
	jr   nz, jr_085_5483                             ; $5460: $20 $21

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
	jr   nc, jr_085_54a7                             ; $5474: $30 $31

	ld   [hl-], a                                    ; $5476: $32
	inc  sp                                          ; $5477: $33
	jr   nz, @+$23                                   ; $5478: $20 $21

	ld   [hl+], a                                    ; $547a: $22
	inc  hl                                          ; $547b: $23
	inc  h                                           ; $547c: $24
	dec  h                                           ; $547d: $25
	ld   h, $27                                      ; $547e: $26 $27
	jr   z, jr_085_54ab                              ; $5480: $28 $29

	ld   a, [hl+]                                    ; $5482: $2a

jr_085_5483:
	dec  hl                                          ; $5483: $2b
	inc  l                                           ; $5484: $2c
	dec  l                                           ; $5485: $2d
	ld   l, $2f                                      ; $5486: $2e $2f
	inc  h                                           ; $5488: $24
	dec  h                                           ; $5489: $25
	ld   h, $27                                      ; $548a: $26 $27
	jr   nc, jr_085_54bf                             ; $548c: $30 $31

	ld   [hl-], a                                    ; $548e: $32
	inc  sp                                          ; $548f: $33
	inc  [hl]                                        ; $5490: $34
	dec  [hl]                                        ; $5491: $35
	ld   [hl], $37                                   ; $5492: $36 $37
	jr   c, jr_085_54cf                              ; $5494: $38 $39

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

jr_085_54a7:
	ld   b, a                                        ; $54a7: $47
	ld   c, b                                        ; $54a8: $48
	ld   c, c                                        ; $54a9: $49
	ld   c, d                                        ; $54aa: $4a

jr_085_54ab:
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

jr_085_54bf:
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

jr_085_54cf:
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
	jr   jr_085_5527                                 ; $550c: $18 $19

	ld   a, [de]                                     ; $550e: $1a
	dec  de                                          ; $550f: $1b
	inc  e                                           ; $5510: $1c
	dec  e                                           ; $5511: $1d
	ld   e, $1f                                      ; $5512: $1e $1f
	ld   b, h                                        ; $5514: $44
	ld   b, l                                        ; $5515: $45
	ld   b, [hl]                                     ; $5516: $46
	ld   b, a                                        ; $5517: $47
	inc  bc                                          ; $5518: $03
	inc  bc                                          ; $5519: $03
	inc  bc                                          ; $551a: $03
	inc  b                                           ; $551b: $04
	inc  b                                           ; $551c: $04
	inc  b                                           ; $551d: $04
	inc  b                                           ; $551e: $04
	inc  b                                           ; $551f: $04
	inc  b                                           ; $5520: $04
	inc  b                                           ; $5521: $04
	inc  bc                                          ; $5522: $03
	inc  bc                                          ; $5523: $03
	inc  bc                                          ; $5524: $03
	inc  bc                                          ; $5525: $03
	dec  b                                           ; $5526: $05

jr_085_5527:
	dec  b                                           ; $5527: $05
	dec  c                                           ; $5528: $0d
	dec  bc                                          ; $5529: $0b
	dec  c                                           ; $552a: $0d
	dec  c                                           ; $552b: $0d
	inc  bc                                          ; $552c: $03
	inc  bc                                          ; $552d: $03
	inc  bc                                          ; $552e: $03
	inc  bc                                          ; $552f: $03
	inc  b                                           ; $5530: $04
	inc  b                                           ; $5531: $04
	inc  b                                           ; $5532: $04
	inc  b                                           ; $5533: $04
	inc  b                                           ; $5534: $04
	inc  b                                           ; $5535: $04
	inc  bc                                          ; $5536: $03
	inc  bc                                          ; $5537: $03
	inc  bc                                          ; $5538: $03
	inc  bc                                          ; $5539: $03
	inc  bc                                          ; $553a: $03
	inc  bc                                          ; $553b: $03
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
	inc  b                                           ; $5549: $04
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
	inc  b                                           ; $5554: $04
	inc  b                                           ; $5555: $04
	inc  bc                                          ; $5556: $03
	inc  bc                                          ; $5557: $03
	inc  b                                           ; $5558: $04
	inc  b                                           ; $5559: $04
	inc  b                                           ; $555a: $04
	inc  b                                           ; $555b: $04
	inc  b                                           ; $555c: $04
	inc  b                                           ; $555d: $04
	inc  bc                                          ; $555e: $03
	inc  bc                                          ; $555f: $03
	inc  bc                                          ; $5560: $03
	inc  bc                                          ; $5561: $03
	inc  bc                                          ; $5562: $03
	inc  bc                                          ; $5563: $03
	dec  bc                                          ; $5564: $0b
	dec  bc                                          ; $5565: $0b
	dec  bc                                          ; $5566: $0b
	dec  bc                                          ; $5567: $0b
	inc  b                                           ; $5568: $04
	inc  b                                           ; $5569: $04
	inc  bc                                          ; $556a: $03
	inc  bc                                          ; $556b: $03
	inc  b                                           ; $556c: $04
	inc  b                                           ; $556d: $04
	inc  b                                           ; $556e: $04
	inc  b                                           ; $556f: $04
	inc  b                                           ; $5570: $04
	inc  b                                           ; $5571: $04
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
	inc  b                                           ; $557c: $04
	inc  b                                           ; $557d: $04
	dec  b                                           ; $557e: $05
	dec  b                                           ; $557f: $05
	dec  b                                           ; $5580: $05
	dec  b                                           ; $5581: $05
	dec  b                                           ; $5582: $05
	dec  b                                           ; $5583: $05
	dec  b                                           ; $5584: $05
	dec  b                                           ; $5585: $05
	dec  b                                           ; $5586: $05
	dec  b                                           ; $5587: $05
	dec  b                                           ; $5588: $05
	dec  b                                           ; $5589: $05
	dec  b                                           ; $558a: $05
	dec  b                                           ; $558b: $05
	dec  c                                           ; $558c: $0d
	dec  c                                           ; $558d: $0d
	dec  c                                           ; $558e: $0d
	dec  c                                           ; $558f: $0d
	dec  b                                           ; $5590: $05
	dec  b                                           ; $5591: $05
	dec  b                                           ; $5592: $05
	dec  b                                           ; $5593: $05
	dec  b                                           ; $5594: $05
	dec  b                                           ; $5595: $05
	dec  b                                           ; $5596: $05
	dec  b                                           ; $5597: $05
	dec  b                                           ; $5598: $05
	dec  b                                           ; $5599: $05
	dec  b                                           ; $559a: $05
	dec  b                                           ; $559b: $05
	dec  b                                           ; $559c: $05
	dec  b                                           ; $559d: $05
	dec  b                                           ; $559e: $05
	dec  b                                           ; $559f: $05
	dec  c                                           ; $55a0: $0d
	dec  c                                           ; $55a1: $0d
	dec  c                                           ; $55a2: $0d
	dec  c                                           ; $55a3: $0d
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
	dec  b                                           ; $55ae: $05
	dec  b                                           ; $55af: $05
	dec  b                                           ; $55b0: $05
	dec  b                                           ; $55b1: $05
	dec  b                                           ; $55b2: $05
	dec  b                                           ; $55b3: $05
	dec  c                                           ; $55b4: $0d
	dec  c                                           ; $55b5: $0d
	dec  c                                           ; $55b6: $0d
	dec  c                                           ; $55b7: $0d
	dec  c                                           ; $55b8: $0d
	dec  c                                           ; $55b9: $0d
	dec  c                                           ; $55ba: $0d
	dec  c                                           ; $55bb: $0d
	dec  c                                           ; $55bc: $0d
	dec  c                                           ; $55bd: $0d
	dec  c                                           ; $55be: $0d
	dec  c                                           ; $55bf: $0d
	dec  c                                           ; $55c0: $0d
	dec  c                                           ; $55c1: $0d
	dec  c                                           ; $55c2: $0d
	dec  c                                           ; $55c3: $0d
	dec  c                                           ; $55c4: $0d
	dec  c                                           ; $55c5: $0d
	dec  c                                           ; $55c6: $0d
	dec  c                                           ; $55c7: $0d
	dec  c                                           ; $55c8: $0d
	dec  c                                           ; $55c9: $0d
	dec  c                                           ; $55ca: $0d
	dec  c                                           ; $55cb: $0d
	dec  c                                           ; $55cc: $0d
	dec  c                                           ; $55cd: $0d
	dec  c                                           ; $55ce: $0d
	dec  c                                           ; $55cf: $0d
	dec  c                                           ; $55d0: $0d
	dec  c                                           ; $55d1: $0d
	dec  c                                           ; $55d2: $0d
	dec  c                                           ; $55d3: $0d
	dec  c                                           ; $55d4: $0d
	dec  c                                           ; $55d5: $0d
	dec  c                                           ; $55d6: $0d
	dec  c                                           ; $55d7: $0d
	dec  c                                           ; $55d8: $0d
	dec  c                                           ; $55d9: $0d
	dec  c                                           ; $55da: $0d
	dec  c                                           ; $55db: $0d
	dec  c                                           ; $55dc: $0d
	dec  c                                           ; $55dd: $0d
	dec  c                                           ; $55de: $0d
	dec  c                                           ; $55df: $0d
	ld   a, [de]                                     ; $55e0: $1a
	dec  de                                          ; $55e1: $1b
	inc  e                                           ; $55e2: $1c
	dec  e                                           ; $55e3: $1d
	ld   e, $1f                                      ; $55e4: $1e $1f
	jr   nz, jr_085_5609                             ; $55e6: $20 $21

	ld   [hl+], a                                    ; $55e8: $22
	ld   [hl+], a                                    ; $55e9: $22
	ld   [hl+], a                                    ; $55ea: $22
	ld   [hl+], a                                    ; $55eb: $22
	ld   [hl+], a                                    ; $55ec: $22
	ld   [hl+], a                                    ; $55ed: $22
	ld   [hl+], a                                    ; $55ee: $22
	inc  hl                                          ; $55ef: $23
	inc  h                                           ; $55f0: $24
	dec  h                                           ; $55f1: $25
	ld   h, $27                                      ; $55f2: $26 $27
	jr   z, jr_085_561f                              ; $55f4: $28 $29

	ld   a, [hl+]                                    ; $55f6: $2a
	dec  hl                                          ; $55f7: $2b
	inc  l                                           ; $55f8: $2c
	dec  l                                           ; $55f9: $2d
	ld   l, $2f                                      ; $55fa: $2e $2f
	jr   nc, jr_085_562e                             ; $55fc: $30 $30

	jr   nc, jr_085_5630                             ; $55fe: $30 $30

	jr   nc, @+$32                                   ; $5600: $30 $30

	ld   sp, $3332                                   ; $5602: $31 $32 $33
	inc  [hl]                                        ; $5605: $34
	jr   nc, jr_085_563d                             ; $5606: $30 $35

	dec  [hl]                                        ; $5608: $35

jr_085_5609:
	ld   [hl], $37                                   ; $5609: $36 $37
	jr   c, jr_085_5646                              ; $560b: $38 $39

	jr   nc, jr_085_5649                             ; $560d: $30 $3a

	dec  sp                                          ; $560f: $3b
	jr   nc, @+$32                                   ; $5610: $30 $30

	jr   nc, jr_085_5644                             ; $5612: $30 $30

	jr   nc, jr_085_5646                             ; $5614: $30 $30

	jr   nc, @+$3e                                   ; $5616: $30 $3c

	dec  a                                           ; $5618: $3d
	jr   nc, jr_085_564b                             ; $5619: $30 $30

	dec  [hl]                                        ; $561b: $35
	ld   a, $3f                                      ; $561c: $3e $3f
	ld   b, b                                        ; $561e: $40

jr_085_561f:
	jr   nc, jr_085_5651                             ; $561f: $30 $30

	jr   nc, jr_085_5653                             ; $5621: $30 $30

	jr   nc, jr_085_5655                             ; $5623: $30 $30

	jr   nc, jr_085_5657                             ; $5625: $30 $30

	jr   nc, jr_085_5659                             ; $5627: $30 $30

	jr   nc, jr_085_566c                             ; $5629: $30 $41

	ld   b, d                                        ; $562b: $42
	jr   nc, jr_085_565e                             ; $562c: $30 $30

jr_085_562e:
	jr   nc, jr_085_5665                             ; $562e: $30 $35

jr_085_5630:
	dec  [hl]                                        ; $5630: $35
	jr   nc, jr_085_5676                             ; $5631: $30 $43

	ld   b, h                                        ; $5633: $44
	ld   b, l                                        ; $5634: $45
	ld   b, [hl]                                     ; $5635: $46
	ld   b, a                                        ; $5636: $47
	jr   nc, jr_085_5669                             ; $5637: $30 $30

	jr   nc, jr_085_566b                             ; $5639: $30 $30

	jr   nc, jr_085_566d                             ; $563b: $30 $30

jr_085_563d:
	jr   nc, jr_085_566f                             ; $563d: $30 $30

	jr   nc, jr_085_5671                             ; $563f: $30 $30

	jr   nc, jr_085_5673                             ; $5641: $30 $30

	dec  [hl]                                        ; $5643: $35

jr_085_5644:
	ld   c, b                                        ; $5644: $48
	ld   c, c                                        ; $5645: $49

jr_085_5646:
	ld   c, d                                        ; $5646: $4a
	ld   c, e                                        ; $5647: $4b
	ld   c, h                                        ; $5648: $4c

jr_085_5649:
	ld   c, l                                        ; $5649: $4d
	ld   c, [hl]                                     ; $564a: $4e

jr_085_564b:
	ld   c, a                                        ; $564b: $4f
	ld   d, b                                        ; $564c: $50
	jr   nc, jr_085_567f                             ; $564d: $30 $30

	jr   nc, jr_085_5681                             ; $564f: $30 $30

jr_085_5651:
	jr   nc, jr_085_5683                             ; $5651: $30 $30

jr_085_5653:
	jr   nc, jr_085_5685                             ; $5653: $30 $30

jr_085_5655:
	jr   nc, jr_085_5687                             ; $5655: $30 $30

jr_085_5657:
	dec  [hl]                                        ; $5657: $35
	dec  [hl]                                        ; $5658: $35

jr_085_5659:
	ld   d, c                                        ; $5659: $51
	ld   d, d                                        ; $565a: $52
	ld   d, e                                        ; $565b: $53
	ld   d, h                                        ; $565c: $54
	ld   d, l                                        ; $565d: $55

jr_085_565e:
	ld   d, [hl]                                     ; $565e: $56
	ld   d, a                                        ; $565f: $57
	ld   e, b                                        ; $5660: $58
	ld   e, c                                        ; $5661: $59
	ld   e, d                                        ; $5662: $5a
	jr   nc, @+$32                                   ; $5663: $30 $30

jr_085_5665:
	jr   nc, jr_085_5697                             ; $5665: $30 $30

	jr   nc, jr_085_5699                             ; $5667: $30 $30

jr_085_5669:
	jr   nc, jr_085_56c6                             ; $5669: $30 $5b

jr_085_566b:
	dec  [hl]                                        ; $566b: $35

jr_085_566c:
	ld   e, h                                        ; $566c: $5c

jr_085_566d:
	ld   e, l                                        ; $566d: $5d
	ld   e, [hl]                                     ; $566e: $5e

jr_085_566f:
	ld   e, a                                        ; $566f: $5f
	ld   h, b                                        ; $5670: $60

jr_085_5671:
	ld   h, c                                        ; $5671: $61
	ld   h, d                                        ; $5672: $62

jr_085_5673:
	ld   h, e                                        ; $5673: $63
	ld   h, h                                        ; $5674: $64
	ld   h, l                                        ; $5675: $65

jr_085_5676:
	ld   h, [hl]                                     ; $5676: $66
	ld   h, a                                        ; $5677: $67
	jr   nc, jr_085_56aa                             ; $5678: $30 $30

	jr   nc, jr_085_56ac                             ; $567a: $30 $30

	jr   nc, jr_085_56e6                             ; $567c: $30 $68

	ld   l, c                                        ; $567e: $69

jr_085_567f:
	dec  [hl]                                        ; $567f: $35
	ld   l, d                                        ; $5680: $6a

jr_085_5681:
	ld   l, e                                        ; $5681: $6b
	ld   l, h                                        ; $5682: $6c

jr_085_5683:
	ld   l, l                                        ; $5683: $6d
	ld   l, [hl]                                     ; $5684: $6e

jr_085_5685:
	ld   l, a                                        ; $5685: $6f
	nop                                              ; $5686: $00

jr_085_5687:
	ld   bc, $0302                                   ; $5687: $01 $02 $03
	inc  b                                           ; $568a: $04
	dec  b                                           ; $568b: $05
	jr   nc, jr_085_56be                             ; $568c: $30 $30

	jr   nc, jr_085_56c0                             ; $568e: $30 $30

	jr   nc, jr_085_5698                             ; $5690: $30 $06

	rlca                                             ; $5692: $07
	ld   [$0a09], sp                                 ; $5693: $08 $09 $0a
	dec  bc                                          ; $5696: $0b

jr_085_5697:
	inc  c                                           ; $5697: $0c

jr_085_5698:
	dec  c                                           ; $5698: $0d

jr_085_5699:
	ld   c, $0f                                      ; $5699: $0e $0f
	db   $10                                         ; $569b: $10
	ld   de, $1312                                   ; $569c: $11 $12 $13
	inc  d                                           ; $569f: $14
	add  hl, de                                      ; $56a0: $19
	jr   nc, jr_085_56d3                             ; $56a1: $30 $30

	jr   nc, jr_085_56bc                             ; $56a3: $30 $17

	dec  d                                           ; $56a5: $15
	ld   d, $35                                      ; $56a6: $16 $35
	inc  bc                                          ; $56a8: $03
	inc  bc                                          ; $56a9: $03

jr_085_56aa:
	inc  bc                                          ; $56aa: $03
	inc  bc                                          ; $56ab: $03

jr_085_56ac:
	inc  bc                                          ; $56ac: $03
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
	inc  bc                                          ; $56b7: $03
	inc  bc                                          ; $56b8: $03
	inc  bc                                          ; $56b9: $03
	inc  bc                                          ; $56ba: $03
	inc  bc                                          ; $56bb: $03

jr_085_56bc:
	inc  bc                                          ; $56bc: $03
	inc  bc                                          ; $56bd: $03

jr_085_56be:
	inc  bc                                          ; $56be: $03
	inc  bc                                          ; $56bf: $03

jr_085_56c0:
	inc  bc                                          ; $56c0: $03
	inc  bc                                          ; $56c1: $03
	inc  bc                                          ; $56c2: $03
	inc  bc                                          ; $56c3: $03
	inc  bc                                          ; $56c4: $03
	inc  bc                                          ; $56c5: $03

jr_085_56c6:
	inc  bc                                          ; $56c6: $03
	inc  bc                                          ; $56c7: $03
	inc  bc                                          ; $56c8: $03
	inc  bc                                          ; $56c9: $03
	inc  bc                                          ; $56ca: $03
	inc  bc                                          ; $56cb: $03
	inc  bc                                          ; $56cc: $03
	inc  bc                                          ; $56cd: $03
	inc  bc                                          ; $56ce: $03
	inc  bc                                          ; $56cf: $03
	inc  hl                                          ; $56d0: $23
	inc  bc                                          ; $56d1: $03
	inc  bc                                          ; $56d2: $03

jr_085_56d3:
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
	inc  bc                                          ; $56df: $03
	inc  bc                                          ; $56e0: $03
	inc  bc                                          ; $56e1: $03
	inc  bc                                          ; $56e2: $03
	inc  bc                                          ; $56e3: $03
	inc  bc                                          ; $56e4: $03
	inc  bc                                          ; $56e5: $03

jr_085_56e6:
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
	inc  bc                                          ; $56f0: $03
	inc  bc                                          ; $56f1: $03
	inc  bc                                          ; $56f2: $03
	inc  bc                                          ; $56f3: $03
	inc  bc                                          ; $56f4: $03
	inc  bc                                          ; $56f5: $03
	inc  bc                                          ; $56f6: $03
	inc  bc                                          ; $56f7: $03
	inc  hl                                          ; $56f8: $23
	inc  bc                                          ; $56f9: $03
	inc  b                                           ; $56fa: $04
	inc  b                                           ; $56fb: $04
	inc  b                                           ; $56fc: $04
	inc  b                                           ; $56fd: $04
	inc  b                                           ; $56fe: $04
	inc  bc                                          ; $56ff: $03
	inc  bc                                          ; $5700: $03
	inc  bc                                          ; $5701: $03
	inc  bc                                          ; $5702: $03
	inc  bc                                          ; $5703: $03
	inc  bc                                          ; $5704: $03
	inc  bc                                          ; $5705: $03
	inc  bc                                          ; $5706: $03
	inc  bc                                          ; $5707: $03
	inc  bc                                          ; $5708: $03
	inc  bc                                          ; $5709: $03
	inc  bc                                          ; $570a: $03
	inc  bc                                          ; $570b: $03
	inc  b                                           ; $570c: $04
	inc  b                                           ; $570d: $04
	inc  b                                           ; $570e: $04
	inc  b                                           ; $570f: $04
	inc  b                                           ; $5710: $04
	inc  b                                           ; $5711: $04
	inc  b                                           ; $5712: $04
	inc  b                                           ; $5713: $04
	inc  b                                           ; $5714: $04
	inc  bc                                          ; $5715: $03
	inc  bc                                          ; $5716: $03
	inc  bc                                          ; $5717: $03
	inc  bc                                          ; $5718: $03
	inc  bc                                          ; $5719: $03
	inc  bc                                          ; $571a: $03
	inc  bc                                          ; $571b: $03
	inc  bc                                          ; $571c: $03
	inc  bc                                          ; $571d: $03
	inc  bc                                          ; $571e: $03
	inc  bc                                          ; $571f: $03
	inc  hl                                          ; $5720: $23
	inc  b                                           ; $5721: $04
	inc  b                                           ; $5722: $04
	inc  b                                           ; $5723: $04
	inc  b                                           ; $5724: $04
	inc  b                                           ; $5725: $04
	inc  b                                           ; $5726: $04
	inc  b                                           ; $5727: $04
	inc  b                                           ; $5728: $04
	inc  b                                           ; $5729: $04
	inc  b                                           ; $572a: $04
	inc  bc                                          ; $572b: $03
	inc  bc                                          ; $572c: $03
	inc  bc                                          ; $572d: $03
	inc  bc                                          ; $572e: $03
	inc  bc                                          ; $572f: $03
	inc  bc                                          ; $5730: $03
	inc  bc                                          ; $5731: $03
	inc  bc                                          ; $5732: $03
	inc  bc                                          ; $5733: $03
	inc  b                                           ; $5734: $04
	inc  b                                           ; $5735: $04
	inc  b                                           ; $5736: $04
	inc  b                                           ; $5737: $04
	inc  b                                           ; $5738: $04
	inc  b                                           ; $5739: $04
	inc  b                                           ; $573a: $04
	inc  b                                           ; $573b: $04
	inc  b                                           ; $573c: $04
	inc  b                                           ; $573d: $04
	inc  b                                           ; $573e: $04
	inc  b                                           ; $573f: $04
	inc  bc                                          ; $5740: $03
	inc  bc                                          ; $5741: $03
	inc  bc                                          ; $5742: $03
	inc  bc                                          ; $5743: $03
	inc  bc                                          ; $5744: $03
	inc  bc                                          ; $5745: $03
	inc  bc                                          ; $5746: $03
	inc  bc                                          ; $5747: $03
	inc  b                                           ; $5748: $04
	inc  b                                           ; $5749: $04
	inc  b                                           ; $574a: $04
	inc  b                                           ; $574b: $04
	inc  b                                           ; $574c: $04
	inc  b                                           ; $574d: $04
	inc  b                                           ; $574e: $04
	inc  b                                           ; $574f: $04
	inc  b                                           ; $5750: $04
	inc  b                                           ; $5751: $04
	inc  b                                           ; $5752: $04
	inc  b                                           ; $5753: $04
	inc  bc                                          ; $5754: $03
	inc  bc                                          ; $5755: $03
	inc  bc                                          ; $5756: $03
	inc  bc                                          ; $5757: $03
	inc  bc                                          ; $5758: $03
	inc  bc                                          ; $5759: $03
	inc  bc                                          ; $575a: $03
	inc  bc                                          ; $575b: $03
	inc  b                                           ; $575c: $04
	inc  b                                           ; $575d: $04
	inc  b                                           ; $575e: $04
	inc  b                                           ; $575f: $04
	inc  b                                           ; $5760: $04
	inc  b                                           ; $5761: $04
	inc  b                                           ; $5762: $04
	inc  b                                           ; $5763: $04
	inc  b                                           ; $5764: $04
	inc  b                                           ; $5765: $04
	inc  b                                           ; $5766: $04
	inc  b                                           ; $5767: $04
	inc  b                                           ; $5768: $04
	inc  bc                                          ; $5769: $03
	inc  bc                                          ; $576a: $03
	inc  bc                                          ; $576b: $03
	inc  bc                                          ; $576c: $03
	inc  bc                                          ; $576d: $03
	inc  bc                                          ; $576e: $03
	inc  bc                                          ; $576f: $03
	nop                                              ; $5770: $00
	ld   bc, $0101                                   ; $5771: $01 $01 $01
	inc  b                                           ; $5774: $04
	ld   bc, $0101                                   ; $5775: $01 $01 $01
	ld   bc, $0109                                   ; $5778: $01 $09 $01
	ld   bc, $0101                                   ; $577b: $01 $01 $01
	ld   bc, $0101                                   ; $577e: $01 $01 $01
	jr   z, jr_085_5784                              ; $5781: $28 $01

	daa                                              ; $5783: $27

jr_085_5784:
	db   $10                                         ; $5784: $10
	ld   de, $1212                                   ; $5785: $11 $12 $12
	ld   [de], a                                     ; $5788: $12
	dec  d                                           ; $5789: $15
	ld   [de], a                                     ; $578a: $12
	ld   [de], a                                     ; $578b: $12
	ld   [de], a                                     ; $578c: $12
	add  hl, de                                      ; $578d: $19
	ld   [de], a                                     ; $578e: $12
	ld   [de], a                                     ; $578f: $12
	ld   [de], a                                     ; $5790: $12
	dec  e                                           ; $5791: $1d
	ld   [de], a                                     ; $5792: $12
	ld   [de], a                                     ; $5793: $12
	ld   [de], a                                     ; $5794: $12
	dec  d                                           ; $5795: $15
	ld   [de], a                                     ; $5796: $12
	ld   d, $20                                      ; $5797: $16 $20
	ld   hl, $2322                                   ; $5799: $21 $22 $23
	ld   [de], a                                     ; $579c: $12
	ld   [de], a                                     ; $579d: $12
	ld   [de], a                                     ; $579e: $12
	ld   [de], a                                     ; $579f: $12
	ld   [de], a                                     ; $57a0: $12
	ld   [de], a                                     ; $57a1: $12
	ld   [de], a                                     ; $57a2: $12
	ld   [de], a                                     ; $57a3: $12
	ld   [de], a                                     ; $57a4: $12
	ld   [de], a                                     ; $57a5: $12
	ld   [de], a                                     ; $57a6: $12
	ld   [de], a                                     ; $57a7: $12
	ld   [de], a                                     ; $57a8: $12
	ld   h, $12                                      ; $57a9: $26 $12
	ld   d, $30                                      ; $57ab: $16 $30
	ld   sp, $3332                                   ; $57ad: $31 $32 $33
	inc  [hl]                                        ; $57b0: $34
	dec  [hl]                                        ; $57b1: $35
	ld   [hl], $37                                   ; $57b2: $36 $37
	jr   c, jr_085_57ef                              ; $57b4: $38 $39

	ld   a, [hl-]                                    ; $57b6: $3a
	dec  sp                                          ; $57b7: $3b
	inc  d                                           ; $57b8: $14
	inc  d                                           ; $57b9: $14
	inc  d                                           ; $57ba: $14
	inc  d                                           ; $57bb: $14
	inc  d                                           ; $57bc: $14
	inc  d                                           ; $57bd: $14
	inc  d                                           ; $57be: $14
	inc  de                                          ; $57bf: $13
	ld   b, b                                        ; $57c0: $40
	ld   b, c                                        ; $57c1: $41
	ld   b, d                                        ; $57c2: $42
	ld   b, e                                        ; $57c3: $43
	ld   b, h                                        ; $57c4: $44
	ld   b, l                                        ; $57c5: $45
	ld   h, [hl]                                     ; $57c6: $66
	ld   b, a                                        ; $57c7: $47
	ld   c, b                                        ; $57c8: $48
	ld   h, [hl]                                     ; $57c9: $66
	ld   c, d                                        ; $57ca: $4a
	ld   c, e                                        ; $57cb: $4b
	ld   c, h                                        ; $57cc: $4c
	ld   c, l                                        ; $57cd: $4d
	ld   c, [hl]                                     ; $57ce: $4e
	ld   c, a                                        ; $57cf: $4f
	dec  h                                           ; $57d0: $25
	inc  h                                           ; $57d1: $24
	rra                                              ; $57d2: $1f
	ld   e, $50                                      ; $57d3: $1e $50
	ld   d, c                                        ; $57d5: $51
	ld   d, d                                        ; $57d6: $52
	ld   d, e                                        ; $57d7: $53
	ld   d, h                                        ; $57d8: $54
	ld   d, l                                        ; $57d9: $55
	ld   h, [hl]                                     ; $57da: $66
	ld   d, a                                        ; $57db: $57
	ld   e, b                                        ; $57dc: $58
	ld   h, [hl]                                     ; $57dd: $66
	ld   e, d                                        ; $57de: $5a
	ld   e, e                                        ; $57df: $5b
	ld   e, h                                        ; $57e0: $5c
	ld   e, l                                        ; $57e1: $5d
	ld   e, [hl]                                     ; $57e2: $5e
	ld   e, a                                        ; $57e3: $5f
	rrca                                             ; $57e4: $0f
	ld   c, $0d                                      ; $57e5: $0e $0d
	inc  c                                           ; $57e7: $0c
	ld   h, b                                        ; $57e8: $60
	ld   b, c                                        ; $57e9: $41
	ld   h, d                                        ; $57ea: $62
	ld   b, e                                        ; $57eb: $43
	ld   h, h                                        ; $57ec: $64
	ld   h, l                                        ; $57ed: $65
	ld   h, [hl]                                     ; $57ee: $66

jr_085_57ef:
	ld   h, a                                        ; $57ef: $67
	ld   l, b                                        ; $57f0: $68
	ld   h, [hl]                                     ; $57f1: $66
	ld   l, d                                        ; $57f2: $6a
	ld   l, e                                        ; $57f3: $6b
	ld   l, h                                        ; $57f4: $6c
	ld   l, l                                        ; $57f5: $6d
	ld   l, [hl]                                     ; $57f6: $6e
	ld   l, a                                        ; $57f7: $6f
	inc  e                                           ; $57f8: $1c
	dec  de                                          ; $57f9: $1b
	ld   a, [de]                                     ; $57fa: $1a
	jr   jr_085_586d                                 ; $57fb: $18 $70

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
	dec  bc                                          ; $580c: $0b
	ld   a, [bc]                                     ; $580d: $0a
	ld   [$0007], sp                                 ; $580e: $08 $07 $00
	ld   bc, $0302                                   ; $5811: $01 $02 $03
	inc  b                                           ; $5814: $04
	dec  b                                           ; $5815: $05
	ld   b, $07                                      ; $5816: $06 $07
	ld   [$0a09], sp                                 ; $5818: $08 $09 $0a
	dec  bc                                          ; $581b: $0b
	inc  c                                           ; $581c: $0c
	dec  c                                           ; $581d: $0d
	ld   h, e                                        ; $581e: $63
	ld   h, c                                        ; $581f: $61
	ld   l, c                                        ; $5820: $69
	ld   [de], a                                     ; $5821: $12
	ld   [de], a                                     ; $5822: $12
	ld   d, $59                                      ; $5823: $16 $59
	ld   d, [hl]                                     ; $5825: $56
	ld   c, c                                        ; $5826: $49
	ld   b, [hl]                                     ; $5827: $46
	ccf                                              ; $5828: $3f
	ld   a, $3e                                      ; $5829: $3e $3e
	dec  a                                           ; $582b: $3d
	inc  a                                           ; $582c: $3c
	cpl                                              ; $582d: $2f
	ld   l, $2d                                      ; $582e: $2e $2d
	inc  l                                           ; $5830: $2c
	dec  hl                                          ; $5831: $2b
	ld   a, [hl+]                                    ; $5832: $2a
	add  hl, hl                                      ; $5833: $29
	ld   b, $05                                      ; $5834: $06 $05
	inc  bc                                          ; $5836: $03
	ld   [bc], a                                     ; $5837: $02
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

jr_085_586d:
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
	inc  bc                                          ; $587c: $03
	inc  bc                                          ; $587d: $03
	inc  bc                                          ; $587e: $03
	inc  bc                                          ; $587f: $03
	inc  bc                                          ; $5880: $03
	inc  bc                                          ; $5881: $03
	inc  bc                                          ; $5882: $03
	inc  bc                                          ; $5883: $03
	inc  bc                                          ; $5884: $03
	inc  bc                                          ; $5885: $03
	inc  bc                                          ; $5886: $03
	inc  bc                                          ; $5887: $03
	inc  b                                           ; $5888: $04
	inc  b                                           ; $5889: $04
	inc  b                                           ; $588a: $04
	inc  b                                           ; $588b: $04
	inc  b                                           ; $588c: $04
	inc  bc                                          ; $588d: $03
	inc  bc                                          ; $588e: $03
	inc  b                                           ; $588f: $04
	inc  b                                           ; $5890: $04
	inc  bc                                          ; $5891: $03
	inc  b                                           ; $5892: $04
	inc  b                                           ; $5893: $04
	inc  bc                                          ; $5894: $03
	inc  bc                                          ; $5895: $03
	inc  bc                                          ; $5896: $03
	inc  bc                                          ; $5897: $03
	inc  bc                                          ; $5898: $03
	inc  bc                                          ; $5899: $03
	inc  bc                                          ; $589a: $03
	inc  bc                                          ; $589b: $03
	inc  b                                           ; $589c: $04
	inc  b                                           ; $589d: $04
	inc  b                                           ; $589e: $04
	inc  b                                           ; $589f: $04
	inc  b                                           ; $58a0: $04
	inc  bc                                          ; $58a1: $03
	inc  bc                                          ; $58a2: $03
	inc  b                                           ; $58a3: $04
	inc  b                                           ; $58a4: $04
	inc  bc                                          ; $58a5: $03
	inc  b                                           ; $58a6: $04
	inc  b                                           ; $58a7: $04
	inc  bc                                          ; $58a8: $03
	inc  bc                                          ; $58a9: $03
	inc  bc                                          ; $58aa: $03
	inc  bc                                          ; $58ab: $03
	inc  bc                                          ; $58ac: $03
	inc  bc                                          ; $58ad: $03
	inc  bc                                          ; $58ae: $03
	inc  bc                                          ; $58af: $03
	inc  b                                           ; $58b0: $04
	inc  b                                           ; $58b1: $04
	inc  b                                           ; $58b2: $04
	inc  b                                           ; $58b3: $04
	inc  b                                           ; $58b4: $04
	inc  bc                                          ; $58b5: $03
	inc  bc                                          ; $58b6: $03
	inc  b                                           ; $58b7: $04
	inc  b                                           ; $58b8: $04
	inc  bc                                          ; $58b9: $03
	inc  b                                           ; $58ba: $04
	inc  b                                           ; $58bb: $04
	inc  bc                                          ; $58bc: $03
	inc  bc                                          ; $58bd: $03
	inc  bc                                          ; $58be: $03
	inc  bc                                          ; $58bf: $03
	inc  bc                                          ; $58c0: $03
	inc  bc                                          ; $58c1: $03
	inc  bc                                          ; $58c2: $03
	inc  bc                                          ; $58c3: $03
	inc  b                                           ; $58c4: $04
	inc  b                                           ; $58c5: $04
	inc  b                                           ; $58c6: $04
	inc  bc                                          ; $58c7: $03
	inc  bc                                          ; $58c8: $03
	inc  bc                                          ; $58c9: $03
	inc  bc                                          ; $58ca: $03
	inc  bc                                          ; $58cb: $03
	dec  b                                           ; $58cc: $05
	inc  bc                                          ; $58cd: $03
	dec  b                                           ; $58ce: $05
	dec  b                                           ; $58cf: $05
	dec  b                                           ; $58d0: $05
	dec  b                                           ; $58d1: $05
	dec  b                                           ; $58d2: $05
	inc  bc                                          ; $58d3: $03
	inc  bc                                          ; $58d4: $03
	inc  bc                                          ; $58d5: $03
	inc  bc                                          ; $58d6: $03
	inc  bc                                          ; $58d7: $03
	dec  c                                           ; $58d8: $0d
	dec  c                                           ; $58d9: $0d
	dec  c                                           ; $58da: $0d
	dec  c                                           ; $58db: $0d
	dec  c                                           ; $58dc: $0d
	dec  c                                           ; $58dd: $0d
	dec  c                                           ; $58de: $0d
	dec  c                                           ; $58df: $0d
	dec  c                                           ; $58e0: $0d
	dec  c                                           ; $58e1: $0d
	dec  c                                           ; $58e2: $0d
	dec  c                                           ; $58e3: $0d
	dec  c                                           ; $58e4: $0d
	dec  c                                           ; $58e5: $0d
	dec  b                                           ; $58e6: $05
	dec  b                                           ; $58e7: $05
	dec  b                                           ; $58e8: $05
	inc  bc                                          ; $58e9: $03
	inc  bc                                          ; $58ea: $03
	inc  bc                                          ; $58eb: $03
	dec  b                                           ; $58ec: $05
	dec  b                                           ; $58ed: $05
	dec  b                                           ; $58ee: $05
	dec  b                                           ; $58ef: $05
	dec  b                                           ; $58f0: $05
	dec  b                                           ; $58f1: $05
	dec  b                                           ; $58f2: $05
	dec  b                                           ; $58f3: $05
	dec  b                                           ; $58f4: $05
	dec  b                                           ; $58f5: $05
	dec  b                                           ; $58f6: $05
	dec  b                                           ; $58f7: $05
	dec  b                                           ; $58f8: $05
	dec  b                                           ; $58f9: $05
	dec  b                                           ; $58fa: $05
	dec  b                                           ; $58fb: $05
	dec  b                                           ; $58fc: $05
	dec  b                                           ; $58fd: $05
	dec  b                                           ; $58fe: $05
	dec  b                                           ; $58ff: $05
	nop                                              ; $5900: $00
	ld   bc, $0302                                   ; $5901: $01 $02 $03
	inc  b                                           ; $5904: $04
	dec  b                                           ; $5905: $05
	ld   b, $06                                      ; $5906: $06 $06
	ld   [$0a09], sp                                 ; $5908: $08 $09 $0a
	dec  bc                                          ; $590b: $0b
	ld   b, $06                                      ; $590c: $06 $06
	ld   c, $0f                                      ; $590e: $0e $0f
	jr   nz, jr_085_5933                             ; $5910: $20 $21

	ld   [hl+], a                                    ; $5912: $22
	inc  hl                                          ; $5913: $23
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
	jr   nc, jr_085_5957                             ; $5924: $30 $31

	ld   [hl-], a                                    ; $5926: $32
	inc  sp                                          ; $5927: $33
	jr   nz, @+$23                                   ; $5928: $20 $21

	ld   [hl+], a                                    ; $592a: $22
	inc  hl                                          ; $592b: $23
	inc  h                                           ; $592c: $24
	dec  h                                           ; $592d: $25
	ld   h, $27                                      ; $592e: $26 $27
	jr   z, jr_085_595b                              ; $5930: $28 $29

	inc  h                                           ; $5932: $24

jr_085_5933:
	dec  hl                                          ; $5933: $2b
	inc  l                                           ; $5934: $2c
	dec  l                                           ; $5935: $2d
	ld   l, $2f                                      ; $5936: $2e $2f
	inc  h                                           ; $5938: $24
	dec  h                                           ; $5939: $25
	ld   h, $33                                      ; $593a: $26 $33
	jr   nc, jr_085_596f                             ; $593c: $30 $31

	ld   [hl-], a                                    ; $593e: $32
	inc  sp                                          ; $593f: $33
	inc  [hl]                                        ; $5940: $34
	dec  [hl]                                        ; $5941: $35
	ld   [hl], $37                                   ; $5942: $36 $37
	jr   c, jr_085_597f                              ; $5944: $38 $39

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

jr_085_5957:
	ld   b, a                                        ; $5957: $47
	ld   c, b                                        ; $5958: $48
	ld   c, c                                        ; $5959: $49
	ld   c, d                                        ; $595a: $4a

jr_085_595b:
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

jr_085_596f:
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

jr_085_597f:
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
	daa                                              ; $59b3: $27
	db   $10                                         ; $59b4: $10
	ld   de, $1312                                   ; $59b5: $11 $12 $13
	inc  d                                           ; $59b8: $14
	dec  d                                           ; $59b9: $15
	ld   d, $17                                      ; $59ba: $16 $17
	jr   jr_085_59d7                                 ; $59bc: $18 $19

	ld   a, [de]                                     ; $59be: $1a
	dec  de                                          ; $59bf: $1b
	inc  e                                           ; $59c0: $1c
	dec  e                                           ; $59c1: $1d
	ld   e, $1f                                      ; $59c2: $1e $1f
	ld   a, [hl+]                                    ; $59c4: $2a
	dec  c                                           ; $59c5: $0d
	inc  c                                           ; $59c6: $0c
	rlca                                             ; $59c7: $07
	inc  b                                           ; $59c8: $04
	inc  b                                           ; $59c9: $04
	inc  b                                           ; $59ca: $04
	inc  b                                           ; $59cb: $04
	inc  b                                           ; $59cc: $04
	inc  b                                           ; $59cd: $04
	inc  b                                           ; $59ce: $04
	inc  b                                           ; $59cf: $04
	inc  b                                           ; $59d0: $04
	inc  b                                           ; $59d1: $04
	inc  b                                           ; $59d2: $04
	inc  b                                           ; $59d3: $04
	inc  b                                           ; $59d4: $04
	inc  b                                           ; $59d5: $04
	inc  b                                           ; $59d6: $04

jr_085_59d7:
	inc  b                                           ; $59d7: $04
	inc  c                                           ; $59d8: $0c
	dec  bc                                          ; $59d9: $0b
	dec  bc                                          ; $59da: $0b
	dec  bc                                          ; $59db: $0b
	inc  b                                           ; $59dc: $04
	inc  bc                                          ; $59dd: $03
	inc  b                                           ; $59de: $04
	inc  b                                           ; $59df: $04
	inc  b                                           ; $59e0: $04
	inc  b                                           ; $59e1: $04
	inc  b                                           ; $59e2: $04
	inc  b                                           ; $59e3: $04
	inc  b                                           ; $59e4: $04
	inc  b                                           ; $59e5: $04
	inc  b                                           ; $59e6: $04
	inc  b                                           ; $59e7: $04
	inc  b                                           ; $59e8: $04
	inc  b                                           ; $59e9: $04
	inc  b                                           ; $59ea: $04
	inc  b                                           ; $59eb: $04
	dec  bc                                          ; $59ec: $0b
	dec  bc                                          ; $59ed: $0b
	dec  bc                                          ; $59ee: $0b
	dec  bc                                          ; $59ef: $0b
	inc  bc                                          ; $59f0: $03
	inc  bc                                          ; $59f1: $03
	inc  bc                                          ; $59f2: $03
	inc  bc                                          ; $59f3: $03
	inc  bc                                          ; $59f4: $03
	inc  b                                           ; $59f5: $04
	inc  b                                           ; $59f6: $04
	inc  b                                           ; $59f7: $04
	inc  b                                           ; $59f8: $04
	inc  b                                           ; $59f9: $04
	inc  bc                                          ; $59fa: $03
	inc  bc                                          ; $59fb: $03
	inc  bc                                          ; $59fc: $03
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
	inc  b                                           ; $5a0f: $04
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
	inc  b                                           ; $5a23: $04
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
	inc  bc                                          ; $5a37: $03
	inc  bc                                          ; $5a38: $03
	inc  bc                                          ; $5a39: $03
	inc  bc                                          ; $5a3a: $03
	inc  bc                                          ; $5a3b: $03
	dec  bc                                          ; $5a3c: $0b
	dec  bc                                          ; $5a3d: $0b
	dec  bc                                          ; $5a3e: $0b
	dec  bc                                          ; $5a3f: $0b
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
	inc  b                                           ; $5a5f: $04
	inc  b                                           ; $5a60: $04
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
	inc  bc                                          ; $5a8c: $03
	inc  bc                                          ; $5a8d: $03
	inc  bc                                          ; $5a8e: $03
	inc  bc                                          ; $5a8f: $03
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
	jr   nz, jr_085_5ac3                             ; $5aa0: $20 $21

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
	jr   nc, jr_085_5ae7                             ; $5ab4: $30 $31

	ld   [hl-], a                                    ; $5ab6: $32
	inc  sp                                          ; $5ab7: $33
	jr   nz, @+$23                                   ; $5ab8: $20 $21

	ld   [hl+], a                                    ; $5aba: $22
	inc  hl                                          ; $5abb: $23
	inc  h                                           ; $5abc: $24
	dec  h                                           ; $5abd: $25
	ld   h, $27                                      ; $5abe: $26 $27
	jr   z, jr_085_5aeb                              ; $5ac0: $28 $29

	ld   a, [hl+]                                    ; $5ac2: $2a

jr_085_5ac3:
	dec  hl                                          ; $5ac3: $2b
	inc  l                                           ; $5ac4: $2c
	dec  l                                           ; $5ac5: $2d
	ld   l, $2f                                      ; $5ac6: $2e $2f
	inc  h                                           ; $5ac8: $24
	dec  h                                           ; $5ac9: $25
	ld   h, $27                                      ; $5aca: $26 $27
	jr   nc, jr_085_5aff                             ; $5acc: $30 $31

	ld   [hl-], a                                    ; $5ace: $32
	inc  sp                                          ; $5acf: $33
	inc  [hl]                                        ; $5ad0: $34
	dec  [hl]                                        ; $5ad1: $35
	ld   [hl], $37                                   ; $5ad2: $36 $37
	jr   c, jr_085_5b0f                              ; $5ad4: $38 $39

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

jr_085_5ae7:
	ld   b, a                                        ; $5ae7: $47
	ld   c, b                                        ; $5ae8: $48
	ld   c, c                                        ; $5ae9: $49
	ld   c, d                                        ; $5aea: $4a

jr_085_5aeb:
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

jr_085_5aff:
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

jr_085_5b0f:
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
	jr   jr_085_5b67                                 ; $5b4c: $18 $19

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
	inc  bc                                          ; $5b61: $03
	inc  bc                                          ; $5b62: $03
	inc  bc                                          ; $5b63: $03
	inc  bc                                          ; $5b64: $03
	inc  bc                                          ; $5b65: $03
	inc  bc                                          ; $5b66: $03

jr_085_5b67:
	inc  bc                                          ; $5b67: $03
	dec  bc                                          ; $5b68: $0b
	dec  bc                                          ; $5b69: $0b
	dec  bc                                          ; $5b6a: $0b
	dec  bc                                          ; $5b6b: $0b
	inc  bc                                          ; $5b6c: $03
	inc  bc                                          ; $5b6d: $03
	inc  bc                                          ; $5b6e: $03
	inc  bc                                          ; $5b6f: $03
	inc  b                                           ; $5b70: $04
	inc  bc                                          ; $5b71: $03
	inc  bc                                          ; $5b72: $03
	inc  bc                                          ; $5b73: $03
	inc  bc                                          ; $5b74: $03
	inc  bc                                          ; $5b75: $03
	inc  bc                                          ; $5b76: $03
	inc  bc                                          ; $5b77: $03
	inc  bc                                          ; $5b78: $03
	inc  bc                                          ; $5b79: $03
	inc  b                                           ; $5b7a: $04
	inc  b                                           ; $5b7b: $04
	dec  bc                                          ; $5b7c: $0b
	dec  bc                                          ; $5b7d: $0b
	dec  bc                                          ; $5b7e: $0b
	dec  bc                                          ; $5b7f: $0b
	inc  bc                                          ; $5b80: $03
	inc  b                                           ; $5b81: $04
	inc  bc                                          ; $5b82: $03
	inc  b                                           ; $5b83: $04
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
	inc  b                                           ; $5b8f: $04
	dec  bc                                          ; $5b90: $0b
	dec  bc                                          ; $5b91: $0b
	dec  bc                                          ; $5b92: $0b
	dec  bc                                          ; $5b93: $0b
	inc  bc                                          ; $5b94: $03
	inc  b                                           ; $5b95: $04
	inc  bc                                          ; $5b96: $03
	inc  b                                           ; $5b97: $04
	inc  bc                                          ; $5b98: $03
	inc  bc                                          ; $5b99: $03
	inc  bc                                          ; $5b9a: $03
	inc  bc                                          ; $5b9b: $03
	inc  b                                           ; $5b9c: $04
	inc  bc                                          ; $5b9d: $03
	inc  bc                                          ; $5b9e: $03
	inc  bc                                          ; $5b9f: $03
	inc  bc                                          ; $5ba0: $03
	inc  bc                                          ; $5ba1: $03
	inc  b                                           ; $5ba2: $04
	inc  b                                           ; $5ba3: $04
	dec  bc                                          ; $5ba4: $0b
	dec  bc                                          ; $5ba5: $0b
	dec  bc                                          ; $5ba6: $0b
	dec  bc                                          ; $5ba7: $0b
	inc  bc                                          ; $5ba8: $03
	inc  bc                                          ; $5ba9: $03
	inc  b                                           ; $5baa: $04
	inc  bc                                          ; $5bab: $03
	inc  b                                           ; $5bac: $04
	inc  b                                           ; $5bad: $04
	inc  bc                                          ; $5bae: $03
	inc  b                                           ; $5baf: $04
	inc  b                                           ; $5bb0: $04
	inc  bc                                          ; $5bb1: $03
	inc  bc                                          ; $5bb2: $03
	inc  bc                                          ; $5bb3: $03
	inc  bc                                          ; $5bb4: $03
	inc  b                                           ; $5bb5: $04
	inc  bc                                          ; $5bb6: $03
	inc  b                                           ; $5bb7: $04
	inc  c                                           ; $5bb8: $0c
	dec  bc                                          ; $5bb9: $0b
	dec  bc                                          ; $5bba: $0b
	dec  bc                                          ; $5bbb: $0b
	dec  b                                           ; $5bbc: $05
	inc  bc                                          ; $5bbd: $03
	inc  bc                                          ; $5bbe: $03
	inc  bc                                          ; $5bbf: $03
	inc  bc                                          ; $5bc0: $03
	inc  bc                                          ; $5bc1: $03
	inc  bc                                          ; $5bc2: $03
	inc  b                                           ; $5bc3: $04
	inc  bc                                          ; $5bc4: $03
	inc  bc                                          ; $5bc5: $03
	inc  bc                                          ; $5bc6: $03
	inc  bc                                          ; $5bc7: $03
	inc  bc                                          ; $5bc8: $03
	inc  bc                                          ; $5bc9: $03
	dec  b                                           ; $5bca: $05
	dec  b                                           ; $5bcb: $05
	dec  c                                           ; $5bcc: $0d
	dec  c                                           ; $5bcd: $0d
	dec  bc                                          ; $5bce: $0b
	dec  bc                                          ; $5bcf: $0b
	inc  bc                                          ; $5bd0: $03
	inc  bc                                          ; $5bd1: $03
	inc  b                                           ; $5bd2: $04
	inc  bc                                          ; $5bd3: $03
	inc  bc                                          ; $5bd4: $03
	inc  bc                                          ; $5bd5: $03
	inc  bc                                          ; $5bd6: $03
	inc  b                                           ; $5bd7: $04
	inc  bc                                          ; $5bd8: $03
	dec  b                                           ; $5bd9: $05
	dec  b                                           ; $5bda: $05
	dec  b                                           ; $5bdb: $05
	dec  b                                           ; $5bdc: $05
	inc  bc                                          ; $5bdd: $03
	inc  b                                           ; $5bde: $04
	inc  b                                           ; $5bdf: $04
	inc  c                                           ; $5be0: $0c
	dec  bc                                          ; $5be1: $0b
	dec  bc                                          ; $5be2: $0b
	dec  c                                           ; $5be3: $0d
	inc  bc                                          ; $5be4: $03
	inc  bc                                          ; $5be5: $03
	inc  b                                           ; $5be6: $04
	dec  b                                           ; $5be7: $05
	dec  b                                           ; $5be8: $05
	dec  b                                           ; $5be9: $05
	inc  bc                                          ; $5bea: $03
	inc  bc                                          ; $5beb: $03
	inc  bc                                          ; $5bec: $03
	inc  bc                                          ; $5bed: $03
	dec  b                                           ; $5bee: $05
	inc  bc                                          ; $5bef: $03
	inc  bc                                          ; $5bf0: $03
	inc  bc                                          ; $5bf1: $03
	dec  b                                           ; $5bf2: $05
	dec  b                                           ; $5bf3: $05
	dec  c                                           ; $5bf4: $0d
	dec  c                                           ; $5bf5: $0d
	inc  c                                           ; $5bf6: $0c
	dec  bc                                          ; $5bf7: $0b
	dec  bc                                          ; $5bf8: $0b
	dec  bc                                          ; $5bf9: $0b
	inc  c                                           ; $5bfa: $0c
	dec  c                                           ; $5bfb: $0d
	dec  c                                           ; $5bfc: $0d
	dec  bc                                          ; $5bfd: $0b
	dec  bc                                          ; $5bfe: $0b
	dec  bc                                          ; $5bff: $0b
	dec  bc                                          ; $5c00: $0b
	dec  c                                           ; $5c01: $0d
	dec  c                                           ; $5c02: $0d
	dec  c                                           ; $5c03: $0d
	dec  bc                                          ; $5c04: $0b
	dec  bc                                          ; $5c05: $0b
	inc  c                                           ; $5c06: $0c
	inc  c                                           ; $5c07: $0c
	inc  c                                           ; $5c08: $0c
	inc  c                                           ; $5c09: $0c
	dec  bc                                          ; $5c0a: $0b
	dec  c                                           ; $5c0b: $0d
	dec  c                                           ; $5c0c: $0d
	dec  c                                           ; $5c0d: $0d
	dec  c                                           ; $5c0e: $0d
	dec  c                                           ; $5c0f: $0d
	dec  c                                           ; $5c10: $0d
	dec  c                                           ; $5c11: $0d
	dec  c                                           ; $5c12: $0d
	dec  c                                           ; $5c13: $0d
	dec  c                                           ; $5c14: $0d
	dec  c                                           ; $5c15: $0d
	dec  c                                           ; $5c16: $0d
	dec  c                                           ; $5c17: $0d
	dec  c                                           ; $5c18: $0d
	dec  c                                           ; $5c19: $0d
	dec  c                                           ; $5c1a: $0d
	dec  c                                           ; $5c1b: $0d
	dec  c                                           ; $5c1c: $0d
	dec  c                                           ; $5c1d: $0d
	dec  c                                           ; $5c1e: $0d
	dec  c                                           ; $5c1f: $0d
	ld   bc, $0202                                   ; $5c20: $01 $02 $02
	ld   [bc], a                                     ; $5c23: $02
	ld   [bc], a                                     ; $5c24: $02
	inc  bc                                          ; $5c25: $03
	inc  b                                           ; $5c26: $04
	dec  b                                           ; $5c27: $05
	ld   b, $06                                      ; $5c28: $06 $06
	ld   b, $06                                      ; $5c2a: $06 $06
	ld   b, $06                                      ; $5c2c: $06 $06
	ld   b, $06                                      ; $5c2e: $06 $06
	ld   b, $06                                      ; $5c30: $06 $06
	ld   b, $69                                      ; $5c32: $06 $69
	rlca                                             ; $5c34: $07
	ld   [$0a09], sp                                 ; $5c35: $08 $09 $0a
	ld   a, [bc]                                     ; $5c38: $0a

Call_085_5c39:
	dec  bc                                          ; $5c39: $0b
	inc  c                                           ; $5c3a: $0c
	dec  c                                           ; $5c3b: $0d
	ld   c, $0f                                      ; $5c3c: $0e $0f
	db   $10                                         ; $5c3e: $10
	db   $10                                         ; $5c3f: $10
	db   $10                                         ; $5c40: $10
	db   $10                                         ; $5c41: $10
	db   $10                                         ; $5c42: $10
	db   $10                                         ; $5c43: $10
	db   $10                                         ; $5c44: $10
	db   $10                                         ; $5c45: $10
	db   $10                                         ; $5c46: $10
	ld   l, l                                        ; $5c47: $6d
	ld   de, $1312                                   ; $5c48: $11 $12 $13
	ld   a, [bc]                                     ; $5c4b: $0a
	ld   a, [bc]                                     ; $5c4c: $0a
	ld   a, [bc]                                     ; $5c4d: $0a
	inc  d                                           ; $5c4e: $14
	dec  d                                           ; $5c4f: $15
	ld   d, $0d                                      ; $5c50: $16 $0d
	ld   c, $17                                      ; $5c52: $0e $17
	jr   @+$12                                       ; $5c54: $18 $10

	db   $10                                         ; $5c56: $10
	db   $10                                         ; $5c57: $10
	db   $10                                         ; $5c58: $10
	ld   a, c                                        ; $5c59: $79
	db   $10                                         ; $5c5a: $10
	ld   l, l                                        ; $5c5b: $6d
	add  hl, de                                      ; $5c5c: $19
	ld   a, [de]                                     ; $5c5d: $1a
	dec  de                                          ; $5c5e: $1b
	inc  e                                           ; $5c5f: $1c
	dec  e                                           ; $5c60: $1d
	ld   e, $1f                                      ; $5c61: $1e $1f
	jr   nz, jr_085_5c70                             ; $5c63: $20 $0b

	ld   hl, $2322                                   ; $5c65: $21 $22 $23
	inc  h                                           ; $5c68: $24
	dec  h                                           ; $5c69: $25
	dec  h                                           ; $5c6a: $25
	ld   h, $6a                                      ; $5c6b: $26 $6a
	ld   l, e                                        ; $5c6d: $6b
	ld   l, h                                        ; $5c6e: $6c
	ld   l, l                                        ; $5c6f: $6d

jr_085_5c70:
	daa                                              ; $5c70: $27
	jr   z, @+$2b                                    ; $5c71: $28 $29

	ld   a, [hl+]                                    ; $5c73: $2a
	dec  hl                                          ; $5c74: $2b
	inc  l                                           ; $5c75: $2c
	dec  l                                           ; $5c76: $2d
	ld   a, [bc]                                     ; $5c77: $0a
	ld   a, [bc]                                     ; $5c78: $0a
	ld   a, [bc]                                     ; $5c79: $0a
	dec  bc                                          ; $5c7a: $0b
	ld   l, $2f                                      ; $5c7b: $2e $2f
	jr   nc, jr_085_5cb0                             ; $5c7d: $30 $31

	ld   [hl-], a                                    ; $5c7f: $32
	ld   [hl], h                                     ; $5c80: $74
	ld   [hl], l                                     ; $5c81: $75
	halt                                             ; $5c82: $76
	ld   l, l                                        ; $5c83: $6d
	inc  sp                                          ; $5c84: $33
	inc  [hl]                                        ; $5c85: $34
	dec  [hl]                                        ; $5c86: $35
	ld   [hl], $37                                   ; $5c87: $36 $37
	jr   c, jr_085_5cc4                              ; $5c89: $38 $39

	ld   a, [bc]                                     ; $5c8b: $0a
	ld   a, [bc]                                     ; $5c8c: $0a
	ld   a, [bc]                                     ; $5c8d: $0a
	ld   a, [bc]                                     ; $5c8e: $0a
	ld   a, [bc]                                     ; $5c8f: $0a
	ld   a, [bc]                                     ; $5c90: $0a
	ld   a, [bc]                                     ; $5c91: $0a
	ld   a, [hl-]                                    ; $5c92: $3a
	dec  sp                                          ; $5c93: $3b
	ld   a, d                                        ; $5c94: $7a
	ld   sp, $7c7b                                   ; $5c95: $31 $7b $7c
	ld   de, $3d3c                                   ; $5c98: $11 $3c $3d
	ld   a, $3f                                      ; $5c9b: $3e $3f
	ld   b, b                                        ; $5c9d: $40
	ld   b, c                                        ; $5c9e: $41
	ld   b, d                                        ; $5c9f: $42
	ld   b, e                                        ; $5ca0: $43
	ld   b, h                                        ; $5ca1: $44
	ld   a, [bc]                                     ; $5ca2: $0a
	ld   a, [bc]                                     ; $5ca3: $0a
	ld   b, l                                        ; $5ca4: $45
	ld   b, [hl]                                     ; $5ca5: $46
	ld   b, a                                        ; $5ca6: $47
	ld   c, b                                        ; $5ca7: $48
	ld   l, [hl]                                     ; $5ca8: $6e
	ld   l, a                                        ; $5ca9: $6f
	ld   [hl], b                                     ; $5caa: $70
	ld   [hl], c                                     ; $5cab: $71
	ld   de, $0a0a                                   ; $5cac: $11 $0a $0a
	ld   c, c                                        ; $5caf: $49

jr_085_5cb0:
	ld   c, d                                        ; $5cb0: $4a
	ld   c, e                                        ; $5cb1: $4b
	ld   c, h                                        ; $5cb2: $4c
	ld   c, l                                        ; $5cb3: $4d
	ld   c, [hl]                                     ; $5cb4: $4e
	ld   c, a                                        ; $5cb5: $4f
	ld   a, [bc]                                     ; $5cb6: $0a
	ld   a, [bc]                                     ; $5cb7: $0a
	ld   a, [bc]                                     ; $5cb8: $0a
	ld   d, b                                        ; $5cb9: $50
	ld   d, c                                        ; $5cba: $51
	ld   d, d                                        ; $5cbb: $52
	ld   a, [bc]                                     ; $5cbc: $0a
	ld   e, $77                                      ; $5cbd: $1e $77
	ld   a, b                                        ; $5cbf: $78
	ld   de, $0a0a                                   ; $5cc0: $11 $0a $0a
	ld   a, [bc]                                     ; $5cc3: $0a

jr_085_5cc4:
	ld   d, e                                        ; $5cc4: $53
	ld   a, [bc]                                     ; $5cc5: $0a
	ld   a, [bc]                                     ; $5cc6: $0a
	ld   d, h                                        ; $5cc7: $54
	ld   d, l                                        ; $5cc8: $55
	ld   d, [hl]                                     ; $5cc9: $56
	ld   a, [bc]                                     ; $5cca: $0a
	ld   d, a                                        ; $5ccb: $57
	ld   e, b                                        ; $5ccc: $58
	ld   e, c                                        ; $5ccd: $59
	ld   e, d                                        ; $5cce: $5a
	ld   e, e                                        ; $5ccf: $5b
	nop                                              ; $5cd0: $00
	ld   a, [bc]                                     ; $5cd1: $0a
	ld   a, [bc]                                     ; $5cd2: $0a
	ld   de, $0a11                                   ; $5cd3: $11 $11 $0a
	ld   e, h                                        ; $5cd6: $5c
	ld   e, l                                        ; $5cd7: $5d
	ld   e, [hl]                                     ; $5cd8: $5e
	ld   e, a                                        ; $5cd9: $5f
	ld   h, b                                        ; $5cda: $60
	ld   h, c                                        ; $5cdb: $61
	ld   h, d                                        ; $5cdc: $62
	ld   h, e                                        ; $5cdd: $63
	ld   a, [bc]                                     ; $5cde: $0a
	ld   h, h                                        ; $5cdf: $64
	ld   h, l                                        ; $5ce0: $65
	ld   h, [hl]                                     ; $5ce1: $66
	ld   h, a                                        ; $5ce2: $67
	ld   l, b                                        ; $5ce3: $68
	ld   a, [bc]                                     ; $5ce4: $0a
	ld   [hl], d                                     ; $5ce5: $72
	ld   [hl], e                                     ; $5ce6: $73
	ld   de, $0303                                   ; $5ce7: $11 $03 $03
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
	inc  bc                                          ; $5cf7: $03
	inc  bc                                          ; $5cf8: $03
	inc  bc                                          ; $5cf9: $03
	inc  bc                                          ; $5cfa: $03
	inc  bc                                          ; $5cfb: $03
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
	inc  bc                                          ; $5d0c: $03
	inc  bc                                          ; $5d0d: $03
	inc  bc                                          ; $5d0e: $03
	inc  bc                                          ; $5d0f: $03
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
	inc  bc                                          ; $5d20: $03
	inc  bc                                          ; $5d21: $03
	inc  bc                                          ; $5d22: $03
	inc  bc                                          ; $5d23: $03
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
	inc  bc                                          ; $5d34: $03
	inc  bc                                          ; $5d35: $03
	inc  bc                                          ; $5d36: $03
	inc  bc                                          ; $5d37: $03
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
	inc  bc                                          ; $5d48: $03
	inc  bc                                          ; $5d49: $03
	inc  bc                                          ; $5d4a: $03
	inc  bc                                          ; $5d4b: $03
	inc  bc                                          ; $5d4c: $03
	inc  bc                                          ; $5d4d: $03
	inc  bc                                          ; $5d4e: $03
	inc  bc                                          ; $5d4f: $03
	inc  bc                                          ; $5d50: $03
	inc  bc                                          ; $5d51: $03
	inc  bc                                          ; $5d52: $03
	inc  bc                                          ; $5d53: $03
	inc  bc                                          ; $5d54: $03
	inc  bc                                          ; $5d55: $03
	inc  bc                                          ; $5d56: $03
	inc  bc                                          ; $5d57: $03
	inc  bc                                          ; $5d58: $03
	inc  bc                                          ; $5d59: $03
	inc  bc                                          ; $5d5a: $03
	inc  bc                                          ; $5d5b: $03
	inc  bc                                          ; $5d5c: $03
	inc  bc                                          ; $5d5d: $03
	inc  bc                                          ; $5d5e: $03
	inc  bc                                          ; $5d5f: $03
	inc  bc                                          ; $5d60: $03
	inc  bc                                          ; $5d61: $03
	inc  bc                                          ; $5d62: $03
	inc  bc                                          ; $5d63: $03
	inc  bc                                          ; $5d64: $03
	inc  bc                                          ; $5d65: $03
	inc  bc                                          ; $5d66: $03
	inc  bc                                          ; $5d67: $03
	inc  bc                                          ; $5d68: $03
	inc  bc                                          ; $5d69: $03
	inc  bc                                          ; $5d6a: $03
	inc  bc                                          ; $5d6b: $03
	inc  bc                                          ; $5d6c: $03
	inc  bc                                          ; $5d6d: $03
	inc  bc                                          ; $5d6e: $03
	inc  bc                                          ; $5d6f: $03
	inc  bc                                          ; $5d70: $03
	inc  bc                                          ; $5d71: $03
	inc  bc                                          ; $5d72: $03
	inc  bc                                          ; $5d73: $03
	inc  bc                                          ; $5d74: $03
	inc  bc                                          ; $5d75: $03
	inc  bc                                          ; $5d76: $03
	inc  bc                                          ; $5d77: $03
	inc  bc                                          ; $5d78: $03
	inc  bc                                          ; $5d79: $03
	inc  bc                                          ; $5d7a: $03
	inc  bc                                          ; $5d7b: $03
	inc  bc                                          ; $5d7c: $03
	inc  bc                                          ; $5d7d: $03
	inc  bc                                          ; $5d7e: $03
	inc  bc                                          ; $5d7f: $03
	inc  bc                                          ; $5d80: $03
	inc  bc                                          ; $5d81: $03
	inc  bc                                          ; $5d82: $03
	inc  bc                                          ; $5d83: $03
	inc  bc                                          ; $5d84: $03
	inc  bc                                          ; $5d85: $03
	inc  bc                                          ; $5d86: $03
	inc  bc                                          ; $5d87: $03
	inc  bc                                          ; $5d88: $03
	inc  bc                                          ; $5d89: $03
	inc  bc                                          ; $5d8a: $03
	inc  bc                                          ; $5d8b: $03
	inc  bc                                          ; $5d8c: $03
	inc  bc                                          ; $5d8d: $03
	inc  bc                                          ; $5d8e: $03
	inc  bc                                          ; $5d8f: $03
	inc  bc                                          ; $5d90: $03
	inc  bc                                          ; $5d91: $03
	inc  bc                                          ; $5d92: $03
	inc  bc                                          ; $5d93: $03
	inc  bc                                          ; $5d94: $03
	inc  bc                                          ; $5d95: $03
	inc  bc                                          ; $5d96: $03
	inc  bc                                          ; $5d97: $03
	inc  bc                                          ; $5d98: $03
	inc  bc                                          ; $5d99: $03
	inc  bc                                          ; $5d9a: $03
	inc  hl                                          ; $5d9b: $23
	inc  bc                                          ; $5d9c: $03
	inc  bc                                          ; $5d9d: $03
	inc  bc                                          ; $5d9e: $03
	inc  bc                                          ; $5d9f: $03
	inc  bc                                          ; $5da0: $03
	inc  bc                                          ; $5da1: $03
	inc  bc                                          ; $5da2: $03
	inc  bc                                          ; $5da3: $03
	inc  bc                                          ; $5da4: $03
	inc  bc                                          ; $5da5: $03
	inc  bc                                          ; $5da6: $03
	inc  bc                                          ; $5da7: $03
	inc  bc                                          ; $5da8: $03
	inc  bc                                          ; $5da9: $03
	inc  bc                                          ; $5daa: $03
	inc  bc                                          ; $5dab: $03
	inc  bc                                          ; $5dac: $03
	inc  bc                                          ; $5dad: $03
	inc  bc                                          ; $5dae: $03
	inc  hl                                          ; $5daf: $23
	ld   bc, $0202                                   ; $5db0: $01 $02 $02
	ld   [bc], a                                     ; $5db3: $02
	inc  bc                                          ; $5db4: $03
	inc  b                                           ; $5db5: $04
	dec  b                                           ; $5db6: $05
	ld   b, $06                                      ; $5db7: $06 $06
	ld   b, $06                                      ; $5db9: $06 $06
	ld   b, $06                                      ; $5dbb: $06 $06
	rlca                                             ; $5dbd: $07
	ld   [$5909], sp                                 ; $5dbe: $08 $09 $59
	ld   e, d                                        ; $5dc1: $5a
	ld   [bc], a                                     ; $5dc2: $02
	ld   bc, $0b0a                                   ; $5dc3: $01 $0a $0b
	dec  bc                                          ; $5dc6: $0b
	inc  c                                           ; $5dc7: $0c
	dec  c                                           ; $5dc8: $0d
	ld   c, $0f                                      ; $5dc9: $0e $0f
	ld   b, $06                                      ; $5dcb: $06 $06
	ld   b, $06                                      ; $5dcd: $06 $06
	ld   b, $06                                      ; $5dcf: $06 $06
	db   $10                                         ; $5dd1: $10
	ld   de, $5b12                                   ; $5dd2: $11 $12 $5b
	ld   e, h                                        ; $5dd5: $5c
	dec  bc                                          ; $5dd6: $0b
	ld   a, [bc]                                     ; $5dd7: $0a
	ld   a, [bc]                                     ; $5dd8: $0a
	dec  bc                                          ; $5dd9: $0b
	dec  bc                                          ; $5dda: $0b
	inc  de                                          ; $5ddb: $13
	inc  d                                           ; $5ddc: $14
	dec  d                                           ; $5ddd: $15
	ld   d, $06                                      ; $5dde: $16 $06
	ld   b, $06                                      ; $5de0: $06 $06
	ld   b, $06                                      ; $5de2: $06 $06
	ld   b, $17                                      ; $5de4: $06 $17
	jr   jr_085_5e01                                 ; $5de6: $18 $19

	ld   e, l                                        ; $5de8: $5d
	ld   e, [hl]                                     ; $5de9: $5e
	ld   e, a                                        ; $5dea: $5f
	ld   a, [bc]                                     ; $5deb: $0a
	ld   a, [bc]                                     ; $5dec: $0a
	ld   a, [de]                                     ; $5ded: $1a
	dec  de                                          ; $5dee: $1b
	inc  e                                           ; $5def: $1c
	dec  e                                           ; $5df0: $1d
	ld   e, $06                                      ; $5df1: $1e $06
	ld   b, $06                                      ; $5df3: $06 $06
	ld   b, $06                                      ; $5df5: $06 $06
	ld   b, $06                                      ; $5df7: $06 $06
	rra                                              ; $5df9: $1f
	jr   nz, jr_085_5e1d                             ; $5dfa: $20 $21

	ld   h, b                                        ; $5dfc: $60
	ld   h, c                                        ; $5dfd: $61
	dec  [hl]                                        ; $5dfe: $35
	ld   a, [bc]                                     ; $5dff: $0a
	ld   [hl+], a                                    ; $5e00: $22

jr_085_5e01:
	inc  hl                                          ; $5e01: $23
	inc  h                                           ; $5e02: $24
	dec  h                                           ; $5e03: $25
	ld   h, $27                                      ; $5e04: $26 $27
	ld   b, $06                                      ; $5e06: $06 $06
	ld   b, $06                                      ; $5e08: $06 $06
	ld   b, $06                                      ; $5e0a: $06 $06
	ld   b, $28                                      ; $5e0c: $06 $28
	add  hl, hl                                      ; $5e0e: $29
	ld   a, [hl+]                                    ; $5e0f: $2a
	ld   h, d                                        ; $5e10: $62
	ld   h, e                                        ; $5e11: $63
	inc  l                                           ; $5e12: $2c
	dec  hl                                          ; $5e13: $2b
	dec  hl                                          ; $5e14: $2b
	inc  l                                           ; $5e15: $2c
	dec  l                                           ; $5e16: $2d
	ld   l, $2f                                      ; $5e17: $2e $2f
	jr   nc, jr_085_5e4c                             ; $5e19: $30 $31

	ld   b, $06                                      ; $5e1b: $06 $06

jr_085_5e1d:
	ld   b, $06                                      ; $5e1d: $06 $06
	ld   b, $06                                      ; $5e1f: $06 $06
	ld   [hl-], a                                    ; $5e21: $32
	inc  sp                                          ; $5e22: $33
	inc  [hl]                                        ; $5e23: $34
	ld   h, h                                        ; $5e24: $64
	ld   h, l                                        ; $5e25: $65
	inc  hl                                          ; $5e26: $23
	ld   [hl+], a                                    ; $5e27: $22
	ld   a, [bc]                                     ; $5e28: $0a
	dec  [hl]                                        ; $5e29: $35
	ld   [hl], $0b                                   ; $5e2a: $36 $0b
	scf                                              ; $5e2c: $37
	jr   c, jr_085_5e68                              ; $5e2d: $38 $39

	ld   b, $06                                      ; $5e2f: $06 $06
	ld   b, $06                                      ; $5e31: $06 $06
	ld   b, $06                                      ; $5e33: $06 $06
	ld   a, [hl-]                                    ; $5e35: $3a
	dec  sp                                          ; $5e36: $3b
	inc  a                                           ; $5e37: $3c
	ld   h, [hl]                                     ; $5e38: $66
	ld   h, a                                        ; $5e39: $67
	ld   l, b                                        ; $5e3a: $68
	ld   a, [bc]                                     ; $5e3b: $0a
	dec  a                                           ; $5e3c: $3d
	ld   a, $3f                                      ; $5e3d: $3e $3f
	ld   b, b                                        ; $5e3f: $40
	add  hl, de                                      ; $5e40: $19
	ld   b, c                                        ; $5e41: $41
	ld   b, d                                        ; $5e42: $42
	ld   b, $06                                      ; $5e43: $06 $06
	ld   b, $06                                      ; $5e45: $06 $06
	ld   b, $06                                      ; $5e47: $06 $06
	ld   b, e                                        ; $5e49: $43
	ld   b, h                                        ; $5e4a: $44
	ld   b, l                                        ; $5e4b: $45

jr_085_5e4c:
	ld   l, c                                        ; $5e4c: $69
	ld   l, d                                        ; $5e4d: $6a
	dec  bc                                          ; $5e4e: $0b
	ld   a, [bc]                                     ; $5e4f: $0a
	ld   b, [hl]                                     ; $5e50: $46
	ld   b, a                                        ; $5e51: $47
	ld   c, b                                        ; $5e52: $48
	ld   c, c                                        ; $5e53: $49
	ld   [de], a                                     ; $5e54: $12
	ld   c, d                                        ; $5e55: $4a
	ld   c, e                                        ; $5e56: $4b
	ld   b, $06                                      ; $5e57: $06 $06
	ld   b, $06                                      ; $5e59: $06 $06
	ld   b, $06                                      ; $5e5b: $06 $06
	ld   c, h                                        ; $5e5d: $4c
	ld   c, l                                        ; $5e5e: $4d
	ld   c, [hl]                                     ; $5e5f: $4e
	ld   l, e                                        ; $5e60: $6b
	ld   l, h                                        ; $5e61: $6c
	dec  bc                                          ; $5e62: $0b
	ld   a, [bc]                                     ; $5e63: $0a
	ld   c, a                                        ; $5e64: $4f
	ld   d, b                                        ; $5e65: $50
	ld   d, c                                        ; $5e66: $51
	ld   d, d                                        ; $5e67: $52

jr_085_5e68:
	ld   d, e                                        ; $5e68: $53
	ld   d, h                                        ; $5e69: $54
	ld   d, l                                        ; $5e6a: $55
	ld   b, $06                                      ; $5e6b: $06 $06
	ld   b, $06                                      ; $5e6d: $06 $06
	ld   b, $06                                      ; $5e6f: $06 $06
	ld   d, [hl]                                     ; $5e71: $56
	ld   d, a                                        ; $5e72: $57
	ld   e, b                                        ; $5e73: $58
	ld   l, l                                        ; $5e74: $6d
	nop                                              ; $5e75: $00
	dec  bc                                          ; $5e76: $0b
	ld   a, [bc]                                     ; $5e77: $0a
	inc  bc                                          ; $5e78: $03
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
	inc  bc                                          ; $5e83: $03
	inc  bc                                          ; $5e84: $03
	inc  bc                                          ; $5e85: $03
	inc  bc                                          ; $5e86: $03
	inc  bc                                          ; $5e87: $03
	inc  bc                                          ; $5e88: $03
	inc  bc                                          ; $5e89: $03
	inc  bc                                          ; $5e8a: $03
	inc  hl                                          ; $5e8b: $23
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
	inc  bc                                          ; $5e9c: $03
	inc  bc                                          ; $5e9d: $03
	inc  bc                                          ; $5e9e: $03
	inc  hl                                          ; $5e9f: $23
	inc  bc                                          ; $5ea0: $03
	inc  bc                                          ; $5ea1: $03
	inc  bc                                          ; $5ea2: $03
	inc  bc                                          ; $5ea3: $03
	inc  bc                                          ; $5ea4: $03
	inc  bc                                          ; $5ea5: $03
	inc  bc                                          ; $5ea6: $03
	inc  bc                                          ; $5ea7: $03
	inc  bc                                          ; $5ea8: $03
	inc  bc                                          ; $5ea9: $03
	inc  bc                                          ; $5eaa: $03
	inc  bc                                          ; $5eab: $03
	inc  bc                                          ; $5eac: $03
	inc  bc                                          ; $5ead: $03
	inc  bc                                          ; $5eae: $03
	inc  bc                                          ; $5eaf: $03
	inc  bc                                          ; $5eb0: $03
	inc  bc                                          ; $5eb1: $03
	inc  bc                                          ; $5eb2: $03
	inc  hl                                          ; $5eb3: $23
	inc  bc                                          ; $5eb4: $03
	inc  bc                                          ; $5eb5: $03
	inc  bc                                          ; $5eb6: $03
	inc  bc                                          ; $5eb7: $03
	inc  bc                                          ; $5eb8: $03
	inc  bc                                          ; $5eb9: $03
	inc  bc                                          ; $5eba: $03
	inc  bc                                          ; $5ebb: $03
	inc  bc                                          ; $5ebc: $03
	inc  bc                                          ; $5ebd: $03
	inc  bc                                          ; $5ebe: $03
	inc  bc                                          ; $5ebf: $03
	inc  bc                                          ; $5ec0: $03
	inc  bc                                          ; $5ec1: $03
	inc  bc                                          ; $5ec2: $03
	inc  bc                                          ; $5ec3: $03
	inc  bc                                          ; $5ec4: $03
	inc  bc                                          ; $5ec5: $03
	ld   h, e                                        ; $5ec6: $63
	inc  hl                                          ; $5ec7: $23
	inc  bc                                          ; $5ec8: $03
	inc  bc                                          ; $5ec9: $03
	inc  bc                                          ; $5eca: $03
	inc  bc                                          ; $5ecb: $03
	inc  bc                                          ; $5ecc: $03
	inc  bc                                          ; $5ecd: $03
	inc  bc                                          ; $5ece: $03
	inc  bc                                          ; $5ecf: $03
	inc  bc                                          ; $5ed0: $03
	inc  bc                                          ; $5ed1: $03
	inc  bc                                          ; $5ed2: $03
	inc  bc                                          ; $5ed3: $03
	inc  bc                                          ; $5ed4: $03
	inc  bc                                          ; $5ed5: $03
	inc  bc                                          ; $5ed6: $03
	inc  bc                                          ; $5ed7: $03
	inc  bc                                          ; $5ed8: $03
	inc  bc                                          ; $5ed9: $03
	ld   h, e                                        ; $5eda: $63
	ld   h, e                                        ; $5edb: $63
	inc  bc                                          ; $5edc: $03
	inc  bc                                          ; $5edd: $03
	inc  bc                                          ; $5ede: $03
	inc  bc                                          ; $5edf: $03
	inc  bc                                          ; $5ee0: $03
	inc  bc                                          ; $5ee1: $03
	inc  bc                                          ; $5ee2: $03
	inc  bc                                          ; $5ee3: $03
	inc  bc                                          ; $5ee4: $03
	inc  bc                                          ; $5ee5: $03
	inc  bc                                          ; $5ee6: $03
	inc  bc                                          ; $5ee7: $03
	inc  bc                                          ; $5ee8: $03
	inc  bc                                          ; $5ee9: $03
	inc  bc                                          ; $5eea: $03
	inc  bc                                          ; $5eeb: $03
	inc  bc                                          ; $5eec: $03
	inc  bc                                          ; $5eed: $03
	ld   h, e                                        ; $5eee: $63
	ld   h, e                                        ; $5eef: $63
	inc  bc                                          ; $5ef0: $03
	inc  bc                                          ; $5ef1: $03
	inc  bc                                          ; $5ef2: $03
	inc  bc                                          ; $5ef3: $03
	inc  bc                                          ; $5ef4: $03
	inc  bc                                          ; $5ef5: $03
	inc  bc                                          ; $5ef6: $03
	inc  bc                                          ; $5ef7: $03
	inc  bc                                          ; $5ef8: $03
	inc  bc                                          ; $5ef9: $03
	inc  bc                                          ; $5efa: $03
	inc  bc                                          ; $5efb: $03
	inc  bc                                          ; $5efc: $03
	inc  bc                                          ; $5efd: $03
	inc  bc                                          ; $5efe: $03
	inc  bc                                          ; $5eff: $03
	inc  bc                                          ; $5f00: $03
	inc  bc                                          ; $5f01: $03
	inc  bc                                          ; $5f02: $03
	inc  hl                                          ; $5f03: $23
	inc  bc                                          ; $5f04: $03
	inc  bc                                          ; $5f05: $03
	inc  bc                                          ; $5f06: $03
	inc  bc                                          ; $5f07: $03
	ld   h, e                                        ; $5f08: $63
	inc  bc                                          ; $5f09: $03
	inc  bc                                          ; $5f0a: $03
	inc  bc                                          ; $5f0b: $03
	inc  bc                                          ; $5f0c: $03
	inc  bc                                          ; $5f0d: $03
	inc  bc                                          ; $5f0e: $03
	inc  bc                                          ; $5f0f: $03
	inc  bc                                          ; $5f10: $03
	inc  bc                                          ; $5f11: $03
	inc  bc                                          ; $5f12: $03
	inc  bc                                          ; $5f13: $03
	inc  bc                                          ; $5f14: $03
	inc  bc                                          ; $5f15: $03
	inc  bc                                          ; $5f16: $03
	inc  hl                                          ; $5f17: $23
	inc  bc                                          ; $5f18: $03
	inc  bc                                          ; $5f19: $03
	inc  bc                                          ; $5f1a: $03
	inc  bc                                          ; $5f1b: $03
	ld   h, e                                        ; $5f1c: $63
	inc  bc                                          ; $5f1d: $03
	inc  bc                                          ; $5f1e: $03
	inc  bc                                          ; $5f1f: $03
	inc  bc                                          ; $5f20: $03
	inc  bc                                          ; $5f21: $03
	inc  bc                                          ; $5f22: $03
	inc  bc                                          ; $5f23: $03
	inc  bc                                          ; $5f24: $03
	inc  bc                                          ; $5f25: $03
	inc  bc                                          ; $5f26: $03
	inc  bc                                          ; $5f27: $03
	inc  bc                                          ; $5f28: $03
	inc  bc                                          ; $5f29: $03
	inc  bc                                          ; $5f2a: $03
	inc  hl                                          ; $5f2b: $23
	inc  bc                                          ; $5f2c: $03
	inc  bc                                          ; $5f2d: $03
	inc  bc                                          ; $5f2e: $03
	inc  bc                                          ; $5f2f: $03
	inc  bc                                          ; $5f30: $03
	inc  bc                                          ; $5f31: $03
	inc  bc                                          ; $5f32: $03
	inc  bc                                          ; $5f33: $03
	inc  bc                                          ; $5f34: $03
	inc  bc                                          ; $5f35: $03
	inc  bc                                          ; $5f36: $03
	inc  bc                                          ; $5f37: $03
	inc  bc                                          ; $5f38: $03
	inc  bc                                          ; $5f39: $03
	inc  bc                                          ; $5f3a: $03
	inc  bc                                          ; $5f3b: $03
	inc  bc                                          ; $5f3c: $03
	inc  bc                                          ; $5f3d: $03
	inc  bc                                          ; $5f3e: $03
	inc  hl                                          ; $5f3f: $23
	nop                                              ; $5f40: $00
	ld   bc, $0101                                   ; $5f41: $01 $01 $01
	ld   bc, $0101                                   ; $5f44: $01 $01 $01
	inc  bc                                          ; $5f47: $03
	inc  b                                           ; $5f48: $04
	dec  b                                           ; $5f49: $05
	ld   bc, $0101                                   ; $5f4a: $01 $01 $01
	ld   bc, $0101                                   ; $5f4d: $01 $01 $01
	ld   bc, $0101                                   ; $5f50: $01 $01 $01
	nop                                              ; $5f53: $00
	ld   [bc], a                                     ; $5f54: $02
	ld   a, d                                        ; $5f55: $7a
	ld   a, d                                        ; $5f56: $7a
	ld   a, d                                        ; $5f57: $7a
	ld   a, d                                        ; $5f58: $7a
	ld   b, $07                                      ; $5f59: $06 $07
	ld   [$0a09], sp                                 ; $5f5b: $08 $09 $0a
	dec  bc                                          ; $5f5e: $0b
	ld   a, d                                        ; $5f5f: $7a
	ld   a, d                                        ; $5f60: $7a
	ld   a, d                                        ; $5f61: $7a
	ld   a, d                                        ; $5f62: $7a
	ld   a, d                                        ; $5f63: $7a
	ld   a, d                                        ; $5f64: $7a
	ld   a, d                                        ; $5f65: $7a
	ld   a, d                                        ; $5f66: $7a
	ld   [bc], a                                     ; $5f67: $02
	ld   [bc], a                                     ; $5f68: $02
	ld   a, d                                        ; $5f69: $7a
	ld   a, d                                        ; $5f6a: $7a
	ld   a, d                                        ; $5f6b: $7a
	inc  c                                           ; $5f6c: $0c
	dec  c                                           ; $5f6d: $0d
	ld   c, $0f                                      ; $5f6e: $0e $0f
	db   $10                                         ; $5f70: $10
	ld   de, $1312                                   ; $5f71: $11 $12 $13
	inc  d                                           ; $5f74: $14
	ld   a, d                                        ; $5f75: $7a
	ld   a, d                                        ; $5f76: $7a
	ld   a, d                                        ; $5f77: $7a
	ld   a, d                                        ; $5f78: $7a
	ld   a, d                                        ; $5f79: $7a
	ld   a, d                                        ; $5f7a: $7a
	ld   [bc], a                                     ; $5f7b: $02
	ld   [bc], a                                     ; $5f7c: $02
	ld   a, d                                        ; $5f7d: $7a
	dec  d                                           ; $5f7e: $15
	ld   d, $17                                      ; $5f7f: $16 $17
	jr   jr_085_5f9c                                 ; $5f81: $18 $19

	ld   a, [de]                                     ; $5f83: $1a
	dec  de                                          ; $5f84: $1b
	inc  e                                           ; $5f85: $1c
	dec  e                                           ; $5f86: $1d
	ld   e, $1f                                      ; $5f87: $1e $1f
	jr   nz, jr_085_6005                             ; $5f89: $20 $7a

	ld   a, d                                        ; $5f8b: $7a
	ld   a, d                                        ; $5f8c: $7a
	ld   a, d                                        ; $5f8d: $7a
	ld   a, d                                        ; $5f8e: $7a
	ld   [bc], a                                     ; $5f8f: $02
	ld   [bc], a                                     ; $5f90: $02
	ld   hl, $2322                                   ; $5f91: $21 $22 $23
	inc  h                                           ; $5f94: $24
	dec  h                                           ; $5f95: $25
	ld   h, $27                                      ; $5f96: $26 $27
	jr   z, jr_085_5fc3                              ; $5f98: $28 $29

	ld   a, [hl+]                                    ; $5f9a: $2a
	dec  hl                                          ; $5f9b: $2b

jr_085_5f9c:
	inc  l                                           ; $5f9c: $2c
	dec  l                                           ; $5f9d: $2d
	ld   l, $7a                                      ; $5f9e: $2e $7a
	ld   a, d                                        ; $5fa0: $7a
	ld   a, d                                        ; $5fa1: $7a
	ld   a, d                                        ; $5fa2: $7a
	ld   [bc], a                                     ; $5fa3: $02
	ld   [bc], a                                     ; $5fa4: $02
	cpl                                              ; $5fa5: $2f
	jr   nc, jr_085_5fd9                             ; $5fa6: $30 $31

	ld   [hl-], a                                    ; $5fa8: $32
	inc  sp                                          ; $5fa9: $33
	inc  [hl]                                        ; $5faa: $34
	dec  [hl]                                        ; $5fab: $35
	ld   [hl], $37                                   ; $5fac: $36 $37
	jr   c, jr_085_5fe9                              ; $5fae: $38 $39

	ld   a, [hl-]                                    ; $5fb0: $3a
	dec  sp                                          ; $5fb1: $3b
	inc  a                                           ; $5fb2: $3c
	dec  a                                           ; $5fb3: $3d
	ld   a, $7a                                      ; $5fb4: $3e $7a
	ld   a, d                                        ; $5fb6: $7a
	ld   [bc], a                                     ; $5fb7: $02
	ld   [bc], a                                     ; $5fb8: $02
	ccf                                              ; $5fb9: $3f
	ld   b, b                                        ; $5fba: $40
	ld   b, c                                        ; $5fbb: $41
	ld   b, d                                        ; $5fbc: $42
	ld   b, e                                        ; $5fbd: $43
	ld   b, h                                        ; $5fbe: $44
	ld   b, l                                        ; $5fbf: $45
	ld   b, [hl]                                     ; $5fc0: $46
	ld   b, a                                        ; $5fc1: $47
	ld   c, b                                        ; $5fc2: $48

jr_085_5fc3:
	ld   c, c                                        ; $5fc3: $49
	ld   c, d                                        ; $5fc4: $4a
	ld   c, e                                        ; $5fc5: $4b
	ld   c, h                                        ; $5fc6: $4c
	ld   c, l                                        ; $5fc7: $4d
	ld   c, [hl]                                     ; $5fc8: $4e
	ld   c, a                                        ; $5fc9: $4f
	ld   a, d                                        ; $5fca: $7a
	ld   [bc], a                                     ; $5fcb: $02
	ld   [bc], a                                     ; $5fcc: $02
	ld   a, d                                        ; $5fcd: $7a
	ld   a, d                                        ; $5fce: $7a
	ld   d, c                                        ; $5fcf: $51
	ld   d, d                                        ; $5fd0: $52
	ld   d, e                                        ; $5fd1: $53
	ld   d, h                                        ; $5fd2: $54
	ld   d, l                                        ; $5fd3: $55
	ld   d, [hl]                                     ; $5fd4: $56
	ld   d, a                                        ; $5fd5: $57
	ld   e, b                                        ; $5fd6: $58
	ld   e, c                                        ; $5fd7: $59
	ld   e, d                                        ; $5fd8: $5a

jr_085_5fd9:
	ld   e, e                                        ; $5fd9: $5b
	ld   e, h                                        ; $5fda: $5c
	ld   e, l                                        ; $5fdb: $5d
	ld   e, [hl]                                     ; $5fdc: $5e
	ld   e, a                                        ; $5fdd: $5f
	ld   a, d                                        ; $5fde: $7a
	ld   [bc], a                                     ; $5fdf: $02
	ld   [bc], a                                     ; $5fe0: $02
	ld   a, d                                        ; $5fe1: $7a
	ld   a, d                                        ; $5fe2: $7a
	ld   a, d                                        ; $5fe3: $7a
	ld   h, b                                        ; $5fe4: $60
	ld   h, c                                        ; $5fe5: $61
	ld   h, d                                        ; $5fe6: $62
	ld   h, e                                        ; $5fe7: $63
	ld   h, h                                        ; $5fe8: $64

jr_085_5fe9:
	ld   h, l                                        ; $5fe9: $65
	ld   h, [hl]                                     ; $5fea: $66
	ld   h, a                                        ; $5feb: $67
	ld   l, b                                        ; $5fec: $68
	ld   l, c                                        ; $5fed: $69
	ld   l, d                                        ; $5fee: $6a
	ld   l, e                                        ; $5fef: $6b
	ld   l, h                                        ; $5ff0: $6c
	ld   l, l                                        ; $5ff1: $6d
	ld   a, d                                        ; $5ff2: $7a
	ld   [bc], a                                     ; $5ff3: $02
	ld   [bc], a                                     ; $5ff4: $02
	ld   a, d                                        ; $5ff5: $7a
	ld   a, d                                        ; $5ff6: $7a
	ld   a, d                                        ; $5ff7: $7a
	ld   a, d                                        ; $5ff8: $7a
	ld   l, [hl]                                     ; $5ff9: $6e
	ld   l, a                                        ; $5ffa: $6f
	ld   [hl], b                                     ; $5ffb: $70
	ld   [hl], c                                     ; $5ffc: $71
	ld   [hl], d                                     ; $5ffd: $72
	ld   [hl], e                                     ; $5ffe: $73
	ld   [hl], h                                     ; $5fff: $74
	ld   [hl], l                                     ; $6000: $75
	halt                                             ; $6001: $76
	ld   [hl], a                                     ; $6002: $77
	ld   a, b                                        ; $6003: $78
	ld   a, c                                        ; $6004: $79

jr_085_6005:
	ld   a, d                                        ; $6005: $7a
	ld   a, d                                        ; $6006: $7a
	ld   [bc], a                                     ; $6007: $02
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
	dec  b                                           ; $6018: $05
	dec  b                                           ; $6019: $05
	dec  b                                           ; $601a: $05
	dec  h                                           ; $601b: $25
	dec  b                                           ; $601c: $05
	inc  bc                                          ; $601d: $03
	inc  bc                                          ; $601e: $03
	inc  bc                                          ; $601f: $03
	inc  bc                                          ; $6020: $03
	dec  b                                           ; $6021: $05
	dec  b                                           ; $6022: $05
	inc  b                                           ; $6023: $04
	inc  b                                           ; $6024: $04
	dec  b                                           ; $6025: $05
	dec  b                                           ; $6026: $05
	inc  bc                                          ; $6027: $03
	inc  bc                                          ; $6028: $03
	inc  bc                                          ; $6029: $03
	inc  bc                                          ; $602a: $03
	inc  bc                                          ; $602b: $03
	inc  bc                                          ; $602c: $03
	inc  bc                                          ; $602d: $03
	inc  bc                                          ; $602e: $03
	dec  h                                           ; $602f: $25
	dec  b                                           ; $6030: $05
	inc  bc                                          ; $6031: $03
	inc  bc                                          ; $6032: $03
	inc  bc                                          ; $6033: $03
	dec  b                                           ; $6034: $05
	dec  b                                           ; $6035: $05
	inc  b                                           ; $6036: $04
	inc  b                                           ; $6037: $04
	inc  b                                           ; $6038: $04
	inc  b                                           ; $6039: $04
	inc  b                                           ; $603a: $04
	dec  b                                           ; $603b: $05
	dec  b                                           ; $603c: $05
	inc  bc                                          ; $603d: $03
	inc  bc                                          ; $603e: $03
	inc  bc                                          ; $603f: $03
	inc  bc                                          ; $6040: $03
	inc  bc                                          ; $6041: $03
	inc  bc                                          ; $6042: $03
	dec  h                                           ; $6043: $25
	dec  b                                           ; $6044: $05
	inc  bc                                          ; $6045: $03
	dec  b                                           ; $6046: $05
	dec  b                                           ; $6047: $05
	inc  b                                           ; $6048: $04
	inc  b                                           ; $6049: $04
	inc  b                                           ; $604a: $04
	inc  b                                           ; $604b: $04
	inc  b                                           ; $604c: $04
	inc  b                                           ; $604d: $04
	inc  b                                           ; $604e: $04
	inc  b                                           ; $604f: $04
	dec  b                                           ; $6050: $05
	dec  b                                           ; $6051: $05
	inc  bc                                          ; $6052: $03
	inc  bc                                          ; $6053: $03
	inc  bc                                          ; $6054: $03
	inc  bc                                          ; $6055: $03
	inc  bc                                          ; $6056: $03
	dec  h                                           ; $6057: $25
	dec  b                                           ; $6058: $05
	inc  bc                                          ; $6059: $03
	inc  bc                                          ; $605a: $03
	inc  b                                           ; $605b: $04
	inc  b                                           ; $605c: $04
	inc  b                                           ; $605d: $04
	inc  b                                           ; $605e: $04
	inc  b                                           ; $605f: $04
	inc  b                                           ; $6060: $04
	inc  b                                           ; $6061: $04
	inc  b                                           ; $6062: $04
	inc  b                                           ; $6063: $04
	inc  b                                           ; $6064: $04
	dec  b                                           ; $6065: $05
	dec  b                                           ; $6066: $05
	inc  bc                                          ; $6067: $03
	inc  bc                                          ; $6068: $03
	inc  bc                                          ; $6069: $03
	inc  bc                                          ; $606a: $03
	dec  h                                           ; $606b: $25
	dec  b                                           ; $606c: $05
	inc  bc                                          ; $606d: $03
	dec  b                                           ; $606e: $05
	inc  b                                           ; $606f: $04
	inc  b                                           ; $6070: $04
	inc  b                                           ; $6071: $04
	inc  b                                           ; $6072: $04
	inc  b                                           ; $6073: $04
	inc  b                                           ; $6074: $04
	inc  b                                           ; $6075: $04
	inc  b                                           ; $6076: $04
	inc  b                                           ; $6077: $04
	inc  b                                           ; $6078: $04
	inc  b                                           ; $6079: $04
	inc  b                                           ; $607a: $04
	dec  b                                           ; $607b: $05
	dec  b                                           ; $607c: $05
	inc  bc                                          ; $607d: $03
	inc  bc                                          ; $607e: $03
	dec  h                                           ; $607f: $25
	dec  b                                           ; $6080: $05
	inc  bc                                          ; $6081: $03
	inc  bc                                          ; $6082: $03
	inc  b                                           ; $6083: $04
	inc  b                                           ; $6084: $04
	inc  b                                           ; $6085: $04
	inc  b                                           ; $6086: $04
	inc  b                                           ; $6087: $04
	inc  b                                           ; $6088: $04
	inc  b                                           ; $6089: $04
	inc  b                                           ; $608a: $04
	inc  b                                           ; $608b: $04
	inc  b                                           ; $608c: $04
	inc  b                                           ; $608d: $04
	inc  b                                           ; $608e: $04
	inc  b                                           ; $608f: $04
	dec  b                                           ; $6090: $05
	inc  bc                                          ; $6091: $03
	inc  bc                                          ; $6092: $03
	dec  h                                           ; $6093: $25
	dec  b                                           ; $6094: $05
	inc  bc                                          ; $6095: $03
	inc  bc                                          ; $6096: $03
	inc  bc                                          ; $6097: $03
	dec  b                                           ; $6098: $05
	inc  b                                           ; $6099: $04
	inc  b                                           ; $609a: $04
	inc  b                                           ; $609b: $04
	inc  b                                           ; $609c: $04
	inc  b                                           ; $609d: $04
	inc  b                                           ; $609e: $04
	inc  b                                           ; $609f: $04
	inc  b                                           ; $60a0: $04
	inc  b                                           ; $60a1: $04
	inc  b                                           ; $60a2: $04
	inc  b                                           ; $60a3: $04
	inc  b                                           ; $60a4: $04
	inc  bc                                          ; $60a5: $03
	inc  bc                                          ; $60a6: $03
	dec  h                                           ; $60a7: $25
	dec  b                                           ; $60a8: $05
	inc  bc                                          ; $60a9: $03
	inc  bc                                          ; $60aa: $03
	inc  bc                                          ; $60ab: $03
	inc  bc                                          ; $60ac: $03
	inc  bc                                          ; $60ad: $03
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
	inc  bc                                          ; $60b8: $03
	inc  bc                                          ; $60b9: $03
	inc  bc                                          ; $60ba: $03
	dec  h                                           ; $60bb: $25
	dec  b                                           ; $60bc: $05
	inc  bc                                          ; $60bd: $03
	inc  bc                                          ; $60be: $03
	inc  bc                                          ; $60bf: $03
	inc  bc                                          ; $60c0: $03
	inc  bc                                          ; $60c1: $03
	inc  bc                                          ; $60c2: $03
	inc  b                                           ; $60c3: $04
	inc  b                                           ; $60c4: $04
	inc  b                                           ; $60c5: $04
	inc  b                                           ; $60c6: $04
	inc  b                                           ; $60c7: $04
	inc  b                                           ; $60c8: $04
	inc  b                                           ; $60c9: $04
	inc  b                                           ; $60ca: $04
	inc  bc                                          ; $60cb: $03
	inc  bc                                          ; $60cc: $03
	inc  bc                                          ; $60cd: $03
	inc  bc                                          ; $60ce: $03
	dec  h                                           ; $60cf: $25
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
	jr   nz, jr_085_6103                             ; $60e0: $20 $21

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
	jr   nc, jr_085_6127                             ; $60f4: $30 $31

	ld   [hl-], a                                    ; $60f6: $32
	inc  sp                                          ; $60f7: $33
	jr   nz, @+$23                                   ; $60f8: $20 $21

	ld   [hl+], a                                    ; $60fa: $22
	inc  hl                                          ; $60fb: $23
	inc  h                                           ; $60fc: $24
	dec  h                                           ; $60fd: $25
	ld   h, $27                                      ; $60fe: $26 $27
	jr   z, jr_085_612b                              ; $6100: $28 $29

	ld   a, [hl+]                                    ; $6102: $2a

jr_085_6103:
	dec  hl                                          ; $6103: $2b
	inc  l                                           ; $6104: $2c
	dec  l                                           ; $6105: $2d
	ld   l, $2f                                      ; $6106: $2e $2f
	ld   b, b                                        ; $6108: $40
	ld   b, c                                        ; $6109: $41
	ld   b, d                                        ; $610a: $42
	ld   b, e                                        ; $610b: $43
	jr   nc, jr_085_613f                             ; $610c: $30 $31

	ld   [hl-], a                                    ; $610e: $32
	inc  sp                                          ; $610f: $33
	inc  [hl]                                        ; $6110: $34
	dec  [hl]                                        ; $6111: $35
	ld   [hl], $37                                   ; $6112: $36 $37
	jr   c, jr_085_614f                              ; $6114: $38 $39

	ld   a, [hl-]                                    ; $6116: $3a
	dec  sp                                          ; $6117: $3b
	inc  a                                           ; $6118: $3c
	dec  a                                           ; $6119: $3d
	ld   a, $3f                                      ; $611a: $3e $3f
	inc  h                                           ; $611c: $24
	dec  h                                           ; $611d: $25
	ld   h, $27                                      ; $611e: $26 $27
	ld   b, b                                        ; $6120: $40
	ld   b, c                                        ; $6121: $41
	ld   b, d                                        ; $6122: $42
	ld   b, e                                        ; $6123: $43
	ld   b, h                                        ; $6124: $44
	ld   b, l                                        ; $6125: $45
	ld   b, [hl]                                     ; $6126: $46

jr_085_6127:
	ld   b, a                                        ; $6127: $47
	ld   c, b                                        ; $6128: $48
	ld   c, c                                        ; $6129: $49
	ld   c, d                                        ; $612a: $4a

jr_085_612b:
	ld   c, e                                        ; $612b: $4b
	ld   c, h                                        ; $612c: $4c
	ld   c, l                                        ; $612d: $4d
	ld   c, [hl]                                     ; $612e: $4e
	ld   c, a                                        ; $612f: $4f
	inc  [hl]                                        ; $6130: $34
	dec  [hl]                                        ; $6131: $35
	ld   [hl], $37                                   ; $6132: $36 $37
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

jr_085_613f:
	ld   e, e                                        ; $613f: $5b
	ld   e, h                                        ; $6140: $5c
	ld   e, l                                        ; $6141: $5d
	ld   e, [hl]                                     ; $6142: $5e
	ld   e, a                                        ; $6143: $5f
	ld   b, h                                        ; $6144: $44
	ld   b, l                                        ; $6145: $45
	ld   b, [hl]                                     ; $6146: $46
	ld   b, a                                        ; $6147: $47
	ld   h, b                                        ; $6148: $60
	ld   h, c                                        ; $6149: $61
	ld   h, d                                        ; $614a: $62
	ld   h, e                                        ; $614b: $63
	ld   h, h                                        ; $614c: $64
	ld   h, l                                        ; $614d: $65
	ld   h, [hl]                                     ; $614e: $66

jr_085_614f:
	ld   h, a                                        ; $614f: $67
	ld   l, b                                        ; $6150: $68
	ld   l, c                                        ; $6151: $69
	ld   l, d                                        ; $6152: $6a
	ld   l, e                                        ; $6153: $6b
	ld   l, h                                        ; $6154: $6c
	ld   l, l                                        ; $6155: $6d
	ld   l, [hl]                                     ; $6156: $6e
	ld   l, a                                        ; $6157: $6f
	jr   z, jr_085_6183                              ; $6158: $28 $29

	ld   a, [hl+]                                    ; $615a: $2a
	dec  hl                                          ; $615b: $2b
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
	jr   c, jr_085_61a7                              ; $616c: $38 $39

	ld   a, [hl-]                                    ; $616e: $3a
	dec  sp                                          ; $616f: $3b
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
	ld   c, b                                        ; $6180: $48
	ld   c, c                                        ; $6181: $49
	ld   c, d                                        ; $6182: $4a

jr_085_6183:
	ld   c, e                                        ; $6183: $4b
	db   $10                                         ; $6184: $10
	ld   de, $1312                                   ; $6185: $11 $12 $13
	inc  d                                           ; $6188: $14
	dec  d                                           ; $6189: $15
	ld   d, $17                                      ; $618a: $16 $17
	jr   jr_085_61a7                                 ; $618c: $18 $19

	ld   a, [de]                                     ; $618e: $1a
	dec  de                                          ; $618f: $1b
	inc  e                                           ; $6190: $1c
	dec  e                                           ; $6191: $1d
	ld   e, $1f                                      ; $6192: $1e $1f
	inc  l                                           ; $6194: $2c
	dec  l                                           ; $6195: $2d
	ld   l, $2f                                      ; $6196: $2e $2f
	dec  b                                           ; $6198: $05
	dec  b                                           ; $6199: $05
	dec  b                                           ; $619a: $05
	dec  b                                           ; $619b: $05
	dec  b                                           ; $619c: $05
	dec  b                                           ; $619d: $05
	inc  b                                           ; $619e: $04
	inc  b                                           ; $619f: $04
	inc  bc                                          ; $61a0: $03
	inc  bc                                          ; $61a1: $03
	inc  bc                                          ; $61a2: $03
	dec  b                                           ; $61a3: $05
	dec  b                                           ; $61a4: $05
	dec  b                                           ; $61a5: $05
	dec  b                                           ; $61a6: $05

jr_085_61a7:
	inc  bc                                          ; $61a7: $03
	dec  bc                                          ; $61a8: $0b
	dec  bc                                          ; $61a9: $0b
	dec  bc                                          ; $61aa: $0b
	dec  bc                                          ; $61ab: $0b
	dec  b                                           ; $61ac: $05
	dec  b                                           ; $61ad: $05
	dec  b                                           ; $61ae: $05
	dec  b                                           ; $61af: $05
	dec  b                                           ; $61b0: $05
	inc  b                                           ; $61b1: $04
	inc  b                                           ; $61b2: $04
	inc  b                                           ; $61b3: $04
	inc  b                                           ; $61b4: $04
	inc  b                                           ; $61b5: $04
	inc  b                                           ; $61b6: $04
	inc  b                                           ; $61b7: $04
	inc  bc                                          ; $61b8: $03
	inc  bc                                          ; $61b9: $03
	inc  bc                                          ; $61ba: $03
	inc  bc                                          ; $61bb: $03
	dec  bc                                          ; $61bc: $0b
	dec  bc                                          ; $61bd: $0b
	dec  bc                                          ; $61be: $0b
	dec  bc                                          ; $61bf: $0b
	dec  b                                           ; $61c0: $05
	dec  b                                           ; $61c1: $05
	dec  b                                           ; $61c2: $05
	dec  b                                           ; $61c3: $05
	dec  b                                           ; $61c4: $05
	inc  b                                           ; $61c5: $04
	inc  b                                           ; $61c6: $04
	inc  b                                           ; $61c7: $04
	inc  b                                           ; $61c8: $04
	inc  b                                           ; $61c9: $04
	inc  b                                           ; $61ca: $04
	inc  b                                           ; $61cb: $04
	inc  b                                           ; $61cc: $04
	inc  b                                           ; $61cd: $04
	inc  b                                           ; $61ce: $04
	inc  b                                           ; $61cf: $04
	inc  c                                           ; $61d0: $0c
	dec  bc                                          ; $61d1: $0b
	dec  bc                                          ; $61d2: $0b
	dec  bc                                          ; $61d3: $0b
	dec  b                                           ; $61d4: $05
	dec  b                                           ; $61d5: $05
	dec  b                                           ; $61d6: $05
	dec  b                                           ; $61d7: $05
	inc  bc                                          ; $61d8: $03
	inc  b                                           ; $61d9: $04
	inc  b                                           ; $61da: $04
	inc  b                                           ; $61db: $04
	inc  b                                           ; $61dc: $04
	inc  b                                           ; $61dd: $04
	inc  b                                           ; $61de: $04
	inc  b                                           ; $61df: $04
	inc  b                                           ; $61e0: $04
	inc  b                                           ; $61e1: $04
	inc  b                                           ; $61e2: $04
	inc  b                                           ; $61e3: $04
	inc  c                                           ; $61e4: $0c
	dec  bc                                          ; $61e5: $0b
	dec  c                                           ; $61e6: $0d
	dec  c                                           ; $61e7: $0d
	dec  b                                           ; $61e8: $05
	dec  b                                           ; $61e9: $05
	dec  b                                           ; $61ea: $05
	dec  b                                           ; $61eb: $05
	inc  b                                           ; $61ec: $04
	inc  b                                           ; $61ed: $04
	inc  b                                           ; $61ee: $04
	inc  b                                           ; $61ef: $04
	inc  b                                           ; $61f0: $04
	inc  b                                           ; $61f1: $04
	inc  b                                           ; $61f2: $04
	inc  b                                           ; $61f3: $04
	inc  b                                           ; $61f4: $04
	inc  b                                           ; $61f5: $04
	inc  b                                           ; $61f6: $04
	inc  b                                           ; $61f7: $04
	inc  c                                           ; $61f8: $0c
	dec  bc                                          ; $61f9: $0b
	dec  c                                           ; $61fa: $0d
	dec  c                                           ; $61fb: $0d
	dec  b                                           ; $61fc: $05
	dec  b                                           ; $61fd: $05
	dec  b                                           ; $61fe: $05
	dec  b                                           ; $61ff: $05
	inc  b                                           ; $6200: $04
	inc  b                                           ; $6201: $04
	inc  b                                           ; $6202: $04
	inc  b                                           ; $6203: $04
	inc  b                                           ; $6204: $04
	inc  b                                           ; $6205: $04
	inc  b                                           ; $6206: $04
	inc  b                                           ; $6207: $04
	inc  b                                           ; $6208: $04
	inc  b                                           ; $6209: $04
	inc  b                                           ; $620a: $04
	inc  b                                           ; $620b: $04
	dec  bc                                          ; $620c: $0b
	dec  c                                           ; $620d: $0d
	dec  c                                           ; $620e: $0d
	dec  c                                           ; $620f: $0d
	dec  b                                           ; $6210: $05
	dec  b                                           ; $6211: $05
	dec  b                                           ; $6212: $05
	inc  bc                                          ; $6213: $03
	inc  b                                           ; $6214: $04
	inc  b                                           ; $6215: $04
	inc  b                                           ; $6216: $04
	inc  b                                           ; $6217: $04
	inc  b                                           ; $6218: $04
	inc  b                                           ; $6219: $04
	inc  b                                           ; $621a: $04
	inc  b                                           ; $621b: $04
	inc  b                                           ; $621c: $04
	inc  b                                           ; $621d: $04
	inc  b                                           ; $621e: $04
	inc  b                                           ; $621f: $04
	dec  bc                                          ; $6220: $0b
	dec  c                                           ; $6221: $0d
	dec  c                                           ; $6222: $0d
	dec  c                                           ; $6223: $0d
	dec  b                                           ; $6224: $05
	dec  b                                           ; $6225: $05
	dec  b                                           ; $6226: $05
	inc  b                                           ; $6227: $04
	inc  b                                           ; $6228: $04
	inc  b                                           ; $6229: $04
	inc  b                                           ; $622a: $04
	inc  b                                           ; $622b: $04
	inc  b                                           ; $622c: $04
	inc  b                                           ; $622d: $04
	inc  b                                           ; $622e: $04
	inc  b                                           ; $622f: $04
	inc  b                                           ; $6230: $04
	inc  b                                           ; $6231: $04
	inc  b                                           ; $6232: $04
	inc  b                                           ; $6233: $04
	dec  bc                                          ; $6234: $0b
	dec  c                                           ; $6235: $0d
	dec  c                                           ; $6236: $0d
	dec  c                                           ; $6237: $0d
	dec  c                                           ; $6238: $0d
	dec  c                                           ; $6239: $0d
	dec  c                                           ; $623a: $0d
	inc  c                                           ; $623b: $0c
	inc  c                                           ; $623c: $0c
	inc  c                                           ; $623d: $0c
	inc  c                                           ; $623e: $0c
	inc  c                                           ; $623f: $0c
	inc  c                                           ; $6240: $0c
	inc  c                                           ; $6241: $0c
	inc  c                                           ; $6242: $0c
	inc  c                                           ; $6243: $0c
	inc  c                                           ; $6244: $0c
	inc  c                                           ; $6245: $0c
	inc  c                                           ; $6246: $0c
	inc  c                                           ; $6247: $0c
	dec  bc                                          ; $6248: $0b
	dec  c                                           ; $6249: $0d
	dec  c                                           ; $624a: $0d
	dec  bc                                          ; $624b: $0b
	dec  c                                           ; $624c: $0d
	dec  c                                           ; $624d: $0d
	dec  bc                                          ; $624e: $0b
	inc  c                                           ; $624f: $0c
	inc  c                                           ; $6250: $0c
	inc  c                                           ; $6251: $0c
	inc  c                                           ; $6252: $0c
	inc  c                                           ; $6253: $0c
	inc  c                                           ; $6254: $0c
	inc  c                                           ; $6255: $0c
	inc  c                                           ; $6256: $0c
	inc  c                                           ; $6257: $0c
	inc  c                                           ; $6258: $0c
	inc  c                                           ; $6259: $0c
	inc  c                                           ; $625a: $0c
	inc  c                                           ; $625b: $0c
	dec  c                                           ; $625c: $0d
	dec  c                                           ; $625d: $0d
	dec  c                                           ; $625e: $0d
	dec  c                                           ; $625f: $0d
	inc  hl                                          ; $6260: $23
	ld   [hl+], a                                    ; $6261: $22
	ld   hl, $0f20                                   ; $6262: $21 $20 $0f
	ld   c, $0d                                      ; $6265: $0e $0d
	inc  c                                           ; $6267: $0c
	dec  bc                                          ; $6268: $0b
	ld   a, [bc]                                     ; $6269: $0a
	add  hl, bc                                      ; $626a: $09
	ld   [$0607], sp                                 ; $626b: $08 $07 $06
	dec  b                                           ; $626e: $05
	inc  b                                           ; $626f: $04
	inc  bc                                          ; $6270: $03
	ld   [bc], a                                     ; $6271: $02
	ld   bc, $3300                                   ; $6272: $01 $00 $33
	ld   [hl-], a                                    ; $6275: $32
	ld   sp, $1f30                                   ; $6276: $31 $30 $1f
	ld   e, $1d                                      ; $6279: $1e $1d
	inc  e                                           ; $627b: $1c
	dec  de                                          ; $627c: $1b
	ld   a, [de]                                     ; $627d: $1a
	add  hl, de                                      ; $627e: $19
	jr   jr_085_6298                                 ; $627f: $18 $17

	ld   d, $15                                      ; $6281: $16 $15
	inc  d                                           ; $6283: $14
	inc  de                                          ; $6284: $13
	ld   [de], a                                     ; $6285: $12
	ld   de, $2710                                   ; $6286: $11 $10 $27
	ld   h, $25                                      ; $6289: $26 $25
	inc  h                                           ; $628b: $24
	cpl                                              ; $628c: $2f
	ld   l, $2d                                      ; $628d: $2e $2d
	inc  l                                           ; $628f: $2c
	dec  hl                                          ; $6290: $2b
	ld   a, [hl+]                                    ; $6291: $2a
	add  hl, hl                                      ; $6292: $29
	jr   z, jr_085_62bc                              ; $6293: $28 $27

	ld   h, $25                                      ; $6295: $26 $25
	inc  h                                           ; $6297: $24

jr_085_6298:
	inc  hl                                          ; $6298: $23
	ld   [hl+], a                                    ; $6299: $22
	ld   hl, $3720                                   ; $629a: $21 $20 $37
	ld   [hl], $35                                   ; $629d: $36 $35
	inc  [hl]                                        ; $629f: $34
	ccf                                              ; $62a0: $3f
	ld   a, $3d                                      ; $62a1: $3e $3d
	inc  a                                           ; $62a3: $3c
	dec  sp                                          ; $62a4: $3b
	ld   a, [hl-]                                    ; $62a5: $3a
	add  hl, sp                                      ; $62a6: $39
	jr   c, jr_085_62e0                              ; $62a7: $38 $37

	ld   [hl], $35                                   ; $62a9: $36 $35
	inc  [hl]                                        ; $62ab: $34
	inc  sp                                          ; $62ac: $33
	ld   [hl-], a                                    ; $62ad: $32
	ld   sp, $2b30                                   ; $62ae: $31 $30 $2b
	ld   a, [hl+]                                    ; $62b1: $2a
	ld   c, e                                        ; $62b2: $4b
	ld   c, d                                        ; $62b3: $4a
	ld   c, c                                        ; $62b4: $49
	ld   c, b                                        ; $62b5: $48
	ld   c, l                                        ; $62b6: $4d
	ld   c, h                                        ; $62b7: $4c
	ld   c, e                                        ; $62b8: $4b
	ld   c, d                                        ; $62b9: $4a
	ld   c, c                                        ; $62ba: $49
	ld   c, b                                        ; $62bb: $48

jr_085_62bc:
	ld   b, a                                        ; $62bc: $47
	ld   b, [hl]                                     ; $62bd: $46
	ld   b, l                                        ; $62be: $45
	ld   b, h                                        ; $62bf: $44
	ld   b, e                                        ; $62c0: $43
	ld   b, d                                        ; $62c1: $42
	ld   b, c                                        ; $62c2: $41
	ld   b, b                                        ; $62c3: $40
	dec  sp                                          ; $62c4: $3b
	ld   d, c                                        ; $62c5: $51
	ld   d, b                                        ; $62c6: $50
	ld   c, a                                        ; $62c7: $4f
	ld   c, [hl]                                     ; $62c8: $4e
	ld   c, l                                        ; $62c9: $4d
	ld   c, h                                        ; $62ca: $4c
	ld   e, h                                        ; $62cb: $5c
	ld   e, e                                        ; $62cc: $5b
	ld   e, d                                        ; $62cd: $5a
	ld   e, c                                        ; $62ce: $59
	ld   e, b                                        ; $62cf: $58
	ld   d, a                                        ; $62d0: $57
	ld   d, [hl]                                     ; $62d1: $56
	ld   d, l                                        ; $62d2: $55
	ld   d, h                                        ; $62d3: $54
	ld   d, e                                        ; $62d4: $53
	ld   d, d                                        ; $62d5: $52
	ld   d, c                                        ; $62d6: $51
	ld   d, b                                        ; $62d7: $50
	cpl                                              ; $62d8: $2f
	ld   d, a                                        ; $62d9: $57
	ld   d, [hl]                                     ; $62da: $56
	ld   d, l                                        ; $62db: $55
	ld   d, h                                        ; $62dc: $54
	ld   d, e                                        ; $62dd: $53
	ld   d, d                                        ; $62de: $52
	ld   l, h                                        ; $62df: $6c

jr_085_62e0:
	ld   l, e                                        ; $62e0: $6b
	ld   l, d                                        ; $62e1: $6a
	ld   l, c                                        ; $62e2: $69
	ld   l, b                                        ; $62e3: $68
	ld   h, a                                        ; $62e4: $67
	ld   h, [hl]                                     ; $62e5: $66
	ld   h, l                                        ; $62e6: $65
	ld   h, h                                        ; $62e7: $64
	ld   h, e                                        ; $62e8: $63
	ld   h, d                                        ; $62e9: $62
	ld   h, c                                        ; $62ea: $61
	ld   h, b                                        ; $62eb: $60
	ld   e, [hl]                                     ; $62ec: $5e
	ld   e, l                                        ; $62ed: $5d
	ld   e, h                                        ; $62ee: $5c
	ld   e, e                                        ; $62ef: $5b
	ld   e, d                                        ; $62f0: $5a
	ld   e, c                                        ; $62f1: $59
	ld   e, b                                        ; $62f2: $58
	ld   a, h                                        ; $62f3: $7c
	ld   a, e                                        ; $62f4: $7b
	ld   a, d                                        ; $62f5: $7a
	ld   a, c                                        ; $62f6: $79
	ld   a, b                                        ; $62f7: $78
	ld   [hl], a                                     ; $62f8: $77
	halt                                             ; $62f9: $76
	ld   [hl], l                                     ; $62fa: $75
	ld   [hl], h                                     ; $62fb: $74
	ld   [hl], e                                     ; $62fc: $73
	ld   [hl], d                                     ; $62fd: $72
	ld   [hl], c                                     ; $62fe: $71
	ld   [hl], b                                     ; $62ff: $70
	ld   b, e                                        ; $6300: $43
	ld   h, h                                        ; $6301: $64
	ld   h, e                                        ; $6302: $63
	ld   h, d                                        ; $6303: $62
	ld   h, c                                        ; $6304: $61
	ld   h, b                                        ; $6305: $60
	ld   e, a                                        ; $6306: $5f
	inc  c                                           ; $6307: $0c
	dec  bc                                          ; $6308: $0b
	ld   a, [bc]                                     ; $6309: $0a
	add  hl, bc                                      ; $630a: $09
	ld   [$0607], sp                                 ; $630b: $08 $07 $06
	dec  b                                           ; $630e: $05
	inc  b                                           ; $630f: $04
	inc  bc                                          ; $6310: $03
	ld   [bc], a                                     ; $6311: $02
	ld   bc, $4700                                   ; $6312: $01 $00 $47
	ld   b, [hl]                                     ; $6315: $46
	ld   h, a                                        ; $6316: $67
	ld   h, [hl]                                     ; $6317: $66
	ld   h, l                                        ; $6318: $65
	ld   e, $1d                                      ; $6319: $1e $1d
	inc  e                                           ; $631b: $1c
	dec  de                                          ; $631c: $1b
	ld   a, [de]                                     ; $631d: $1a
	add  hl, de                                      ; $631e: $19
	jr   jr_085_6338                                 ; $631f: $18 $17

	ld   d, $15                                      ; $6321: $16 $15
	inc  d                                           ; $6323: $14
	inc  de                                          ; $6324: $13
	ld   [de], a                                     ; $6325: $12
	ld   de, $2b10                                   ; $6326: $11 $10 $2b
	dec  hl                                          ; $6329: $2b
	dec  hl                                          ; $632a: $2b
	dec  hl                                          ; $632b: $2b
	inc  hl                                          ; $632c: $23
	inc  hl                                          ; $632d: $23
	inc  hl                                          ; $632e: $23
	inc  hl                                          ; $632f: $23
	inc  hl                                          ; $6330: $23
	inc  hl                                          ; $6331: $23
	inc  hl                                          ; $6332: $23
	inc  hl                                          ; $6333: $23
	inc  hl                                          ; $6334: $23
	inc  hl                                          ; $6335: $23
	inc  hl                                          ; $6336: $23
	inc  hl                                          ; $6337: $23

jr_085_6338:
	inc  hl                                          ; $6338: $23
	inc  hl                                          ; $6339: $23
	inc  hl                                          ; $633a: $23
	inc  hl                                          ; $633b: $23
	dec  hl                                          ; $633c: $2b
	dec  hl                                          ; $633d: $2b
	dec  hl                                          ; $633e: $2b
	dec  hl                                          ; $633f: $2b
	inc  h                                           ; $6340: $24
	inc  h                                           ; $6341: $24
	inc  hl                                          ; $6342: $23
	inc  hl                                          ; $6343: $23
	inc  hl                                          ; $6344: $23
	inc  hl                                          ; $6345: $23
	inc  hl                                          ; $6346: $23
	inc  hl                                          ; $6347: $23
	inc  hl                                          ; $6348: $23
	inc  hl                                          ; $6349: $23
	inc  hl                                          ; $634a: $23
	inc  h                                           ; $634b: $24
	inc  hl                                          ; $634c: $23
	inc  hl                                          ; $634d: $23
	inc  hl                                          ; $634e: $23
	inc  hl                                          ; $634f: $23
	dec  hl                                          ; $6350: $2b
	dec  hl                                          ; $6351: $2b
	dec  hl                                          ; $6352: $2b
	dec  hl                                          ; $6353: $2b
	inc  h                                           ; $6354: $24
	inc  hl                                          ; $6355: $23
	inc  hl                                          ; $6356: $23
	inc  hl                                          ; $6357: $23
	inc  hl                                          ; $6358: $23
	inc  hl                                          ; $6359: $23
	inc  hl                                          ; $635a: $23
	inc  hl                                          ; $635b: $23
	inc  hl                                          ; $635c: $23
	inc  hl                                          ; $635d: $23
	inc  hl                                          ; $635e: $23
	inc  hl                                          ; $635f: $23
	inc  h                                           ; $6360: $24
	inc  hl                                          ; $6361: $23
	inc  h                                           ; $6362: $24
	inc  hl                                          ; $6363: $23
	dec  hl                                          ; $6364: $2b
	dec  hl                                          ; $6365: $2b
	dec  hl                                          ; $6366: $2b
	dec  hl                                          ; $6367: $2b
	inc  h                                           ; $6368: $24
	inc  h                                           ; $6369: $24
	inc  hl                                          ; $636a: $23
	inc  hl                                          ; $636b: $23
	inc  hl                                          ; $636c: $23
	inc  hl                                          ; $636d: $23
	inc  hl                                          ; $636e: $23
	inc  h                                           ; $636f: $24
	inc  hl                                          ; $6370: $23
	inc  hl                                          ; $6371: $23
	inc  hl                                          ; $6372: $23
	inc  hl                                          ; $6373: $23
	inc  h                                           ; $6374: $24
	inc  hl                                          ; $6375: $23
	inc  h                                           ; $6376: $24
	inc  hl                                          ; $6377: $23
	dec  hl                                          ; $6378: $2b
	dec  hl                                          ; $6379: $2b
	dec  hl                                          ; $637a: $2b
	inc  l                                           ; $637b: $2c
	inc  l                                           ; $637c: $2c
	dec  hl                                          ; $637d: $2b
	inc  h                                           ; $637e: $24
	inc  hl                                          ; $637f: $23
	inc  hl                                          ; $6380: $23
	inc  hl                                          ; $6381: $23
	inc  hl                                          ; $6382: $23
	inc  h                                           ; $6383: $24
	inc  h                                           ; $6384: $24
	inc  hl                                          ; $6385: $23
	inc  h                                           ; $6386: $24
	inc  h                                           ; $6387: $24
	inc  hl                                          ; $6388: $23
	inc  h                                           ; $6389: $24
	inc  hl                                          ; $638a: $23
	inc  hl                                          ; $638b: $23
	dec  hl                                          ; $638c: $2b
	dec  hl                                          ; $638d: $2b
	dec  hl                                          ; $638e: $2b
	dec  hl                                          ; $638f: $2b
	inc  l                                           ; $6390: $2c
	dec  hl                                          ; $6391: $2b
	dec  hl                                          ; $6392: $2b
	inc  hl                                          ; $6393: $23
	inc  hl                                          ; $6394: $23
	inc  hl                                          ; $6395: $23
	inc  hl                                          ; $6396: $23
	inc  hl                                          ; $6397: $23
	inc  h                                           ; $6398: $24
	inc  hl                                          ; $6399: $23
	inc  hl                                          ; $639a: $23
	inc  hl                                          ; $639b: $23
	inc  hl                                          ; $639c: $23
	inc  hl                                          ; $639d: $23
	inc  hl                                          ; $639e: $23
	dec  h                                           ; $639f: $25
	dec  l                                           ; $63a0: $2d
	dec  l                                           ; $63a1: $2d
	dec  hl                                          ; $63a2: $2b
	inc  l                                           ; $63a3: $2c
	inc  l                                           ; $63a4: $2c
	inc  l                                           ; $63a5: $2c
	dec  hl                                          ; $63a6: $2b
	dec  h                                           ; $63a7: $25
	dec  h                                           ; $63a8: $25
	dec  h                                           ; $63a9: $25
	dec  h                                           ; $63aa: $25
	inc  hl                                          ; $63ab: $23
	inc  h                                           ; $63ac: $24
	inc  hl                                          ; $63ad: $23
	inc  hl                                          ; $63ae: $23
	inc  hl                                          ; $63af: $23
	inc  hl                                          ; $63b0: $23
	inc  h                                           ; $63b1: $24
	inc  hl                                          ; $63b2: $23
	inc  hl                                          ; $63b3: $23
	dec  hl                                          ; $63b4: $2b
	dec  hl                                          ; $63b5: $2b
	dec  hl                                          ; $63b6: $2b
	dec  hl                                          ; $63b7: $2b
	inc  l                                           ; $63b8: $2c
	dec  hl                                          ; $63b9: $2b
	dec  hl                                          ; $63ba: $2b
	inc  hl                                          ; $63bb: $23
	inc  hl                                          ; $63bc: $23
	dec  h                                           ; $63bd: $25
	inc  hl                                          ; $63be: $23
	inc  hl                                          ; $63bf: $23
	inc  hl                                          ; $63c0: $23
	inc  hl                                          ; $63c1: $23
	dec  h                                           ; $63c2: $25
	dec  h                                           ; $63c3: $25
	dec  h                                           ; $63c4: $25
	inc  h                                           ; $63c5: $24
	inc  hl                                          ; $63c6: $23
	inc  hl                                          ; $63c7: $23
	dec  l                                           ; $63c8: $2d
	dec  l                                           ; $63c9: $2d
	dec  hl                                          ; $63ca: $2b
	dec  hl                                          ; $63cb: $2b
	dec  hl                                          ; $63cc: $2b
	dec  hl                                          ; $63cd: $2b
	dec  hl                                          ; $63ce: $2b
	dec  hl                                          ; $63cf: $2b
	dec  l                                           ; $63d0: $2d
	dec  l                                           ; $63d1: $2d
	dec  l                                           ; $63d2: $2d
	dec  hl                                          ; $63d3: $2b
	dec  hl                                          ; $63d4: $2b
	dec  hl                                          ; $63d5: $2b
	dec  hl                                          ; $63d6: $2b
	dec  l                                           ; $63d7: $2d
	dec  l                                           ; $63d8: $2d
	inc  l                                           ; $63d9: $2c
	dec  hl                                          ; $63da: $2b
	dec  hl                                          ; $63db: $2b
	dec  l                                           ; $63dc: $2d
	dec  l                                           ; $63dd: $2d
	dec  l                                           ; $63de: $2d
	dec  l                                           ; $63df: $2d
	dec  l                                           ; $63e0: $2d
	dec  l                                           ; $63e1: $2d
	dec  l                                           ; $63e2: $2d
	dec  l                                           ; $63e3: $2d
	dec  l                                           ; $63e4: $2d
	dec  l                                           ; $63e5: $2d
	dec  l                                           ; $63e6: $2d
	dec  l                                           ; $63e7: $2d
	dec  l                                           ; $63e8: $2d
	dec  l                                           ; $63e9: $2d
	dec  l                                           ; $63ea: $2d
	dec  l                                           ; $63eb: $2d
	dec  l                                           ; $63ec: $2d
	dec  l                                           ; $63ed: $2d
	dec  l                                           ; $63ee: $2d
	dec  l                                           ; $63ef: $2d
	nop                                              ; $63f0: $00
	ld   bc, $0101                                   ; $63f1: $01 $01 $01
	ld   bc, $0101                                   ; $63f4: $01 $01 $01
	ld   bc, $0101                                   ; $63f7: $01 $01 $01
	ld   bc, $0101                                   ; $63fa: $01 $01 $01
	ld   bc, $0101                                   ; $63fd: $01 $01 $01
	ld   bc, $0101                                   ; $6400: $01 $01 $01
	nop                                              ; $6403: $00
	ld   [bc], a                                     ; $6404: $02
	inc  bc                                          ; $6405: $03
	inc  b                                           ; $6406: $04
	dec  b                                           ; $6407: $05
	ld   de, $1111                                   ; $6408: $11 $11 $11
	ld   b, $07                                      ; $640b: $06 $07
	ld   [$0a09], sp                                 ; $640d: $08 $09 $0a
	dec  bc                                          ; $6410: $0b
	inc  c                                           ; $6411: $0c
	dec  c                                           ; $6412: $0d
	ld   de, $0e11                                   ; $6413: $11 $11 $0e
	rrca                                             ; $6416: $0f
	ld   [bc], a                                     ; $6417: $02
	ld   [bc], a                                     ; $6418: $02
	ld   a, d                                        ; $6419: $7a
	ld   a, e                                        ; $641a: $7b
	ld   a, h                                        ; $641b: $7c
	ld   de, $1111                                   ; $641c: $11 $11 $11
	ld   [de], a                                     ; $641f: $12
	inc  de                                          ; $6420: $13
	inc  d                                           ; $6421: $14
	dec  d                                           ; $6422: $15
	ld   d, $17                                      ; $6423: $16 $17
	jr   jr_085_6440                                 ; $6425: $18 $19

	ld   de, $1111                                   ; $6427: $11 $11 $11
	ld   [bc], a                                     ; $642a: $02
	ld   [bc], a                                     ; $642b: $02
	ld   [bc], a                                     ; $642c: $02
	ld   a, l                                        ; $642d: $7d
	ld   a, [hl]                                     ; $642e: $7e
	ld   a, a                                        ; $642f: $7f
	ld   a, [de]                                     ; $6430: $1a
	dec  de                                          ; $6431: $1b
	inc  e                                           ; $6432: $1c
	dec  e                                           ; $6433: $1d
	ld   e, $1f                                      ; $6434: $1e $1f
	jr   nz, @+$23                                   ; $6436: $20 $21

	ld   [hl+], a                                    ; $6438: $22
	inc  hl                                          ; $6439: $23
	inc  h                                           ; $643a: $24
	dec  h                                           ; $643b: $25
	ld   h, $27                                      ; $643c: $26 $27
	ld   [bc], a                                     ; $643e: $02
	ld   [bc], a                                     ; $643f: $02

jr_085_6440:
	ld   [bc], a                                     ; $6440: $02
	ld   a, l                                        ; $6441: $7d
	ld   a, [hl]                                     ; $6442: $7e
	ld   a, a                                        ; $6443: $7f
	jr   z, jr_085_646f                              ; $6444: $28 $29

	ld   a, [hl+]                                    ; $6446: $2a
	dec  hl                                          ; $6447: $2b
	inc  l                                           ; $6448: $2c
	dec  l                                           ; $6449: $2d
	ld   l, $2f                                      ; $644a: $2e $2f
	jr   nc, jr_085_647f                             ; $644c: $30 $31

	ld   [hl-], a                                    ; $644e: $32
	inc  sp                                          ; $644f: $33
	inc  [hl]                                        ; $6450: $34
	dec  [hl]                                        ; $6451: $35
	ld   [bc], a                                     ; $6452: $02
	ld   [bc], a                                     ; $6453: $02
	ld   [bc], a                                     ; $6454: $02
	ld   a, l                                        ; $6455: $7d
	ld   a, [hl]                                     ; $6456: $7e
	ld   a, a                                        ; $6457: $7f
	ld   [hl], $37                                   ; $6458: $36 $37
	jr   c, jr_085_6495                              ; $645a: $38 $39

	ld   a, [hl-]                                    ; $645c: $3a
	dec  sp                                          ; $645d: $3b
	inc  a                                           ; $645e: $3c
	dec  a                                           ; $645f: $3d
	ld   a, $3f                                      ; $6460: $3e $3f
	ld   b, b                                        ; $6462: $40
	ld   b, c                                        ; $6463: $41
	ld   b, d                                        ; $6464: $42
	ld   b, e                                        ; $6465: $43
	ld   [bc], a                                     ; $6466: $02
	ld   [bc], a                                     ; $6467: $02
	ld   [bc], a                                     ; $6468: $02
	ld   a, l                                        ; $6469: $7d
	ld   a, [hl]                                     ; $646a: $7e
	ld   a, a                                        ; $646b: $7f
	ld   b, h                                        ; $646c: $44
	ld   b, l                                        ; $646d: $45
	ld   b, [hl]                                     ; $646e: $46

jr_085_646f:
	ld   b, a                                        ; $646f: $47
	ld   c, b                                        ; $6470: $48
	ld   c, c                                        ; $6471: $49
	ld   c, d                                        ; $6472: $4a
	ld   c, e                                        ; $6473: $4b
	ld   c, h                                        ; $6474: $4c
	ld   c, l                                        ; $6475: $4d
	ld   c, [hl]                                     ; $6476: $4e
	ld   c, a                                        ; $6477: $4f
	ld   d, b                                        ; $6478: $50
	ld   b, e                                        ; $6479: $43
	ld   [bc], a                                     ; $647a: $02
	ld   [bc], a                                     ; $647b: $02
	ld   [bc], a                                     ; $647c: $02
	ld   a, l                                        ; $647d: $7d
	ld   a, [hl]                                     ; $647e: $7e

jr_085_647f:
	ld   a, a                                        ; $647f: $7f
	ld   d, d                                        ; $6480: $52
	ld   d, e                                        ; $6481: $53
	ld   d, h                                        ; $6482: $54
	ld   d, l                                        ; $6483: $55
	ld   d, [hl]                                     ; $6484: $56
	ld   d, a                                        ; $6485: $57
	ld   e, b                                        ; $6486: $58
	ld   e, c                                        ; $6487: $59
	ld   e, d                                        ; $6488: $5a
	ld   e, e                                        ; $6489: $5b
	ld   e, h                                        ; $648a: $5c
	ld   e, l                                        ; $648b: $5d
	ld   e, [hl]                                     ; $648c: $5e
	ld   e, a                                        ; $648d: $5f
	ld   h, b                                        ; $648e: $60
	ld   [bc], a                                     ; $648f: $02
	ld   [bc], a                                     ; $6490: $02
	ld   a, l                                        ; $6491: $7d
	nop                                              ; $6492: $00
	inc  bc                                          ; $6493: $03
	ld   h, d                                        ; $6494: $62

jr_085_6495:
	ld   de, $6463                                   ; $6495: $11 $63 $64
	ld   h, l                                        ; $6498: $65
	ld   de, $6766                                   ; $6499: $11 $66 $67
	ld   l, b                                        ; $649c: $68
	ld   l, c                                        ; $649d: $69
	ld   l, d                                        ; $649e: $6a
	ld   l, e                                        ; $649f: $6b
	ld   l, h                                        ; $64a0: $6c
	ld   l, l                                        ; $64a1: $6d
	ld   l, [hl]                                     ; $64a2: $6e
	ld   [bc], a                                     ; $64a3: $02
	ld   [bc], a                                     ; $64a4: $02
	ld   a, l                                        ; $64a5: $7d
	ld   bc, $7002                                   ; $64a6: $01 $02 $70
	ld   [hl], c                                     ; $64a9: $71
	ld   [hl], d                                     ; $64aa: $72
	ld   [hl], e                                     ; $64ab: $73
	ld   h, l                                        ; $64ac: $65
	ld   de, $7574                                   ; $64ad: $11 $74 $75
	ld   de, $1169                                   ; $64b0: $11 $69 $11
	halt                                             ; $64b3: $76
	ld   [hl], a                                     ; $64b4: $77
	ld   a, b                                        ; $64b5: $78
	ld   a, c                                        ; $64b6: $79
	ld   [bc], a                                     ; $64b7: $02
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
	inc  bc                                          ; $64c8: $03
	inc  bc                                          ; $64c9: $03
	inc  bc                                          ; $64ca: $03
	inc  hl                                          ; $64cb: $23
	inc  bc                                          ; $64cc: $03
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
	inc  bc                                          ; $64dc: $03
	inc  bc                                          ; $64dd: $03
	inc  bc                                          ; $64de: $03
	inc  hl                                          ; $64df: $23
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
	inc  bc                                          ; $64f0: $03
	inc  bc                                          ; $64f1: $03
	inc  bc                                          ; $64f2: $03
	inc  hl                                          ; $64f3: $23
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
	inc  bc                                          ; $6504: $03
	inc  bc                                          ; $6505: $03
	inc  bc                                          ; $6506: $03
	inc  hl                                          ; $6507: $23
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
	inc  bc                                          ; $6517: $03
	inc  bc                                          ; $6518: $03
	inc  bc                                          ; $6519: $03
	inc  bc                                          ; $651a: $03
	inc  hl                                          ; $651b: $23
	inc  bc                                          ; $651c: $03
	inc  bc                                          ; $651d: $03
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
	inc  hl                                          ; $652f: $23
	inc  bc                                          ; $6530: $03
	inc  bc                                          ; $6531: $03
	inc  bc                                          ; $6532: $03
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
	inc  bc                                          ; $6540: $03
	inc  bc                                          ; $6541: $03
	inc  bc                                          ; $6542: $03
	inc  hl                                          ; $6543: $23
	inc  bc                                          ; $6544: $03
	inc  bc                                          ; $6545: $03
	inc  bc                                          ; $6546: $03
	inc  bc                                          ; $6547: $03
	inc  bc                                          ; $6548: $03
	inc  bc                                          ; $6549: $03
	inc  bc                                          ; $654a: $03
	inc  bc                                          ; $654b: $03
	inc  bc                                          ; $654c: $03
	inc  bc                                          ; $654d: $03
	inc  bc                                          ; $654e: $03
	inc  bc                                          ; $654f: $03
	inc  bc                                          ; $6550: $03
	inc  bc                                          ; $6551: $03
	inc  bc                                          ; $6552: $03
	inc  bc                                          ; $6553: $03
	inc  bc                                          ; $6554: $03
	inc  bc                                          ; $6555: $03
	inc  bc                                          ; $6556: $03
	inc  hl                                          ; $6557: $23
	inc  bc                                          ; $6558: $03
	inc  bc                                          ; $6559: $03
	dec  bc                                          ; $655a: $0b
	dec  bc                                          ; $655b: $0b
	inc  bc                                          ; $655c: $03
	inc  bc                                          ; $655d: $03
	inc  bc                                          ; $655e: $03
	inc  bc                                          ; $655f: $03
	inc  bc                                          ; $6560: $03
	inc  bc                                          ; $6561: $03
	inc  bc                                          ; $6562: $03
	inc  bc                                          ; $6563: $03
	inc  bc                                          ; $6564: $03
	inc  bc                                          ; $6565: $03
	inc  bc                                          ; $6566: $03
	inc  bc                                          ; $6567: $03
	inc  bc                                          ; $6568: $03
	inc  bc                                          ; $6569: $03
	inc  bc                                          ; $656a: $03
	inc  hl                                          ; $656b: $23
	inc  bc                                          ; $656c: $03
	inc  bc                                          ; $656d: $03
	dec  bc                                          ; $656e: $0b
	dec  bc                                          ; $656f: $0b
	inc  bc                                          ; $6570: $03
	inc  bc                                          ; $6571: $03
	inc  bc                                          ; $6572: $03
	inc  bc                                          ; $6573: $03
	inc  bc                                          ; $6574: $03
	inc  bc                                          ; $6575: $03
	inc  bc                                          ; $6576: $03
	inc  bc                                          ; $6577: $03
	inc  bc                                          ; $6578: $03
	inc  bc                                          ; $6579: $03
	inc  bc                                          ; $657a: $03
	inc  bc                                          ; $657b: $03
	inc  bc                                          ; $657c: $03
	inc  bc                                          ; $657d: $03
	inc  bc                                          ; $657e: $03
	inc  hl                                          ; $657f: $23
	dec  b                                           ; $6580: $05
	dec  c                                           ; $6581: $0d
	dec  c                                           ; $6582: $0d
	dec  c                                           ; $6583: $0d
	dec  c                                           ; $6584: $0d
	dec  c                                           ; $6585: $0d
	dec  c                                           ; $6586: $0d
	dec  c                                           ; $6587: $0d
	dec  c                                           ; $6588: $0d
	dec  c                                           ; $6589: $0d
	dec  c                                           ; $658a: $0d
	dec  c                                           ; $658b: $0d
	dec  c                                           ; $658c: $0d
	dec  c                                           ; $658d: $0d
	dec  c                                           ; $658e: $0d
	dec  c                                           ; $658f: $0d
	dec  c                                           ; $6590: $0d
	dec  c                                           ; $6591: $0d
	dec  c                                           ; $6592: $0d
	ld   a, $08                                      ; $6593: $3e $08
	rrca                                             ; $6595: $0f
	rrca                                             ; $6596: $0f
	rrca                                             ; $6597: $0f
	rrca                                             ; $6598: $0f
	rrca                                             ; $6599: $0f
	rrca                                             ; $659a: $0f
	rrca                                             ; $659b: $0f
	rrca                                             ; $659c: $0f
	rrca                                             ; $659d: $0f
	rrca                                             ; $659e: $0f
	rrca                                             ; $659f: $0f
	rrca                                             ; $65a0: $0f
	rrca                                             ; $65a1: $0f
	rrca                                             ; $65a2: $0f
	rrca                                             ; $65a3: $0f
	rrca                                             ; $65a4: $0f
	rrca                                             ; $65a5: $0f
	rrca                                             ; $65a6: $0f
	ccf                                              ; $65a7: $3f
	ld   a, [bc]                                     ; $65a8: $0a
	rra                                              ; $65a9: $1f
	rra                                              ; $65aa: $1f
	rra                                              ; $65ab: $1f
	rra                                              ; $65ac: $1f
	rra                                              ; $65ad: $1f
	rra                                              ; $65ae: $1f
	rra                                              ; $65af: $1f
	rra                                              ; $65b0: $1f
	rra                                              ; $65b1: $1f
	rra                                              ; $65b2: $1f
	rra                                              ; $65b3: $1f
	rra                                              ; $65b4: $1f
	rra                                              ; $65b5: $1f
	rra                                              ; $65b6: $1f
	rra                                              ; $65b7: $1f
	rra                                              ; $65b8: $1f
	rra                                              ; $65b9: $1f
	rra                                              ; $65ba: $1f
	ld   c, l                                        ; $65bb: $4d
	dec  bc                                          ; $65bc: $0b
	cpl                                              ; $65bd: $2f
	cpl                                              ; $65be: $2f
	cpl                                              ; $65bf: $2f
	cpl                                              ; $65c0: $2f
	cpl                                              ; $65c1: $2f
	cpl                                              ; $65c2: $2f
	cpl                                              ; $65c3: $2f
	cpl                                              ; $65c4: $2f
	cpl                                              ; $65c5: $2f
	cpl                                              ; $65c6: $2f
	cpl                                              ; $65c7: $2f
	cpl                                              ; $65c8: $2f
	cpl                                              ; $65c9: $2f
	cpl                                              ; $65ca: $2f
	cpl                                              ; $65cb: $2f
	cpl                                              ; $65cc: $2f
	cpl                                              ; $65cd: $2f
	cpl                                              ; $65ce: $2f
	ld   c, [hl]                                     ; $65cf: $4e
	nop                                              ; $65d0: $00
	ld   bc, $0202                                   ; $65d1: $01 $02 $02
	inc  bc                                          ; $65d4: $03
	inc  b                                           ; $65d5: $04
	ld   [bc], a                                     ; $65d6: $02
	ld   [bc], a                                     ; $65d7: $02
	ld   b, $07                                      ; $65d8: $06 $07
	ld   [bc], a                                     ; $65da: $02
	ld   [bc], a                                     ; $65db: $02
	add  hl, bc                                      ; $65dc: $09
	ld   [bc], a                                     ; $65dd: $02
	ld   [bc], a                                     ; $65de: $02
	ld   [bc], a                                     ; $65df: $02
	inc  c                                           ; $65e0: $0c
	ld   [bc], a                                     ; $65e1: $02
	ld   [bc], a                                     ; $65e2: $02
	ld   c, $10                                      ; $65e3: $0e $10
	ld   de, $1212                                   ; $65e5: $11 $12 $12
	inc  de                                          ; $65e8: $13
	inc  d                                           ; $65e9: $14
	ld   [de], a                                     ; $65ea: $12
	dec  d                                           ; $65eb: $15
	ld   d, $17                                      ; $65ec: $16 $17
	ld   [de], a                                     ; $65ee: $12
	jr   jr_085_660a                                 ; $65ef: $18 $19

	ld   a, [de]                                     ; $65f1: $1a
	ld   [de], a                                     ; $65f2: $12
	dec  de                                          ; $65f3: $1b
	inc  e                                           ; $65f4: $1c
	dec  e                                           ; $65f5: $1d
	ld   [de], a                                     ; $65f6: $12
	ld   e, $20                                      ; $65f7: $1e $20
	ld   hl, $2222                                   ; $65f9: $21 $22 $22
	inc  hl                                          ; $65fc: $23
	inc  h                                           ; $65fd: $24
	ld   [hl+], a                                    ; $65fe: $22
	dec  h                                           ; $65ff: $25
	ld   h, $27                                      ; $6600: $26 $27
	ld   [hl+], a                                    ; $6602: $22
	jr   z, jr_085_662e                              ; $6603: $28 $29

	ld   a, [hl+]                                    ; $6605: $2a
	ld   [hl+], a                                    ; $6606: $22
	dec  hl                                          ; $6607: $2b
	inc  l                                           ; $6608: $2c
	dec  l                                           ; $6609: $2d

jr_085_660a:
	ld   [hl+], a                                    ; $660a: $22
	ld   l, $30                                      ; $660b: $2e $30
	ld   sp, $3131                                   ; $660d: $31 $31 $31
	ld   sp, $3331                                   ; $6610: $31 $31 $33
	inc  [hl]                                        ; $6613: $34
	dec  [hl]                                        ; $6614: $35
	dec  [hl]                                        ; $6615: $35
	dec  [hl]                                        ; $6616: $35
	ld   [hl], $37                                   ; $6617: $36 $37
	scf                                              ; $6619: $37
	scf                                              ; $661a: $37
	jr   c, jr_085_6656                              ; $661b: $38 $39

	ld   a, [hl-]                                    ; $661d: $3a
	dec  sp                                          ; $661e: $3b
	inc  a                                           ; $661f: $3c
	ld   b, b                                        ; $6620: $40
	ld   b, c                                        ; $6621: $41
	ld   b, d                                        ; $6622: $42
	ld   b, e                                        ; $6623: $43
	ld   b, e                                        ; $6624: $43
	ld   [hl-], a                                    ; $6625: $32
	ld   [hl-], a                                    ; $6626: $32
	ld   b, h                                        ; $6627: $44
	ld   b, l                                        ; $6628: $45
	ld   b, l                                        ; $6629: $45
	ld   b, l                                        ; $662a: $45
	ld   b, [hl]                                     ; $662b: $46
	ld   b, a                                        ; $662c: $47
	ld   c, a                                        ; $662d: $4f

jr_085_662e:
	ld   c, a                                        ; $662e: $4f
	ld   c, b                                        ; $662f: $48
	ld   c, c                                        ; $6630: $49
	ld   c, d                                        ; $6631: $4a
	ld   c, e                                        ; $6632: $4b
	ld   c, h                                        ; $6633: $4c
	ld   d, b                                        ; $6634: $50
	ld   d, c                                        ; $6635: $51
	ld   d, d                                        ; $6636: $52
	ld   d, e                                        ; $6637: $53
	ld   d, e                                        ; $6638: $53
	ld   d, e                                        ; $6639: $53
	ld   d, e                                        ; $663a: $53
	ld   d, e                                        ; $663b: $53
	ld   d, e                                        ; $663c: $53
	ld   d, e                                        ; $663d: $53
	ld   d, e                                        ; $663e: $53
	ld   d, e                                        ; $663f: $53
	ld   d, e                                        ; $6640: $53
	ld   d, e                                        ; $6641: $53
	ld   d, e                                        ; $6642: $53
	ld   d, e                                        ; $6643: $53
	ld   d, e                                        ; $6644: $53
	ld   d, e                                        ; $6645: $53
	ld   d, e                                        ; $6646: $53
	dec  a                                           ; $6647: $3d
	inc  b                                           ; $6648: $04
	inc  b                                           ; $6649: $04
	inc  b                                           ; $664a: $04
	inc  b                                           ; $664b: $04
	inc  b                                           ; $664c: $04
	inc  b                                           ; $664d: $04
	inc  b                                           ; $664e: $04
	inc  b                                           ; $664f: $04
	inc  b                                           ; $6650: $04
	inc  b                                           ; $6651: $04
	inc  b                                           ; $6652: $04
	inc  b                                           ; $6653: $04
	inc  b                                           ; $6654: $04
	inc  b                                           ; $6655: $04

jr_085_6656:
	inc  b                                           ; $6656: $04
	inc  b                                           ; $6657: $04
	inc  b                                           ; $6658: $04
	inc  b                                           ; $6659: $04
	inc  b                                           ; $665a: $04
	inc  b                                           ; $665b: $04
	inc  b                                           ; $665c: $04
	inc  b                                           ; $665d: $04
	inc  b                                           ; $665e: $04
	inc  b                                           ; $665f: $04
	inc  b                                           ; $6660: $04
	inc  b                                           ; $6661: $04
	inc  b                                           ; $6662: $04
	inc  b                                           ; $6663: $04
	inc  b                                           ; $6664: $04
	inc  b                                           ; $6665: $04
	inc  b                                           ; $6666: $04
	inc  b                                           ; $6667: $04
	inc  b                                           ; $6668: $04
	inc  b                                           ; $6669: $04
	inc  b                                           ; $666a: $04
	inc  b                                           ; $666b: $04
	inc  b                                           ; $666c: $04
	inc  b                                           ; $666d: $04
	inc  b                                           ; $666e: $04
	inc  b                                           ; $666f: $04
	inc  b                                           ; $6670: $04
	inc  b                                           ; $6671: $04
	inc  b                                           ; $6672: $04
	inc  b                                           ; $6673: $04
	inc  b                                           ; $6674: $04
	inc  b                                           ; $6675: $04
	inc  b                                           ; $6676: $04
	inc  b                                           ; $6677: $04
	inc  b                                           ; $6678: $04
	inc  b                                           ; $6679: $04
	inc  b                                           ; $667a: $04
	inc  b                                           ; $667b: $04
	inc  b                                           ; $667c: $04
	inc  b                                           ; $667d: $04
	inc  b                                           ; $667e: $04
	inc  b                                           ; $667f: $04
	inc  b                                           ; $6680: $04
	inc  b                                           ; $6681: $04
	inc  b                                           ; $6682: $04
	inc  b                                           ; $6683: $04
	inc  b                                           ; $6684: $04
	inc  b                                           ; $6685: $04
	inc  b                                           ; $6686: $04
	inc  b                                           ; $6687: $04
	inc  b                                           ; $6688: $04
	inc  b                                           ; $6689: $04
	inc  b                                           ; $668a: $04
	inc  b                                           ; $668b: $04
	inc  b                                           ; $668c: $04
	inc  b                                           ; $668d: $04
	inc  b                                           ; $668e: $04
	inc  b                                           ; $668f: $04
	inc  b                                           ; $6690: $04
	inc  b                                           ; $6691: $04
	inc  b                                           ; $6692: $04
	inc  b                                           ; $6693: $04
	inc  b                                           ; $6694: $04
	inc  b                                           ; $6695: $04
	inc  b                                           ; $6696: $04
	inc  b                                           ; $6697: $04
	inc  bc                                          ; $6698: $03
	inc  bc                                          ; $6699: $03
	inc  bc                                          ; $669a: $03
	inc  bc                                          ; $669b: $03
	inc  bc                                          ; $669c: $03
	inc  bc                                          ; $669d: $03
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
	inc  bc                                          ; $66a8: $03
	inc  bc                                          ; $66a9: $03
	inc  bc                                          ; $66aa: $03
	inc  bc                                          ; $66ab: $03
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
	inc  bc                                          ; $66b9: $03
	inc  bc                                          ; $66ba: $03
	inc  bc                                          ; $66bb: $03
	inc  bc                                          ; $66bc: $03
	inc  bc                                          ; $66bd: $03
	inc  bc                                          ; $66be: $03
	inc  bc                                          ; $66bf: $03
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
	inc  bc                                          ; $66cd: $03
	inc  bc                                          ; $66ce: $03
	inc  bc                                          ; $66cf: $03
	inc  bc                                          ; $66d0: $03
	inc  bc                                          ; $66d1: $03
	inc  bc                                          ; $66d2: $03
	inc  bc                                          ; $66d3: $03
	dec  b                                           ; $66d4: $05
	dec  b                                           ; $66d5: $05
	dec  b                                           ; $66d6: $05
	dec  b                                           ; $66d7: $05
	dec  b                                           ; $66d8: $05
	dec  b                                           ; $66d9: $05
	dec  b                                           ; $66da: $05
	dec  b                                           ; $66db: $05
	dec  b                                           ; $66dc: $05
	dec  b                                           ; $66dd: $05
	dec  b                                           ; $66de: $05
	dec  b                                           ; $66df: $05
	dec  b                                           ; $66e0: $05
	dec  b                                           ; $66e1: $05
	dec  b                                           ; $66e2: $05
	dec  b                                           ; $66e3: $05
	dec  b                                           ; $66e4: $05
	dec  b                                           ; $66e5: $05
	dec  b                                           ; $66e6: $05
	dec  b                                           ; $66e7: $05
	dec  b                                           ; $66e8: $05
	dec  b                                           ; $66e9: $05
	dec  b                                           ; $66ea: $05
	dec  b                                           ; $66eb: $05
	dec  b                                           ; $66ec: $05
	dec  b                                           ; $66ed: $05
	dec  b                                           ; $66ee: $05
	dec  b                                           ; $66ef: $05
	dec  b                                           ; $66f0: $05
	dec  b                                           ; $66f1: $05
	dec  b                                           ; $66f2: $05
	dec  b                                           ; $66f3: $05
	dec  b                                           ; $66f4: $05
	dec  b                                           ; $66f5: $05
	dec  b                                           ; $66f6: $05
	dec  b                                           ; $66f7: $05
	dec  b                                           ; $66f8: $05
	dec  b                                           ; $66f9: $05
	dec  b                                           ; $66fa: $05
	dec  b                                           ; $66fb: $05
	dec  b                                           ; $66fc: $05
	dec  b                                           ; $66fd: $05
	dec  b                                           ; $66fe: $05
	dec  b                                           ; $66ff: $05
	dec  b                                           ; $6700: $05
	dec  b                                           ; $6701: $05
	dec  b                                           ; $6702: $05
	dec  b                                           ; $6703: $05
	dec  b                                           ; $6704: $05
	dec  b                                           ; $6705: $05
	dec  b                                           ; $6706: $05
	dec  b                                           ; $6707: $05
	dec  b                                           ; $6708: $05
	dec  b                                           ; $6709: $05
	dec  b                                           ; $670a: $05
	dec  b                                           ; $670b: $05
	dec  b                                           ; $670c: $05
	dec  b                                           ; $670d: $05
	dec  b                                           ; $670e: $05
	dec  b                                           ; $670f: $05
	nop                                              ; $6710: $00
	ld   bc, $0302                                   ; $6711: $01 $02 $03
	inc  b                                           ; $6714: $04
	dec  b                                           ; $6715: $05
	ld   b, $07                                      ; $6716: $06 $07
	ld   [$0a09], sp                                 ; $6718: $08 $09 $0a
	dec  bc                                          ; $671b: $0b
	inc  c                                           ; $671c: $0c
	dec  c                                           ; $671d: $0d
	ld   c, $0f                                      ; $671e: $0e $0f
	jr   nz, jr_085_6743                             ; $6720: $20 $21

	ld   [hl+], a                                    ; $6722: $22
	inc  hl                                          ; $6723: $23
	db   $10                                         ; $6724: $10
	ld   de, $1312                                   ; $6725: $11 $12 $13
	inc  d                                           ; $6728: $14
	dec  d                                           ; $6729: $15
	ld   d, $17                                      ; $672a: $16 $17
	jr   @+$1b                                       ; $672c: $18 $19

	ld   a, [de]                                     ; $672e: $1a
	dec  de                                          ; $672f: $1b
	inc  e                                           ; $6730: $1c
	dec  e                                           ; $6731: $1d
	ld   e, $1f                                      ; $6732: $1e $1f
	jr   nc, jr_085_6767                             ; $6734: $30 $31

	ld   [hl-], a                                    ; $6736: $32
	inc  sp                                          ; $6737: $33
	jr   nz, @+$23                                   ; $6738: $20 $21

	ld   [hl+], a                                    ; $673a: $22
	inc  hl                                          ; $673b: $23
	inc  h                                           ; $673c: $24
	dec  h                                           ; $673d: $25
	ld   h, $27                                      ; $673e: $26 $27
	jr   z, jr_085_676b                              ; $6740: $28 $29

	ld   a, [hl+]                                    ; $6742: $2a

jr_085_6743:
	dec  hl                                          ; $6743: $2b
	inc  l                                           ; $6744: $2c
	dec  l                                           ; $6745: $2d
	ld   l, $2f                                      ; $6746: $2e $2f
	inc  h                                           ; $6748: $24
	dec  h                                           ; $6749: $25
	ld   h, $27                                      ; $674a: $26 $27
	jr   nc, jr_085_677f                             ; $674c: $30 $31

	ld   [hl-], a                                    ; $674e: $32
	inc  sp                                          ; $674f: $33
	inc  [hl]                                        ; $6750: $34
	dec  [hl]                                        ; $6751: $35
	ld   [hl], $37                                   ; $6752: $36 $37
	jr   c, jr_085_678f                              ; $6754: $38 $39

	ld   a, [hl-]                                    ; $6756: $3a
	dec  sp                                          ; $6757: $3b
	inc  a                                           ; $6758: $3c
	dec  a                                           ; $6759: $3d
	ld   a, $3f                                      ; $675a: $3e $3f
	inc  [hl]                                        ; $675c: $34
	dec  [hl]                                        ; $675d: $35
	ld   [hl], $37                                   ; $675e: $36 $37
	ld   b, b                                        ; $6760: $40
	ld   b, c                                        ; $6761: $41
	ld   b, d                                        ; $6762: $42
	ld   b, e                                        ; $6763: $43
	ld   b, h                                        ; $6764: $44
	ld   b, l                                        ; $6765: $45
	ld   b, [hl]                                     ; $6766: $46

jr_085_6767:
	ld   b, a                                        ; $6767: $47
	ld   c, b                                        ; $6768: $48
	ld   c, c                                        ; $6769: $49
	ld   c, d                                        ; $676a: $4a

jr_085_676b:
	ld   c, e                                        ; $676b: $4b
	ld   c, h                                        ; $676c: $4c
	ld   c, l                                        ; $676d: $4d
	ld   c, [hl]                                     ; $676e: $4e
	ld   c, a                                        ; $676f: $4f
	jr   z, @+$2b                                    ; $6770: $28 $29

	ld   a, [hl+]                                    ; $6772: $2a
	dec  hl                                          ; $6773: $2b
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

jr_085_677f:
	ld   e, e                                        ; $677f: $5b
	ld   e, h                                        ; $6780: $5c
	ld   e, l                                        ; $6781: $5d
	ld   e, [hl]                                     ; $6782: $5e
	ld   e, a                                        ; $6783: $5f
	jr   c, @+$3b                                    ; $6784: $38 $39

	ld   a, [hl-]                                    ; $6786: $3a
	dec  sp                                          ; $6787: $3b
	ld   h, b                                        ; $6788: $60
	ld   h, c                                        ; $6789: $61
	ld   h, d                                        ; $678a: $62
	ld   h, e                                        ; $678b: $63
	ld   h, h                                        ; $678c: $64
	ld   h, l                                        ; $678d: $65
	ld   h, [hl]                                     ; $678e: $66

jr_085_678f:
	ld   h, a                                        ; $678f: $67
	ld   l, b                                        ; $6790: $68
	ld   l, c                                        ; $6791: $69
	ld   l, d                                        ; $6792: $6a
	ld   l, e                                        ; $6793: $6b
	ld   l, h                                        ; $6794: $6c
	ld   l, l                                        ; $6795: $6d
	ld   l, [hl]                                     ; $6796: $6e
	ld   l, a                                        ; $6797: $6f
	inc  l                                           ; $6798: $2c
	dec  l                                           ; $6799: $2d
	ld   l, $2f                                      ; $679a: $2e $2f
	ld   [hl], b                                     ; $679c: $70
	ld   [hl], c                                     ; $679d: $71
	ld   [hl], d                                     ; $679e: $72
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
	inc  a                                           ; $67ac: $3c
	dec  a                                           ; $67ad: $3d
	ld   a, $3f                                      ; $67ae: $3e $3f
	nop                                              ; $67b0: $00
	ld   bc, $0302                                   ; $67b1: $01 $02 $03
	inc  b                                           ; $67b4: $04
	dec  b                                           ; $67b5: $05
	ld   b, $07                                      ; $67b6: $06 $07
	ld   [$0a09], sp                                 ; $67b8: $08 $09 $0a
	dec  bc                                          ; $67bb: $0b
	inc  c                                           ; $67bc: $0c
	dec  c                                           ; $67bd: $0d
	ld   c, $0f                                      ; $67be: $0e $0f
	ld   b, b                                        ; $67c0: $40
	ld   b, c                                        ; $67c1: $41
	ld   b, d                                        ; $67c2: $42
	ld   b, e                                        ; $67c3: $43
	db   $10                                         ; $67c4: $10
	ld   de, $1312                                   ; $67c5: $11 $12 $13
	inc  d                                           ; $67c8: $14
	dec  d                                           ; $67c9: $15
	ld   d, $17                                      ; $67ca: $16 $17
	jr   jr_085_67e7                                 ; $67cc: $18 $19

	ld   a, [de]                                     ; $67ce: $1a
	dec  de                                          ; $67cf: $1b
	inc  e                                           ; $67d0: $1c
	dec  e                                           ; $67d1: $1d
	ld   e, $1f                                      ; $67d2: $1e $1f
	ld   b, h                                        ; $67d4: $44
	ld   b, l                                        ; $67d5: $45
	ld   b, [hl]                                     ; $67d6: $46
	ld   b, a                                        ; $67d7: $47
	inc  bc                                          ; $67d8: $03
	inc  bc                                          ; $67d9: $03
	dec  b                                           ; $67da: $05
	dec  b                                           ; $67db: $05
	inc  bc                                          ; $67dc: $03
	inc  b                                           ; $67dd: $04
	inc  bc                                          ; $67de: $03
	inc  bc                                          ; $67df: $03
	inc  bc                                          ; $67e0: $03
	inc  bc                                          ; $67e1: $03
	inc  bc                                          ; $67e2: $03
	inc  bc                                          ; $67e3: $03
	inc  bc                                          ; $67e4: $03
	inc  bc                                          ; $67e5: $03
	dec  b                                           ; $67e6: $05

jr_085_67e7:
	inc  bc                                          ; $67e7: $03
	dec  bc                                          ; $67e8: $0b
	inc  c                                           ; $67e9: $0c
	inc  c                                           ; $67ea: $0c
	inc  c                                           ; $67eb: $0c
	inc  b                                           ; $67ec: $04
	inc  bc                                          ; $67ed: $03
	inc  bc                                          ; $67ee: $03
	inc  bc                                          ; $67ef: $03
	inc  b                                           ; $67f0: $04
	inc  b                                           ; $67f1: $04
	inc  bc                                          ; $67f2: $03
	inc  bc                                          ; $67f3: $03
	inc  bc                                          ; $67f4: $03
	dec  b                                           ; $67f5: $05
	inc  bc                                          ; $67f6: $03
	inc  bc                                          ; $67f7: $03
	inc  b                                           ; $67f8: $04
	dec  b                                           ; $67f9: $05
	dec  b                                           ; $67fa: $05
	dec  b                                           ; $67fb: $05
	dec  c                                           ; $67fc: $0d
	inc  c                                           ; $67fd: $0c
	inc  c                                           ; $67fe: $0c
	inc  c                                           ; $67ff: $0c
	inc  b                                           ; $6800: $04
	inc  bc                                          ; $6801: $03
	inc  bc                                          ; $6802: $03
	inc  bc                                          ; $6803: $03
	inc  b                                           ; $6804: $04
	inc  b                                           ; $6805: $04
	inc  b                                           ; $6806: $04
	inc  bc                                          ; $6807: $03
	inc  b                                           ; $6808: $04
	dec  b                                           ; $6809: $05
	dec  b                                           ; $680a: $05
	dec  b                                           ; $680b: $05
	inc  b                                           ; $680c: $04
	inc  b                                           ; $680d: $04
	inc  b                                           ; $680e: $04
	dec  b                                           ; $680f: $05
	dec  c                                           ; $6810: $0d
	dec  bc                                          ; $6811: $0b
	dec  bc                                          ; $6812: $0b
	inc  c                                           ; $6813: $0c
	dec  b                                           ; $6814: $05
	dec  b                                           ; $6815: $05
	inc  b                                           ; $6816: $04
	inc  b                                           ; $6817: $04
	inc  bc                                          ; $6818: $03
	inc  bc                                          ; $6819: $03
	inc  bc                                          ; $681a: $03
	inc  bc                                          ; $681b: $03
	inc  b                                           ; $681c: $04
	inc  b                                           ; $681d: $04
	inc  b                                           ; $681e: $04
	inc  b                                           ; $681f: $04
	inc  b                                           ; $6820: $04
	inc  b                                           ; $6821: $04
	inc  b                                           ; $6822: $04
	inc  bc                                          ; $6823: $03
	inc  c                                           ; $6824: $0c
	dec  bc                                          ; $6825: $0b
	inc  c                                           ; $6826: $0c
	inc  c                                           ; $6827: $0c
	dec  b                                           ; $6828: $05
	dec  b                                           ; $6829: $05
	inc  bc                                          ; $682a: $03
	inc  bc                                          ; $682b: $03
	inc  bc                                          ; $682c: $03
	inc  bc                                          ; $682d: $03
	inc  bc                                          ; $682e: $03
	inc  bc                                          ; $682f: $03
	dec  b                                           ; $6830: $05
	inc  b                                           ; $6831: $04
	inc  b                                           ; $6832: $04
	inc  b                                           ; $6833: $04
	inc  b                                           ; $6834: $04
	inc  b                                           ; $6835: $04
	inc  b                                           ; $6836: $04
	inc  bc                                          ; $6837: $03
	dec  bc                                          ; $6838: $0b
	dec  bc                                          ; $6839: $0b
	inc  c                                           ; $683a: $0c
	inc  c                                           ; $683b: $0c
	inc  bc                                          ; $683c: $03
	inc  bc                                          ; $683d: $03
	inc  bc                                          ; $683e: $03
	inc  b                                           ; $683f: $04
	inc  b                                           ; $6840: $04
	inc  b                                           ; $6841: $04
	inc  bc                                          ; $6842: $03
	inc  bc                                          ; $6843: $03
	dec  b                                           ; $6844: $05
	dec  b                                           ; $6845: $05
	dec  b                                           ; $6846: $05
	dec  b                                           ; $6847: $05
	dec  b                                           ; $6848: $05
	inc  bc                                          ; $6849: $03
	inc  bc                                          ; $684a: $03
	inc  bc                                          ; $684b: $03
	dec  bc                                          ; $684c: $0b
	dec  bc                                          ; $684d: $0b
	dec  bc                                          ; $684e: $0b
	dec  bc                                          ; $684f: $0b
	dec  b                                           ; $6850: $05
	inc  bc                                          ; $6851: $03
	inc  bc                                          ; $6852: $03
	inc  bc                                          ; $6853: $03
	inc  b                                           ; $6854: $04
	inc  bc                                          ; $6855: $03
	inc  bc                                          ; $6856: $03
	dec  b                                           ; $6857: $05
	dec  b                                           ; $6858: $05
	dec  b                                           ; $6859: $05
	dec  b                                           ; $685a: $05
	dec  b                                           ; $685b: $05
	dec  b                                           ; $685c: $05
	inc  bc                                          ; $685d: $03
	inc  b                                           ; $685e: $04
	inc  b                                           ; $685f: $04
	dec  c                                           ; $6860: $0d
	dec  c                                           ; $6861: $0d
	dec  c                                           ; $6862: $0d
	inc  c                                           ; $6863: $0c
	inc  bc                                          ; $6864: $03
	inc  b                                           ; $6865: $04
	inc  b                                           ; $6866: $04
	dec  b                                           ; $6867: $05
	inc  b                                           ; $6868: $04
	inc  bc                                          ; $6869: $03
	dec  b                                           ; $686a: $05
	dec  b                                           ; $686b: $05
	dec  b                                           ; $686c: $05
	dec  b                                           ; $686d: $05
	dec  b                                           ; $686e: $05
	dec  b                                           ; $686f: $05
	dec  b                                           ; $6870: $05
	inc  bc                                          ; $6871: $03
	inc  bc                                          ; $6872: $03
	inc  bc                                          ; $6873: $03
	dec  bc                                          ; $6874: $0b
	dec  bc                                          ; $6875: $0b
	dec  c                                           ; $6876: $0d
	inc  c                                           ; $6877: $0c
	dec  bc                                          ; $6878: $0b
	dec  bc                                          ; $6879: $0b
	dec  c                                           ; $687a: $0d
	dec  c                                           ; $687b: $0d
	dec  bc                                          ; $687c: $0b
	dec  bc                                          ; $687d: $0b
	dec  c                                           ; $687e: $0d
	dec  c                                           ; $687f: $0d
	dec  c                                           ; $6880: $0d
	dec  c                                           ; $6881: $0d
	dec  c                                           ; $6882: $0d
	dec  c                                           ; $6883: $0d
	dec  c                                           ; $6884: $0d
	dec  bc                                          ; $6885: $0b
	dec  bc                                          ; $6886: $0b
	dec  bc                                          ; $6887: $0b
	dec  bc                                          ; $6888: $0b
	dec  bc                                          ; $6889: $0b
	dec  bc                                          ; $688a: $0b
	inc  c                                           ; $688b: $0c
	dec  bc                                          ; $688c: $0b
	inc  c                                           ; $688d: $0c
	inc  c                                           ; $688e: $0c
	dec  bc                                          ; $688f: $0b
	dec  bc                                          ; $6890: $0b
	dec  bc                                          ; $6891: $0b
	dec  c                                           ; $6892: $0d
	dec  c                                           ; $6893: $0d
	dec  c                                           ; $6894: $0d
	dec  c                                           ; $6895: $0d
	dec  c                                           ; $6896: $0d
	dec  c                                           ; $6897: $0d
	dec  c                                           ; $6898: $0d
	dec  bc                                          ; $6899: $0b
	dec  bc                                          ; $689a: $0b
	dec  bc                                          ; $689b: $0b
	inc  c                                           ; $689c: $0c
	dec  bc                                          ; $689d: $0b
	dec  bc                                          ; $689e: $0b
	inc  c                                           ; $689f: $0c
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
	db   $10                                         ; $68b0: $10
	ld   de, $1312                                   ; $68b1: $11 $12 $13
	nop                                              ; $68b4: $00
	ld   bc, $0302                                   ; $68b5: $01 $02 $03
	inc  d                                           ; $68b8: $14
	dec  d                                           ; $68b9: $15
	ld   d, $17                                      ; $68ba: $16 $17
	jr   @+$1b                                       ; $68bc: $18 $19

	ld   a, [de]                                     ; $68be: $1a
	dec  de                                          ; $68bf: $1b
	inc  e                                           ; $68c0: $1c
	dec  e                                           ; $68c1: $1d
	ld   e, $1f                                      ; $68c2: $1e $1f
	db   $10                                         ; $68c4: $10
	ld   de, $1312                                   ; $68c5: $11 $12 $13
	jr   nz, @+$23                                   ; $68c8: $20 $21

	ld   [hl+], a                                    ; $68ca: $22
	inc  hl                                          ; $68cb: $23
	inc  h                                           ; $68cc: $24
	dec  h                                           ; $68cd: $25
	ld   h, $27                                      ; $68ce: $26 $27
	jr   z, jr_085_68fb                              ; $68d0: $28 $29

	ld   a, [hl+]                                    ; $68d2: $2a
	dec  hl                                          ; $68d3: $2b
	inc  l                                           ; $68d4: $2c
	dec  l                                           ; $68d5: $2d
	ld   l, $2f                                      ; $68d6: $2e $2f
	jr   nz, jr_085_68fb                             ; $68d8: $20 $21

	ld   [hl+], a                                    ; $68da: $22
	inc  hl                                          ; $68db: $23
	jr   nc, jr_085_690f                             ; $68dc: $30 $31

	ld   [hl-], a                                    ; $68de: $32
	inc  sp                                          ; $68df: $33
	inc  [hl]                                        ; $68e0: $34
	dec  [hl]                                        ; $68e1: $35
	ld   [hl], $37                                   ; $68e2: $36 $37
	jr   c, jr_085_691f                              ; $68e4: $38 $39

	ld   a, [hl-]                                    ; $68e6: $3a
	dec  sp                                          ; $68e7: $3b
	inc  a                                           ; $68e8: $3c
	dec  a                                           ; $68e9: $3d
	ld   a, $3f                                      ; $68ea: $3e $3f
	jr   nc, jr_085_691f                             ; $68ec: $30 $31

	ld   [hl-], a                                    ; $68ee: $32
	inc  sp                                          ; $68ef: $33
	ld   b, b                                        ; $68f0: $40
	ld   b, c                                        ; $68f1: $41
	ld   b, d                                        ; $68f2: $42
	ld   b, e                                        ; $68f3: $43
	ld   b, h                                        ; $68f4: $44
	ld   b, l                                        ; $68f5: $45
	ld   b, [hl]                                     ; $68f6: $46
	ld   b, a                                        ; $68f7: $47
	ld   c, b                                        ; $68f8: $48
	ld   c, c                                        ; $68f9: $49
	ld   c, d                                        ; $68fa: $4a

jr_085_68fb:
	ld   c, e                                        ; $68fb: $4b
	ld   c, h                                        ; $68fc: $4c
	ld   c, l                                        ; $68fd: $4d
	ld   c, [hl]                                     ; $68fe: $4e
	ld   c, a                                        ; $68ff: $4f
	inc  l                                           ; $6900: $2c
	dec  l                                           ; $6901: $2d
	ld   l, $2f                                      ; $6902: $2e $2f
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

jr_085_690f:
	ld   e, e                                        ; $690f: $5b
	ld   e, h                                        ; $6910: $5c
	ld   e, l                                        ; $6911: $5d
	ld   e, [hl]                                     ; $6912: $5e
	ccf                                              ; $6913: $3f
	jr   nc, jr_085_6947                             ; $6914: $30 $31

	inc  a                                           ; $6916: $3c
	inc  sp                                          ; $6917: $33
	ld   h, b                                        ; $6918: $60
	ld   h, c                                        ; $6919: $61
	ld   h, d                                        ; $691a: $62
	ld   h, e                                        ; $691b: $63
	ld   h, h                                        ; $691c: $64
	ld   h, l                                        ; $691d: $65
	ld   h, [hl]                                     ; $691e: $66

jr_085_691f:
	ld   h, a                                        ; $691f: $67
	ld   l, b                                        ; $6920: $68
	ld   l, c                                        ; $6921: $69
	ld   l, d                                        ; $6922: $6a
	ld   l, e                                        ; $6923: $6b
	ld   l, h                                        ; $6924: $6c
	ld   l, l                                        ; $6925: $6d
	ld   l, [hl]                                     ; $6926: $6e
	dec  a                                           ; $6927: $3d
	ld   a, $3f                                      ; $6928: $3e $3f
	ld   b, b                                        ; $692a: $40
	ld   b, c                                        ; $692b: $41
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
	ccf                                              ; $693b: $3f
	jr   nc, jr_085_699d                             ; $693c: $30 $5f

	ld   l, a                                        ; $693e: $6f
	ld   a, a                                        ; $693f: $7f
	inc  b                                           ; $6940: $04
	dec  b                                           ; $6941: $05
	ld   b, $07                                      ; $6942: $06 $07
	ld   [$0a09], sp                                 ; $6944: $08 $09 $0a

jr_085_6947:
	dec  bc                                          ; $6947: $0b
	inc  c                                           ; $6948: $0c
	dec  c                                           ; $6949: $0d
	ld   c, $0f                                      ; $694a: $0e $0f
	inc  h                                           ; $694c: $24
	dec  h                                           ; $694d: $25
	ld   h, $27                                      ; $694e: $26 $27
	jr   z, jr_085_697b                              ; $6950: $28 $29

	ld   a, [hl+]                                    ; $6952: $2a
	dec  hl                                          ; $6953: $2b
	inc  d                                           ; $6954: $14
	dec  d                                           ; $6955: $15
	ld   d, $17                                      ; $6956: $16 $17
	jr   jr_085_6973                                 ; $6958: $18 $19

	ld   a, [de]                                     ; $695a: $1a
	dec  de                                          ; $695b: $1b
	inc  e                                           ; $695c: $1c
	dec  e                                           ; $695d: $1d
	ld   e, $1f                                      ; $695e: $1e $1f
	inc  [hl]                                        ; $6960: $34
	dec  [hl]                                        ; $6961: $35
	ld   [hl], $37                                   ; $6962: $36 $37
	jr   c, jr_085_699f                              ; $6964: $38 $39

	ld   a, [hl-]                                    ; $6966: $3a
	dec  sp                                          ; $6967: $3b
	inc  bc                                          ; $6968: $03
	inc  bc                                          ; $6969: $03
	inc  bc                                          ; $696a: $03
	inc  bc                                          ; $696b: $03
	inc  bc                                          ; $696c: $03
	inc  bc                                          ; $696d: $03
	inc  bc                                          ; $696e: $03
	inc  bc                                          ; $696f: $03
	inc  bc                                          ; $6970: $03
	inc  bc                                          ; $6971: $03
	inc  bc                                          ; $6972: $03

jr_085_6973:
	inc  bc                                          ; $6973: $03
	inc  bc                                          ; $6974: $03
	inc  bc                                          ; $6975: $03
	inc  bc                                          ; $6976: $03
	inc  bc                                          ; $6977: $03
	inc  bc                                          ; $6978: $03
	inc  bc                                          ; $6979: $03
	inc  bc                                          ; $697a: $03

jr_085_697b:
	inc  bc                                          ; $697b: $03
	dec  bc                                          ; $697c: $0b
	dec  bc                                          ; $697d: $0b
	dec  bc                                          ; $697e: $0b
	dec  bc                                          ; $697f: $0b
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
	inc  bc                                          ; $698b: $03
	dec  bc                                          ; $698c: $0b
	dec  bc                                          ; $698d: $0b
	dec  bc                                          ; $698e: $0b
	dec  bc                                          ; $698f: $0b
	inc  bc                                          ; $6990: $03
	inc  bc                                          ; $6991: $03
	inc  bc                                          ; $6992: $03
	inc  bc                                          ; $6993: $03
	inc  bc                                          ; $6994: $03
	inc  bc                                          ; $6995: $03
	inc  bc                                          ; $6996: $03
	inc  bc                                          ; $6997: $03
	inc  bc                                          ; $6998: $03
	inc  bc                                          ; $6999: $03
	inc  bc                                          ; $699a: $03
	inc  bc                                          ; $699b: $03
	inc  bc                                          ; $699c: $03

jr_085_699d:
	inc  bc                                          ; $699d: $03
	inc  bc                                          ; $699e: $03

jr_085_699f:
	inc  bc                                          ; $699f: $03
	dec  bc                                          ; $69a0: $0b
	dec  bc                                          ; $69a1: $0b
	dec  bc                                          ; $69a2: $0b
	dec  bc                                          ; $69a3: $0b
	inc  bc                                          ; $69a4: $03
	inc  bc                                          ; $69a5: $03
	inc  bc                                          ; $69a6: $03
	inc  bc                                          ; $69a7: $03
	inc  bc                                          ; $69a8: $03
	inc  bc                                          ; $69a9: $03
	inc  bc                                          ; $69aa: $03
	inc  bc                                          ; $69ab: $03
	inc  bc                                          ; $69ac: $03
	inc  bc                                          ; $69ad: $03
	inc  bc                                          ; $69ae: $03
	inc  bc                                          ; $69af: $03
	inc  bc                                          ; $69b0: $03
	inc  bc                                          ; $69b1: $03
	inc  bc                                          ; $69b2: $03
	inc  bc                                          ; $69b3: $03
	dec  bc                                          ; $69b4: $0b
	dec  bc                                          ; $69b5: $0b
	dec  bc                                          ; $69b6: $0b
	dec  bc                                          ; $69b7: $0b
	inc  bc                                          ; $69b8: $03
	inc  bc                                          ; $69b9: $03
	inc  bc                                          ; $69ba: $03
	inc  bc                                          ; $69bb: $03
	inc  bc                                          ; $69bc: $03
	inc  bc                                          ; $69bd: $03
	inc  bc                                          ; $69be: $03
	inc  bc                                          ; $69bf: $03
	inc  bc                                          ; $69c0: $03
	inc  bc                                          ; $69c1: $03
	inc  bc                                          ; $69c2: $03
	inc  bc                                          ; $69c3: $03
	inc  bc                                          ; $69c4: $03
	inc  bc                                          ; $69c5: $03
	inc  bc                                          ; $69c6: $03
	inc  bc                                          ; $69c7: $03
	dec  bc                                          ; $69c8: $0b
	dec  bc                                          ; $69c9: $0b
	dec  bc                                          ; $69ca: $0b
	dec  bc                                          ; $69cb: $0b
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
	inc  bc                                          ; $69d6: $03
	inc  bc                                          ; $69d7: $03
	inc  bc                                          ; $69d8: $03
	inc  bc                                          ; $69d9: $03
	inc  bc                                          ; $69da: $03
	inc  bc                                          ; $69db: $03
	dec  bc                                          ; $69dc: $0b
	dec  bc                                          ; $69dd: $0b
	dec  bc                                          ; $69de: $0b
	dec  bc                                          ; $69df: $0b
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
	inc  bc                                          ; $69ed: $03
	inc  bc                                          ; $69ee: $03
	dec  bc                                          ; $69ef: $0b
	dec  bc                                          ; $69f0: $0b
	dec  bc                                          ; $69f1: $0b
	dec  bc                                          ; $69f2: $0b
	dec  bc                                          ; $69f3: $0b
	inc  bc                                          ; $69f4: $03
	inc  bc                                          ; $69f5: $03

jr_085_69f6:
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
	inc  bc                                          ; $6a01: $03
	inc  bc                                          ; $6a02: $03
	inc  bc                                          ; $6a03: $03
	dec  bc                                          ; $6a04: $0b
	inc  bc                                          ; $6a05: $03
	inc  bc                                          ; $6a06: $03
	inc  bc                                          ; $6a07: $03
	dec  bc                                          ; $6a08: $0b
	dec  bc                                          ; $6a09: $0b
	dec  bc                                          ; $6a0a: $0b
	dec  bc                                          ; $6a0b: $0b
	dec  bc                                          ; $6a0c: $0b
	dec  bc                                          ; $6a0d: $0b
	dec  bc                                          ; $6a0e: $0b
	dec  bc                                          ; $6a0f: $0b
	dec  bc                                          ; $6a10: $0b
	dec  bc                                          ; $6a11: $0b
	dec  bc                                          ; $6a12: $0b
	dec  bc                                          ; $6a13: $0b
	dec  bc                                          ; $6a14: $0b
	dec  bc                                          ; $6a15: $0b
	dec  bc                                          ; $6a16: $0b
	dec  bc                                          ; $6a17: $0b
	dec  bc                                          ; $6a18: $0b
	dec  bc                                          ; $6a19: $0b
	dec  bc                                          ; $6a1a: $0b
	dec  bc                                          ; $6a1b: $0b
	dec  bc                                          ; $6a1c: $0b
	dec  bc                                          ; $6a1d: $0b
	dec  bc                                          ; $6a1e: $0b
	dec  bc                                          ; $6a1f: $0b
	dec  bc                                          ; $6a20: $0b
	dec  bc                                          ; $6a21: $0b
	dec  bc                                          ; $6a22: $0b
	dec  bc                                          ; $6a23: $0b
	dec  bc                                          ; $6a24: $0b
	dec  bc                                          ; $6a25: $0b
	dec  bc                                          ; $6a26: $0b
	dec  bc                                          ; $6a27: $0b
	dec  bc                                          ; $6a28: $0b
	dec  bc                                          ; $6a29: $0b
	dec  bc                                          ; $6a2a: $0b
	dec  bc                                          ; $6a2b: $0b
	dec  bc                                          ; $6a2c: $0b
	dec  bc                                          ; $6a2d: $0b
	dec  bc                                          ; $6a2e: $0b
	dec  bc                                          ; $6a2f: $0b
	ld   e, h                                        ; $6a30: $5c
	nop                                              ; $6a31: $00
	nop                                              ; $6a32: $00
	db   $fc                                         ; $6a33: $fc
	adc  c                                           ; $6a34: $89
	inc  bc                                          ; $6a35: $03
	add  b                                           ; $6a36: $80
	ei                                               ; $6a37: $fb
	add  b                                           ; $6a38: $80
	inc  bc                                          ; $6a39: $03
	nop                                              ; $6a3a: $00
	rrca                                             ; $6a3b: $0f
	adc  c                                           ; $6a3c: $89
	nop                                              ; $6a3d: $00
	add  b                                           ; $6a3e: $80
	ld   [hl], b                                     ; $6a3f: $70
	add  b                                           ; $6a40: $80
	nop                                              ; $6a41: $00

jr_085_6a42:
	nop                                              ; $6a42: $00
	rlca                                             ; $6a43: $07
	add  c                                           ; $6a44: $81
	ld   [$2980], sp                                 ; $6a45: $08 $80 $29
	add  b                                           ; $6a48: $80
	ret  z                                           ; $6a49: $c8

	ld   [$0019], sp                                 ; $6a4a: $08 $19 $00
	and  $cc                                         ; $6a4d: $e6 $cc
	ld   c, h                                        ; $6a4f: $4c
	ld   de, $2291                                   ; $6a50: $11 $91 $22
	sbc  $81                                         ; $6a53: $de $81
	inc  bc                                          ; $6a55: $03
	add  b                                           ; $6a56: $80
	inc  de                                          ; $6a57: $13
	ld   b, $ef                                      ; $6a58: $06 $ef
	pop  hl                                          ; $6a5a: $e1
	sub  c                                           ; $6a5b: $91
	inc  c                                           ; $6a5c: $0c

jr_085_6a5d:
	ld   l, b                                        ; $6a5d: $68
	adc  b                                           ; $6a5e: $88
	adc  h                                           ; $6a5f: $8c
	add  d                                           ; $6a60: $82
	nop                                              ; $6a61: $00
	add  [hl]                                        ; $6a62: $86
	rst  $38                                         ; $6a63: $ff
	add  b                                           ; $6a64: $80
	ld   a, a                                        ; $6a65: $7f
	add  b                                           ; $6a66: $80
	rrca                                             ; $6a67: $0f
	add  b                                           ; $6a68: $80
	ld   bc, $0001                                   ; $6a69: $01 $01 $00
	ldh  a, [$81]                                    ; $6a6c: $f0 $81
	nop                                              ; $6a6e: $00
	add  b                                           ; $6a6f: $80
	db   $10                                         ; $6a70: $10
	add  d                                           ; $6a71: $82
	nop                                              ; $6a72: $00
	add  b                                           ; $6a73: $80
	jr   nc, jr_085_69f6                             ; $6a74: $30 $80

	nop                                              ; $6a76: $00
	ld   [bc], a                                     ; $6a77: $02
	add  b                                           ; $6a78: $80
	nop                                              ; $6a79: $00
	ld   d, h                                        ; $6a7a: $54
	add  b                                           ; $6a7b: $80
	ld   [bc], a                                     ; $6a7c: $02
	dec  b                                           ; $6a7d: $05
	ld   bc, $012b                                   ; $6a7e: $01 $2b $01
	rst  $38                                         ; $6a81: $ff
	nop                                              ; $6a82: $00
	ld   c, $81                                      ; $6a83: $0e $81
	ld   bc, $8104                                   ; $6a85: $01 $04 $81
	ld   bc, $01c1                                   ; $6a88: $01 $c1 $01
	cp   a                                           ; $6a8b: $bf
	add  b                                           ; $6a8c: $80
	xor  d                                           ; $6a8d: $aa
	add  b                                           ; $6a8e: $80
	ld   d, l                                        ; $6a8f: $55
	add  b                                           ; $6a90: $80
	rst  $38                                         ; $6a91: $ff
	add  b                                           ; $6a92: $80
	nop                                              ; $6a93: $00
	add  [hl]                                        ; $6a94: $86
	rst  JumpTable                                         ; $6a95: $df
	add  b                                           ; $6a96: $80
	and  b                                           ; $6a97: $a0
	add  b                                           ; $6a98: $80
	ld   d, h                                        ; $6a99: $54
	add  b                                           ; $6a9a: $80
	rst  $38                                         ; $6a9b: $ff
	add  b                                           ; $6a9c: $80
	nop                                              ; $6a9d: $00
	add  l                                           ; $6a9e: $85
	rst  $38                                         ; $6a9f: $ff
	nop                                              ; $6aa0: $00
	rst  $28                                         ; $6aa1: $ef
	add  c                                           ; $6aa2: $81
	nop                                              ; $6aa3: $00
	nop                                              ; $6aa4: $00
	db   $10                                         ; $6aa5: $10
	add  b                                           ; $6aa6: $80

jr_085_6aa7:
	ldh  a, [$80]                                    ; $6aa7: $f0 $80
	nop                                              ; $6aa9: $00
	add  l                                           ; $6aaa: $85
	ldh  a, [$0c]                                    ; $6aab: $f0 $0c
	ld   l, $01                                      ; $6aad: $2e $01
	jr   c, jr_085_6ab9                              ; $6aaf: $38 $08

	ld   e, $06                                      ; $6ab1: $1e $06
	rrca                                             ; $6ab3: $0f
	add  e                                           ; $6ab4: $83
	add  a                                           ; $6ab5: $87
	pop  bc                                          ; $6ab6: $c1
	dec  a                                           ; $6ab7: $3d
	nop                                              ; $6ab8: $00

jr_085_6ab9:
	ld   bc, $fe81                                   ; $6ab9: $01 $81 $fe
	ld   [bc], a                                     ; $6abc: $02
	rst  $38                                         ; $6abd: $ff
	rst  JumpTable                                         ; $6abe: $df
	jr   nz, jr_085_6a42                             ; $6abf: $20 $81

	nop                                              ; $6ac1: $00
	nop                                              ; $6ac2: $00
	rst  $38                                         ; $6ac3: $ff
	add  l                                           ; $6ac4: $85
	ld   a, a                                        ; $6ac5: $7f
	inc  bc                                          ; $6ac6: $03
	rst  $38                                         ; $6ac7: $ff
	ccf                                              ; $6ac8: $3f
	cp   a                                           ; $6ac9: $bf
	rst  $38                                         ; $6aca: $ff
	add  d                                           ; $6acb: $82
	nop                                              ; $6acc: $00
	add  b                                           ; $6acd: $80
	ret  nz                                          ; $6ace: $c0

	add  [hl]                                        ; $6acf: $86
	add  b                                           ; $6ad0: $80
	ld   bc, $f0ff                                   ; $6ad1: $01 $ff $f0
	add  d                                           ; $6ad4: $82
	nop                                              ; $6ad5: $00
	ld   [bc], a                                     ; $6ad6: $02
	ldh  a, [$d0]                                    ; $6ad7: $f0 $d0
	ld   d, b                                        ; $6ad9: $50
	add  b                                           ; $6ada: $80
	jr   nz, jr_085_6a5d                             ; $6adb: $20 $80

	ld   d, b                                        ; $6add: $50
	add  b                                           ; $6ade: $80
	jr   nz, jr_085_6b03                             ; $6adf: $20 $22

	ld   d, b                                        ; $6ae1: $50
	pop  de                                          ; $6ae2: $d1
	cp   $c1                                         ; $6ae3: $fe $c1
	ld   sp, hl                                      ; $6ae5: $f9
	ld   a, b                                        ; $6ae6: $78
	ld   a, [hl]                                     ; $6ae7: $7e
	ld   hl, $409f                                   ; $6ae8: $21 $9f $40
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6aeb: $cf
	ld   [$90e7], sp                                 ; $6aec: $08 $e7 $90
	ld   [hl], e                                     ; $6aef: $73
	db   $fc                                         ; $6af0: $fc
	nop                                              ; $6af1: $00
	ret  nz                                          ; $6af2: $c0

	rra                                              ; $6af3: $1f
	ccf                                              ; $6af4: $3f
	rrca                                             ; $6af5: $0f
	rra                                              ; $6af6: $1f
	rlca                                             ; $6af7: $07
	ld   c, $02                                      ; $6af8: $0e $02
	ld   b, $80                                      ; $6afa: $06 $80
	ld   b, e                                        ; $6afc: $43
	ret  nz                                          ; $6afd: $c0

	ld   bc, $1fe0                                   ; $6afe: $01 $e0 $1f
	nop                                              ; $6b01: $00
	ccf                                              ; $6b02: $3f

jr_085_6b03:
	ret  nz                                          ; $6b03: $c0

	add  b                                           ; $6b04: $80
	pop  hl                                          ; $6b05: $e1
	nop                                              ; $6b06: $00
	rst  $38                                         ; $6b07: $ff
	add  b                                           ; $6b08: $80
	nop                                              ; $6b09: $00
	add  hl, bc                                      ; $6b0a: $09
	ld   a, a                                        ; $6b0b: $7f
	rst  $38                                         ; $6b0c: $ff
	ccf                                              ; $6b0d: $3f
	ld   [hl], c                                     ; $6b0e: $71
	dec  e                                           ; $6b0f: $1d
	cp   h                                           ; $6b10: $bc
	ld   c, $12                                      ; $6b11: $0e $12
	inc  bc                                          ; $6b13: $03
	ld   [hl], b                                     ; $6b14: $70
	add  b                                           ; $6b15: $80
	ldh  [$80], a                                    ; $6b16: $e0 $80
	ret  nc                                          ; $6b18: $d0

	add  b                                           ; $6b19: $80
	nop                                              ; $6b1a: $00
	add  c                                           ; $6b1b: $81
	ldh  a, [rSC]                                    ; $6b1c: $f0 $02
	db   $10                                         ; $6b1e: $10
	ret  nc                                          ; $6b1f: $d0

	ret  nz                                          ; $6b20: $c0

	add  b                                           ; $6b21: $80
	ld   h, b                                        ; $6b22: $60
	dec  bc                                          ; $6b23: $0b
	or   b                                           ; $6b24: $b0
	jr   c, jr_085_6aa7                              ; $6b25: $38 $80

	ret  nz                                          ; $6b27: $c0

	add  b                                           ; $6b28: $80
	and  b                                           ; $6b29: $a0
	add  b                                           ; $6b2a: $80
	inc  e                                           ; $6b2b: $1c
	nop                                              ; $6b2c: $00
	add  a                                           ; $6b2d: $87
	nop                                              ; $6b2e: $00
	inc  bc                                          ; $6b2f: $03
	add  b                                           ; $6b30: $80
	nop                                              ; $6b31: $00
	add  d                                           ; $6b32: $82
	rst  $38                                         ; $6b33: $ff
	rst  $38                                         ; $6b34: $ff
	nop                                              ; $6b35: $00
	rst  $38                                         ; $6b36: $ff
	nop                                              ; $6b37: $00
	rst  $38                                         ; $6b38: $ff
	nop                                              ; $6b39: $00
	rst  $38                                         ; $6b3a: $ff
	nop                                              ; $6b3b: $00
	rst  $38                                         ; $6b3c: $ff
	nop                                              ; $6b3d: $00
	rst  $38                                         ; $6b3e: $ff
	nop                                              ; $6b3f: $00
	rst  $38                                         ; $6b40: $ff
	nop                                              ; $6b41: $00
	rst  $38                                         ; $6b42: $ff
	nop                                              ; $6b43: $00
	rst  $38                                         ; $6b44: $ff
	nop                                              ; $6b45: $00
	rst  $38                                         ; $6b46: $ff
	nop                                              ; $6b47: $00
	rst  $38                                         ; $6b48: $ff
	nop                                              ; $6b49: $00
	rst  $38                                         ; $6b4a: $ff
	nop                                              ; $6b4b: $00
	rst  $38                                         ; $6b4c: $ff
	nop                                              ; $6b4d: $00
	ret  nz                                          ; $6b4e: $c0

	nop                                              ; $6b4f: $00
	ld   l, e                                        ; $6b50: $6b
	nop                                              ; $6b51: $00
	add  d                                           ; $6b52: $82
	add  b                                           ; $6b53: $80
	add  b                                           ; $6b54: $80
	add  h                                           ; $6b55: $84
	nop                                              ; $6b56: $00
	ldh  [$80], a                                    ; $6b57: $e0 $80
	add  sp, $00                                     ; $6b59: $e8 $00
	ldh  [$80], a                                    ; $6b5b: $e0 $80
	add  b                                           ; $6b5d: $80
	add  b                                           ; $6b5e: $80
	nop                                              ; $6b5f: $00
	add  b                                           ; $6b60: $80
	rst  $38                                         ; $6b61: $ff
	nop                                              ; $6b62: $00
	ld   b, e                                        ; $6b63: $43
	add  c                                           ; $6b64: $81
	ld   b, d                                        ; $6b65: $42
	add  b                                           ; $6b66: $80
	ld   [bc], a                                     ; $6b67: $02
	ld   bc, $621e                                   ; $6b68: $01 $1e $62
	add  b                                           ; $6b6b: $80

jr_085_6b6c:
	ld   a, d                                        ; $6b6c: $7a
	add  b                                           ; $6b6d: $80
	ld   l, d                                        ; $6b6e: $6a
	ld   bc, $7e02                                   ; $6b6f: $01 $02 $7e
	add  b                                           ; $6b72: $80
	cp   $01                                         ; $6b73: $fe $01

jr_085_6b75:
	and  d                                           ; $6b75: $a2
	ld   h, b                                        ; $6b76: $60
	add  b                                           ; $6b77: $80
	ld   [hl], b                                     ; $6b78: $70
	stop                                             ; $6b79: $10 $00
	ld   b, b                                        ; $6b7b: $40
	ld   de, $6d7d                                   ; $6b7c: $11 $7d $6d
	ld   c, h                                        ; $6b7f: $4c
	dec  c                                           ; $6b80: $0d
	ccf                                              ; $6b81: $3f
	rlca                                             ; $6b82: $07
	ld   a, a                                        ; $6b83: $7f
	ld   l, b                                        ; $6b84: $68
	ld   a, a                                        ; $6b85: $7f
	ld   d, b                                        ; $6b86: $50
	nop                                              ; $6b87: $00
	ld   c, l                                        ; $6b88: $4d
	ld   c, e                                        ; $6b89: $4b
	pop  bc                                          ; $6b8a: $c1
	add  b                                           ; $6b8b: $80
	push bc                                          ; $6b8c: $c5
	inc  b                                           ; $6b8d: $04
	jp   $c3c7                                       ; $6b8e: $c3 $c7 $c3


	ld   b, a                                        ; $6b91: $47
	rst  ToBoot                                         ; $6b92: $c7
	add  b                                           ; $6b93: $80
	cp   $01                                         ; $6b94: $fe $01
	ld   b, d                                        ; $6b96: $42

jr_085_6b97:
	cp   $80                                         ; $6b97: $fe $80
	nop                                              ; $6b99: $00
	inc  bc                                          ; $6b9a: $03
	ldh  [rAUD4LEN], a                               ; $6b9b: $e0 $20
	jr   c, jr_085_6b97                              ; $6b9d: $38 $f8

	add  b                                           ; $6b9f: $80
	adc  h                                           ; $6ba0: $8c
	add  b                                           ; $6ba1: $80
	nop                                              ; $6ba2: $00
	add  b                                           ; $6ba3: $80
	ld   [hl-], a                                    ; $6ba4: $32
	dec  b                                           ; $6ba5: $05
	nop                                              ; $6ba6: $00
	ld   h, b                                        ; $6ba7: $60
	ldh  [c], a                                      ; $6ba8: $e2
	add  d                                           ; $6ba9: $82
	rst  $28                                         ; $6baa: $ef
	ldh  [$82], a                                    ; $6bab: $e0 $82
	ret  nz                                          ; $6bad: $c0

	add  b                                           ; $6bae: $80
	add  b                                           ; $6baf: $80
	add  b                                           ; $6bb0: $80
	sub  b                                           ; $6bb1: $90
	add  b                                           ; $6bb2: $80
	or   b                                           ; $6bb3: $b0
	add  b                                           ; $6bb4: $80
	ld   [hl], b                                     ; $6bb5: $70
	add  b                                           ; $6bb6: $80
	ld   h, b                                        ; $6bb7: $60
	nop                                              ; $6bb8: $00
	ldh  a, [$88]                                    ; $6bb9: $f0 $88
	ld   bc, $0301                                   ; $6bbb: $01 $01 $03
	ld   [bc], a                                     ; $6bbe: $02
	add  b                                           ; $6bbf: $80
	dec  c                                           ; $6bc0: $0d
	ld   bc, $bf01                                   ; $6bc1: $01 $01 $bf
	add  [hl]                                        ; $6bc4: $86
	ldh  a, [$81]                                    ; $6bc5: $f0 $81
	rst  $38                                         ; $6bc7: $ff
	nop                                              ; $6bc8: $00
	ret  nz                                          ; $6bc9: $c0

	add  c                                           ; $6bca: $81
	rst  $38                                         ; $6bcb: $ff
	nop                                              ; $6bcc: $00
	add  b                                           ; $6bcd: $80
	add  [hl]                                        ; $6bce: $86
	nop                                              ; $6bcf: $00
	add  c                                           ; $6bd0: $81
	rst  $38                                         ; $6bd1: $ff
	nop                                              ; $6bd2: $00
	nop                                              ; $6bd3: $00
	add  c                                           ; $6bd4: $81
	rst  $38                                         ; $6bd5: $ff
	add  b                                           ; $6bd6: $80
	ld   a, [hl-]                                    ; $6bd7: $3a
	add  b                                           ; $6bd8: $80
	ld   a, d                                        ; $6bd9: $7a
	add  b                                           ; $6bda: $80
	add  $81                                         ; $6bdb: $c6 $81
	ld   [bc], a                                     ; $6bdd: $02
	ld   bc, $f0f2                                   ; $6bde: $01 $f2 $f0
	add  b                                           ; $6be1: $80
	ldh  [$80], a                                    ; $6be2: $e0 $80
	ld   a, [hl-]                                    ; $6be4: $3a
	ld   [bc], a                                     ; $6be5: $02
	jr   nz, jr_085_6c57                             ; $6be6: $20 $6f

	ld   b, b                                        ; $6be8: $40
	add  b                                           ; $6be9: $80
	jr   nc, jr_085_6b6c                             ; $6bea: $30 $80

	ld   [hl], b                                     ; $6bec: $70
	add  b                                           ; $6bed: $80
	ld   b, b                                        ; $6bee: $40
	nop                                              ; $6bef: $00
	nop                                              ; $6bf0: $00
	add  d                                           ; $6bf1: $82
	jr   nc, jr_085_6b75                             ; $6bf2: $30 $81

	nop                                              ; $6bf4: $00
	ld   a, [bc]                                     ; $6bf5: $0a
	pop  af                                          ; $6bf6: $f1
	ld   bc, $0f00                                   ; $6bf7: $01 $00 $0f
	ld   [$010f], sp                                 ; $6bfa: $08 $0f $01
	add  hl, bc                                      ; $6bfd: $09
	nop                                              ; $6bfe: $00
	rlca                                             ; $6bff: $07
	inc  b                                           ; $6c00: $04
	add  b                                           ; $6c01: $80
	rrca                                             ; $6c02: $0f
	dec  b                                           ; $6c03: $05
	nop                                              ; $6c04: $00
	inc  c                                           ; $6c05: $0c
	nop                                              ; $6c06: $00
	ld   [hl], b                                     ; $6c07: $70
	add  b                                           ; $6c08: $80
	ccf                                              ; $6c09: $3f
	add  c                                           ; $6c0a: $81
	cp   a                                           ; $6c0b: $bf
	inc  bc                                          ; $6c0c: $03
	ccf                                              ; $6c0d: $3f
	cp   a                                           ; $6c0e: $bf
	nop                                              ; $6c0f: $00
	add  b                                           ; $6c10: $80
	add  b                                           ; $6c11: $80
	cp   a                                           ; $6c12: $bf
	nop                                              ; $6c13: $00
	add  b                                           ; $6c14: $80
	add  e                                           ; $6c15: $83
	nop                                              ; $6c16: $00
	add  h                                           ; $6c17: $84
	rst  $38                                         ; $6c18: $ff
	add  b                                           ; $6c19: $80
	nop                                              ; $6c1a: $00
	add  b                                           ; $6c1b: $80
	rst  $38                                         ; $6c1c: $ff
	add  d                                           ; $6c1d: $82
	nop                                              ; $6c1e: $00
	ld   bc, $310e                                   ; $6c1f: $01 $0e $31
	add  d                                           ; $6c22: $82
	pop  af                                          ; $6c23: $f1
	add  b                                           ; $6c24: $80
	ld   sp, hl                                      ; $6c25: $f9
	add  b                                           ; $6c26: $80
	dec  a                                           ; $6c27: $3d
	rlca                                             ; $6c28: $07
	rst  $10                                         ; $6c29: $d7
	rst  $38                                         ; $6c2a: $ff
	ld   [de], a                                     ; $6c2b: $12
	rra                                              ; $6c2c: $1f
	dec  e                                           ; $6c2d: $1d
	rrca                                             ; $6c2e: $0f
	ld   b, a                                        ; $6c2f: $47
	ret  nz                                          ; $6c30: $c0

	add  h                                           ; $6c31: $84
	ldh  [rP1], a                                    ; $6c32: $e0 $00
	ld   h, b                                        ; $6c34: $60
	add  e                                           ; $6c35: $83
	ldh  [$80], a                                    ; $6c36: $e0 $80
	ret  nz                                          ; $6c38: $c0

	ld   bc, $07f8                                   ; $6c39: $01 $f8 $07
	adc  l                                           ; $6c3c: $8d
	rrca                                             ; $6c3d: $0f
	adc  l                                           ; $6c3e: $8d
	rst  $38                                         ; $6c3f: $ff
	inc  bc                                          ; $6c40: $03
	di                                               ; $6c41: $f3
	rst  $38                                         ; $6c42: $ff
	db   $fc                                         ; $6c43: $fc
	ldh  a, [$80]                                    ; $6c44: $f0 $80
	cp   $88                                         ; $6c46: $fe $88
	rst  $38                                         ; $6c48: $ff
	nop                                              ; $6c49: $00
	rrca                                             ; $6c4a: $0f
	add  e                                           ; $6c4b: $83
	nop                                              ; $6c4c: $00
	adc  c                                           ; $6c4d: $89
	ldh  a, [rIE]                                    ; $6c4e: $f0 $ff
	nop                                              ; $6c50: $00
	rst  $38                                         ; $6c51: $ff
	nop                                              ; $6c52: $00
	rst  $38                                         ; $6c53: $ff
	nop                                              ; $6c54: $00
	rst  $38                                         ; $6c55: $ff
	nop                                              ; $6c56: $00

jr_085_6c57:
	rst  $38                                         ; $6c57: $ff
	nop                                              ; $6c58: $00
	rst  $38                                         ; $6c59: $ff
	nop                                              ; $6c5a: $00
	rst  $38                                         ; $6c5b: $ff
	nop                                              ; $6c5c: $00
	rst  $38                                         ; $6c5d: $ff
	nop                                              ; $6c5e: $00
	rst  $38                                         ; $6c5f: $ff
	nop                                              ; $6c60: $00
	rst  $38                                         ; $6c61: $ff
	nop                                              ; $6c62: $00
	rst  $38                                         ; $6c63: $ff
	nop                                              ; $6c64: $00
	rst  $38                                         ; $6c65: $ff
	nop                                              ; $6c66: $00
	rst  $38                                         ; $6c67: $ff
	nop                                              ; $6c68: $00
	or   b                                           ; $6c69: $b0
	nop                                              ; $6c6a: $00
	ld   l, a                                        ; $6c6b: $6f
	nop                                              ; $6c6c: $00
	add  [hl]                                        ; $6c6d: $86
	nop                                              ; $6c6e: $00
	nop                                              ; $6c6f: $00
	db   $fd                                         ; $6c70: $fd
	add  l                                           ; $6c71: $85
	ld   [bc], a                                     ; $6c72: $02
	nop                                              ; $6c73: $00
	rst  $38                                         ; $6c74: $ff
	add  l                                           ; $6c75: $85
	nop                                              ; $6c76: $00
	nop                                              ; $6c77: $00
	db   $f4                                         ; $6c78: $f4
	add  e                                           ; $6c79: $83
	dec  bc                                          ; $6c7a: $0b
	add  b                                           ; $6c7b: $80
	add  hl, bc                                      ; $6c7c: $09
	nop                                              ; $6c7d: $00
	rst  $38                                         ; $6c7e: $ff
	add  l                                           ; $6c7f: $85
	nop                                              ; $6c80: $00
	nop                                              ; $6c81: $00
	adc  b                                           ; $6c82: $88
	add  l                                           ; $6c83: $85
	ld   [hl], a                                     ; $6c84: $77
	nop                                              ; $6c85: $00
	rst  $38                                         ; $6c86: $ff
	add  l                                           ; $6c87: $85
	nop                                              ; $6c88: $00
	nop                                              ; $6c89: $00
	ldh  a, [$85]                                    ; $6c8a: $f0 $85
	nop                                              ; $6c8c: $00
	nop                                              ; $6c8d: $00
	ldh  a, [rIE]                                    ; $6c8e: $f0 $ff
	nop                                              ; $6c90: $00
	cp   h                                           ; $6c91: $bc
	nop                                              ; $6c92: $00
	nop                                              ; $6c93: $00
	db   $fd                                         ; $6c94: $fd
	add  b                                           ; $6c95: $80
	ld   a, [$0280]                                  ; $6c96: $fa $80 $02
	add  b                                           ; $6c99: $80
	ld   a, [$0280]                                  ; $6c9a: $fa $80 $02
	add  b                                           ; $6c9d: $80
	ld   a, [$0200]                                  ; $6c9e: $fa $00 $02
	add  b                                           ; $6ca1: $80
	ld   a, [$0280]                                  ; $6ca2: $fa $80 $02
	adc  b                                           ; $6ca5: $88
	add  hl, bc                                      ; $6ca6: $09
	add  b                                           ; $6ca7: $80
	dec  bc                                          ; $6ca8: $0b
	add  d                                           ; $6ca9: $82
	inc  bc                                          ; $6caa: $03
	add  b                                           ; $6cab: $80
	ld   [hl], a                                     ; $6cac: $77
	add  b                                           ; $6cad: $80
	ld   h, e                                        ; $6cae: $63
	add  d                                           ; $6caf: $82
	db   $e3                                         ; $6cb0: $e3
	add  [hl]                                        ; $6cb1: $86
	db   $eb                                         ; $6cb2: $eb
	ld   bc, $000f                                   ; $6cb3: $01 $0f $00
	adc  d                                           ; $6cb6: $8a
	add  b                                           ; $6cb7: $80
	add  b                                           ; $6cb8: $80
	and  b                                           ; $6cb9: $a0
	nop                                              ; $6cba: $00
	ldh  a, [rIE]                                    ; $6cbb: $f0 $ff
	nop                                              ; $6cbd: $00
	cp   h                                           ; $6cbe: $bc
	nop                                              ; $6cbf: $00
	ld   bc, $fa05                                   ; $6cc0: $01 $05 $fa
	add  d                                           ; $6cc3: $82
	nop                                              ; $6cc4: $00
	add  c                                           ; $6cc5: $81
	ld   hl, sp+$00                                  ; $6cc6: $f8 $00
	nop                                              ; $6cc8: $00
	add  d                                           ; $6cc9: $82
	ld   hl, sp-$80                                  ; $6cca: $f8 $80
	nop                                              ; $6ccc: $00
	nop                                              ; $6ccd: $00
	ei                                               ; $6cce: $fb
	add  l                                           ; $6ccf: $85
	inc  bc                                          ; $6cd0: $03
	add  [hl]                                        ; $6cd1: $86
	dec  bc                                          ; $6cd2: $0b
	add  d                                           ; $6cd3: $82
	db   $eb                                         ; $6cd4: $eb
	add  h                                           ; $6cd5: $84
	rst  $28                                         ; $6cd6: $ef
	add  h                                           ; $6cd7: $84
	rst  $38                                         ; $6cd8: $ff
	nop                                              ; $6cd9: $00
	xor  a                                           ; $6cda: $af
	adc  l                                           ; $6cdb: $8d
	and  b                                           ; $6cdc: $a0
	nop                                              ; $6cdd: $00
	ldh  a, [rIE]                                    ; $6cde: $f0 $ff
	nop                                              ; $6ce0: $00
	cp   h                                           ; $6ce1: $bc
	nop                                              ; $6ce2: $00
	nop                                              ; $6ce3: $00
	rlca                                             ; $6ce4: $07
	add  a                                           ; $6ce5: $87
	nop                                              ; $6ce6: $00
	add  d                                           ; $6ce7: $82
	ld   hl, sp+$01                                  ; $6ce8: $f8 $01
	ld   a, b                                        ; $6cea: $78
	add  b                                           ; $6ceb: $80
	add  d                                           ; $6cec: $82
	dec  bc                                          ; $6ced: $0b
	adc  b                                           ; $6cee: $88
	add  hl, bc                                      ; $6cef: $09
	add  b                                           ; $6cf0: $80
	ld   bc, $ff8c                                   ; $6cf1: $01 $8c $ff
	ld   [bc], a                                     ; $6cf4: $02
	rst  $28                                         ; $6cf5: $ef
	rst  $38                                         ; $6cf6: $ff
	cp   a                                           ; $6cf7: $bf
	adc  l                                           ; $6cf8: $8d
	and  b                                           ; $6cf9: $a0
	nop                                              ; $6cfa: $00
	ldh  a, [rIE]                                    ; $6cfb: $f0 $ff
	nop                                              ; $6cfd: $00
	cp   h                                           ; $6cfe: $bc
	nop                                              ; $6cff: $00
	ld   b, $df                                      ; $6d00: $06 $df
	ldh  [rOBP0], a                                  ; $6d02: $e0 $48
	ld   hl, sp+$50                                  ; $6d04: $f8 $50
	jr   c, @+$1c                                    ; $6d06: $38 $1a

	add  c                                           ; $6d08: $81
	ld   a, [$0281]                                  ; $6d09: $fa $81 $02
	add  c                                           ; $6d0c: $81
	ld   a, [$018e]                                  ; $6d0d: $fa $8e $01
	nop                                              ; $6d10: $00
	rst  $28                                         ; $6d11: $ef
	add  e                                           ; $6d12: $83
	rst  $38                                         ; $6d13: $ff
	nop                                              ; $6d14: $00
	ei                                               ; $6d15: $fb
	add  c                                           ; $6d16: $81
	rst  $38                                         ; $6d17: $ff
	add  h                                           ; $6d18: $84
	ld   a, a                                        ; $6d19: $7f
	nop                                              ; $6d1a: $00
	ei                                               ; $6d1b: $fb
	adc  c                                           ; $6d1c: $89
	ldh  [$82], a                                    ; $6d1d: $e0 $82
	and  b                                           ; $6d1f: $a0
	nop                                              ; $6d20: $00
	ldh  a, [rIE]                                    ; $6d21: $f0 $ff
	nop                                              ; $6d23: $00
	cp   h                                           ; $6d24: $bc
	nop                                              ; $6d25: $00
	nop                                              ; $6d26: $00
	dec  b                                           ; $6d27: $05
	add  c                                           ; $6d28: $81
	ld   a, [$0282]                                  ; $6d29: $fa $82 $02
	add  b                                           ; $6d2c: $80
	ldh  [c], a                                      ; $6d2d: $e2
	add  h                                           ; $6d2e: $84
	db   $e3                                         ; $6d2f: $e3
	add  h                                           ; $6d30: $84
	ld   bc, $0088                                   ; $6d31: $01 $88 $00
	ld   [bc], a                                     ; $6d34: $02
	ld   l, e                                        ; $6d35: $6b
	ld   a, a                                        ; $6d36: $7f
	ld   [hl], a                                     ; $6d37: $77
	add  l                                           ; $6d38: $85
	ld   a, a                                        ; $6d39: $7f
	nop                                              ; $6d3a: $00
	ld   a, e                                        ; $6d3b: $7b
	add  e                                           ; $6d3c: $83
	ld   a, a                                        ; $6d3d: $7f
	ld   bc, $a0b7                                   ; $6d3e: $01 $b7 $a0
	adc  h                                           ; $6d41: $8c
	add  b                                           ; $6d42: $80
	nop                                              ; $6d43: $00
	ldh  a, [rIE]                                    ; $6d44: $f0 $ff
	nop                                              ; $6d46: $00
	cp   h                                           ; $6d47: $bc
	nop                                              ; $6d48: $00
	nop                                              ; $6d49: $00
	inc  e                                           ; $6d4a: $1c
	adc  c                                           ; $6d4b: $89
	db   $e3                                         ; $6d4c: $e3
	add  d                                           ; $6d4d: $82
	ldh  [c], a                                      ; $6d4e: $e2
	nop                                              ; $6d4f: $00
	rst  $38                                         ; $6d50: $ff
	rst  $38                                         ; $6d51: $ff
	nop                                              ; $6d52: $00
	rst  $38                                         ; $6d53: $ff
	nop                                              ; $6d54: $00
	rst  $38                                         ; $6d55: $ff
	nop                                              ; $6d56: $00
	ld   [$1000], a                                  ; $6d57: $ea $00 $10
	nop                                              ; $6d5a: $00
	rst  $38                                         ; $6d5b: $ff
	nop                                              ; $6d5c: $00
	rst  $38                                         ; $6d5d: $ff
	nop                                              ; $6d5e: $00
	rst  $38                                         ; $6d5f: $ff
	nop                                              ; $6d60: $00
	rst  $38                                         ; $6d61: $ff
	nop                                              ; $6d62: $00
	rst  $38                                         ; $6d63: $ff
	nop                                              ; $6d64: $00
	rst  $38                                         ; $6d65: $ff
	nop                                              ; $6d66: $00
	rst  $38                                         ; $6d67: $ff
	nop                                              ; $6d68: $00
	rst  $38                                         ; $6d69: $ff
	nop                                              ; $6d6a: $00
	rst  $38                                         ; $6d6b: $ff
	nop                                              ; $6d6c: $00
	rst  $38                                         ; $6d6d: $ff
	nop                                              ; $6d6e: $00
	rst  $38                                         ; $6d6f: $ff
	nop                                              ; $6d70: $00
	rst  $38                                         ; $6d71: $ff
	nop                                              ; $6d72: $00
	rst  $38                                         ; $6d73: $ff
	nop                                              ; $6d74: $00
	rst  $38                                         ; $6d75: $ff
	nop                                              ; $6d76: $00
	rst  $38                                         ; $6d77: $ff
	nop                                              ; $6d78: $00
	rst  $28                                         ; $6d79: $ef
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
	rst  $38                                         ; $6d93: $ff
	ld   a, a                                        ; $6d94: $7f
	ld   [hl], c                                     ; $6d95: $71
	ld   d, [hl]                                     ; $6d96: $56
	ld   a, [hl+]                                    ; $6d97: $2a
	ld   sp, $51ce                                   ; $6d98: $31 $ce $51
	rst  $38                                         ; $6d9b: $ff
	ld   a, a                                        ; $6d9c: $7f
	ld   [hl], c                                     ; $6d9d: $71
	ld   d, [hl]                                     ; $6d9e: $56
	ld   a, [hl+]                                    ; $6d9f: $2a
	ld   sp, $214c                                   ; $6da0: $31 $4c $21
	rst  $38                                         ; $6da3: $ff
	ld   a, a                                        ; $6da4: $7f
	inc  l                                           ; $6da5: $2c
	dec  d                                           ; $6da6: $15
	or   $28                                         ; $6da7: $f6 $28
	dec  hl                                          ; $6da9: $2b
	ld   d, $ff                                      ; $6daa: $16 $ff
	ld   a, a                                        ; $6dac: $7f
	sub  d                                           ; $6dad: $92
	ld   e, [hl]                                     ; $6dae: $5e
	add  hl, bc                                      ; $6daf: $09
	dec  l                                           ; $6db0: $2d
	call $ff51                                       ; $6db1: $cd $51 $ff
	ld   a, a                                        ; $6db4: $7f
	sub  d                                           ; $6db5: $92
	ld   e, [hl]                                     ; $6db6: $5e
	add  hl, bc                                      ; $6db7: $09
	dec  l                                           ; $6db8: $2d
	ld   c, l                                        ; $6db9: $4d
	add  hl, hl                                      ; $6dba: $29
	rst  $38                                         ; $6dbb: $ff
	ld   a, a                                        ; $6dbc: $7f
	ld   c, l                                        ; $6dbd: $4d
	add  hl, de                                      ; $6dbe: $19
	ld   a, d                                        ; $6dbf: $7a
	add  hl, sp                                      ; $6dc0: $39
	adc  l                                           ; $6dc1: $8d
	ld   e, $ff                                      ; $6dc2: $1e $ff
	ld   a, a                                        ; $6dc4: $7f
	ld   [hl], c                                     ; $6dc5: $71
	ld   d, d                                        ; $6dc6: $52
	xor  l                                           ; $6dc7: $ad
	ld   b, l                                        ; $6dc8: $45
	inc  c                                           ; $6dc9: $0c
	dec  [hl]                                        ; $6dca: $35
	ld   a, [hl+]                                    ; $6dcb: $2a
	ld   h, $71                                      ; $6dcc: $26 $71
	ld   d, d                                        ; $6dce: $52
	ld   d, $2d                                      ; $6dcf: $16 $2d
	dec  bc                                          ; $6dd1: $0b
	add  hl, de                                      ; $6dd2: $19
	rst  $38                                         ; $6dd3: $ff
	ld   a, a                                        ; $6dd4: $7f
	ld   l, [hl]                                     ; $6dd5: $6e
	dec  e                                           ; $6dd6: $1d
	scf                                              ; $6dd7: $37
	dec  l                                           ; $6dd8: $2d
	dec  bc                                          ; $6dd9: $0b
	add  hl, de                                      ; $6dda: $19
	rst  $38                                         ; $6ddb: $ff
	ld   a, a                                        ; $6ddc: $7f
	or   e                                           ; $6ddd: $b3
	ld   e, d                                        ; $6dde: $5a
	rst  $28                                         ; $6ddf: $ef
	ld   c, l                                        ; $6de0: $4d
	inc  c                                           ; $6de1: $0c
	ld   sp, $1e8d                                   ; $6de2: $31 $8d $1e
	or   e                                           ; $6de5: $b3
	ld   e, d                                        ; $6de6: $5a
	ld   a, d                                        ; $6de7: $7a
	add  hl, sp                                      ; $6de8: $39
	ld   c, h                                        ; $6de9: $4c
	dec  e                                           ; $6dea: $1d
	rst  $38                                         ; $6deb: $ff
	ld   a, a                                        ; $6dec: $7f
	sub  b                                           ; $6ded: $90
	dec  l                                           ; $6dee: $2d
	ld   a, d                                        ; $6def: $7a
	add  hl, sp                                      ; $6df0: $39
	ld   c, h                                        ; $6df1: $4c
	dec  e                                           ; $6df2: $1d
	rst  $38                                         ; $6df3: $ff
	ld   a, a                                        ; $6df4: $7f
	jr   nc, jr_085_6e18                             ; $6df5: $30 $21

	inc  c                                           ; $6df7: $0c
	ld   hl, $18e8                                   ; $6df8: $21 $e8 $18
	rst  $38                                         ; $6dfb: $ff
	ld   a, a                                        ; $6dfc: $7f
	inc  c                                           ; $6dfd: $0c
	ld   hl, $1e2e                                   ; $6dfe: $21 $2e $1e
	add  sp, $18                                     ; $6e01: $e8 $18
	rst  $38                                         ; $6e03: $ff
	ld   a, a                                        ; $6e04: $7f
	ld   l, $1e                                      ; $6e05: $2e $1e
	jr   nc, jr_085_6e2a                             ; $6e07: $30 $21

	add  sp, $18                                     ; $6e09: $e8 $18
	rst  $38                                         ; $6e0b: $ff
	ld   a, a                                        ; $6e0c: $7f
	ld   d, d                                        ; $6e0d: $52
	ld   c, d                                        ; $6e0e: $4a
	ld   c, h                                        ; $6e0f: $4c
	dec  e                                           ; $6e10: $1d
	jp   hl                                          ; $6e11: $e9


	inc  d                                           ; $6e12: $14
	rst  $38                                         ; $6e13: $ff
	ld   a, a                                        ; $6e14: $7f
	ldh  a, [c]                                      ; $6e15: $f2
	ld   b, [hl]                                     ; $6e16: $46
	xor  l                                           ; $6e17: $ad

jr_085_6e18:
	add  hl, sp                                      ; $6e18: $39
	jp   hl                                          ; $6e19: $e9


	inc  d                                           ; $6e1a: $14
	rst  $38                                         ; $6e1b: $ff
	ld   a, a                                        ; $6e1c: $7f
	inc  [hl]                                        ; $6e1d: $34
	dec  h                                           ; $6e1e: $25
	xor  [hl]                                        ; $6e1f: $ae
	add  hl, hl                                      ; $6e20: $29
	jp   hl                                          ; $6e21: $e9


	inc  d                                           ; $6e22: $14
	rst  $38                                         ; $6e23: $ff
	ld   a, a                                        ; $6e24: $7f
	sub  $2e                                         ; $6e25: $d6 $2e
	ld   [hl], d                                     ; $6e27: $72
	dec  l                                           ; $6e28: $2d
	ld   c, h                                        ; $6e29: $4c

jr_085_6e2a:
	ld   hl, $7fff                                   ; $6e2a: $21 $ff $7f
	or   d                                           ; $6e2d: $b2
	ld   c, d                                        ; $6e2e: $4a
	ld   l, h                                        ; $6e2f: $6c
	dec  [hl]                                        ; $6e30: $35
	ld   a, [bc]                                     ; $6e31: $0a
	dec  e                                           ; $6e32: $1d
	rst  $38                                         ; $6e33: $ff
	ld   a, a                                        ; $6e34: $7f
	dec  sp                                          ; $6e35: $3b
	dec  [hl]                                        ; $6e36: $35
	ld   l, l                                        ; $6e37: $6d
	ld   hl, $1d0a                                   ; $6e38: $21 $0a $1d
	rst  $38                                         ; $6e3b: $ff
	ld   a, a                                        ; $6e3c: $7f
	adc  l                                           ; $6e3d: $8d
	ld   a, [de]                                     ; $6e3e: $1a
	and  a                                           ; $6e3f: $a7
	dec  c                                           ; $6e40: $0d
	ld   a, [bc]                                     ; $6e41: $0a
	add  hl, de                                      ; $6e42: $19
	rst  $38                                         ; $6e43: $ff
	ld   a, a                                        ; $6e44: $7f
	adc  l                                           ; $6e45: $8d
	ld   a, [de]                                     ; $6e46: $1a
	rla                                              ; $6e47: $17
	dec  l                                           ; $6e48: $2d
	ld   a, [bc]                                     ; $6e49: $0a
	add  hl, de                                      ; $6e4a: $19
	rst  $38                                         ; $6e4b: $ff
	ld   a, a                                        ; $6e4c: $7f
	ld   [hl], e                                     ; $6e4d: $73
	ld   h, [hl]                                     ; $6e4e: $66
	xor  [hl]                                        ; $6e4f: $ae
	ld   b, l                                        ; $6e50: $45
	ld   c, d                                        ; $6e51: $4a
	dec  [hl]                                        ; $6e52: $35
	rst  $38                                         ; $6e53: $ff
	ld   a, a                                        ; $6e54: $7f
	adc  l                                           ; $6e55: $8d
	ld   e, $c8                                      ; $6e56: $1e $c8
	ld   de, $192b                                   ; $6e58: $11 $2b $19
	rst  $38                                         ; $6e5b: $ff
	ld   a, a                                        ; $6e5c: $7f
	adc  l                                           ; $6e5d: $8d
	ld   e, $38                                      ; $6e5e: $1e $38
	ld   sp, $192b                                   ; $6e60: $31 $2b $19
	rst  $38                                         ; $6e63: $ff
	ld   a, a                                        ; $6e64: $7f
	sub  h                                           ; $6e65: $94
	ld   l, d                                        ; $6e66: $6a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e67: $cf
	ld   c, c                                        ; $6e68: $49
	ld   l, e                                        ; $6e69: $6b
	add  hl, sp                                      ; $6e6a: $39
	rst  $38                                         ; $6e6b: $ff
	ld   a, a                                        ; $6e6c: $7f
	ld   c, a                                        ; $6e6d: $4f
	add  hl, hl                                      ; $6e6e: $29
	ld   e, h                                        ; $6e6f: $5c
	ld   hl, $2cc9                                   ; $6e70: $21 $c9 $2c
	rst  $38                                         ; $6e73: $ff
	ld   a, a                                        ; $6e74: $7f
	ld   e, a                                        ; $6e75: $5f
	ccf                                              ; $6e76: $3f
	ld   c, e                                        ; $6e77: $4b
	ld   h, $c9                                      ; $6e78: $26 $c9
	inc  l                                           ; $6e7a: $2c
	rst  $38                                         ; $6e7b: $ff
	ld   a, a                                        ; $6e7c: $7f
	adc  $75                                         ; $6e7d: $ce $75
	ld   sp, wEnterNameReturnState                                   ; $6e7f: $31 $46 $c9
	inc  l                                           ; $6e82: $2c
	rst  $38                                         ; $6e83: $ff
	ld   a, a                                        ; $6e84: $7f
	ld   [hl], b                                     ; $6e85: $70
	dec  l                                           ; $6e86: $2d
	sbc  [hl]                                        ; $6e87: $9e
	add  hl, hl                                      ; $6e88: $29
	ld   [$ff30], a                                  ; $6e89: $ea $30 $ff
	ld   a, a                                        ; $6e8c: $7f
	sbc  [hl]                                        ; $6e8d: $9e
	ld   b, e                                        ; $6e8e: $43
	adc  l                                           ; $6e8f: $8d
	ld   l, $ea                                      ; $6e90: $2e $ea
	jr   nc, @+$01                                   ; $6e92: $30 $ff

	ld   a, a                                        ; $6e94: $7f
	cpl                                              ; $6e95: $2f
	ld   a, d                                        ; $6e96: $7a
	sub  h                                           ; $6e97: $94
	ld   d, d                                        ; $6e98: $52
	ld   [$ff30], a                                  ; $6e99: $ea $30 $ff
	ld   a, a                                        ; $6e9c: $7f
	ret  nc                                          ; $6e9d: $d0

	ld   e, $0a                                      ; $6e9e: $1e $0a
	ld   [bc], a                                     ; $6ea0: $02
	ld   c, c                                        ; $6ea1: $49
	dec  b                                           ; $6ea2: $05
	ld   [hl], b                                     ; $6ea3: $70
	dec  b                                           ; $6ea4: $05
	jp   nc, $0a1e                                   ; $6ea5: $d2 $1e $0a

	ld   [bc], a                                     ; $6ea8: $02
	jr   z, jr_085_6eb0                              ; $6ea9: $28 $05

	rst  $38                                         ; $6eab: $ff
	ld   a, a                                        ; $6eac: $7f
	ld   [hl-], a                                    ; $6ead: $32
	ld   e, $70                                      ; $6eae: $1e $70

jr_085_6eb0:
	dec  b                                           ; $6eb0: $05
	dec  hl                                          ; $6eb1: $2b
	dec  c                                           ; $6eb2: $0d
	rst  $38                                         ; $6eb3: $ff
	ld   a, a                                        ; $6eb4: $7f
	sub  l                                           ; $6eb5: $95
	ld   d, [hl]                                     ; $6eb6: $56
	ld   [$0925], a                                  ; $6eb7: $ea $25 $09
	dec  d                                           ; $6eba: $15
	ei                                               ; $6ebb: $fb
	ld   [hl], $f4                                   ; $6ebc: $36 $f4
	dec  e                                           ; $6ebe: $1d
	ld   l, $19                                      ; $6ebf: $2e $19
	jp   hl                                          ; $6ec1: $e9


	inc  c                                           ; $6ec2: $0c
	rst  $38                                         ; $6ec3: $ff
	ld   a, a                                        ; $6ec4: $7f
	cp   a                                           ; $6ec5: $bf
	dec  a                                           ; $6ec6: $3d
	ld   l, $19                                      ; $6ec7: $2e $19
	add  sp, $0c                                     ; $6ec9: $e8 $0c
	rst  $38                                         ; $6ecb: $ff
	ld   a, a                                        ; $6ecc: $7f
	adc  d                                           ; $6ecd: $8a
	ld   de, $2ccd                                   ; $6ece: $11 $cd $2c
	ret                                              ; $6ed1: $c9


	jr   nz, @+$01                                   ; $6ed2: $20 $ff

	ld   a, a                                        ; $6ed4: $7f
	di                                               ; $6ed5: $f3
	inc  d                                           ; $6ed6: $14
	or   d                                           ; $6ed7: $b2
	dec  c                                           ; $6ed8: $0d
	ret                                              ; $6ed9: $c9


	inc  e                                           ; $6eda: $1c
	rst  $38                                         ; $6edb: $ff
	ld   a, a                                        ; $6edc: $7f
	sub  l                                           ; $6edd: $95
	ld   a, [hl+]                                    ; $6ede: $2a
	or   d                                           ; $6edf: $b2
	dec  c                                           ; $6ee0: $0d
	dec  bc                                          ; $6ee1: $0b
	dec  e                                           ; $6ee2: $1d
	rst  $38                                         ; $6ee3: $ff
	ld   a, a                                        ; $6ee4: $7f
	ld   c, b                                        ; $6ee5: $48
	add  hl, bc                                      ; $6ee6: $09
	call z, $c928                                    ; $6ee7: $cc $28 $c9
	jr   nz, @+$01                                   ; $6eea: $20 $ff

	ld   a, a                                        ; $6eec: $7f
	rst  $28                                         ; $6eed: $ef
	db   $10                                         ; $6eee: $10
	ld   [hl], b                                     ; $6eef: $70
	dec  b                                           ; $6ef0: $05
	ret                                              ; $6ef1: $c9


	inc  e                                           ; $6ef2: $1c
	rst  $38                                         ; $6ef3: $ff
	ld   a, a                                        ; $6ef4: $7f
	ld   de, $702a                                   ; $6ef5: $11 $2a $70
	dec  b                                           ; $6ef8: $05
	dec  bc                                          ; $6ef9: $0b
	dec  e                                           ; $6efa: $1d
	rst  $38                                         ; $6efb: $ff
	ld   a, a                                        ; $6efc: $7f
	db   $d3                                         ; $6efd: $d3
	ld   e, [hl]                                     ; $6efe: $5e
	adc  h                                           ; $6eff: $8c
	ld   c, l                                        ; $6f00: $4d
	add  hl, bc                                      ; $6f01: $09
	dec  [hl]                                        ; $6f02: $35
	ld   [hl], l                                     ; $6f03: $75
	ld   l, $4c                                      ; $6f04: $2e $4c
	ld   d, $0e                                      ; $6f06: $16 $0e
	dec  a                                           ; $6f08: $3d
	add  hl, bc                                      ; $6f09: $09

jr_085_6f0a:
	dec  [hl]                                        ; $6f0a: $35
	rst  $38                                         ; $6f0b: $ff
	ld   a, a                                        ; $6f0c: $7f
	cpl                                              ; $6f0d: $2f
	dec  d                                           ; $6f0e: $15
	sub  d                                           ; $6f0f: $92
	dec  d                                           ; $6f10: $15
	ld   [$ff34], a                                  ; $6f11: $ea $34 $ff
	ld   a, a                                        ; $6f14: $7f
	ld   d, b                                        ; $6f15: $50
	ld   d, d                                        ; $6f16: $52
	ld   l, e                                        ; $6f17: $6b
	ld   c, c                                        ; $6f18: $49
	add  sp, $30                                     ; $6f19: $e8 $30
	inc  sp                                          ; $6f1b: $33
	ld   l, $09                                      ; $6f1c: $2e $09
	ld   a, [bc]                                     ; $6f1e: $0a
	db   $ec                                         ; $6f1f: $ec
	jr   c, jr_085_6f0a                              ; $6f20: $38 $e8

	jr   nc, @+$01                                   ; $6f22: $30 $ff

	ld   a, a                                        ; $6f24: $7f
	ld   c, $11                                      ; $6f25: $0e $11
	ld   d, b                                        ; $6f27: $50
	ld   de, $30c9                                   ; $6f28: $11 $c9 $30
	rst  $38                                         ; $6f2b: $ff
	ld   a, a                                        ; $6f2c: $7f
	inc  e                                           ; $6f2d: $1c
	ld   hl, $30ed                                   ; $6f2e: $21 $ed $30
	ret                                              ; $6f31: $c9


	jr   nz, @+$01                                   ; $6f32: $20 $ff

	ld   a, a                                        ; $6f34: $7f
	ld   [hl], a                                     ; $6f35: $77
	ld   e, $90                                      ; $6f36: $1e $90
	dec  c                                           ; $6f38: $0d
	dec  hl                                          ; $6f39: $2b
	ld   de, $7b0e                                   ; $6f3a: $11 $0e $7b
	ld   c, a                                        ; $6f3d: $4f
	dec  hl                                          ; $6f3e: $2b
	ld   [$0a16], sp                                 ; $6f3f: $08 $16 $0a
	dec  c                                           ; $6f42: $0d
	rst  $38                                         ; $6f43: $ff
	ld   a, a                                        ; $6f44: $7f
	ld   [de], a                                     ; $6f45: $12
	dec  e                                           ; $6f46: $1d
	swap b                                           ; $6f47: $cb $30
	ret  z                                           ; $6f49: $c8

	jr   nz, @+$01                                   ; $6f4a: $20 $ff

	ld   a, a                                        ; $6f4c: $7f
	inc  sp                                          ; $6f4d: $33
	ld   [hl+], a                                    ; $6f4e: $22
	ld   l, [hl]                                     ; $6f4f: $6e
	dec  c                                           ; $6f50: $0d
	dec  bc                                          ; $6f51: $0b
	ld   de, $6eaf                                   ; $6f52: $11 $af $6e
	ld   c, a                                        ; $6f55: $4f
	ld   a, [hl+]                                    ; $6f56: $2a
	add  $1d                                         ; $6f57: $c6 $1d
	ld   a, [bc]                                     ; $6f59: $0a
	dec  c                                           ; $6f5a: $0d
	inc  a                                           ; $6f5b: $3c
	rra                                              ; $6f5c: $1f
	ret  c                                           ; $6f5d: $d8

	jr   z, jr_085_6fb1                              ; $6f5e: $28 $51

	ld   de, $190a                                   ; $6f60: $11 $0a $19
	rst  $38                                         ; $6f63: $ff
	ld   a, a                                        ; $6f64: $7f
	push de                                          ; $6f65: $d5
	ld   l, $72                                      ; $6f66: $2e $72
	dec  c                                           ; $6f68: $0d
	ld   a, [bc]                                     ; $6f69: $0a
	add  hl, de                                      ; $6f6a: $19
	rst  $38                                         ; $6f6b: $ff
	ld   a, a                                        ; $6f6c: $7f
	add  $2d                                         ; $6f6d: $c6 $2d
	ld   [hl-], a                                    ; $6f6f: $32
	ld   e, $0a                                      ; $6f70: $1e $0a
	add  hl, de                                      ; $6f72: $19
	reti                                             ; $6f73: $d9


	ld   e, $d3                                      ; $6f74: $1e $d3
	inc  h                                           ; $6f76: $24
	ld   [hl], b                                     ; $6f77: $70
	dec  d                                           ; $6f78: $15
	add  hl, bc                                      ; $6f79: $09
	add  hl, de                                      ; $6f7a: $19
	rst  $38                                         ; $6f7b: $ff
	ld   a, a                                        ; $6f7c: $7f
	ld   [hl], d                                     ; $6f7d: $72
	ld   [hl+], a                                    ; $6f7e: $22
	ld   [hl], b                                     ; $6f7f: $70
	dec  d                                           ; $6f80: $15
	add  hl, bc                                      ; $6f81: $09
	add  hl, de                                      ; $6f82: $19
	rst  $38                                         ; $6f83: $ff
	ld   a, a                                        ; $6f84: $7f
	add  [hl]                                        ; $6f85: $86
	add  hl, hl                                      ; $6f86: $29
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f87: $cf
	dec  d                                           ; $6f88: $15
	add  hl, bc                                      ; $6f89: $09
	add  hl, de                                      ; $6f8a: $19
	rst  $38                                         ; $6f8b: $ff
	ld   a, a                                        ; $6f8c: $7f
	ld   c, h                                        ; $6f8d: $4c
	ld   hl, $55ef                                   ; $6f8e: $21 $ef $55
	ld   c, e                                        ; $6f91: $4b
	add  hl, sp                                      ; $6f92: $39
	ld   [hl], d                                     ; $6f93: $72
	ld   b, d                                        ; $6f94: $42
	sbc  h                                           ; $6f95: $9c
	ld   b, l                                        ; $6f96: $45
	ld   d, $19                                      ; $6f97: $16 $19
	ld   l, b                                        ; $6f99: $68
	dec  [hl]                                        ; $6f9a: $35
	rst  $38                                         ; $6f9b: $ff
	ld   a, a                                        ; $6f9c: $7f
	sbc  h                                           ; $6f9d: $9c
	ld   b, l                                        ; $6f9e: $45
	rst  $28                                         ; $6f9f: $ef
	ld   d, l                                        ; $6fa0: $55
	ld   l, b                                        ; $6fa1: $68
	dec  [hl]                                        ; $6fa2: $35
	rst  $38                                         ; $6fa3: $ff
	ld   a, a                                        ; $6fa4: $7f
	or   c                                           ; $6fa5: $b1
	dec  h                                           ; $6fa6: $25
	rst  $28                                         ; $6fa7: $ef
	ld   d, l                                        ; $6fa8: $55
	ld   l, e                                        ; $6fa9: $6b
	dec  a                                           ; $6faa: $3d
	ld   [hl], d                                     ; $6fab: $72
	ld   b, d                                        ; $6fac: $42
	db   $dd                                         ; $6fad: $dd
	ld   d, c                                        ; $6fae: $51
	ld   [hl], l                                     ; $6faf: $75
	dec  e                                           ; $6fb0: $1d

jr_085_6fb1:
	adc  c                                           ; $6fb1: $89
	dec  [hl]                                        ; $6fb2: $35
	rst  $38                                         ; $6fb3: $ff
	ld   a, a                                        ; $6fb4: $7f
	db   $dd                                         ; $6fb5: $dd
	ld   d, c                                        ; $6fb6: $51
	rst  $28                                         ; $6fb7: $ef
	ld   d, l                                        ; $6fb8: $55
	adc  c                                           ; $6fb9: $89
	dec  [hl]                                        ; $6fba: $35
	rst  $38                                         ; $6fbb: $ff
	ld   a, a                                        ; $6fbc: $7f
	call nc, Call_085_5031                           ; $6fbd: $d4 $31 $50
	dec  l                                           ; $6fc0: $2d
	ld   a, [bc]                                     ; $6fc1: $0a
	add  hl, de                                      ; $6fc2: $19
	rst  $38                                         ; $6fc3: $ff
	ld   a, a                                        ; $6fc4: $7f
	db   $f4                                         ; $6fc5: $f4
	ld   d, d                                        ; $6fc6: $52
	inc  c                                           ; $6fc7: $0c
	ld   e, $28                                      ; $6fc8: $1e $28
	ld   de, $7fff                                   ; $6fca: $11 $ff $7f
	sbc  d                                           ; $6fcd: $9a
	dec  de                                          ; $6fce: $1b
	inc  e                                           ; $6fcf: $1c
	ld   hl, $250c                                   ; $6fd0: $21 $0c $25
	rst  $38                                         ; $6fd3: $ff
	ld   a, a                                        ; $6fd4: $7f
	ld   [de], a                                     ; $6fd5: $12
	ld   [hl-], a                                    ; $6fd6: $32
	ld   l, a                                        ; $6fd7: $6f
	ld   sp, $1d29                                   ; $6fd8: $31 $29 $1d
	rst  $38                                         ; $6fdb: $ff
	ld   a, a                                        ; $6fdc: $7f
	db   $f4                                         ; $6fdd: $f4
	ld   d, [hl]                                     ; $6fde: $56
	inc  c                                           ; $6fdf: $0c
	ld   e, $48                                      ; $6fe0: $1e $48
	ld   de, $7fff                                   ; $6fe2: $11 $ff $7f
	sbc  e                                           ; $6fe5: $9b
	dec  hl                                          ; $6fe6: $2b
	ld   a, l                                        ; $6fe7: $7d
	dec  l                                           ; $6fe8: $2d
	inc  l                                           ; $6fe9: $2c
	add  hl, hl                                      ; $6fea: $29
	rst  $38                                         ; $6feb: $ff
	ld   a, a                                        ; $6fec: $7f
	scf                                              ; $6fed: $37
	ld   b, e                                        ; $6fee: $43
	sub  d                                           ; $6fef: $92
	ld   sp, $290b                                   ; $6ff0: $31 $0b $29
	rst  $38                                         ; $6ff3: $ff
	ld   a, a                                        ; $6ff4: $7f
	sub  d                                           ; $6ff5: $92
	ld   sp, $295a                                   ; $6ff6: $31 $5a $29
	rst  $28                                         ; $6ff9: $ef
	inc  h                                           ; $6ffa: $24
	rst  $38                                         ; $6ffb: $ff
	ld   a, a                                        ; $6ffc: $7f
	dec  de                                          ; $6ffd: $1b
	scf                                              ; $6ffe: $37
	inc  c                                           ; $6fff: $0c
	ld   d, d                                        ; $7000: $52
	dec  bc                                          ; $7001: $0b
	add  hl, hl                                      ; $7002: $29
	rst  $38                                         ; $7003: $ff
	ld   a, a                                        ; $7004: $7f
	ld   e, c                                        ; $7005: $59
	ld   c, e                                        ; $7006: $4b
	call nc, $0b39                                   ; $7007: $d4 $39 $0b
	add  hl, hl                                      ; $700a: $29
	rst  $38                                         ; $700b: $ff
	ld   a, a                                        ; $700c: $7f
	call nc, Call_085_5c39                           ; $700d: $d4 $39 $5c
	add  hl, hl                                      ; $7010: $29
	ldh  a, [rAUD4LEN]                               ; $7011: $f0 $20
	rst  $38                                         ; $7013: $ff
	ld   a, a                                        ; $7014: $7f
	ld   e, l                                        ; $7015: $5d
	ccf                                              ; $7016: $3f
	ld   l, a                                        ; $7017: $6f
	ld   e, [hl]                                     ; $7018: $5e
	dec  bc                                          ; $7019: $0b
	add  hl, hl                                      ; $701a: $29
	rst  $38                                         ; $701b: $ff
	ld   a, a                                        ; $701c: $7f
	call z, $6915                                    ; $701d: $cc $15 $69
	ld   de, $10e4                                   ; $7020: $11 $e4 $10
	rst  $38                                         ; $7023: $ff
	ld   a, a                                        ; $7024: $7f
	di                                               ; $7025: $f3
	dec  a                                           ; $7026: $3d
	ld   l, $21                                      ; $7027: $2e $21
	jp   hl                                          ; $7029: $e9


	db   $10                                         ; $702a: $10
	rst  $38                                         ; $702b: $ff
	ld   a, a                                        ; $702c: $7f
	ld   [hl], l                                     ; $702d: $75
	ccf                                              ; $702e: $3f
	ld   d, c                                        ; $702f: $51
	ld   [hl], $e9                                   ; $7030: $36 $e9
	db   $10                                         ; $7032: $10
	rst  $38                                         ; $7033: $ff
	ld   a, a                                        ; $7034: $7f
	dec  c                                           ; $7035: $0d
	ld   [hl+], a                                    ; $7036: $22
	xor  d                                           ; $7037: $aa
	dec  e                                           ; $7038: $1d
	dec  h                                           ; $7039: $25
	add  hl, de                                      ; $703a: $19
	rst  $38                                         ; $703b: $ff
	ld   a, a                                        ; $703c: $7f
	ld   [de], a                                     ; $703d: $12
	ld   b, d                                        ; $703e: $42
	ld   c, l                                        ; $703f: $4d
	dec  h                                           ; $7040: $25
	add  sp, $14                                     ; $7041: $e8 $14
	rst  $38                                         ; $7043: $ff
	ld   a, a                                        ; $7044: $7f
	ld   d, e                                        ; $7045: $53
	ccf                                              ; $7046: $3f
	ld   c, a                                        ; $7047: $4f
	ld   [hl], $e8                                   ; $7048: $36 $e8
	inc  d                                           ; $704a: $14
	rst  $38                                         ; $704b: $ff
	ld   a, a                                        ; $704c: $7f
	or   a                                           ; $704d: $b7
	ld   c, d                                        ; $704e: $4a
	ret  nc                                          ; $704f: $d0

	ld   sp, $250b                                   ; $7050: $31 $0b $25
	rst  $38                                         ; $7053: $ff
	ld   a, a                                        ; $7054: $7f
	or   a                                           ; $7055: $b7
	ld   c, d                                        ; $7056: $4a
	ld   b, $32                                      ; $7057: $06 $32
	dec  bc                                          ; $7059: $0b
	dec  h                                           ; $705a: $25
	rst  $38                                         ; $705b: $ff
	ld   a, a                                        ; $705c: $7f
	jp   hl                                          ; $705d: $e9


	ld   h, d                                        ; $705e: $62
	ld   a, [$0b28]                                  ; $705f: $fa $28 $0b
	dec  h                                           ; $7062: $25
	rst  $38                                         ; $7063: $ff
	ld   a, a                                        ; $7064: $7f
	ld   [de], a                                     ; $7065: $12
	ld   a, $2a                                      ; $7066: $3e $2a
	dec  l                                           ; $7068: $2d
	inc  l                                           ; $7069: $2c
	add  hl, de                                      ; $706a: $19
	rst  $38                                         ; $706b: $ff
	ld   a, a                                        ; $706c: $7f

jr_085_706d:
	ld   [de], a                                     ; $706d: $12
	ld   a, $0b                                      ; $706e: $3e $0b
	ld   a, [de]                                     ; $7070: $1a
	inc  l                                           ; $7071: $2c
	add  hl, de                                      ; $7072: $19
	rst  $38                                         ; $7073: $ff
	ld   a, a                                        ; $7074: $7f
	ld   a, [hl+]                                    ; $7075: $2a
	dec  l                                           ; $7076: $2d
	rrca                                             ; $7077: $0f
	ld   hl, $1d4e                                   ; $7078: $21 $4e $1d
	rst  $38                                         ; $707b: $ff
	ld   a, a                                        ; $707c: $7f
	or   e                                           ; $707d: $b3
	ld   e, [hl]                                     ; $707e: $5e
	call $ea3d                                       ; $707f: $cd $3d $ea
	jr   @+$01                                       ; $7082: $18 $ff

	ld   a, a                                        ; $7084: $7f
	push de                                          ; $7085: $d5
	inc  h                                           ; $7086: $24
	call $ea3d                                       ; $7087: $cd $3d $ea
	jr   @+$01                                       ; $708a: $18 $ff

	ld   a, a                                        ; $708c: $7f
	push de                                          ; $708d: $d5
	inc  h                                           ; $708e: $24
	ld   [hl], c                                     ; $708f: $71
	dec  h                                           ; $7090: $25
	ld   [$ff18], a                                  ; $7091: $ea $18 $ff
	ld   a, a                                        ; $7094: $7f
	or   e                                           ; $7095: $b3
	ld   e, [hl]                                     ; $7096: $5e
	call $ea3d                                       ; $7097: $cd $3d $ea
	jr   @+$01                                       ; $709a: $18 $ff

	ld   a, a                                        ; $709c: $7f
	rst  $30                                         ; $709d: $f7
	jr   z, jr_085_706d                              ; $709e: $28 $cd

	dec  a                                           ; $70a0: $3d
	ld   [$ff18], a                                  ; $70a1: $ea $18 $ff
	ld   a, a                                        ; $70a4: $7f
	rst  $30                                         ; $70a5: $f7
	jr   z, jr_085_7119                              ; $70a6: $28 $71

	dec  h                                           ; $70a8: $25
	ld   [$ff18], a                                  ; $70a9: $ea $18 $ff
	ld   a, a                                        ; $70ac: $7f
	sub  d                                           ; $70ad: $92
	ld   e, [hl]                                     ; $70ae: $5e
	call $0951                                       ; $70af: $cd $51 $09
	dec  l                                           ; $70b2: $2d
	rst  $38                                         ; $70b3: $ff
	ld   a, a                                        ; $70b4: $7f
	ld   a, d                                        ; $70b5: $7a
	add  hl, sp                                      ; $70b6: $39
	call $2c51                                       ; $70b7: $cd $51 $2c
	dec  h                                           ; $70ba: $25
	rst  $38                                         ; $70bb: $ff
	ld   a, a                                        ; $70bc: $7f
	ld   a, d                                        ; $70bd: $7a
	add  hl, sp                                      ; $70be: $39
	sub  b                                           ; $70bf: $90
	dec  l                                           ; $70c0: $2d
	inc  l                                           ; $70c1: $2c
	dec  h                                           ; $70c2: $25
	rst  $38                                         ; $70c3: $ff
	ld   a, a                                        ; $70c4: $7f
	di                                               ; $70c5: $f3
	dec  e                                           ; $70c6: $1d
	ld   sp, $ea19                                   ; $70c7: $31 $19 $ea
	jr   @+$01                                       ; $70ca: $18 $ff

	ld   a, a                                        ; $70cc: $7f
	call c, $1157                                    ; $70cd: $dc $57 $11
	ld   a, $ea                                      ; $70d0: $3e $ea
	jr   @+$01                                       ; $70d2: $18 $ff

	ld   a, a                                        ; $70d4: $7f
	di                                               ; $70d5: $f3
	dec  e                                           ; $70d6: $1d
	ld   de, $ea3e                                   ; $70d7: $11 $3e $ea
	jr   @+$01                                       ; $70da: $18 $ff

	ld   a, a                                        ; $70dc: $7f
	add  hl, de                                      ; $70dd: $19
	ld   a, $53                                      ; $70de: $3e $53
	dec  h                                           ; $70e0: $25
	dec  bc                                          ; $70e1: $0b
	add  hl, hl                                      ; $70e2: $29
	rst  $38                                         ; $70e3: $ff
	ld   a, a                                        ; $70e4: $7f
	sbc  [hl]                                        ; $70e5: $9e
	ld   b, a                                        ; $70e6: $47
	ld   d, e                                        ; $70e7: $53
	dec  h                                           ; $70e8: $25
	dec  bc                                          ; $70e9: $0b
	add  hl, hl                                      ; $70ea: $29
	rst  $38                                         ; $70eb: $ff
	ld   a, a                                        ; $70ec: $7f
	sbc  [hl]                                        ; $70ed: $9e
	ld   b, a                                        ; $70ee: $47
	sub  h                                           ; $70ef: $94
	add  hl, de                                      ; $70f0: $19
	sub  $77                                         ; $70f1: $d6 $77
	rst  $38                                         ; $70f3: $ff
	ld   a, a                                        ; $70f4: $7f
	ld   a, b                                        ; $70f5: $78
	ld   a, [hl+]                                    ; $70f6: $2a
	ld   l, $15                                      ; $70f7: $2e $15
	db   $ed                                         ; $70f9: $ed
	inc  h                                           ; $70fa: $24
	rst  $38                                         ; $70fb: $ff
	ld   a, a                                        ; $70fc: $7f
	dec  [hl]                                        ; $70fd: $35
	ld   sp, $2a78                                   ; $70fe: $31 $78 $2a
	db   $ed                                         ; $7101: $ed
	inc  h                                           ; $7102: $24
	rst  $38                                         ; $7103: $ff
	ld   a, a                                        ; $7104: $7f
	dec  [hl]                                        ; $7105: $35
	ld   sp, $152e                                   ; $7106: $31 $2e $15
	db   $ed                                         ; $7109: $ed
	inc  h                                           ; $710a: $24
	rst  $38                                         ; $710b: $ff
	ld   a, a                                        ; $710c: $7f
	db   $fd                                         ; $710d: $fd
	ld   [hl-], a                                    ; $710e: $32
	ld   c, a                                        ; $710f: $4f
	add  hl, de                                      ; $7110: $19
	db   $ec                                         ; $7111: $ec
	jr   nz, @+$01                                   ; $7112: $20 $ff

	ld   a, a                                        ; $7114: $7f
	sbc  l                                           ; $7115: $9d
	dec  [hl]                                        ; $7116: $35
	db   $fd                                         ; $7117: $fd
	ld   [hl-], a                                    ; $7118: $32

jr_085_7119:
	db   $ec                                         ; $7119: $ec
	jr   nz, @+$01                                   ; $711a: $20 $ff

	ld   a, a                                        ; $711c: $7f
	sbc  l                                           ; $711d: $9d
	dec  [hl]                                        ; $711e: $35
	ld   c, a                                        ; $711f: $4f
	add  hl, de                                      ; $7120: $19
	db   $ec                                         ; $7121: $ec
	jr   nz, @+$01                                   ; $7122: $20 $ff

	ld   a, a                                        ; $7124: $7f
	ld   d, h                                        ; $7125: $54
	ld   [hl-], a                                    ; $7126: $32
	db   $10                                         ; $7127: $10
	ld   hl, $24eb                                   ; $7128: $21 $eb $24
	rst  $38                                         ; $712b: $ff
	ld   a, a                                        ; $712c: $7f
	dec  l                                           ; $712d: $2d
	ld   l, $10                                      ; $712e: $2e $10
	ld   hl, $194b                                   ; $7130: $21 $4b $19
	or   c                                           ; $7133: $b1
	ld   l, d                                        ; $7134: $6a
	dec  l                                           ; $7135: $2d
	ld   l, $10                                      ; $7136: $2e $10
	ld   hl, $194b                                   ; $7138: $21 $4b $19
	rst  $38                                         ; $713b: $ff
	ld   a, a                                        ; $713c: $7f
	or   [hl]                                        ; $713d: $b6
	ld   b, d                                        ; $713e: $42
	ld   [hl], d                                     ; $713f: $72
	ld   hl, $290c                                   ; $7140: $21 $0c $29
	rst  $38                                         ; $7143: $ff
	ld   a, a                                        ; $7144: $7f
	ld   c, l                                        ; $7145: $4d
	ld   [hl], $72                                   ; $7146: $36 $72
	ld   hl, $1d6c                                   ; $7148: $21 $6c $1d
	sub  e                                           ; $714b: $93
	ld   [hl], d                                     ; $714c: $72
	ld   c, l                                        ; $714d: $4d
	ld   [hl], $72                                   ; $714e: $36 $72
	ld   hl, $1d6c                                   ; $7150: $21 $6c $1d
	rst  $38                                         ; $7153: $ff
	ld   a, a                                        ; $7154: $7f
	inc  sp                                          ; $7155: $33
	ld   [hl], $31                                   ; $7156: $36 $31
	ld   hl, $20ea                                   ; $7158: $21 $ea $20
	rst  $38                                         ; $715b: $ff
	ld   a, a                                        ; $715c: $7f
	ld   e, e                                        ; $715d: $5b
	add  hl, sp                                      ; $715e: $39
	ld   sp, $ea21                                   ; $715f: $31 $21 $ea
	jr   nz, jr_085_7197                             ; $7162: $20 $33

	ld   [hl], $5b                                   ; $7164: $36 $5b
	add  hl, sp                                      ; $7166: $39
	call $ea1d                                       ; $7167: $cd $1d $ea
	jr   nz, @+$01                                   ; $716a: $20 $ff

	ld   a, a                                        ; $716c: $7f
	or   a                                           ; $716d: $b7
	ld   c, [hl]                                     ; $716e: $4e
	ld   d, c                                        ; $716f: $51
	add  hl, hl                                      ; $7170: $29
	ld   a, [bc]                                     ; $7171: $0a
	ld   hl, $7fff                                   ; $7172: $21 $ff $7f
	ld   a, d                                        ; $7175: $7a
	add  hl, sp                                      ; $7176: $39
	ld   d, c                                        ; $7177: $51
	add  hl, hl                                      ; $7178: $29
	ld   a, [bc]                                     ; $7179: $0a
	ld   hl, $4eb7                                   ; $717a: $21 $b7 $4e
	ld   a, d                                        ; $717d: $7a
	add  hl, sp                                      ; $717e: $39
	ld   c, l                                        ; $717f: $4d
	ld   e, $0a                                      ; $7180: $1e $0a
	ld   hl, $7fff                                   ; $7182: $21 $ff $7f
	jr   nc, @+$23                                   ; $7185: $30 $21

	inc  c                                           ; $7187: $0c
	ld   hl, $18e8                                   ; $7188: $21 $e8 $18
	nop                                              ; $718b: $00
	nop                                              ; $718c: $00
	nop                                              ; $718d: $00
	nop                                              ; $718e: $00
	nop                                              ; $718f: $00
	nop                                              ; $7190: $00
	nop                                              ; $7191: $00
	nop                                              ; $7192: $00
	rst  $38                                         ; $7193: $ff
	ld   a, a                                        ; $7194: $7f
	jr   nc, jr_085_71b8                             ; $7195: $30 $21

jr_085_7197:
	inc  de                                          ; $7197: $13
	ld   h, e                                        ; $7198: $63
	add  sp, $18                                     ; $7199: $e8 $18
	rst  $38                                         ; $719b: $ff
	ld   a, a                                        ; $719c: $7f
	jr   nc, @+$23                                   ; $719d: $30 $21

	inc  c                                           ; $719f: $0c
	ld   hl, $18e8                                   ; $71a0: $21 $e8 $18
	ld   a, b                                        ; $71a3: $78
	ld   [de], a                                     ; $71a4: $12
	jr   nc, jr_085_71c8                             ; $71a5: $30 $21

	ld   [$e825], a                                  ; $71a7: $ea $25 $e8
	jr   @+$01                                       ; $71aa: $18 $ff

	ld   a, a                                        ; $71ac: $7f
	jr   nc, jr_085_71d0                             ; $71ad: $30 $21

	inc  de                                          ; $71af: $13
	ld   h, e                                        ; $71b0: $63
	add  sp, $18                                     ; $71b1: $e8 $18
	rst  $38                                         ; $71b3: $ff
	ld   a, a                                        ; $71b4: $7f
	jr   nc, jr_085_71d8                             ; $71b5: $30 $21

	inc  c                                           ; $71b7: $0c

jr_085_71b8:
	ld   hl, $18e8                                   ; $71b8: $21 $e8 $18
	dec  a                                           ; $71bb: $3d
	ld   b, l                                        ; $71bc: $45
	jr   nc, jr_085_71e0                             ; $71bd: $30 $21

	ld   e, $52                                      ; $71bf: $1e $52
	add  sp, $18                                     ; $71c1: $e8 $18
	rst  $38                                         ; $71c3: $ff
	ld   a, a                                        ; $71c4: $7f
	jr   nc, @+$23                                   ; $71c5: $30 $21

	inc  de                                          ; $71c7: $13

jr_085_71c8:
	ld   h, e                                        ; $71c8: $63
	add  sp, $18                                     ; $71c9: $e8 $18
	rst  $38                                         ; $71cb: $ff
	ld   a, a                                        ; $71cc: $7f
	jr   nc, @+$23                                   ; $71cd: $30 $21

	inc  c                                           ; $71cf: $0c

jr_085_71d0:
	ld   hl, $18e8                                   ; $71d0: $21 $e8 $18
	ld   hl, sp+$24                                  ; $71d3: $f8 $24
	jr   z, jr_085_71f5                              ; $71d5: $28 $1e

	inc  c                                           ; $71d7: $0c

jr_085_71d8:
	ld   hl, $18e8                                   ; $71d8: $21 $e8 $18
	rst  $38                                         ; $71db: $ff
	ld   a, a                                        ; $71dc: $7f
	jr   nc, jr_085_7200                             ; $71dd: $30 $21

	inc  de                                          ; $71df: $13

jr_085_71e0:
	ld   h, e                                        ; $71e0: $63
	add  sp, $18                                     ; $71e1: $e8 $18
	rst  $38                                         ; $71e3: $ff
	ld   a, a                                        ; $71e4: $7f
	inc  c                                           ; $71e5: $0c
	ld   hl, $2cb8                                   ; $71e6: $21 $b8 $2c
	dec  de                                          ; $71e9: $1b
	ld   b, d                                        ; $71ea: $42
	ld   d, c                                        ; $71eb: $51
	ld   [hl-], a                                    ; $71ec: $32
	inc  c                                           ; $71ed: $0c
	ld   hl, $2195                                   ; $71ee: $21 $95 $21
	rst  JumpTable                                         ; $71f1: $df
	ld   b, a                                        ; $71f2: $47
	rst  $38                                         ; $71f3: $ff
	ld   a, a                                        ; $71f4: $7f

jr_085_71f5:
	inc  c                                           ; $71f5: $0c
	ld   hl, $2195                                   ; $71f6: $21 $95 $21
	dec  de                                          ; $71f9: $1b
	ld   b, d                                        ; $71fa: $42
	rst  $38                                         ; $71fb: $ff
	ld   a, a                                        ; $71fc: $7f
	xor  $1c                                         ; $71fd: $ee $1c
	ld   a, [de]                                     ; $71ff: $1a

jr_085_7200:
	ld   sp, $523f                                   ; $7200: $31 $3f $52
	pop  de                                          ; $7203: $d1
	ld   b, d                                        ; $7204: $42
	xor  $1c                                         ; $7205: $ee $1c
	or   a                                           ; $7207: $b7
	dec  h                                           ; $7208: $25
	cp   a                                           ; $7209: $bf
	ld   b, a                                        ; $720a: $47
	rst  $38                                         ; $720b: $ff
	ld   a, a                                        ; $720c: $7f
	xor  $1c                                         ; $720d: $ee $1c
	or   a                                           ; $720f: $b7
	dec  h                                           ; $7210: $25
	ccf                                              ; $7211: $3f
	ld   d, d                                        ; $7212: $52
	rst  $38                                         ; $7213: $ff
	ld   a, a                                        ; $7214: $7f
	inc  c                                           ; $7215: $0c
	ld   hl, $2535                                   ; $7216: $21 $35 $25
	jr   jr_085_7249                                 ; $7219: $18 $2e

	dec  [hl]                                        ; $721b: $35
	add  hl, hl                                      ; $721c: $29
	inc  c                                           ; $721d: $0c
	ld   hl, $3d16                                   ; $721e: $21 $16 $3d
	xor  l                                           ; $7221: $ad
	ld   a, [hl+]                                    ; $7222: $2a
	rst  $38                                         ; $7223: $ff
	ld   a, a                                        ; $7224: $7f
	inc  c                                           ; $7225: $0c
	ld   hl, $45ce                                   ; $7226: $21 $ce $45
	or   b                                           ; $7229: $b0
	ld   l, d                                        ; $722a: $6a
	rst  $38                                         ; $722b: $ff
	ld   a, a                                        ; $722c: $7f
	inc  c                                           ; $722d: $0c
	ld   hl, $2d9a                                   ; $722e: $21 $9a $2d
	db   $db                                         ; $7231: $db
	ld   a, [hl-]                                    ; $7232: $3a
	sbc  d                                           ; $7233: $9a
	ld   sp, $210c                                   ; $7234: $31 $0c $21
	ld   e, d                                        ; $7237: $5a
	ld   c, c                                        ; $7238: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7239: $cf
	ld   [hl-], a                                    ; $723a: $32
	rst  $38                                         ; $723b: $ff
	ld   a, a                                        ; $723c: $7f
	inc  c                                           ; $723d: $0c
	ld   hl, $4def                                   ; $723e: $21 $ef $4d
	inc  sp                                          ; $7241: $33
	ld   [hl], e                                     ; $7242: $73
	rst  $38                                         ; $7243: $ff
	ld   a, a                                        ; $7244: $7f
	ld   a, [$923a]                                  ; $7245: $fa $3a $92
	add  hl, de                                      ; $7248: $19

jr_085_7249:
	ld   a, [bc]                                     ; $7249: $0a
	dec  d                                           ; $724a: $15
	rst  $38                                         ; $724b: $ff
	ld   a, a                                        ; $724c: $7f
	ld   d, c                                        ; $724d: $51
	ld   a, $c7                                      ; $724e: $3e $c7
	dec  h                                           ; $7250: $25
	ld   a, [bc]                                     ; $7251: $0a
	dec  d                                           ; $7252: $15
	ld   [hl], d                                     ; $7253: $72
	ld   b, d                                        ; $7254: $42
	ld   a, [$923a]                                  ; $7255: $fa $3a $92
	add  hl, de                                      ; $7258: $19
	ld   a, [bc]                                     ; $7259: $0a
	dec  d                                           ; $725a: $15
	rst  $38                                         ; $725b: $ff
	ld   a, a                                        ; $725c: $7f
	db   $fc                                         ; $725d: $fc
	ld   a, $b5                                      ; $725e: $3e $b5
	ld   hl, $190a                                   ; $7260: $21 $0a $19
	rst  $38                                         ; $7263: $ff
	ld   a, a                                        ; $7264: $7f
	push de                                          ; $7265: $d5
	ld   c, [hl]                                     ; $7266: $4e
	add  sp, $29                                     ; $7267: $e8 $29
	ld   a, [bc]                                     ; $7269: $0a
	add  hl, de                                      ; $726a: $19
	push de                                          ; $726b: $d5
	ld   c, [hl]                                     ; $726c: $4e
	db   $fc                                         ; $726d: $fc
	ld   a, $b5                                      ; $726e: $3e $b5
	ld   hl, $190a                                   ; $7270: $21 $0a $19
	rst  $38                                         ; $7273: $ff
	ld   a, a                                        ; $7274: $7f
	sbc  d                                           ; $7275: $9a
	ld   a, [hl-]                                    ; $7276: $3a
	or   d                                           ; $7277: $b2
	dec  e                                           ; $7278: $1d
	db   $eb                                         ; $7279: $eb
	jr   nz, @+$01                                   ; $727a: $20 $ff

	ld   a, a                                        ; $727c: $7f
	or   $28                                         ; $727d: $f6 $28
	dec  [hl]                                        ; $727f: $35
	ld   c, c                                        ; $7280: $49
	db   $eb                                         ; $7281: $eb
	jr   nz, @+$01                                   ; $7282: $20 $ff

	ld   a, a                                        ; $7284: $7f
	or   $28                                         ; $7285: $f6 $28
	or   d                                           ; $7287: $b2
	dec  e                                           ; $7288: $1d
	db   $eb                                         ; $7289: $eb
	jr   nz, @+$01                                   ; $728a: $20 $ff

	ld   a, a                                        ; $728c: $7f
	cp   l                                           ; $728d: $bd
	ld   a, $d5                                      ; $728e: $3e $d5
	ld   hl, $210c                                   ; $7290: $21 $0c $21
	rst  $38                                         ; $7293: $ff
	ld   a, a                                        ; $7294: $7f
	add  hl, de                                      ; $7295: $19
	dec  h                                           ; $7296: $25
	sub  [hl]                                        ; $7297: $96
	ld   d, c                                        ; $7298: $51
	db   $eb                                         ; $7299: $eb
	jr   nz, @+$01                                   ; $729a: $20 $ff

	ld   a, a                                        ; $729c: $7f
	sub  e                                           ; $729d: $93
	ld   d, d                                        ; $729e: $52
	xor  $3d                                         ; $729f: $ee $3d
	db   $eb                                         ; $72a1: $eb
	jr   nz, @+$01                                   ; $72a2: $20 $ff

	ld   a, a                                        ; $72a4: $7f
	sbc  l                                           ; $72a5: $9d
	ld   a, $35                                      ; $72a6: $3e $35
	dec  e                                           ; $72a8: $1d
	call $ff1c                                       ; $72a9: $cd $1c $ff
	ld   a, a                                        ; $72ac: $7f
	ld   a, [hl-]                                    ; $72ad: $3a
	ld   c, [hl]                                     ; $72ae: $4e
	rla                                              ; $72af: $17
	dec  l                                           ; $72b0: $2d
	call $ff1c                                       ; $72b1: $cd $1c $ff
	ld   a, a                                        ; $72b4: $7f
	jr   jr_085_72d6                                 ; $72b5: $18 $1f

	dec  [hl]                                        ; $72b7: $35
	dec  e                                           ; $72b8: $1d
	call $ff1c                                       ; $72b9: $cd $1c $ff
	ld   a, a                                        ; $72bc: $7f
	cp   [hl]                                        ; $72bd: $be
	ld   b, d                                        ; $72be: $42
	sbc  b                                           ; $72bf: $98
	ld   hl, $20ed                                   ; $72c0: $21 $ed $20
	rst  $38                                         ; $72c3: $ff
	ld   a, a                                        ; $72c4: $7f
	sbc  a                                           ; $72c5: $9f
	ld   e, d                                        ; $72c6: $5a
	ld   e, d                                        ; $72c7: $5a
	dec  a                                           ; $72c8: $3d
	db   $ed                                         ; $72c9: $ed
	jr   nz, @+$01                                   ; $72ca: $20 $ff

	ld   a, a                                        ; $72cc: $7f
	sbc  [hl]                                        ; $72cd: $9e
	cpl                                              ; $72ce: $2f
	sbc  b                                           ; $72cf: $98
	ld   hl, $20ed                                   ; $72d0: $21 $ed $20
	rst  $38                                         ; $72d3: $ff
	ld   a, a                                        ; $72d4: $7f
	add  hl, sp                                      ; $72d5: $39

jr_085_72d6:
	ld   a, [hl-]                                    ; $72d6: $3a
	ld   d, c                                        ; $72d7: $51
	ld   hl, $28ec                                   ; $72d8: $21 $ec $28
	add  hl, sp                                      ; $72db: $39
	ld   a, [hl-]                                    ; $72dc: $3a
	dec  hl                                          ; $72dd: $2b
	ld   c, d                                        ; $72de: $4a
	pop  de                                          ; $72df: $d1
	ld   a, a                                        ; $72e0: $7f
	db   $ec                                         ; $72e1: $ec
	jr   z, @+$01                                    ; $72e2: $28 $ff

	ld   a, a                                        ; $72e4: $7f
	dec  hl                                          ; $72e5: $2b
	ld   c, d                                        ; $72e6: $4a
	pop  de                                          ; $72e7: $d1
	ld   a, a                                        ; $72e8: $7f
	db   $ec                                         ; $72e9: $ec
	jr   z, @+$01                                    ; $72ea: $28 $ff

	ld   a, a                                        ; $72ec: $7f
	ld   a, c                                        ; $72ed: $79
	ld   b, d                                        ; $72ee: $42
	sub  h                                           ; $72ef: $94
	add  hl, hl                                      ; $72f0: $29
	inc  c                                           ; $72f1: $0c
	dec  h                                           ; $72f2: $25
	ld   a, c                                        ; $72f3: $79
	ld   b, d                                        ; $72f4: $42
	inc  c                                           ; $72f5: $0c
	ld   b, [hl]                                     ; $72f6: $46
	sub  h                                           ; $72f7: $94
	ld   a, a                                        ; $72f8: $7f
	inc  c                                           ; $72f9: $0c
	dec  h                                           ; $72fa: $25
	rst  $38                                         ; $72fb: $ff
	ld   a, a                                        ; $72fc: $7f
	inc  c                                           ; $72fd: $0c
	ld   b, [hl]                                     ; $72fe: $46
	sub  h                                           ; $72ff: $94
	ld   a, a                                        ; $7300: $7f
	inc  c                                           ; $7301: $0c
	dec  h                                           ; $7302: $25
	rst  $38                                         ; $7303: $ff
	ld   a, a                                        ; $7304: $7f
	or   $2d                                         ; $7305: $f6 $2d
	ld   d, c                                        ; $7307: $51
	dec  h                                           ; $7308: $25
	ld   [$ff28], a                                  ; $7309: $ea $28 $ff
	ld   a, a                                        ; $730c: $7f
	ld   [hl], l                                     ; $730d: $75
	ld   [hl], e                                     ; $730e: $73
	ld   d, c                                        ; $730f: $51
	dec  h                                           ; $7310: $25
	ld   [$ff28], a                                  ; $7311: $ea $28 $ff
	ld   a, a                                        ; $7314: $7f
	ld   sp, $5132                                   ; $7315: $31 $32 $51
	dec  h                                           ; $7318: $25
	ld   [$ff28], a                                  ; $7319: $ea $28 $ff
	ld   a, a                                        ; $731c: $7f
	ld   d, $36                                      ; $731d: $16 $36
	sub  c                                           ; $731f: $91
	dec  h                                           ; $7320: $25
	ld   a, [bc]                                     ; $7321: $0a
	ld   sp, $7fff                                   ; $7322: $31 $ff $7f
	ld   [hl], l                                     ; $7325: $75
	ld   [hl], e                                     ; $7326: $73
	sub  c                                           ; $7327: $91
	dec  h                                           ; $7328: $25
	ld   a, [bc]                                     ; $7329: $0a
	ld   sp, $7fff                                   ; $732a: $31 $ff $7f
	ld   [hl], e                                     ; $732d: $73
	ld   [hl-], a                                    ; $732e: $32
	or   d                                           ; $732f: $b2
	dec  h                                           ; $7330: $25
	ld   a, [bc]                                     ; $7331: $0a
	ld   sp, $7fff                                   ; $7332: $31 $ff $7f
	ld   sp, $5132                                   ; $7335: $31 $32 $51
	dec  h                                           ; $7338: $25
	ld   [$ff28], a                                  ; $7339: $ea $28 $ff
	ld   a, a                                        ; $733c: $7f
	or   [hl]                                        ; $733d: $b6
	ld   b, d                                        ; $733e: $42
	ld   d, c                                        ; $733f: $51
	dec  h                                           ; $7340: $25
	ld   [$ff28], a                                  ; $7341: $ea $28 $ff
	ld   a, a                                        ; $7344: $7f
	or   c                                           ; $7345: $b1
	dec  h                                           ; $7346: $25
	ld   d, c                                        ; $7347: $51
	dec  h                                           ; $7348: $25
	ld   [$ff28], a                                  ; $7349: $ea $28 $ff
	ld   a, a                                        ; $734c: $7f
	ld   [hl], e                                     ; $734d: $73
	ld   a, [hl-]                                    ; $734e: $3a
	sub  c                                           ; $734f: $91
	dec  h                                           ; $7350: $25
	ld   a, [bc]                                     ; $7351: $0a
	ld   sp, $7fff                                   ; $7352: $31 $ff $7f
	ld   [hl], e                                     ; $7355: $73
	ld   a, $91                                      ; $7356: $3e $91
	dec  h                                           ; $7358: $25
	ld   a, [bc]                                     ; $7359: $0a
	ld   sp, $7fff                                   ; $735a: $31 $ff $7f
	ld   d, $36                                      ; $735d: $16 $36
	sub  c                                           ; $735f: $91
	dec  h                                           ; $7360: $25
	ld   a, [bc]                                     ; $7361: $0a
	ld   sp, $7fff                                   ; $7362: $31 $ff $7f
	ld   d, $36                                      ; $7365: $16 $36
	sub  c                                           ; $7367: $91
	dec  h                                           ; $7368: $25
	ld   a, [bc]                                     ; $7369: $0a
	ld   sp, $7fff                                   ; $736a: $31 $ff $7f
	ld   [hl], l                                     ; $736d: $75
	ld   [hl], e                                     ; $736e: $73
	sub  c                                           ; $736f: $91
	dec  h                                           ; $7370: $25
	ld   a, [bc]                                     ; $7371: $0a
	ld   sp, $7fff                                   ; $7372: $31 $ff $7f
	ld   d, e                                        ; $7375: $53
	ld   a, $91                                      ; $7376: $3e $91
	dec  h                                           ; $7378: $25
	ld   a, [bc]                                     ; $7379: $0a
	ld   sp, $7fff                                   ; $737a: $31 $ff $7f
	ld   de, $8d56                                   ; $737d: $11 $56 $8d
	dec  l                                           ; $7380: $2d
	add  hl, bc                                      ; $7381: $09
	dec  h                                           ; $7382: $25
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
	rst  $38                                         ; $7393: $ff
	ld   a, a                                        ; $7394: $7f
	ld   d, c                                        ; $7395: $51
	ld   c, d                                        ; $7396: $4a
	xor  c                                           ; $7397: $a9
	dec  [hl]                                        ; $7398: $35
	add  sp, $28                                     ; $7399: $e8 $28
	rst  $38                                         ; $739b: $ff
	ld   a, a                                        ; $739c: $7f
	ld   d, c                                        ; $739d: $51
	ld   c, d                                        ; $739e: $4a
	sub  $50                                         ; $739f: $d6 $50
	add  sp, $28                                     ; $73a1: $e8 $28
	sbc  a                                           ; $73a3: $9f
	ccf                                              ; $73a4: $3f
	ld   l, b                                        ; $73a5: $68
	ld   l, [hl]                                     ; $73a6: $6e
	ld   d, a                                        ; $73a7: $57
	dec  h                                           ; $73a8: $25
	add  [hl]                                        ; $73a9: $86
	add  hl, sp                                      ; $73aa: $39
	rst  $38                                         ; $73ab: $ff
	ld   a, a                                        ; $73ac: $7f
	ld   [hl], h                                     ; $73ad: $74
	ld   e, d                                        ; $73ae: $5a
	ld   l, e                                        ; $73af: $6b
	ld   b, c                                        ; $73b0: $41
	ld   [$ff21], sp                                 ; $73b1: $08 $21 $ff
	ld   a, a                                        ; $73b4: $7f
	ld   a, d                                        ; $73b5: $7a
	ld   a, $b8                                      ; $73b6: $3e $b8
	dec  c                                           ; $73b8: $0d
	ld   c, d                                        ; $73b9: $4a
	add  hl, hl                                      ; $73ba: $29
	cp   b                                           ; $73bb: $b8
	dec  c                                           ; $73bc: $0d
	adc  h                                           ; $73bd: $8c
	ld   b, l                                        ; $73be: $45
	add  sp, $24                                     ; $73bf: $e8 $24
	ld   c, d                                        ; $73c1: $4a
	ld   c, e                                        ; $73c2: $4b
	rst  $38                                         ; $73c3: $ff
	ld   a, a                                        ; $73c4: $7f
	ld   e, [hl]                                     ; $73c5: $5e
	ld   a, [hl+]                                    ; $73c6: $2a
	add  hl, hl                                      ; $73c7: $29
	add  hl, hl                                      ; $73c8: $29
	rst  $28                                         ; $73c9: $ef
	dec  a                                           ; $73ca: $3d
	rst  $38                                         ; $73cb: $ff
	ld   a, a                                        ; $73cc: $7f
	dec  l                                           ; $73cd: $2d
	ld   [hl], $65                                   ; $73ce: $36 $65
	ld   hl, $1cef                                   ; $73d0: $21 $ef $1c
	rst  $38                                         ; $73d3: $ff
	ld   a, a                                        ; $73d4: $7f
	ld   e, l                                        ; $73d5: $5d
	ld   c, [hl]                                     ; $73d6: $4e
	ld   h, l                                        ; $73d7: $65
	ld   hl, $2929                                   ; $73d8: $21 $29 $29
	ld   [hl], e                                     ; $73db: $73
	dec  d                                           ; $73dc: $15
	dec  de                                          ; $73dd: $1b
	ld   [hl+], a                                    ; $73de: $22
	call c, $2a2a                                    ; $73df: $dc $2a $2a
	ld   hl, $7fff                                   ; $73e2: $21 $ff $7f
	db   $fc                                         ; $73e5: $fc
	ld   c, c                                        ; $73e6: $49
	ld   c, d                                        ; $73e7: $4a
	ld   b, [hl]                                     ; $73e8: $46
	ld   a, [hl+]                                    ; $73e9: $2a
	ld   hl, $7fff                                   ; $73ea: $21 $ff $7f
	ld   [hl], e                                     ; $73ed: $73
	dec  d                                           ; $73ee: $15
	ld   [hl], d                                     ; $73ef: $72
	ld   c, [hl]                                     ; $73f0: $4e
	ld   a, [hl+]                                    ; $73f1: $2a
	ld   hl, $7fff                                   ; $73f2: $21 $ff $7f
	db   $db                                         ; $73f5: $db
	ld   l, $74                                      ; $73f6: $2e $74
	dec  l                                           ; $73f8: $2d
	rlca                                             ; $73f9: $07
	add  hl, hl                                      ; $73fa: $29
	rst  $38                                         ; $73fb: $ff
	ld   a, a                                        ; $73fc: $7f
	ld   [hl], e                                     ; $73fd: $73
	ld   d, [hl]                                     ; $73fe: $56
	ld   l, l                                        ; $73ff: $6d
	ld   b, c                                        ; $7400: $41
	rlca                                             ; $7401: $07
	add  hl, hl                                      ; $7402: $29
	ld   d, l                                        ; $7403: $55
	ld   a, [hl-]                                    ; $7404: $3a
	db   $db                                         ; $7405: $db
	ld   l, $74                                      ; $7406: $2e $74
	dec  l                                           ; $7408: $2d
	rlca                                             ; $7409: $07
	add  hl, hl                                      ; $740a: $29
	rst  $38                                         ; $740b: $ff
	ld   a, a                                        ; $740c: $7f
	db   $fc                                         ; $740d: $fc
	ld   a, [hl-]                                    ; $740e: $3a
	sub  [hl]                                        ; $740f: $96
	dec  c                                           ; $7410: $0d
	inc  c                                           ; $7411: $0c
	ld   sp, $7fff                                   ; $7412: $31 $ff $7f
	ld   [hl], e                                     ; $7415: $73
	ld   c, [hl]                                     ; $7416: $4e
	xor  l                                           ; $7417: $ad
	ld   b, l                                        ; $7418: $45
	ld   [$fc3d], sp                                 ; $7419: $08 $3d $fc
	ld   a, [hl-]                                    ; $741c: $3a
	sub  [hl]                                        ; $741d: $96
	dec  c                                           ; $741e: $0d
	ld   [hl], e                                     ; $741f: $73
	ld   c, [hl]                                     ; $7420: $4e
	xor  l                                           ; $7421: $ad
	ld   b, l                                        ; $7422: $45
	rst  $38                                         ; $7423: $ff
	ld   a, a                                        ; $7424: $7f
	ld   d, d                                        ; $7425: $52
	ld   e, d                                        ; $7426: $5a
	adc  h                                           ; $7427: $8c
	ld   c, c                                        ; $7428: $49
	rst  $20                                         ; $7429: $e7
	inc  [hl]                                        ; $742a: $34
	rst  $38                                         ; $742b: $ff
	ld   a, a                                        ; $742c: $7f
	ld   a, h                                        ; $742d: $7c
	dec  l                                           ; $742e: $2d
	adc  h                                           ; $742f: $8c
	ld   c, c                                        ; $7430: $49
	rst  $20                                         ; $7431: $e7
	inc  [hl]                                        ; $7432: $34
	ld   a, [hl]                                     ; $7433: $7e
	inc  sp                                          ; $7434: $33
	cp   e                                           ; $7435: $bb
	dec  l                                           ; $7436: $2d
	adc  h                                           ; $7437: $8c
	ld   c, c                                        ; $7438: $49
	rst  $20                                         ; $7439: $e7
	inc  [hl]                                        ; $743a: $34
	rst  $38                                         ; $743b: $ff
	ld   a, a                                        ; $743c: $7f
	ld   c, a                                        ; $743d: $4f
	ld   d, d                                        ; $743e: $52
	ld   [hl-], a                                    ; $743f: $32
	ld   c, d                                        ; $7440: $4a
	ld   l, c                                        ; $7441: $69
	ld   sp, $7fff                                   ; $7442: $31 $ff $7f
	reti                                             ; $7445: $d9


	ld   a, [hl+]                                    ; $7446: $2a
	ld   [hl], e                                     ; $7447: $73
	ld   hl, $34ec                                   ; $7448: $21 $ec $34
	rst  $38                                         ; $744b: $ff
	ld   a, a                                        ; $744c: $7f
	rst  $38                                         ; $744d: $ff
	ld   a, a                                        ; $744e: $7f
	rst  $38                                         ; $744f: $ff
	ld   a, a                                        ; $7450: $7f
	rst  $38                                         ; $7451: $ff
	ld   a, a                                        ; $7452: $7f
	rst  $38                                         ; $7453: $ff
	ld   a, a                                        ; $7454: $7f
	dec  c                                           ; $7455: $0d
	ld   d, e                                        ; $7456: $53
	ld   h, a                                        ; $7457: $67
	ld   b, d                                        ; $7458: $42
	ld   c, c                                        ; $7459: $49
	add  hl, hl                                      ; $745a: $29
	rst  $38                                         ; $745b: $ff
	ld   a, a                                        ; $745c: $7f
	db   $eb                                         ; $745d: $eb
	ld   l, d                                        ; $745e: $6a
	inc  h                                           ; $745f: $24
	ld   e, [hl]                                     ; $7460: $5e
	add  l                                           ; $7461: $85
	dec  a                                           ; $7462: $3d
	rst  $38                                         ; $7463: $ff
	ld   a, a                                        ; $7464: $7f
	ld   [hl], d                                     ; $7465: $72
	ld   d, d                                        ; $7466: $52
	xor  l                                           ; $7467: $ad
	dec  [hl]                                        ; $7468: $35
	ld   [rAUDTERM], sp                                 ; $7469: $08 $25 $ff
	ld   a, a                                        ; $746c: $7f
	jr   jr_085_74d2                                 ; $746d: $18 $63

	db   $10                                         ; $746f: $10
	ld   b, d                                        ; $7470: $42
	jr   z, jr_085_7498                              ; $7471: $28 $25

	jr   jr_085_74d8                                 ; $7473: $18 $63

	ret                                              ; $7475: $c9


	ld   l, d                                        ; $7476: $6a
	add  hl, bc                                      ; $7477: $09
	ld   b, d                                        ; $7478: $42
	jr   z, jr_085_74a0                              ; $7479: $28 $25

	ld   a, [hl]                                     ; $747b: $7e
	ld   b, d                                        ; $747c: $42
	ld   [hl], $29                                   ; $747d: $36 $29
	db   $10                                         ; $747f: $10
	ld   b, d                                        ; $7480: $42
	jr   z, jr_085_74a8                              ; $7481: $28 $25

	rst  $38                                         ; $7483: $ff
	ld   a, a                                        ; $7484: $7f
	ld   [hl], l                                     ; $7485: $75
	ld   c, [hl]                                     ; $7486: $4e
	adc  h                                           ; $7487: $8c
	add  hl, sp                                      ; $7488: $39
	add  sp, $1c                                     ; $7489: $e8 $1c
	jp   c, Jump_085_751d                            ; $748b: $da $1d $75

	ld   c, [hl]                                     ; $748e: $4e
	adc  h                                           ; $748f: $8c
	add  hl, sp                                      ; $7490: $39
	add  sp, $1c                                     ; $7491: $e8 $1c
	rst  $38                                         ; $7493: $ff
	ld   a, a                                        ; $7494: $7f
	rst  $38                                         ; $7495: $ff
	ld   a, a                                        ; $7496: $7f
	rst  $38                                         ; $7497: $ff

jr_085_7498:
	ld   a, a                                        ; $7498: $7f
	rst  $38                                         ; $7499: $ff
	ld   a, a                                        ; $749a: $7f
	rst  $38                                         ; $749b: $ff
	ld   a, a                                        ; $749c: $7f
	ld   [hl], l                                     ; $749d: $75
	ld   c, [hl]                                     ; $749e: $4e
	adc  h                                           ; $749f: $8c

jr_085_74a0:
	add  hl, sp                                      ; $74a0: $39
	add  sp, $1c                                     ; $74a1: $e8 $1c
	jp   c, $3f1d                                    ; $74a3: $da $1d $3f

	ld   e, d                                        ; $74a6: $5a
	adc  h                                           ; $74a7: $8c

jr_085_74a8:
	add  hl, sp                                      ; $74a8: $39
	add  sp, $1c                                     ; $74a9: $e8 $1c
	rst  $38                                         ; $74ab: $ff
	ld   a, a                                        ; $74ac: $7f
	ld   [hl], l                                     ; $74ad: $75
	ld   c, [hl]                                     ; $74ae: $4e
	rla                                              ; $74af: $17
	ld   l, l                                        ; $74b0: $6d
	xor  c                                           ; $74b1: $a9
	jr   z, @+$01                                    ; $74b2: $28 $ff

	ld   a, a                                        ; $74b4: $7f
	rst  JumpTable                                         ; $74b5: $df
	ld   b, l                                        ; $74b6: $45
	sub  [hl]                                        ; $74b7: $96
	ld   hl, $110b                                   ; $74b8: $21 $0b $11
	rst  $38                                         ; $74bb: $ff
	ld   a, a                                        ; $74bc: $7f
	rst  JumpTable                                         ; $74bd: $df
	ld   b, l                                        ; $74be: $45
	ccf                                              ; $74bf: $3f
	ld   hl, $14d2                                   ; $74c0: $21 $d2 $14
	rst  $38                                         ; $74c3: $ff
	ld   a, a                                        ; $74c4: $7f
	db   $ed                                         ; $74c5: $ed
	ld   [hl-], a                                    ; $74c6: $32
	ld   l, h                                        ; $74c7: $6c
	ld   [bc], a                                     ; $74c8: $02
	ld   l, l                                        ; $74c9: $6d
	add  hl, de                                      ; $74ca: $19
	rst  $38                                         ; $74cb: $ff
	ld   a, a                                        ; $74cc: $7f
	ld   l, h                                        ; $74cd: $6c
	ld   a, [hl-]                                    ; $74ce: $3a
	ret                                              ; $74cf: $c9


	add  hl, hl                                      ; $74d0: $29
	inc  l                                           ; $74d1: $2c

jr_085_74d2:
	dec  h                                           ; $74d2: $25
	rst  $38                                         ; $74d3: $ff
	ld   a, a                                        ; $74d4: $7f
	ei                                               ; $74d5: $fb
	ld   c, l                                        ; $74d6: $4d
	ld   a, [hl-]                                    ; $74d7: $3a

jr_085_74d8:
	ld   sp, $252c                                   ; $74d8: $31 $2c $25
	rst  $38                                         ; $74db: $ff
	ld   a, a                                        ; $74dc: $7f
	ld   a, $2f                                      ; $74dd: $3e $2f
	inc  e                                           ; $74df: $1c
	ld   h, $2c                                      ; $74e0: $26 $2c
	dec  h                                           ; $74e2: $25
	rst  $38                                         ; $74e3: $ff
	ld   a, a                                        ; $74e4: $7f
	rst  $28                                         ; $74e5: $ef
	ld   h, d                                        ; $74e6: $62
	ld   l, d                                        ; $74e7: $6a
	add  hl, sp                                      ; $74e8: $39
	dec  hl                                          ; $74e9: $2b
	ld   hl, $7fff                                   ; $74ea: $21 $ff $7f
	rst  $30                                         ; $74ed: $f7
	ld   d, c                                        ; $74ee: $51
	ld   [hl], c                                     ; $74ef: $71
	dec  a                                           ; $74f0: $3d
	dec  hl                                          ; $74f1: $2b
	ld   hl, $7fff                                   ; $74f2: $21 $ff $7f
	rst  $38                                         ; $74f5: $ff
	ld   [hl-], a                                    ; $74f6: $32
	ld   e, d                                        ; $74f7: $5a
	ld   a, [de]                                     ; $74f8: $1a
	dec  hl                                          ; $74f9: $2b
	ld   hl, $7fff                                   ; $74fa: $21 $ff $7f
	inc  a                                           ; $74fd: $3c
	ld   e, a                                        ; $74fe: $5f
	ld   a, d                                        ; $74ff: $7a
	ld   a, $4b                                      ; $7500: $3e $4b
	dec  h                                           ; $7502: $25
	rst  $38                                         ; $7503: $ff
	ld   a, a                                        ; $7504: $7f
	sbc  b                                           ; $7505: $98
	add  hl, hl                                      ; $7506: $29
	ld   d, d                                        ; $7507: $52
	ld   a, e                                        ; $7508: $7b
	ld   c, e                                        ; $7509: $4b
	dec  h                                           ; $750a: $25
	rst  $38                                         ; $750b: $ff
	ld   a, a                                        ; $750c: $7f
	jr   z, jr_085_754e                              ; $750d: $28 $3f

	add  hl, bc                                      ; $750f: $09
	ld   a, $4b                                      ; $7510: $3e $4b
	dec  h                                           ; $7512: $25
	rst  $38                                         ; $7513: $ff
	ld   a, a                                        ; $7514: $7f
	inc  e                                           ; $7515: $1c
	dec  sp                                          ; $7516: $3b
	ld   [hl], c                                     ; $7517: $71
	ld   hl, $290a                                   ; $7518: $21 $0a $29
	sbc  $7b                                         ; $751b: $de $7b

Jump_085_751d:
	inc  e                                           ; $751d: $1c
	dec  sp                                          ; $751e: $3b
	db   $10                                         ; $751f: $10
	ld   l, $0a                                      ; $7520: $2e $0a
	add  hl, hl                                      ; $7522: $29
	sbc  $7b                                         ; $7523: $de $7b
	db   $10                                         ; $7525: $10
	ld   l, $71                                      ; $7526: $2e $71
	ld   hl, $290a                                   ; $7528: $21 $0a $29
	rst  $38                                         ; $752b: $ff
	ld   a, a                                        ; $752c: $7f
	rst  $30                                         ; $752d: $f7
	ld   e, [hl]                                     ; $752e: $5e
	db   $10                                         ; $752f: $10
	ld   b, d                                        ; $7530: $42
	ld   a, [hl+]                                    ; $7531: $2a
	add  hl, hl                                      ; $7532: $29
	rst  $38                                         ; $7533: $ff
	ld   a, a                                        ; $7534: $7f
	cp   c                                           ; $7535: $b9
	add  hl, hl                                      ; $7536: $29
	rst  $28                                         ; $7537: $ef
	ld   [hl], d                                     ; $7538: $72
	ld   a, [hl+]                                    ; $7539: $2a
	ld   hl, $7fff                                   ; $753a: $21 $ff $7f
	xor  h                                           ; $753d: $ac
	ld   a, $c9                                      ; $753e: $3e $c9
	dec  [hl]                                        ; $7540: $35
	add  hl, hl                                      ; $7541: $29
	dec  h                                           ; $7542: $25
	rst  $38                                         ; $7543: $ff
	ld   a, a                                        ; $7544: $7f
	ei                                               ; $7545: $fb
	ld   a, [hl-]                                    ; $7546: $3a
	or   a                                           ; $7547: $b7
	dec  h                                           ; $7548: $25
	ld   c, h                                        ; $7549: $4c
	dec  h                                           ; $754a: $25
	rst  $38                                         ; $754b: $ff
	ld   a, a                                        ; $754c: $7f
	ld   e, h                                        ; $754d: $5c

jr_085_754e:
	add  hl, hl                                      ; $754e: $29
	ld   d, b                                        ; $754f: $50
	ld   l, [hl]                                     ; $7550: $6e
	ld   c, h                                        ; $7551: $4c
	dec  h                                           ; $7552: $25
	rst  $38                                         ; $7553: $ff
	ld   a, a                                        ; $7554: $7f
	xor  d                                           ; $7555: $aa
	ld   b, [hl]                                     ; $7556: $46
	adc  c                                           ; $7557: $89
	dec  l                                           ; $7558: $2d
	ld   c, h                                        ; $7559: $4c
	dec  h                                           ; $755a: $25
	sbc  $7b                                         ; $755b: $de $7b
	or   l                                           ; $755d: $b5
	ld   d, [hl]                                     ; $755e: $56
	rst  $28                                         ; $755f: $ef
	dec  a                                           ; $7560: $3d
	jr   z, jr_085_7588                              ; $7561: $28 $25

	rst  $38                                         ; $7563: $ff
	ld   a, a                                        ; $7564: $7f
	ld   l, d                                        ; $7565: $6a
	ld   b, a                                        ; $7566: $47
	jp   hl                                          ; $7567: $e9


	add  hl, sp                                      ; $7568: $39
	jr   z, jr_085_7590                              ; $7569: $28 $25

	rst  $38                                         ; $756b: $ff
	ld   a, a                                        ; $756c: $7f
	ld   l, d                                        ; $756d: $6a
	ld   b, a                                        ; $756e: $47
	ld   [hl], d                                     ; $756f: $72
	ld   a, e                                        ; $7570: $7b
	jr   z, jr_085_7598                              ; $7571: $28 $25

	rst  $38                                         ; $7573: $ff
	ld   a, a                                        ; $7574: $7f
	sbc  b                                           ; $7575: $98
	ld   b, d                                        ; $7576: $42
	or   c                                           ; $7577: $b1
	dec  e                                           ; $7578: $1d
	dec  hl                                          ; $7579: $2b
	dec  e                                           ; $757a: $1d
	rst  $38                                         ; $757b: $ff
	ld   a, a                                        ; $757c: $7f
	ld   e, [hl]                                     ; $757d: $5e
	ld   b, e                                        ; $757e: $43
	or   c                                           ; $757f: $b1
	dec  e                                           ; $7580: $1d
	dec  hl                                          ; $7581: $2b
	dec  e                                           ; $7582: $1d
	sbc  $7b                                         ; $7583: $de $7b
	sub  $5a                                         ; $7585: $d6 $5a
	ld   d, d                                        ; $7587: $52

jr_085_7588:
	ld   c, d                                        ; $7588: $4a
	adc  $3d                                         ; $7589: $ce $3d
	rst  $38                                         ; $758b: $ff
	ld   a, a                                        ; $758c: $7f
	ld   d, l                                        ; $758d: $55
	ld   [hl], $d2                                   ; $758e: $36 $d2

jr_085_7590:
	ld   hl, $1d2b                                   ; $7590: $21 $2b $1d
	rst  $38                                         ; $7593: $ff
	ld   a, a                                        ; $7594: $7f
	ld   d, l                                        ; $7595: $55
	ld   [hl], $f1                                   ; $7596: $36 $f1

jr_085_7598:
	ld   [hl], d                                     ; $7598: $72
	dec  hl                                          ; $7599: $2b
	dec  e                                           ; $759a: $1d
	rst  $38                                         ; $759b: $ff
	ld   a, a                                        ; $759c: $7f
	dec  hl                                          ; $759d: $2b
	dec  e                                           ; $759e: $1d
	pop  af                                          ; $759f: $f1
	ld   [hl], d                                     ; $75a0: $72
	ld   b, l                                        ; $75a1: $45
	db   $10                                         ; $75a2: $10
	rst  $38                                         ; $75a3: $ff
	ld   a, a                                        ; $75a4: $7f
	ld   sp, $8d46                                   ; $75a5: $31 $46 $8d
	dec  [hl]                                        ; $75a8: $35
	ld   [$ff21], sp                                 ; $75a9: $08 $21 $ff
	ld   a, a                                        ; $75ac: $7f
	inc  d                                           ; $75ad: $14
	ld   e, a                                        ; $75ae: $5f
	adc  l                                           ; $75af: $8d
	dec  [hl]                                        ; $75b0: $35
	ld   [rAUDTERM], sp                                 ; $75b1: $08 $25 $ff
	ld   a, a                                        ; $75b4: $7f
	ld   sp, $1446                                   ; $75b5: $31 $46 $14
	ld   e, a                                        ; $75b8: $5f
	ld   [rAUDTERM], sp                                 ; $75b9: $08 $25 $ff
	ld   a, a                                        ; $75bc: $7f
	inc  sp                                          ; $75bd: $33
	ld   l, d                                        ; $75be: $6a
	adc  l                                           ; $75bf: $8d
	ld   d, c                                        ; $75c0: $51
	jr   z, jr_085_75f0                              ; $75c1: $28 $2d

	rst  $38                                         ; $75c3: $ff
	ld   a, a                                        ; $75c4: $7f
	adc  c                                           ; $75c5: $89
	ld   a, l                                        ; $75c6: $7d
	ld   sp, hl                                      ; $75c7: $f9
	ld   [hl-], a                                    ; $75c8: $32
	jr   z, jr_085_75f8                              ; $75c9: $28 $2d

	rst  $38                                         ; $75cb: $ff
	ld   a, a                                        ; $75cc: $7f
	ld   c, l                                        ; $75cd: $4d
	scf                                              ; $75ce: $37
	db   $10                                         ; $75cf: $10
	ld   e, $28                                      ; $75d0: $1e $28
	dec  l                                           ; $75d2: $2d
	rst  $38                                         ; $75d3: $ff
	ld   a, a                                        ; $75d4: $7f
	inc  sp                                          ; $75d5: $33
	ld   l, d                                        ; $75d6: $6a
	ld   l, h                                        ; $75d7: $6c
	ld   c, l                                        ; $75d8: $4d
	jr   z, jr_085_7608                              ; $75d9: $28 $2d

	rst  $38                                         ; $75db: $ff
	ld   a, a                                        ; $75dc: $7f
	adc  c                                           ; $75dd: $89
	ld   [hl], c                                     ; $75de: $71
	or   a                                           ; $75df: $b7
	ld   a, [hl+]                                    ; $75e0: $2a
	jr   z, @+$2f                                    ; $75e1: $28 $2d

	rst  $38                                         ; $75e3: $ff
	ld   a, a                                        ; $75e4: $7f
	ld   c, a                                        ; $75e5: $4f
	scf                                              ; $75e6: $37
	db   $10                                         ; $75e7: $10
	ld   c, $28                                      ; $75e8: $0e $28
	dec  l                                           ; $75ea: $2d
	rst  $38                                         ; $75eb: $ff
	ld   a, a                                        ; $75ec: $7f
	or   $71                                         ; $75ed: $f6 $71
	cp   c                                           ; $75ef: $b9

jr_085_75f0:
	dec  h                                           ; $75f0: $25
	ld   c, $2d                                      ; $75f1: $0e $2d
	rst  $38                                         ; $75f3: $ff
	ld   a, a                                        ; $75f4: $7f
	or   $71                                         ; $75f5: $f6 $71
	ld   l, l                                        ; $75f7: $6d

jr_085_75f8:
	ld   [hl-], a                                    ; $75f8: $32
	add  hl, hl                                      ; $75f9: $29
	dec  l                                           ; $75fa: $2d
	rst  $38                                         ; $75fb: $ff
	ld   a, a                                        ; $75fc: $7f
	or   $71                                         ; $75fd: $f6 $71
	cpl                                              ; $75ff: $2f
	ld   d, l                                        ; $7600: $55
	xor  e                                           ; $7601: $ab
	jr   nc, @+$01                                   ; $7602: $30 $ff

	ld   a, a                                        ; $7604: $7f
	dec  e                                           ; $7605: $1d
	inc  sp                                          ; $7606: $33
	sub  d                                           ; $7607: $92

jr_085_7608:
	dec  l                                           ; $7608: $2d
	ld   l, d                                        ; $7609: $6a
	add  hl, de                                      ; $760a: $19
	rst  $38                                         ; $760b: $ff
	ld   a, a                                        ; $760c: $7f
	dec  e                                           ; $760d: $1d
	inc  sp                                          ; $760e: $33
	ld   sp, $6a7f                                   ; $760f: $31 $7f $6a
	add  hl, de                                      ; $7612: $19
	ccf                                              ; $7613: $3f
	ld   l, e                                        ; $7614: $6b
	rst  JumpTable                                         ; $7615: $df
	ld   d, l                                        ; $7616: $55
	rst  $30                                         ; $7617: $f7
	inc  h                                           ; $7618: $24
	ld   l, d                                        ; $7619: $6a
	add  hl, de                                      ; $761a: $19
	rst  $38                                         ; $761b: $ff
	ld   a, a                                        ; $761c: $7f
	ld   a, l                                        ; $761d: $7d
	dec  sp                                          ; $761e: $3b
	ldh  a, [c]                                      ; $761f: $f2
	ld   b, l                                        ; $7620: $45
	xor  $28                                         ; $7621: $ee $28
	rst  $38                                         ; $7623: $ff
	ld   a, a                                        ; $7624: $7f
	ccf                                              ; $7625: $3f
	ld   b, [hl]                                     ; $7626: $46
	inc  de                                          ; $7627: $13
	ld   a, $2f                                      ; $7628: $3e $2f
	ld   c, l                                        ; $762a: $4d
	rst  $38                                         ; $762b: $ff
	ld   a, a                                        ; $762c: $7f
	pop  af                                          ; $762d: $f1
	ld   a, [hl]                                     ; $762e: $7e
	db   $d3                                         ; $762f: $d3
	ld   [hl], $cc                                   ; $7630: $36 $cc
	ld   hl, $7fff                                   ; $7632: $21 $ff $7f
	or   l                                           ; $7635: $b5
	ld   h, d                                        ; $7636: $62
	ld   [hl], b                                     ; $7637: $70
	ld   c, c                                        ; $7638: $49
	dec  bc                                          ; $7639: $0b
	dec  l                                           ; $763a: $2d
	rst  $38                                         ; $763b: $ff
	ld   a, a                                        ; $763c: $7f
	or   d                                           ; $763d: $b2
	ld   a, [hl]                                     ; $763e: $7e
	adc  l                                           ; $763f: $8d
	ld   h, $8b                                      ; $7640: $26 $8b
	add  hl, hl                                      ; $7642: $29
	rst  $38                                         ; $7643: $ff
	ld   a, a                                        ; $7644: $7f
	dec  de                                          ; $7645: $1b
	cpl                                              ; $7646: $2f
	dec  [hl]                                        ; $7647: $35
	ld   sp, $292c                                   ; $7648: $31 $2c $29
	rst  $38                                         ; $764b: $ff
	ld   a, a                                        ; $764c: $7f
	ld   de, $af73                                   ; $764d: $11 $73 $af
	ld   e, c                                        ; $7650: $59
	dec  hl                                          ; $7651: $2b
	ld   b, c                                        ; $7652: $41
	rst  $38                                         ; $7653: $ff
	ld   a, a                                        ; $7654: $7f
	dec  e                                           ; $7655: $1d
	ld   [hl], d                                     ; $7656: $72
	ld   [hl], c                                     ; $7657: $71
	ld   l, $4a                                      ; $7658: $2e $4a
	add  hl, hl                                      ; $765a: $29
	rst  $38                                         ; $765b: $ff
	ld   a, a                                        ; $765c: $7f
	inc  e                                           ; $765d: $1c
	ld   b, e                                        ; $765e: $43
	ld   a, d                                        ; $765f: $7a
	dec  [hl]                                        ; $7660: $35
	dec  hl                                          ; $7661: $2b
	dec  l                                           ; $7662: $2d
	rst  $38                                         ; $7663: $ff
	ld   a, a                                        ; $7664: $7f
	ret  c                                           ; $7665: $d8

	ld   a, [hl]                                     ; $7666: $7e
	sub  d                                           ; $7667: $92
	dec  [hl]                                        ; $7668: $35
	xor  $28                                         ; $7669: $ee $28
	rst  $38                                         ; $766b: $ff
	ld   c, e                                        ; $766c: $4b
	adc  a                                           ; $766d: $8f
	daa                                              ; $766e: $27
	ld   d, $26                                      ; $766f: $16 $26
	xor  $28                                         ; $7671: $ee $28
	rst  $38                                         ; $7673: $ff
	ld   a, a                                        ; $7674: $7f
	rst  $30                                         ; $7675: $f7
	ld   d, h                                        ; $7676: $54
	or   $25                                         ; $7677: $f6 $25
	xor  $28                                         ; $7679: $ee $28
	rst  $38                                         ; $767b: $ff
	ld   a, a                                        ; $767c: $7f
	ld   e, $37                                      ; $767d: $1e $37
	sub  a                                           ; $767f: $97
	ld   hl, $110e                                   ; $7680: $21 $0e $11
	rst  $38                                         ; $7683: $ff
	ld   a, a                                        ; $7684: $7f
	sub  a                                           ; $7685: $97
	ld   a, [hl]                                     ; $7686: $7e
	sub  a                                           ; $7687: $97
	ld   hl, $75d2                                   ; $7688: $21 $d2 $75
	rst  $38                                         ; $768b: $ff
	ld   a, a                                        ; $768c: $7f
	sub  d                                           ; $768d: $92
	ld   a, [hl-]                                    ; $768e: $3a
	sub  a                                           ; $768f: $97
	ld   hl, $21ac                                   ; $7690: $21 $ac $21
	rst  $38                                         ; $7693: $ff
	ld   a, a                                        ; $7694: $7f
	db   $fd                                         ; $7695: $fd
	ld   [hl], $75                                   ; $7696: $36 $75
	ld   hl, $110e                                   ; $7698: $21 $0e $11
	rst  $38                                         ; $769b: $ff
	ld   a, a                                        ; $769c: $7f
	ld   d, l                                        ; $769d: $55
	ld   d, e                                        ; $769e: $53
	ld   c, l                                        ; $769f: $4d
	ld   a, [de]                                     ; $76a0: $1a
	ld   l, c                                        ; $76a1: $69
	dec  e                                           ; $76a2: $1d
	rst  $38                                         ; $76a3: $ff
	ld   a, a                                        ; $76a4: $7f
	rst  $30                                         ; $76a5: $f7
	ld   sp, $1a4d                                   ; $76a6: $31 $4d $1a
	ld   l, c                                        ; $76a9: $69
	dec  e                                           ; $76aa: $1d
	rst  $38                                         ; $76ab: $ff
	ld   a, a                                        ; $76ac: $7f
	ld   de, $917f                                   ; $76ad: $11 $7f $91
	ld   e, c                                        ; $76b0: $59
	ld   a, [hl+]                                    ; $76b1: $2a
	ld   hl, $7fff                                   ; $76b2: $21 $ff $7f
	ld   a, e                                        ; $76b5: $7b
	ld   c, d                                        ; $76b6: $4a
	ld   d, h                                        ; $76b7: $54
	dec  l                                           ; $76b8: $2d
	dec  bc                                          ; $76b9: $0b
	dec  e                                           ; $76ba: $1d
	rst  $38                                         ; $76bb: $ff
	ld   a, a                                        ; $76bc: $7f
	ld   e, h                                        ; $76bd: $5c
	ld   b, a                                        ; $76be: $47
	inc  c                                           ; $76bf: $0c
	ld   a, [de]                                     ; $76c0: $1a
	ld   a, [bc]                                     ; $76c1: $0a
	ld   hl, $7fff                                   ; $76c2: $21 $ff $7f
	ld   sp, $6c77                                   ; $76c5: $31 $77 $6c
	ld   b, [hl]                                     ; $76c8: $46
	ld   c, [hl]                                     ; $76c9: $4e
	add  hl, hl                                      ; $76ca: $29
	rst  $38                                         ; $76cb: $ff
	ld   a, a                                        ; $76cc: $7f
	ld   e, c                                        ; $76cd: $59
	ld   a, [hl-]                                    ; $76ce: $3a
	sub  d                                           ; $76cf: $92
	dec  e                                           ; $76d0: $1d
	inc  l                                           ; $76d1: $2c
	dec  l                                           ; $76d2: $2d
	rst  $38                                         ; $76d3: $ff
	ld   a, a                                        ; $76d4: $7f
	jr   jr_085_7700                                 ; $76d5: $18 $29

	inc  [hl]                                        ; $76d7: $34
	ld   h, [hl]                                     ; $76d8: $66
	ld   c, l                                        ; $76d9: $4d
	ld   b, c                                        ; $76da: $41
	cp   a                                           ; $76db: $bf
	ld   c, a                                        ; $76dc: $4f
	db   $fc                                         ; $76dd: $fc
	add  hl, hl                                      ; $76de: $29
	ld   d, e                                        ; $76df: $53
	dec  h                                           ; $76e0: $25
	adc  $34                                         ; $76e1: $ce $34
	rst  $38                                         ; $76e3: $ff
	ld   a, a                                        ; $76e4: $7f
	dec  [hl]                                        ; $76e5: $35
	ld   l, [hl]                                     ; $76e6: $6e
	ld   d, e                                        ; $76e7: $53
	dec  h                                           ; $76e8: $25
	adc  $34                                         ; $76e9: $ce $34
	rst  $38                                         ; $76eb: $ff
	ld   a, a                                        ; $76ec: $7f
	xor  $25                                         ; $76ed: $ee $25
	ld   d, e                                        ; $76ef: $53
	dec  h                                           ; $76f0: $25
	xor  e                                           ; $76f1: $ab
	ld   c, h                                        ; $76f2: $4c
	rst  $38                                         ; $76f3: $ff
	ld   a, a                                        ; $76f4: $7f
	adc  b                                           ; $76f5: $88
	ld   c, $e4                                      ; $76f6: $0e $e4
	dec  c                                           ; $76f8: $0d
	ld   l, $19                                      ; $76f9: $2e $19
	inc  [hl]                                        ; $76fb: $34
	ld   [hl], a                                     ; $76fc: $77
	db   $e4                                         ; $76fd: $e4
	dec  c                                           ; $76fe: $0d
	ld   [hl], e                                     ; $76ff: $73

jr_085_7700:
	ld   hl, $192e                                   ; $7700: $21 $2e $19
	rst  $38                                         ; $7703: $ff
	ld   a, a                                        ; $7704: $7f
	sbc  e                                           ; $7705: $9b
	ld   b, $88                                      ; $7706: $06 $88
	ld   c, $93                                      ; $7708: $0e $93
	add  hl, de                                      ; $770a: $19
	rst  $38                                         ; $770b: $ff
	ld   a, a                                        ; $770c: $7f
	ld   e, l                                        ; $770d: $5d
	ld   [hl-], a                                    ; $770e: $32
	ldh  a, [$67]                                    ; $770f: $f0 $67
	adc  d                                           ; $7711: $8a
	dec  l                                           ; $7712: $2d
	db   $f4                                         ; $7713: $f4
	ccf                                              ; $7714: $3f
	ld   e, l                                        ; $7715: $5d
	ld   [hl-], a                                    ; $7716: $32
	push hl                                          ; $7717: $e5
	dec  sp                                          ; $7718: $3b
	jr   z, jr_085_7745                              ; $7719: $28 $2a

	rst  $30                                         ; $771b: $f7
	ld   e, a                                        ; $771c: $5f
	ld   e, l                                        ; $771d: $5d
	ld   [hl-], a                                    ; $771e: $32
	ldh  a, [$67]                                    ; $771f: $f0 $67
	adc  d                                           ; $7721: $8a
	dec  l                                           ; $7722: $2d
	rst  $38                                         ; $7723: $ff
	ld   a, a                                        ; $7724: $7f
	ld   d, d                                        ; $7725: $52
	ld   a, a                                        ; $7726: $7f
	ld   [hl], h                                     ; $7727: $74
	dec  [hl]                                        ; $7728: $35
	dec  hl                                          ; $7729: $2b
	add  hl, hl                                      ; $772a: $29
	rst  $38                                         ; $772b: $ff
	ld   a, a                                        ; $772c: $7f
	ld   e, h                                        ; $772d: $5c
	ld   b, a                                        ; $772e: $47
	ld   [hl], h                                     ; $772f: $74
	dec  [hl]                                        ; $7730: $35
	dec  hl                                          ; $7731: $2b
	add  hl, hl                                      ; $7732: $29
	rst  $38                                         ; $7733: $ff
	ld   a, a                                        ; $7734: $7f
	ld   [hl], c                                     ; $7735: $71
	daa                                              ; $7736: $27
	ret  nc                                          ; $7737: $d0

	dec  l                                           ; $7738: $2d
	dec  l                                           ; $7739: $2d
	dec  l                                           ; $773a: $2d
	rst  $38                                         ; $773b: $ff
	ld   a, a                                        ; $773c: $7f
	sub  d                                           ; $773d: $92
	dec  l                                           ; $773e: $2d
	ld   a, $05                                      ; $773f: $3e $05
	ret                                              ; $7741: $c9


	inc  l                                           ; $7742: $2c
	rst  $38                                         ; $7743: $ff
	ld   a, a                                        ; $7744: $7f

jr_085_7745:
	rst  $38                                         ; $7745: $ff
	cpl                                              ; $7746: $2f
	rra                                              ; $7747: $1f
	dec  b                                           ; $7748: $05
	ld   c, e                                        ; $7749: $4b
	jr   nc, @+$01                                   ; $774a: $30 $ff

	ld   a, a                                        ; $774c: $7f
	ld   a, e                                        ; $774d: $7b
	ld   l, $4b                                      ; $774e: $2e $4b
	ld   h, $c9                                      ; $7750: $26 $c9
	inc  l                                           ; $7752: $2c
	rst  $38                                         ; $7753: $ff
	ld   a, a                                        ; $7754: $7f
	ld   [hl], l                                     ; $7755: $75
	ld   a, a                                        ; $7756: $7f
	cpl                                              ; $7757: $2f
	ld   a, a                                        ; $7758: $7f
	ld   a, [hl+]                                    ; $7759: $2a
	dec  [hl]                                        ; $775a: $35
	rst  $38                                         ; $775b: $ff
	ld   a, a                                        ; $775c: $7f
	ld   [bc], a                                     ; $775d: $02
	ld   [de], a                                     ; $775e: $12
	cpl                                              ; $775f: $2f
	ld   a, a                                        ; $7760: $7f
	ld   [bc], a                                     ; $7761: $02
	ld   de, $0000                                   ; $7762: $11 $00 $00
	nop                                              ; $7765: $00
	nop                                              ; $7766: $00
	nop                                              ; $7767: $00
	nop                                              ; $7768: $00
	nop                                              ; $7769: $00
	nop                                              ; $776a: $00
	rst  $38                                         ; $776b: $ff
	ld   a, a                                        ; $776c: $7f
	bit  1, c                                        ; $776d: $cb $49
	sub  e                                           ; $776f: $93
	ld   e, [hl]                                     ; $7770: $5e
	jr   z, jr_085_77a0                              ; $7771: $28 $2d

	rst  $38                                         ; $7773: $ff
	ld   a, a                                        ; $7774: $7f
	ld   e, a                                        ; $7775: $5f
	inc  bc                                          ; $7776: $03
	sub  e                                           ; $7777: $93
	ld   e, [hl]                                     ; $7778: $5e
	jr   z, jr_085_77a8                              ; $7779: $28 $2d

	rst  $38                                         ; $777b: $ff
	ld   a, a                                        ; $777c: $7f
	bit  1, c                                        ; $777d: $cb $49
	or   $76                                         ; $777f: $f6 $76
	jr   z, jr_085_77b0                              ; $7781: $28 $2d

	rra                                              ; $7783: $1f
	ld   e, d                                        ; $7784: $5a
	ld   a, a                                        ; $7785: $7f
	ld   l, d                                        ; $7786: $6a
	rra                                              ; $7787: $1f
	ld   l, a                                        ; $7788: $6f
	rst  $38                                         ; $7789: $ff
	ld   a, a                                        ; $778a: $7f
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
	or   [hl]                                        ; $779b: $b6
	ld   [hl], l                                     ; $779c: $75
	rla                                              ; $779d: $17
	halt                                             ; $779e: $76
	ei                                               ; $779f: $fb

jr_085_77a0:
	halt                                             ; $77a0: $76
	rst  $38                                         ; $77a1: $ff
	ld   a, a                                        ; $77a2: $7f
	nop                                              ; $77a3: $00
	nop                                              ; $77a4: $00
	nop                                              ; $77a5: $00
	nop                                              ; $77a6: $00
	nop                                              ; $77a7: $00

jr_085_77a8:
	nop                                              ; $77a8: $00
	nop                                              ; $77a9: $00
	nop                                              ; $77aa: $00
	nop                                              ; $77ab: $00
	nop                                              ; $77ac: $00
	nop                                              ; $77ad: $00
	nop                                              ; $77ae: $00
	nop                                              ; $77af: $00

jr_085_77b0:
	nop                                              ; $77b0: $00
	nop                                              ; $77b1: $00
	nop                                              ; $77b2: $00
	ld   a, [hl+]                                    ; $77b3: $2a
	ld   h, [hl]                                     ; $77b4: $66
	or   b                                           ; $77b5: $b0
	ld   l, [hl]                                     ; $77b6: $6e
	ld   [hl], $73                                   ; $77b7: $36 $73
	rst  $38                                         ; $77b9: $ff
	ld   a, a                                        ; $77ba: $7f
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
	rst  $30                                         ; $77cb: $f7
	dec  bc                                          ; $77cc: $0b
	ld   a, [$fc3f]                                  ; $77cd: $fa $3f $fc
	ld   e, e                                        ; $77d0: $5b
	rst  $38                                         ; $77d1: $ff
	ld   a, a                                        ; $77d2: $7f
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
	ld   c, d                                        ; $77e3: $4a
	dec  hl                                          ; $77e4: $2b
	sub  c                                           ; $77e5: $91
	ld   b, a                                        ; $77e6: $47
	cp   c                                           ; $77e7: $b9
	ld   h, a                                        ; $77e8: $67
	rst  $38                                         ; $77e9: $ff
	ld   a, a                                        ; $77ea: $7f
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
	ld   e, e                                        ; $77fb: $5b
	dec  h                                           ; $77fc: $25
	db   $fc                                         ; $77fd: $fc
	dec  a                                           ; $77fe: $3d
	cp   l                                           ; $77ff: $bd
	ld   d, d                                        ; $7800: $52
	rst  $38                                         ; $7801: $ff
	ld   a, a                                        ; $7802: $7f
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
	sub  e                                           ; $7813: $93
	ld   a, $cd                                      ; $7814: $3e $cd
	add  hl, hl                                      ; $7816: $29
	jr   z, jr_085_7832                              ; $7817: $28 $19

	add  hl, bc                                      ; $7819: $09
	ld   hl, $7fff                                   ; $781a: $21 $ff $7f
	sub  e                                           ; $781d: $93
	ld   a, $cd                                      ; $781e: $3e $cd
	add  hl, hl                                      ; $7820: $29
	ld   [hl-], a                                    ; $7821: $32
	dec  d                                           ; $7822: $15
	rst  $38                                         ; $7823: $ff
	ld   a, a                                        ; $7824: $7f
	sub  e                                           ; $7825: $93
	ld   a, $cd                                      ; $7826: $3e $cd
	add  hl, hl                                      ; $7828: $29
	add  hl, bc                                      ; $7829: $09
	ld   hl, $7fff                                   ; $782a: $21 $ff $7f
	rla                                              ; $782d: $17
	ld   c, a                                        ; $782e: $4f
	call $3229                                       ; $782f: $cd $29 $32

jr_085_7832:
	dec  c                                           ; $7832: $0d
	rst  $38                                         ; $7833: $ff
	ld   a, a                                        ; $7834: $7f
	rla                                              ; $7835: $17
	ld   c, a                                        ; $7836: $4f
	ld   [hl], d                                     ; $7837: $72
	ld   a, $cd                                      ; $7838: $3e $cd
	add  hl, hl                                      ; $783a: $29
	rst  $38                                         ; $783b: $ff
	ld   a, a                                        ; $783c: $7f
	rla                                              ; $783d: $17
	ld   c, a                                        ; $783e: $4f
	inc  c                                           ; $783f: $0c
	dec  e                                           ; $7840: $1d
	ld   [hl-], a                                    ; $7841: $32
	dec  c                                           ; $7842: $0d
	rst  $38                                         ; $7843: $ff
	ld   a, a                                        ; $7844: $7f
	push de                                          ; $7845: $d5
	ld   a, [hl-]                                    ; $7846: $3a
	ret  nc                                          ; $7847: $d0

	dec  l                                           ; $7848: $2d
	add  hl, bc                                      ; $7849: $09
	ld   hl, $0000                                   ; $784a: $21 $00 $00
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

jr_085_785a:
	nop                                              ; $785a: $00
	rst  $38                                         ; $785b: $ff
	ld   a, a                                        ; $785c: $7f
	ld   sp, hl                                      ; $785d: $f9
	add  hl, de                                      ; $785e: $19
	rla                                              ; $785f: $17
	ld   de, $1ced                                   ; $7860: $11 $ed $1c
	rst  $38                                         ; $7863: $ff
	ld   a, a                                        ; $7864: $7f
	ld   e, a                                        ; $7865: $5f
	ld   c, c                                        ; $7866: $49
	cp   c                                           ; $7867: $b9
	jr   nc, jr_085_785a                             ; $7868: $30 $f0

	inc  e                                           ; $786a: $1c
	rst  $38                                         ; $786b: $ff
	ld   a, a                                        ; $786c: $7f
	inc  b                                           ; $786d: $04
	ld   b, d                                        ; $786e: $42
	add  d                                           ; $786f: $82
	ld   sp, $1ced                                   ; $7870: $31 $ed $1c
	rst  $38                                         ; $7873: $ff
	ld   a, a                                        ; $7874: $7f
	or   a                                           ; $7875: $b7
	ld   l, $b2                                      ; $7876: $2e $b2
	add  hl, hl                                      ; $7878: $29
	ld   a, [hl+]                                    ; $7879: $2a
	ld   hl, $7fff                                   ; $787a: $21 $ff $7f
	cpl                                              ; $787d: $2f
	halt                                             ; $787e: $76
	or   c                                           ; $787f: $b1
	ld   a, $0b                                      ; $7880: $3e $0b
	dec  l                                           ; $7882: $2d
	rst  $38                                         ; $7883: $ff
	ld   a, a                                        ; $7884: $7f
	inc  sp                                          ; $7885: $33
	ld   b, [hl]                                     ; $7886: $46
	cp   b                                           ; $7887: $b8
	ld   sp, $250c                                   ; $7888: $31 $0c $25
	rst  $38                                         ; $788b: $ff
	ld   a, a                                        ; $788c: $7f
	add  hl, de                                      ; $788d: $19
	dec  sp                                          ; $788e: $3b
	jp   nc, $2a29                                   ; $788f: $d2 $29 $2a

	dec  [hl]                                        ; $7892: $35
	rst  $38                                         ; $7893: $ff
	ld   a, a                                        ; $7894: $7f
	add  hl, de                                      ; $7895: $19
	dec  sp                                          ; $7896: $3b
	ld   l, [hl]                                     ; $7897: $6e
	ld   a, l                                        ; $7898: $7d
	ld   a, [hl+]                                    ; $7899: $2a
	dec  [hl]                                        ; $789a: $35
	rst  $38                                         ; $789b: $ff
	ld   a, a                                        ; $789c: $7f
	ld   l, [hl]                                     ; $789d: $6e
	ld   a, l                                        ; $789e: $7d
	sub  d                                           ; $789f: $92
	halt                                             ; $78a0: $76
	ld   a, [hl+]                                    ; $78a1: $2a
	dec  [hl]                                        ; $78a2: $35
	
if def(VWF)

EnLoadSceneryScheduleGfx0::
	ld   a, BANK(Gfx_TrainingShchedule)
	ld   bc, $b0
	ld   de, $d000+$1a0
	ld   hl, Gfx_TrainingShchedule
	call FarMemCopy
	ret


EnLoadSceneryScheduleGfx1::
	ld   a, BANK(Gfx_TrainingShchedule)
	ld   bc, $7c0
	ld   de, $d000+$40
	ld   hl, Gfx_TrainingShchedule+$b0
	call FarMemCopy
	ret


EndResultsTitleMapAndTileDataHook::
; Original tile map
	ld   hl, $9800                                   ; $72c4: $21 $00 $98
	ld   de, $419e                                   ; $72c7: $11 $9e $41
	call RLEXorCopy                                       ; $72ca: $cd $d2 $09

; Tile map hook
	ld   a, BANK(.layout)
	ldbc 16, 3
	ld   de, .layout
	ld   hl, $98e2
	call FarCopyLayout

	ld   b, 16
	ld   a, $14
	ld   hl, $98c2
:	ld   [hl+], a
	dec  b
	jr   nz, :-
	
; Original tile data
	ld   a, $1a                                      ; $72cd: $3e $1a
	ld   hl, $8800                                   ; $72cf: $21 $00 $88
	ld   de, $67e0                                   ; $72d2: $11 $e0 $67
	call RLEXorCopy                                       ; $72d5: $cd $d2 $09

; Tile data hook
	ld   bc, .layout-.gfx
	ld   de, $9200
	ld   hl, .gfx
	call MemCopy

	ret
.gfx:
	INCBIN "en_endResultsTitle.2bpp"
.layout:
	db $20, $21, $22, $22, $22, $23, $24, $25, $26, $27, $22, $22, $22, $23, $28, $22
	db $29, $2a, $2b, $22, $22, $2c, $2d, $2e, $2f, $30, $22, $31, $22, $2c, $32, $31
	db $33, $34, $35, $36, $37, $38, $22, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41

endc
