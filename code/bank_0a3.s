; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0a3", ROMX[$4000], BANK[$a3]

	ld   b, $06                                      ; $4000: $06 $06
	ld   b, $06                                      ; $4002: $06 $06
	ld   b, $06                                      ; $4004: $06 $06
	ld   b, $06                                      ; $4006: $06 $06
	ld   b, $00                                      ; $4008: $06 $00
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
	ld   b, $06                                      ; $4014: $06 $06
	ld   b, $06                                      ; $4016: $06 $06
	ld   b, $06                                      ; $4018: $06 $06
	ld   b, $06                                      ; $401a: $06 $06
	ld   b, $06                                      ; $401c: $06 $06
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
	ld   b, $06                                      ; $4028: $06 $06
	ld   b, $06                                      ; $402a: $06 $06
	ld   b, $06                                      ; $402c: $06 $06
	ld   b, $06                                      ; $402e: $06 $06
	ld   b, $06                                      ; $4030: $06 $06
	nop                                              ; $4032: $00
	nop                                              ; $4033: $00
	nop                                              ; $4034: $00
	ld   [bc], a                                     ; $4035: $02
	ld   [bc], a                                     ; $4036: $02
	ld   [bc], a                                     ; $4037: $02
	ld   bc, $0000                                   ; $4038: $01 $00 $00
	nop                                              ; $403b: $00
	ld   b, $06                                      ; $403c: $06 $06
	ld   b, $06                                      ; $403e: $06 $06
	ld   b, $06                                      ; $4040: $06 $06
	ld   b, $06                                      ; $4042: $06 $06
	ld   b, $06                                      ; $4044: $06 $06
	ld   b, $00                                      ; $4046: $06 $00
	nop                                              ; $4048: $00
	ld   [bc], a                                     ; $4049: $02
	ld   [bc], a                                     ; $404a: $02
	ld   [bc], a                                     ; $404b: $02
	ld   bc, $0001                                   ; $404c: $01 $01 $00
	nop                                              ; $404f: $00
	ld   b, $06                                      ; $4050: $06 $06
	ld   b, $06                                      ; $4052: $06 $06
	ld   b, $06                                      ; $4054: $06 $06
	ld   b, $06                                      ; $4056: $06 $06
	ld   b, $06                                      ; $4058: $06 $06
	ld   b, $06                                      ; $405a: $06 $06
	rlca                                             ; $405c: $07
	rlca                                             ; $405d: $07
	rlca                                             ; $405e: $07
	rlca                                             ; $405f: $07
	ld   [bc], a                                     ; $4060: $02
	rlca                                             ; $4061: $07
	ld   bc, $0000                                   ; $4062: $01 $00 $00
	nop                                              ; $4065: $00
	nop                                              ; $4066: $00
	nop                                              ; $4067: $00
	nop                                              ; $4068: $00
	nop                                              ; $4069: $00
	nop                                              ; $406a: $00
	nop                                              ; $406b: $00
	ld   b, $06                                      ; $406c: $06 $06
	ld   b, $06                                      ; $406e: $06 $06
	rlca                                             ; $4070: $07
	rlca                                             ; $4071: $07
	rlca                                             ; $4072: $07
	rlca                                             ; $4073: $07
	rlca                                             ; $4074: $07
	rlca                                             ; $4075: $07
	rlca                                             ; $4076: $07
	nop                                              ; $4077: $00
	nop                                              ; $4078: $00
	nop                                              ; $4079: $00
	nop                                              ; $407a: $00
	nop                                              ; $407b: $00
	nop                                              ; $407c: $00
	nop                                              ; $407d: $00
	nop                                              ; $407e: $00
	ld   b, $06                                      ; $407f: $06 $06
	ld   b, $06                                      ; $4081: $06 $06
	ld   b, $07                                      ; $4083: $06 $07
	rlca                                             ; $4085: $07
	rlca                                             ; $4086: $07
	rlca                                             ; $4087: $07
	rlca                                             ; $4088: $07
	rlca                                             ; $4089: $07
	rlca                                             ; $408a: $07
	nop                                              ; $408b: $00
	nop                                              ; $408c: $00
	nop                                              ; $408d: $00
	nop                                              ; $408e: $00
	nop                                              ; $408f: $00
	nop                                              ; $4090: $00
	nop                                              ; $4091: $00
	nop                                              ; $4092: $00
	ld   bc, $0600                                   ; $4093: $01 $00 $06
	ld   b, $06                                      ; $4096: $06 $06
	rlca                                             ; $4098: $07
	rlca                                             ; $4099: $07
	rlca                                             ; $409a: $07
	rlca                                             ; $409b: $07
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
	ld   b, $06                                      ; $40aa: $06 $06
	rlca                                             ; $40ac: $07
	rlca                                             ; $40ad: $07
	rlca                                             ; $40ae: $07
	nop                                              ; $40af: $00
	nop                                              ; $40b0: $00
	nop                                              ; $40b1: $00
	nop                                              ; $40b2: $00
	nop                                              ; $40b3: $00
	nop                                              ; $40b4: $00
	ld   [$0808], sp                                 ; $40b5: $08 $08 $08
	ld   [$0808], sp                                 ; $40b8: $08 $08 $08
	ld   [$0808], sp                                 ; $40bb: $08 $08 $08
	ld   [$0f06], sp                                 ; $40be: $08 $06 $0f
	rrca                                             ; $40c1: $0f
	ld   [$0808], sp                                 ; $40c2: $08 $08 $08
	ld   [$2008], sp                                 ; $40c5: $08 $08 $20
	nop                                              ; $40c8: $00
	ld   bc, $0302                                   ; $40c9: $01 $02 $03
	inc  bc                                          ; $40cc: $03
	inc  b                                           ; $40cd: $04
	dec  b                                           ; $40ce: $05
	ld   b, $07                                      ; $40cf: $06 $07
	ld   [$0a09], sp                                 ; $40d1: $08 $09 $0a
	ld   a, [bc]                                     ; $40d4: $0a
	ld   a, [bc]                                     ; $40d5: $0a
	ld   a, [bc]                                     ; $40d6: $0a
	ld   a, [bc]                                     ; $40d7: $0a
	ld   a, [bc]                                     ; $40d8: $0a
	ld   a, [bc]                                     ; $40d9: $0a
	ld   a, [bc]                                     ; $40da: $0a
	dec  bc                                          ; $40db: $0b
	inc  c                                           ; $40dc: $0c
	dec  c                                           ; $40dd: $0d
	inc  bc                                          ; $40de: $03
	inc  bc                                          ; $40df: $03
	inc  bc                                          ; $40e0: $03
	ld   c, $0f                                      ; $40e1: $0e $0f
	db   $10                                         ; $40e3: $10
	ld   de, $1312                                   ; $40e4: $11 $12 $13
	inc  d                                           ; $40e7: $14
	inc  d                                           ; $40e8: $14
	inc  d                                           ; $40e9: $14
	inc  d                                           ; $40ea: $14
	inc  d                                           ; $40eb: $14
	inc  d                                           ; $40ec: $14
	inc  d                                           ; $40ed: $14
	inc  d                                           ; $40ee: $14
	dec  d                                           ; $40ef: $15
	ld   d, $17                                      ; $40f0: $16 $17
	jr   jr_0a3_40f7                                 ; $40f2: $18 $03

	add  hl, de                                      ; $40f4: $19
	ld   a, [de]                                     ; $40f5: $1a
	dec  de                                          ; $40f6: $1b

jr_0a3_40f7:
	inc  e                                           ; $40f7: $1c
	dec  e                                           ; $40f8: $1d
	ld   e, $1f                                      ; $40f9: $1e $1f
	jr   nz, jr_0a3_411e                             ; $40fb: $20 $21

	ld   [hl+], a                                    ; $40fd: $22
	inc  hl                                          ; $40fe: $23
	inc  h                                           ; $40ff: $24
	dec  h                                           ; $4100: $25
	ld   h, $21                                      ; $4101: $26 $21
	daa                                              ; $4103: $27
	jr   z, jr_0a3_412f                              ; $4104: $28 $29

	inc  bc                                          ; $4106: $03
	inc  bc                                          ; $4107: $03
	inc  bc                                          ; $4108: $03
	inc  bc                                          ; $4109: $03
	ld   a, [hl+]                                    ; $410a: $2a
	dec  hl                                          ; $410b: $2b
	inc  l                                           ; $410c: $2c
	dec  l                                           ; $410d: $2d
	ld   l, $2f                                      ; $410e: $2e $2f
	jr   nc, jr_0a3_4143                             ; $4110: $30 $31

	ld   [hl-], a                                    ; $4112: $32
	inc  sp                                          ; $4113: $33
	inc  [hl]                                        ; $4114: $34
	dec  [hl]                                        ; $4115: $35
	ld   [hl], $37                                   ; $4116: $36 $37
	jr   c, jr_0a3_4153                              ; $4118: $38 $39

	ld   a, [hl-]                                    ; $411a: $3a
	dec  sp                                          ; $411b: $3b
	inc  a                                           ; $411c: $3c
	dec  a                                           ; $411d: $3d

jr_0a3_411e:
	ld   a, $3f                                      ; $411e: $3e $3f
	ld   b, b                                        ; $4120: $40
	ld   b, c                                        ; $4121: $41
	nop                                              ; $4122: $00
	ld   b, d                                        ; $4123: $42
	ld   b, e                                        ; $4124: $43
	ld   b, h                                        ; $4125: $44
	ld   b, l                                        ; $4126: $45
	ld   b, [hl]                                     ; $4127: $46
	ld   b, a                                        ; $4128: $47
	ld   c, b                                        ; $4129: $48
	ld   c, c                                        ; $412a: $49
	ld   c, d                                        ; $412b: $4a
	ld   c, e                                        ; $412c: $4b
	ld   c, h                                        ; $412d: $4c
	ld   c, h                                        ; $412e: $4c

jr_0a3_412f:
	ld   c, h                                        ; $412f: $4c
	ld   c, h                                        ; $4130: $4c
	ld   c, l                                        ; $4131: $4d
	ld   c, [hl]                                     ; $4132: $4e
	ld   c, a                                        ; $4133: $4f
	nop                                              ; $4134: $00
	nop                                              ; $4135: $00
	nop                                              ; $4136: $00
	ld   d, b                                        ; $4137: $50
	ld   d, c                                        ; $4138: $51
	ld   d, d                                        ; $4139: $52
	ld   d, e                                        ; $413a: $53
	ld   d, h                                        ; $413b: $54
	ld   d, l                                        ; $413c: $55
	ld   d, [hl]                                     ; $413d: $56
	ld   d, a                                        ; $413e: $57
	ld   e, b                                        ; $413f: $58
	ld   e, c                                        ; $4140: $59
	ld   e, d                                        ; $4141: $5a
	ld   e, d                                        ; $4142: $5a

jr_0a3_4143:
	ld   e, d                                        ; $4143: $5a
	ld   e, d                                        ; $4144: $5a
	ld   e, d                                        ; $4145: $5a
	ld   e, e                                        ; $4146: $5b
	ld   e, h                                        ; $4147: $5c
	ld   e, l                                        ; $4148: $5d
	nop                                              ; $4149: $00
	ld   e, [hl]                                     ; $414a: $5e
	ld   e, a                                        ; $414b: $5f
	ld   h, b                                        ; $414c: $60
	ld   h, c                                        ; $414d: $61
	ld   h, d                                        ; $414e: $62
	ld   h, e                                        ; $414f: $63
	ld   h, h                                        ; $4150: $64
	ld   h, l                                        ; $4151: $65
	ld   h, [hl]                                     ; $4152: $66

jr_0a3_4153:
	ld   h, a                                        ; $4153: $67
	ld   l, b                                        ; $4154: $68
	ld   l, c                                        ; $4155: $69
	ld   l, c                                        ; $4156: $69
	ld   l, c                                        ; $4157: $69
	ld   l, c                                        ; $4158: $69
	ld   l, c                                        ; $4159: $69
	ld   l, d                                        ; $415a: $6a
	ld   l, e                                        ; $415b: $6b
	ld   l, h                                        ; $415c: $6c
	ld   l, l                                        ; $415d: $6d
	ld   l, [hl]                                     ; $415e: $6e
	nop                                              ; $415f: $00
	ld   [hl], b                                     ; $4160: $70
	ld   [hl], c                                     ; $4161: $71
	ld   [hl], d                                     ; $4162: $72
	ld   [hl], e                                     ; $4163: $73
	ld   [hl], h                                     ; $4164: $74
	ld   l, c                                        ; $4165: $69
	ld   l, c                                        ; $4166: $69
	ld   [hl], l                                     ; $4167: $75
	halt                                             ; $4168: $76
	ld   [hl], a                                     ; $4169: $77
	ld   [hl], a                                     ; $416a: $77
	ld   [hl], a                                     ; $416b: $77
	ld   [hl], a                                     ; $416c: $77
	ld   [hl], a                                     ; $416d: $77
	ld   [hl], a                                     ; $416e: $77
	ld   [hl], a                                     ; $416f: $77
	ld   [hl], a                                     ; $4170: $77
	ld   a, b                                        ; $4171: $78
	nop                                              ; $4172: $00
	ld   a, c                                        ; $4173: $79
	ld   a, d                                        ; $4174: $7a
	ld   a, e                                        ; $4175: $7b
	ld   a, h                                        ; $4176: $7c
	ld   a, l                                        ; $4177: $7d
	ld   a, l                                        ; $4178: $7d
	ld   a, l                                        ; $4179: $7d
	ld   a, l                                        ; $417a: $7d
	ld   a, [hl]                                     ; $417b: $7e
	ld   a, a                                        ; $417c: $7f
	nop                                              ; $417d: $00
	nop                                              ; $417e: $00
	nop                                              ; $417f: $00
	nop                                              ; $4180: $00
	nop                                              ; $4181: $00
	nop                                              ; $4182: $00
	nop                                              ; $4183: $00
	nop                                              ; $4184: $00
	ld   bc, $0002                                   ; $4185: $01 $02 $00
	inc  bc                                          ; $4188: $03
	inc  b                                           ; $4189: $04
	dec  b                                           ; $418a: $05
	nop                                              ; $418b: $00
	nop                                              ; $418c: $00
	nop                                              ; $418d: $00
	nop                                              ; $418e: $00
	ld   a, a                                        ; $418f: $7f
	ld   b, $06                                      ; $4190: $06 $06
	ld   b, $06                                      ; $4192: $06 $06
	ld   b, $06                                      ; $4194: $06 $06
	ld   b, $00                                      ; $4196: $06 $00
	nop                                              ; $4198: $00
	nop                                              ; $4199: $00
	nop                                              ; $419a: $00
	nop                                              ; $419b: $00
	ld   b, $01                                      ; $419c: $06 $01
	ld   bc, $0e02                                   ; $419e: $01 $02 $0e
	ld   c, $0e                                      ; $41a1: $0e $0e
	ld   c, $06                                      ; $41a3: $0e $06
	ld   b, $02                                      ; $41a5: $06 $02
	ld   [bc], a                                     ; $41a7: $02
	ld   [bc], a                                     ; $41a8: $02
	ld   [bc], a                                     ; $41a9: $02
	ld   b, $00                                      ; $41aa: $06 $00
	nop                                              ; $41ac: $00
	nop                                              ; $41ad: $00
	nop                                              ; $41ae: $00
	nop                                              ; $41af: $00
	ld   bc, $0101                                   ; $41b0: $01 $01 $01
	ld   bc, $0e08                                   ; $41b3: $01 $08 $0e
	ld   c, $0e                                      ; $41b6: $0e $0e
	ld   b, $02                                      ; $41b8: $06 $02
	ld   [bc], a                                     ; $41ba: $02
	ld   [bc], a                                     ; $41bb: $02
	ld   [bc], a                                     ; $41bc: $02
	ld   [bc], a                                     ; $41bd: $02
	ld   [bc], a                                     ; $41be: $02
	nop                                              ; $41bf: $00
	nop                                              ; $41c0: $00
	nop                                              ; $41c1: $00
	nop                                              ; $41c2: $00
	nop                                              ; $41c3: $00
	nop                                              ; $41c4: $00
	ld   bc, $0000                                   ; $41c5: $01 $00 $00
	ld   [$0e08], sp                                 ; $41c8: $08 $08 $0e
	ld   c, $06                                      ; $41cb: $0e $06
	ld   b, $02                                      ; $41cd: $06 $02
	ld   [bc], a                                     ; $41cf: $02
	ld   [bc], a                                     ; $41d0: $02
	ld   [bc], a                                     ; $41d1: $02
	ld   [bc], a                                     ; $41d2: $02
	nop                                              ; $41d3: $00
	nop                                              ; $41d4: $00
	nop                                              ; $41d5: $00
	nop                                              ; $41d6: $00
	nop                                              ; $41d7: $00
	nop                                              ; $41d8: $00
	nop                                              ; $41d9: $00
	nop                                              ; $41da: $00
	ld   [bc], a                                     ; $41db: $02
	ld   [$0e08], sp                                 ; $41dc: $08 $08 $0e
	ld   c, $06                                      ; $41df: $0e $06
	ld   b, $02                                      ; $41e1: $06 $02
	nop                                              ; $41e3: $00
	nop                                              ; $41e4: $00
	ld   [bc], a                                     ; $41e5: $02
	ld   [bc], a                                     ; $41e6: $02
	nop                                              ; $41e7: $00
	nop                                              ; $41e8: $00
	nop                                              ; $41e9: $00
	nop                                              ; $41ea: $00
	nop                                              ; $41eb: $00
	nop                                              ; $41ec: $00
	ld   [bc], a                                     ; $41ed: $02
	ld   [bc], a                                     ; $41ee: $02
	ld   [bc], a                                     ; $41ef: $02
	ld   a, [bc]                                     ; $41f0: $0a
	ld   [$0e0e], sp                                 ; $41f1: $08 $0e $0e
	ld   b, $06                                      ; $41f4: $06 $06
	ld   b, $02                                      ; $41f6: $06 $02
	nop                                              ; $41f8: $00
	nop                                              ; $41f9: $00
	ld   [bc], a                                     ; $41fa: $02
	nop                                              ; $41fb: $00
	nop                                              ; $41fc: $00
	nop                                              ; $41fd: $00
	nop                                              ; $41fe: $00
	nop                                              ; $41ff: $00
	nop                                              ; $4200: $00
	ld   bc, $0002                                   ; $4201: $01 $02 $00
	ld   [$0e0e], sp                                 ; $4204: $08 $0e $0e
	ld   c, $06                                      ; $4207: $0e $06
	ld   b, $06                                      ; $4209: $06 $06
	ld   [bc], a                                     ; $420b: $02
	ld   [bc], a                                     ; $420c: $02
	ld   [bc], a                                     ; $420d: $02
	ld   [bc], a                                     ; $420e: $02
	rlca                                             ; $420f: $07
	rlca                                             ; $4210: $07
	nop                                              ; $4211: $00
	nop                                              ; $4212: $00
	nop                                              ; $4213: $00
	ld   b, $01                                      ; $4214: $06 $01
	ld   bc, $0e01                                   ; $4216: $01 $01 $0e
	ld   c, $0e                                      ; $4219: $0e $0e
	ld   c, $06                                      ; $421b: $0e $06
	ld   b, $06                                      ; $421d: $06 $06
	ld   b, $06                                      ; $421f: $06 $06
	rlca                                             ; $4221: $07
	rlca                                             ; $4222: $07
	rlca                                             ; $4223: $07
	rlca                                             ; $4224: $07
	rlca                                             ; $4225: $07
	rlca                                             ; $4226: $07
	nop                                              ; $4227: $00
	rlca                                             ; $4228: $07
	ld   bc, $0101                                   ; $4229: $01 $01 $01
	add  hl, bc                                      ; $422c: $09
	add  hl, bc                                      ; $422d: $09
	ld   c, $0e                                      ; $422e: $0e $0e
	ld   c, $0e                                      ; $4230: $0e $0e
	ld   c, $0e                                      ; $4232: $0e $0e
	ld   a, [bc]                                     ; $4234: $0a
	rrca                                             ; $4235: $0f
	rrca                                             ; $4236: $0f
	rrca                                             ; $4237: $0f
	rrca                                             ; $4238: $0f
	rrca                                             ; $4239: $0f
	rrca                                             ; $423a: $0f
	rrca                                             ; $423b: $0f
	rrca                                             ; $423c: $0f
	add  hl, bc                                      ; $423d: $09
	add  hl, bc                                      ; $423e: $09
	add  hl, bc                                      ; $423f: $09
	add  hl, bc                                      ; $4240: $09
	add  hl, bc                                      ; $4241: $09
	ld   c, $0e                                      ; $4242: $0e $0e
	ld   c, $0e                                      ; $4244: $0e $0e
	ld   c, $0a                                      ; $4246: $0e $0a
	ld   a, [bc]                                     ; $4248: $0a
	rrca                                             ; $4249: $0f
	rrca                                             ; $424a: $0f
	rrca                                             ; $424b: $0f
	rrca                                             ; $424c: $0f
	rrca                                             ; $424d: $0f
	rrca                                             ; $424e: $0f
	rrca                                             ; $424f: $0f
	rrca                                             ; $4250: $0f
	add  hl, bc                                      ; $4251: $09
	add  hl, bc                                      ; $4252: $09
	add  hl, bc                                      ; $4253: $09
	add  hl, bc                                      ; $4254: $09
	add  hl, bc                                      ; $4255: $09
	ld   c, $0e                                      ; $4256: $0e $0e
	nop                                              ; $4258: $00
	ld   bc, $0302                                   ; $4259: $01 $02 $03
	inc  b                                           ; $425c: $04
	dec  b                                           ; $425d: $05
	ld   b, $07                                      ; $425e: $06 $07
	ld   [$0a09], sp                                 ; $4260: $08 $09 $0a
	dec  bc                                          ; $4263: $0b
	inc  c                                           ; $4264: $0c
	dec  c                                           ; $4265: $0d
	ld   c, $0f                                      ; $4266: $0e $0f
	jr   nz, jr_0a3_428b                             ; $4268: $20 $21

	ld   [hl+], a                                    ; $426a: $22
	inc  hl                                          ; $426b: $23
	db   $10                                         ; $426c: $10
	ld   de, $1312                                   ; $426d: $11 $12 $13
	inc  d                                           ; $4270: $14
	dec  d                                           ; $4271: $15
	ld   d, $17                                      ; $4272: $16 $17
	jr   @+$1b                                       ; $4274: $18 $19

	ld   a, [de]                                     ; $4276: $1a
	dec  de                                          ; $4277: $1b
	inc  e                                           ; $4278: $1c
	dec  e                                           ; $4279: $1d
	ld   e, $1f                                      ; $427a: $1e $1f
	jr   nc, jr_0a3_42af                             ; $427c: $30 $31

	ld   [hl-], a                                    ; $427e: $32
	inc  sp                                          ; $427f: $33
	jr   nz, @+$23                                   ; $4280: $20 $21

	ld   [hl+], a                                    ; $4282: $22
	inc  hl                                          ; $4283: $23
	inc  h                                           ; $4284: $24
	dec  h                                           ; $4285: $25
	ld   h, $27                                      ; $4286: $26 $27
	jr   z, jr_0a3_42b3                              ; $4288: $28 $29

	ld   a, [hl+]                                    ; $428a: $2a

jr_0a3_428b:
	dec  hl                                          ; $428b: $2b
	inc  l                                           ; $428c: $2c
	dec  l                                           ; $428d: $2d
	ld   l, $2f                                      ; $428e: $2e $2f
	inc  h                                           ; $4290: $24
	dec  h                                           ; $4291: $25
	ld   h, $27                                      ; $4292: $26 $27
	jr   nc, jr_0a3_42c7                             ; $4294: $30 $31

	ld   [hl-], a                                    ; $4296: $32
	inc  sp                                          ; $4297: $33
	inc  [hl]                                        ; $4298: $34
	dec  [hl]                                        ; $4299: $35
	ld   [hl], $37                                   ; $429a: $36 $37
	jr   c, jr_0a3_42d7                              ; $429c: $38 $39

	ld   a, [hl-]                                    ; $429e: $3a
	dec  sp                                          ; $429f: $3b
	inc  a                                           ; $42a0: $3c
	dec  a                                           ; $42a1: $3d
	ld   a, $3f                                      ; $42a2: $3e $3f
	inc  [hl]                                        ; $42a4: $34
	dec  [hl]                                        ; $42a5: $35
	ld   [hl], $37                                   ; $42a6: $36 $37
	ld   b, b                                        ; $42a8: $40
	ld   b, c                                        ; $42a9: $41
	ld   b, d                                        ; $42aa: $42
	ld   b, e                                        ; $42ab: $43
	ld   b, h                                        ; $42ac: $44
	ld   b, l                                        ; $42ad: $45
	ld   b, [hl]                                     ; $42ae: $46

jr_0a3_42af:
	ld   b, a                                        ; $42af: $47
	ld   c, b                                        ; $42b0: $48
	ld   c, c                                        ; $42b1: $49
	ld   c, d                                        ; $42b2: $4a

jr_0a3_42b3:
	ld   c, e                                        ; $42b3: $4b
	ld   c, h                                        ; $42b4: $4c
	ld   c, l                                        ; $42b5: $4d
	ld   c, [hl]                                     ; $42b6: $4e
	ld   c, a                                        ; $42b7: $4f
	jr   z, @+$2b                                    ; $42b8: $28 $29

	ld   a, [hl+]                                    ; $42ba: $2a
	dec  hl                                          ; $42bb: $2b
	ld   d, b                                        ; $42bc: $50
	ld   d, c                                        ; $42bd: $51
	ld   d, d                                        ; $42be: $52
	ld   d, e                                        ; $42bf: $53
	ld   d, h                                        ; $42c0: $54
	ld   d, l                                        ; $42c1: $55
	ld   d, [hl]                                     ; $42c2: $56
	ld   d, a                                        ; $42c3: $57
	ld   e, b                                        ; $42c4: $58
	ld   e, c                                        ; $42c5: $59
	ld   e, d                                        ; $42c6: $5a

jr_0a3_42c7:
	ld   e, e                                        ; $42c7: $5b
	ld   e, h                                        ; $42c8: $5c
	ld   e, l                                        ; $42c9: $5d
	ld   e, [hl]                                     ; $42ca: $5e
	ld   e, a                                        ; $42cb: $5f
	jr   c, @+$3b                                    ; $42cc: $38 $39

	ld   a, [hl-]                                    ; $42ce: $3a
	dec  sp                                          ; $42cf: $3b
	ld   h, b                                        ; $42d0: $60
	ld   h, c                                        ; $42d1: $61
	ld   h, d                                        ; $42d2: $62
	ld   h, e                                        ; $42d3: $63
	ld   h, h                                        ; $42d4: $64
	ld   h, l                                        ; $42d5: $65
	ld   h, [hl]                                     ; $42d6: $66

jr_0a3_42d7:
	ld   h, a                                        ; $42d7: $67
	ld   l, b                                        ; $42d8: $68
	ld   l, c                                        ; $42d9: $69
	ld   l, d                                        ; $42da: $6a
	ld   l, e                                        ; $42db: $6b
	ld   l, h                                        ; $42dc: $6c
	ld   l, l                                        ; $42dd: $6d
	ld   l, [hl]                                     ; $42de: $6e
	ld   l, a                                        ; $42df: $6f
	inc  l                                           ; $42e0: $2c
	dec  l                                           ; $42e1: $2d
	ld   l, $2f                                      ; $42e2: $2e $2f
	ld   [hl], b                                     ; $42e4: $70
	ld   [hl], c                                     ; $42e5: $71
	ld   [hl], d                                     ; $42e6: $72
	ld   [hl], e                                     ; $42e7: $73
	ld   [hl], h                                     ; $42e8: $74
	ld   [hl], l                                     ; $42e9: $75
	halt                                             ; $42ea: $76
	ld   [hl], a                                     ; $42eb: $77
	ld   a, b                                        ; $42ec: $78
	ld   a, c                                        ; $42ed: $79
	ld   a, d                                        ; $42ee: $7a
	ld   a, e                                        ; $42ef: $7b
	ld   a, h                                        ; $42f0: $7c
	ld   a, l                                        ; $42f1: $7d
	ld   a, [hl]                                     ; $42f2: $7e
	ld   a, a                                        ; $42f3: $7f
	inc  a                                           ; $42f4: $3c
	dec  a                                           ; $42f5: $3d
	ld   a, $3f                                      ; $42f6: $3e $3f
	nop                                              ; $42f8: $00
	ld   bc, $0302                                   ; $42f9: $01 $02 $03
	inc  b                                           ; $42fc: $04
	dec  b                                           ; $42fd: $05
	ld   b, $07                                      ; $42fe: $06 $07
	ld   [$0a09], sp                                 ; $4300: $08 $09 $0a
	dec  bc                                          ; $4303: $0b
	inc  c                                           ; $4304: $0c
	dec  c                                           ; $4305: $0d
	ld   c, $0f                                      ; $4306: $0e $0f
	ld   b, b                                        ; $4308: $40
	ld   b, c                                        ; $4309: $41
	ld   b, d                                        ; $430a: $42
	ld   b, e                                        ; $430b: $43
	db   $10                                         ; $430c: $10
	ld   de, $1312                                   ; $430d: $11 $12 $13
	inc  d                                           ; $4310: $14
	dec  d                                           ; $4311: $15
	ld   d, $17                                      ; $4312: $16 $17
	jr   jr_0a3_432f                                 ; $4314: $18 $19

	ld   a, [de]                                     ; $4316: $1a
	dec  de                                          ; $4317: $1b
	inc  e                                           ; $4318: $1c
	dec  e                                           ; $4319: $1d
	ld   e, $1f                                      ; $431a: $1e $1f
	ld   b, h                                        ; $431c: $44
	ld   b, l                                        ; $431d: $45
	ld   b, [hl]                                     ; $431e: $46
	ld   b, a                                        ; $431f: $47
	ld   d, e                                        ; $4320: $53
	nop                                              ; $4321: $00
	ld   a, [bc]                                     ; $4322: $0a
	add  hl, bc                                      ; $4323: $09
	cp   $ea                                         ; $4324: $fe $ea

jr_0a3_4326:
	cp   $dd                                         ; $4326: $fe $dd
	db   $fd                                         ; $4328: $fd
	cp   h                                           ; $4329: $bc
	ld   a, e                                        ; $432a: $7b
	ld   a, [$f6f7]                                  ; $432b: $fa $f7 $f6
	add  b                                           ; $432e: $80

jr_0a3_432f:
	rst  $28                                         ; $432f: $ef
	add  b                                           ; $4330: $80
	sbc  $01                                         ; $4331: $de $01
	cp   h                                           ; $4333: $bc
	ld   b, [hl]                                     ; $4334: $46
	add  b                                           ; $4335: $80
	jp   c, $ea0a                                    ; $4336: $da $0a $ea

	add  sp, -$10                                    ; $4339: $e8 $f0
	cp   c                                           ; $433b: $b9
	ld   sp, hl                                      ; $433c: $f9
	add  hl, de                                      ; $433d: $19
	pop  af                                          ; $433e: $f1
	add  c                                           ; $433f: $81
	inc  sp                                          ; $4340: $33
	ld   d, b                                        ; $4341: $50
	ld   b, d                                        ; $4342: $42
	add  b                                           ; $4343: $80
	ld   [hl], b                                     ; $4344: $70
	dec  b                                           ; $4345: $05
	add  d                                           ; $4346: $82
	xor  b                                           ; $4347: $a8
	xor  h                                           ; $4348: $ac
	sub  b                                           ; $4349: $90
	or   [hl]                                        ; $434a: $b6
	and  b                                           ; $434b: $a0
	add  b                                           ; $434c: $80
	rla                                              ; $434d: $17
	add  b                                           ; $434e: $80
	db   $eb                                         ; $434f: $eb
	add  b                                           ; $4350: $80
	di                                               ; $4351: $f3
	ld   a, [bc]                                     ; $4352: $0a
	cp   $ff                                         ; $4353: $fe $ff
	add  [hl]                                        ; $4355: $86
	add  a                                           ; $4356: $87
	ld   a, [hl]                                     ; $4357: $7e
	ld   e, $df                                      ; $4358: $1e $df
	and  a                                           ; $435a: $a7
	push bc                                          ; $435b: $c5
	rst  JumpTable                                         ; $435c: $df
	inc  bc                                          ; $435d: $03
	add  b                                           ; $435e: $80
	dec  de                                          ; $435f: $1b
	add  b                                           ; $4360: $80
	rla                                              ; $4361: $17
	dec  bc                                          ; $4362: $0b
	and  a                                           ; $4363: $a7
	add  [hl]                                        ; $4364: $86
	and  c                                           ; $4365: $a1
	or   c                                           ; $4366: $b1
	or   [hl]                                        ; $4367: $b6
	ldh  [$66], a                                    ; $4368: $e0 $66
	add  sp, -$17                                    ; $436a: $e8 $e9
	ld   l, [hl]                                     ; $436c: $6e
	rrca                                             ; $436d: $0f
	cp   a                                           ; $436e: $bf
	add  c                                           ; $436f: $81
	rst  JumpTable                                         ; $4370: $df
	add  b                                           ; $4371: $80
	ld   c, h                                        ; $4372: $4c
	inc  bc                                          ; $4373: $03
	jr   nc, jr_0a3_4326                             ; $4374: $30 $b0

	cp   a                                           ; $4376: $bf
	ccf                                              ; $4377: $3f
	add  c                                           ; $4378: $81
	nop                                              ; $4379: $00
	ld   b, $f8                                      ; $437a: $06 $f8
	nop                                              ; $437c: $00
	cp   $b8                                         ; $437d: $fe $b8
	cp   a                                           ; $437f: $bf
	and  $e7                                         ; $4380: $e6 $e7
	add  b                                           ; $4382: $80
	dec  de                                          ; $4383: $1b
	add  b                                           ; $4384: $80
	jr   jr_0a3_438f                                 ; $4385: $18 $08

	nop                                              ; $4387: $00
	ldh  [$9f], a                                    ; $4388: $e0 $9f
	ld   sp, hl                                      ; $438a: $f9
	cp   c                                           ; $438b: $b9
	ld   a, l                                        ; $438c: $7d
	ld   b, [hl]                                     ; $438d: $46
	inc  b                                           ; $438e: $04

jr_0a3_438f:
	inc  bc                                          ; $438f: $03
	add  b                                           ; $4390: $80
	ld   bc, $f20e                                   ; $4391: $01 $0e $f2
	ld   b, c                                        ; $4394: $41
	cp   h                                           ; $4395: $bc
	or   b                                           ; $4396: $b0
	db   $fc                                         ; $4397: $fc
	ld   a, h                                        ; $4398: $7c
	ld   a, a                                        ; $4399: $7f
	dec  hl                                          ; $439a: $2b
	ld   c, a                                        ; $439b: $4f
	add  a                                           ; $439c: $87
	adc  a                                           ; $439d: $8f
	xor  a                                           ; $439e: $af
	adc  [hl]                                        ; $439f: $8e
	ld   c, a                                        ; $43a0: $4f
	ld   b, c                                        ; $43a1: $41
	add  b                                           ; $43a2: $80
	ld   e, a                                        ; $43a3: $5f
	add  b                                           ; $43a4: $80
	ld   b, b                                        ; $43a5: $40
	add  c                                           ; $43a6: $81
	ld   l, a                                        ; $43a7: $6f
	dec  bc                                          ; $43a8: $0b
	ld   h, b                                        ; $43a9: $60
	ld   [hl], a                                     ; $43aa: $77
	ld   a, e                                        ; $43ab: $7b
	ld   a, a                                        ; $43ac: $7f
	ld   a, h                                        ; $43ad: $7c
	db   $ec                                         ; $43ae: $ec
	db   $fc                                         ; $43af: $fc
	pop  de                                          ; $43b0: $d1
	db   $fd                                         ; $43b1: $fd
	cp   l                                           ; $43b2: $bd
	di                                               ; $43b3: $f3
	ld   [hl], e                                     ; $43b4: $73
	add  b                                           ; $43b5: $80
	ld   l, e                                        ; $43b6: $6b
	inc  b                                           ; $43b7: $04
	inc  bc                                          ; $43b8: $03
	add  d                                           ; $43b9: $82
	cp   e                                           ; $43ba: $bb
	ld   b, h                                        ; $43bb: $44
	ld   a, a                                        ; $43bc: $7f
	add  d                                           ; $43bd: $82
	rst  $38                                         ; $43be: $ff
	add  b                                           ; $43bf: $80
	ei                                               ; $43c0: $fb
	add  b                                           ; $43c1: $80
	rst  $38                                         ; $43c2: $ff
	inc  b                                           ; $43c3: $04
	add  sp, -$01                                    ; $43c4: $e8 $ff
	rst  $20                                         ; $43c6: $e7
	ld   sp, hl                                      ; $43c7: $f9
	jp   hl                                          ; $43c8: $e9


	add  b                                           ; $43c9: $80
	rst  $30                                         ; $43ca: $f7
	dec  b                                           ; $43cb: $05
	ld   hl, sp-$20                                  ; $43cc: $f8 $e0
	rst  $38                                         ; $43ce: $ff
	ret  z                                           ; $43cf: $c8

	rst  $38                                         ; $43d0: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43d1: $cf
	add  e                                           ; $43d2: $83
	rst  $38                                         ; $43d3: $ff
	inc  h                                           ; $43d4: $24
	ld   a, a                                        ; $43d5: $7f
	cp   a                                           ; $43d6: $bf
	rst  $30                                         ; $43d7: $f7
	rst  $38                                         ; $43d8: $ff
	push de                                          ; $43d9: $d5
	dec  a                                           ; $43da: $3d
	inc  hl                                          ; $43db: $23
	inc  bc                                          ; $43dc: $03
	ld   bc, $0081                                   ; $43dd: $01 $81 $00
	add  b                                           ; $43e0: $80
	or   b                                           ; $43e1: $b0
	db   $fc                                         ; $43e2: $fc
	ldh  a, [$fe]                                    ; $43e3: $f0 $fe
	inc  a                                           ; $43e5: $3c
	rst  $38                                         ; $43e6: $ff
	ld   a, [hl]                                     ; $43e7: $7e
	rst  $38                                         ; $43e8: $ff
	rrca                                             ; $43e9: $0f
	adc  a                                           ; $43ea: $8f
	rrca                                             ; $43eb: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43ec: $cf
	sub  a                                           ; $43ed: $97
	rst  $10                                         ; $43ee: $d7
	ret  nc                                          ; $43ef: $d0

	rst  $10                                         ; $43f0: $d7
	rst  JumpTable                                         ; $43f1: $df
	rlc  a                                           ; $43f2: $cb $07
	dec  b                                           ; $43f4: $05
	call $91d1                                       ; $43f5: $cd $d1 $91
	cp   d                                           ; $43f8: $ba
	ret  c                                           ; $43f9: $d8

	add  c                                           ; $43fa: $81
	cp   $02                                         ; $43fb: $fe $02
	ldh  [rIE], a                                    ; $43fd: $e0 $ff
	rra                                              ; $43ff: $1f
	add  [hl]                                        ; $4400: $86
	rst  $38                                         ; $4401: $ff
	inc  bc                                          ; $4402: $03
	ld   a, [hl]                                     ; $4403: $7e
	cp   $b7                                         ; $4404: $fe $b7
	scf                                              ; $4406: $37
	add  b                                           ; $4407: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4408: $cf
	inc  b                                           ; $4409: $04
	rrca                                             ; $440a: $0f
	rst  $38                                         ; $440b: $ff
	db   $f4                                         ; $440c: $f4
	scf                                              ; $440d: $37
	inc  sp                                          ; $440e: $33
	add  b                                           ; $440f: $80
	rst  ToBoot                                         ; $4410: $c7
	add  b                                           ; $4411: $80
	rst  JumpTable                                         ; $4412: $df
	add  b                                           ; $4413: $80
	ccf                                              ; $4414: $3f
	dec  bc                                          ; $4415: $0b
	ldh  [rIE], a                                    ; $4416: $e0 $ff
	ld   a, a                                        ; $4418: $7f
	rst  $30                                         ; $4419: $f7
	rst  $20                                         ; $441a: $e7
	rst  $30                                         ; $441b: $f7
	xor  a                                           ; $441c: $af
	ei                                               ; $441d: $fb
	call z, $fc3f                                    ; $441e: $cc $3f $fc
	call c, $ab80                                    ; $4421: $dc $80 $ab
	add  b                                           ; $4424: $80
	ld   h, a                                        ; $4425: $67
	add  hl, bc                                      ; $4426: $09
	scf                                              ; $4427: $37
	rst  $38                                         ; $4428: $ff
	di                                               ; $4429: $f3
	rst  JumpTable                                         ; $442a: $df
	sbc  [hl]                                        ; $442b: $9e
	cp   [hl]                                        ; $442c: $be
	ld   a, $fe                                      ; $442d: $3e $fe
	add  hl, de                                      ; $442f: $19
	rra                                              ; $4430: $1f
	add  b                                           ; $4431: $80
	rst  $28                                         ; $4432: $ef
	ld   bc, $ef6d                                   ; $4433: $01 $6d $ef
	add  b                                           ; $4436: $80
	rst  $30                                         ; $4437: $f7
	dec  b                                           ; $4438: $05
	sbc  a                                           ; $4439: $9f
	rst  $38                                         ; $443a: $ff
	ei                                               ; $443b: $fb
	dec  sp                                          ; $443c: $3b
	cp   a                                           ; $443d: $bf
	sbc  a                                           ; $443e: $9f
	add  b                                           ; $443f: $80
	ld   e, a                                        ; $4440: $5f
	add  b                                           ; $4441: $80
	ccf                                              ; $4442: $3f
	inc  bc                                          ; $4443: $03
	ld   a, [$bafe]                                  ; $4444: $fa $fe $ba
	cp   [hl]                                        ; $4447: $be
	add  b                                           ; $4448: $80
	db   $fc                                         ; $4449: $fc
	ld   d, $0c                                      ; $444a: $16 $0c
	ld   c, h                                        ; $444c: $4c
	ld   b, c                                        ; $444d: $41
	ld   [hl], c                                     ; $444e: $71
	di                                               ; $444f: $f3
	cp   a                                           ; $4450: $bf
	cp   [hl]                                        ; $4451: $be
	ld   c, $bc                                      ; $4452: $0e $bc
	ld   sp, $8710                                   ; $4454: $31 $10 $87
	cp   l                                           ; $4457: $bd
	xor  e                                           ; $4458: $ab
	or   l                                           ; $4459: $b5
	and  l                                           ; $445a: $a5
	ld   d, c                                        ; $445b: $51
	pop  bc                                          ; $445c: $c1
	add  b                                           ; $445d: $80
	xor  [hl]                                        ; $445e: $ae
	jr   nz, jr_0a3_44d0                             ; $445f: $20 $6f

	ld   l, [hl]                                     ; $4461: $6e
	add  b                                           ; $4462: $80
	rst  $28                                         ; $4463: $ef
	inc  bc                                          ; $4464: $03
	ld   l, a                                        ; $4465: $6f
	rst  $28                                         ; $4466: $ef
	xor  a                                           ; $4467: $af
	and  a                                           ; $4468: $a7
	add  c                                           ; $4469: $81
	or   a                                           ; $446a: $b7
	ld   bc, $f4c4                                   ; $446b: $01 $c4 $f4
	add  b                                           ; $446e: $80
	dec  [hl]                                        ; $446f: $35
	add  hl, bc                                      ; $4470: $09
	nop                                              ; $4471: $00
	ret  nz                                          ; $4472: $c0

	nop                                              ; $4473: $00
	push af                                          ; $4474: $f5
	push bc                                          ; $4475: $c5
	push af                                          ; $4476: $f5
	push hl                                          ; $4477: $e5
	add  sp, -$11                                    ; $4478: $e8 $ef
	rst  $20                                         ; $447a: $e7
	add  b                                           ; $447b: $80
	call z, $7c10                                    ; $447c: $cc $10 $7c
	ld   a, l                                        ; $447f: $7d

Call_0a3_4480:
	sbc  c                                           ; $4480: $99
	sbc  h                                           ; $4481: $9c
	db   $e4                                         ; $4482: $e4
	pop  hl                                          ; $4483: $e1
	ld   h, l                                        ; $4484: $65
	ld   l, l                                        ; $4485: $6d
	dec  h                                           ; $4486: $25
	xor  b                                           ; $4487: $a8
	add  l                                           ; $4488: $85
	ret  nz                                          ; $4489: $c0

	pop  bc                                          ; $448a: $c1
	ld   l, h                                        ; $448b: $6c
	db   $ec                                         ; $448c: $ec
	sbc  l                                           ; $448d: $9d
	ldh  [c], a                                      ; $448e: $e2
	rst  $38                                         ; $448f: $ff
	nop                                              ; $4490: $00
	rst  $38                                         ; $4491: $ff
	nop                                              ; $4492: $00
	rst  $38                                         ; $4493: $ff
	nop                                              ; $4494: $00
	rst  $38                                         ; $4495: $ff
	nop                                              ; $4496: $00
	rst  $38                                         ; $4497: $ff
	nop                                              ; $4498: $00
	rst  $38                                         ; $4499: $ff
	nop                                              ; $449a: $00
	rst  $38                                         ; $449b: $ff
	nop                                              ; $449c: $00
	rst  $38                                         ; $449d: $ff

jr_0a3_449e:
	nop                                              ; $449e: $00
	rst  $38                                         ; $449f: $ff
	nop                                              ; $44a0: $00
	rst  $38                                         ; $44a1: $ff
	nop                                              ; $44a2: $00
	rst  $38                                         ; $44a3: $ff
	nop                                              ; $44a4: $00
	rst  $38                                         ; $44a5: $ff
	nop                                              ; $44a6: $00
	rst  $38                                         ; $44a7: $ff
	nop                                              ; $44a8: $00
	sub  b                                           ; $44a9: $90
	nop                                              ; $44aa: $00
	ld   l, a                                        ; $44ab: $6f
	nop                                              ; $44ac: $00
	add  d                                           ; $44ad: $82
	nop                                              ; $44ae: $00
	ld   b, $07                                      ; $44af: $06 $07
	nop                                              ; $44b1: $00
	jr   jr_0a3_44b4                                 ; $44b2: $18 $00

jr_0a3_44b4:
	jr   nz, jr_0a3_44b6                             ; $44b4: $20 $00

jr_0a3_44b6:
	ld   b, b                                        ; $44b6: $40
	add  b                                           ; $44b7: $80
	db   $10                                         ; $44b8: $10
	ld   bc, $8c0c                                   ; $44b9: $01 $0c $8c
	add  c                                           ; $44bc: $81
	nop                                              ; $44bd: $00
	add  d                                           ; $44be: $82
	ld   bc, $8101                                   ; $44bf: $01 $01 $81
	ld   bc, $0580                                   ; $44c2: $01 $80 $05
	ld   b, $47                                      ; $44c5: $06 $47
	rlca                                             ; $44c7: $07
	inc  hl                                          ; $44c8: $23
	inc  bc                                          ; $44c9: $03
	inc  de                                          ; $44ca: $13
	inc  bc                                          ; $44cb: $03
	rrca                                             ; $44cc: $0f
	add  c                                           ; $44cd: $81
	nop                                              ; $44ce: $00
	dec  bc                                          ; $44cf: $0b

jr_0a3_44d0:
	db   $fc                                         ; $44d0: $fc
	nop                                              ; $44d1: $00
	inc  b                                           ; $44d2: $04
	nop                                              ; $44d3: $00
	inc  b                                           ; $44d4: $04
	nop                                              ; $44d5: $00
	ld   [bc], a                                     ; $44d6: $02
	db   $10                                         ; $44d7: $10
	ld   [de], a                                     ; $44d8: $12
	ldh  [$e2], a                                    ; $44d9: $e0 $e2
	nop                                              ; $44db: $00
	add  d                                           ; $44dc: $82
	ld   b, b                                        ; $44dd: $40
	add  c                                           ; $44de: $81
	ld   [$4801], sp                                 ; $44df: $08 $01 $48
	jp   z, $d880                                    ; $44e2: $ca $80 $d8

	dec  b                                           ; $44e5: $05
	ret  z                                           ; $44e6: $c8

	or   h                                           ; $44e7: $b4
	ldh  a, [$e8]                                    ; $44e8: $f0 $e8
	ldh  [$f7], a                                    ; $44ea: $e0 $f7
	add  c                                           ; $44ec: $81
	nop                                              ; $44ed: $00
	nop                                              ; $44ee: $00
	ld   [$0081], sp                                 ; $44ef: $08 $81 $00
	add  b                                           ; $44f2: $80
	rlca                                             ; $44f3: $07
	nop                                              ; $44f4: $00
	rra                                              ; $44f5: $1f
	add  c                                           ; $44f6: $81
	rrca                                             ; $44f7: $0f
	inc  b                                           ; $44f8: $04
	inc  hl                                          ; $44f9: $23
	inc  bc                                          ; $44fa: $03
	ld   b, b                                        ; $44fb: $40
	jr   nz, jr_0a3_449e                             ; $44fc: $20 $a0

	add  b                                           ; $44fe: $80
	ld   [hl], b                                     ; $44ff: $70
	ld   bc, $ff00                                   ; $4500: $01 $00 $ff
	add  a                                           ; $4503: $87
	nop                                              ; $4504: $00
	inc  b                                           ; $4505: $04
	db   $fc                                         ; $4506: $fc
	nop                                              ; $4507: $00
	ld   [$6068], sp                                 ; $4508: $08 $68 $60
	add  b                                           ; $450b: $80
	ld   [hl], b                                     ; $450c: $70
	add  b                                           ; $450d: $80

jr_0a3_450e:
	ld   a, b                                        ; $450e: $78
	inc  bc                                          ; $450f: $03
	jr   c, jr_0a3_450e                              ; $4510: $38 $fc

	ret  nz                                          ; $4512: $c0

	ret  c                                           ; $4513: $d8

	add  c                                           ; $4514: $81
	ret  nz                                          ; $4515: $c0

	nop                                              ; $4516: $00
	db   $10                                         ; $4517: $10
	add  c                                           ; $4518: $81
	nop                                              ; $4519: $00
	ld   [bc], a                                     ; $451a: $02
	stop                                             ; $451b: $10 $00
	ldh  [$91], a                                    ; $451d: $e0 $91
	nop                                              ; $451f: $00
	nop                                              ; $4520: $00
	ld   bc, $0081                                   ; $4521: $01 $81 $00
	inc  b                                           ; $4524: $04
	ld   [bc], a                                     ; $4525: $02
	nop                                              ; $4526: $00
	inc  b                                           ; $4527: $04
	ld   [bc], a                                     ; $4528: $02
	ld   a, [bc]                                     ; $4529: $0a
	add  b                                           ; $452a: $80

jr_0a3_452b:
	rlca                                             ; $452b: $07
	ld   bc, $0f00                                   ; $452c: $01 $00 $0f
	add  a                                           ; $452f: $87
	nop                                              ; $4530: $00
	nop                                              ; $4531: $00
	ld   a, a                                        ; $4532: $7f
	add  b                                           ; $4533: $80
	nop                                              ; $4534: $00
	ld   bc, $8303                                   ; $4535: $01 $03 $83
	add  c                                           ; $4538: $81
	inc  bc                                          ; $4539: $03
	ld   bc, $7073                                   ; $453a: $01 $73 $70
	add  b                                           ; $453d: $80
	db   $fc                                         ; $453e: $fc
	ld   bc, $fcfd                                   ; $453f: $01 $fd $fc
	add  b                                           ; $4542: $80
	inc  a                                           ; $4543: $3c
	nop                                              ; $4544: $00
	ld   bc, $0081                                   ; $4545: $01 $81 $00
	ld   [bc], a                                     ; $4548: $02
	ld   bc, $fe00                                   ; $4549: $01 $00 $fe
	add  a                                           ; $454c: $87
	nop                                              ; $454d: $00
	inc  c                                           ; $454e: $0c
	add  b                                           ; $454f: $80
	nop                                              ; $4550: $00
	inc  c                                           ; $4551: $0c
	nop                                              ; $4552: $00
	ld   h, d                                        ; $4553: $62
	add  h                                           ; $4554: $84
	sub  h                                           ; $4555: $94
	ldh  [$ea], a                                    ; $4556: $e0 $ea
	add  sp, -$20                                    ; $4558: $e8 $e0
	nop                                              ; $455a: $00
	db   $fc                                         ; $455b: $fc
	sub  a                                           ; $455c: $97
	nop                                              ; $455d: $00
	ld   b, $07                                      ; $455e: $06 $07
	nop                                              ; $4560: $00
	jr   jr_0a3_4563                                 ; $4561: $18 $00

jr_0a3_4563:
	jr   nz, jr_0a3_4565                             ; $4563: $20 $00

jr_0a3_4565:
	ld   b, b                                        ; $4565: $40
	add  b                                           ; $4566: $80
	db   $10                                         ; $4567: $10
	ld   bc, $8c0c                                   ; $4568: $01 $0c $8c
	add  c                                           ; $456b: $81
	nop                                              ; $456c: $00
	add  d                                           ; $456d: $82
	ld   bc, $8101                                   ; $456e: $01 $01 $81
	ld   bc, $0580                                   ; $4571: $01 $80 $05
	inc  b                                           ; $4574: $04
	ld   b, a                                        ; $4575: $47
	rlca                                             ; $4576: $07
	inc  hl                                          ; $4577: $23
	inc  bc                                          ; $4578: $03
	rra                                              ; $4579: $1f
	add  e                                           ; $457a: $83
	nop                                              ; $457b: $00
	dec  bc                                          ; $457c: $0b
	db   $fc                                         ; $457d: $fc
	nop                                              ; $457e: $00
	inc  b                                           ; $457f: $04
	nop                                              ; $4580: $00
	inc  b                                           ; $4581: $04
	nop                                              ; $4582: $00
	ld   [bc], a                                     ; $4583: $02

jr_0a3_4584:
	db   $10                                         ; $4584: $10
	ld   [de], a                                     ; $4585: $12
	ldh  [$e2], a                                    ; $4586: $e0 $e2
	nop                                              ; $4588: $00
	add  d                                           ; $4589: $82
	ld   b, b                                        ; $458a: $40
	add  c                                           ; $458b: $81
	ld   [$4801], sp                                 ; $458c: $08 $01 $48
	jp   z, $d880                                    ; $458f: $ca $80 $d8

	inc  bc                                          ; $4592: $03
	ret  z                                           ; $4593: $c8

	or   h                                           ; $4594: $b4
	ldh  a, [$f8]                                    ; $4595: $f0 $f8
	adc  e                                           ; $4597: $8b
	nop                                              ; $4598: $00
	inc  b                                           ; $4599: $04
	inc  bc                                          ; $459a: $03
	nop                                              ; $459b: $00
	inc  b                                           ; $459c: $04
	ld   [bc], a                                     ; $459d: $02
	ld   a, [bc]                                     ; $459e: $0a
	add  b                                           ; $459f: $80
	rlca                                             ; $45a0: $07
	ld   bc, $0f00                                   ; $45a1: $01 $00 $0f
	add  a                                           ; $45a4: $87
	nop                                              ; $45a5: $00
	ld   [bc], a                                     ; $45a6: $02
	jr   jr_0a3_45b0                                 ; $45a7: $18 $07

	jr   nz, jr_0a3_452b                             ; $45a9: $20 $80

	nop                                              ; $45ab: $00
	ld   [bc], a                                     ; $45ac: $02
	inc  bc                                          ; $45ad: $03
	ld   b, e                                        ; $45ae: $43
	inc  bc                                          ; $45af: $03

jr_0a3_45b0:
	add  b                                           ; $45b0: $80
	inc  sp                                          ; $45b1: $33
	inc  bc                                          ; $45b2: $03
	rst  $38                                         ; $45b3: $ff
	ld   a, l                                        ; $45b4: $7d
	ld   a, a                                        ; $45b5: $7f
	ld   a, [hl]                                     ; $45b6: $7e
	add  b                                           ; $45b7: $80
	ld   e, $82                                      ; $45b8: $1e $82
	nop                                              ; $45ba: $00
	ld   [bc], a                                     ; $45bb: $02
	ld   bc, $fe00                                   ; $45bc: $01 $00 $fe
	add  a                                           ; $45bf: $87
	nop                                              ; $45c0: $00
	inc  d                                           ; $45c1: $14
	jr   nz, jr_0a3_4584                             ; $45c2: $20 $c0

	jr   nz, jr_0a3_45c6                             ; $45c4: $20 $00

jr_0a3_45c6:
	ld   b, b                                        ; $45c6: $40
	nop                                              ; $45c7: $00
	ld   b, b                                        ; $45c8: $40
	add  b                                           ; $45c9: $80
	and  b                                           ; $45ca: $a0
	ret  nz                                          ; $45cb: $c0

	ret  nc                                          ; $45cc: $d0

	ldh  [$e8], a                                    ; $45cd: $e0 $e8
	ld   h, b                                        ; $45cf: $60
	ld   [hl], h                                     ; $45d0: $74
	db   $10                                         ; $45d1: $10
	jp   nz, $3404                                   ; $45d2: $c2 $04 $34

	nop                                              ; $45d5: $00
	ld   c, $89                                      ; $45d6: $0e $89
	nop                                              ; $45d8: $00
	ld   [bc], a                                     ; $45d9: $02
	jr   nc, jr_0a3_45eb                             ; $45da: $30 $0f

	ld   b, b                                        ; $45dc: $40
	add  b                                           ; $45dd: $80
	nop                                              ; $45de: $00
	ld   [bc], a                                     ; $45df: $02
	inc  bc                                          ; $45e0: $03
	add  e                                           ; $45e1: $83
	inc  bc                                          ; $45e2: $03
	add  b                                           ; $45e3: $80
	ld   h, e                                        ; $45e4: $63
	ld   b, $fb                                      ; $45e5: $06 $fb
	ld   sp, hl                                      ; $45e7: $f9
	db   $fd                                         ; $45e8: $fd
	db   $fc                                         ; $45e9: $fc
	dec  a                                           ; $45ea: $3d

jr_0a3_45eb:
	inc  a                                           ; $45eb: $3c
	ld   bc, $0081                                   ; $45ec: $01 $81 $00
	ld   [bc], a                                     ; $45ef: $02
	ld   bc, $fe00                                   ; $45f0: $01 $00 $fe
	add  a                                           ; $45f3: $87
	nop                                              ; $45f4: $00
	ld   c, $40                                      ; $45f5: $0e $40
	add  b                                           ; $45f7: $80
	ld   e, b                                        ; $45f8: $58
	nop                                              ; $45f9: $00
	jr   nc, @+$12                                   ; $45fa: $30 $10

	ld   b, b                                        ; $45fc: $40
	add  b                                           ; $45fd: $80
	adc  b                                           ; $45fe: $88
	ldh  [$f0], a                                    ; $45ff: $e0 $f0
	ret  nz                                          ; $4601: $c0

	ldh  [rP1], a                                    ; $4602: $e0 $00
	ret  nz                                          ; $4604: $c0

	and  l                                           ; $4605: $a5
	nop                                              ; $4606: $00
	ld   [$003f], sp                                 ; $4607: $08 $3f $00
	ld   b, [hl]                                     ; $460a: $46
	ld   [hl], $b4                                   ; $460b: $36 $b4
	ld   [hl], l                                     ; $460d: $75
	ld   [hl], c                                     ; $460e: $71
	nop                                              ; $460f: $00

Jump_0a3_4610:
	rst  $38                                         ; $4610: $ff
	sub  l                                           ; $4611: $95
	nop                                              ; $4612: $00
	ld   [$00fc], sp                                 ; $4613: $08 $fc $00
	ld   [hl+], a                                    ; $4616: $22
	xor  h                                           ; $4617: $ac
	cp   l                                           ; $4618: $bd
	or   [hl]                                        ; $4619: $b6
	add  [hl]                                        ; $461a: $86
	nop                                              ; $461b: $00
	rst  $38                                         ; $461c: $ff
	rst  $38                                         ; $461d: $ff
	nop                                              ; $461e: $00
	rst  $38                                         ; $461f: $ff

Jump_0a3_4620:
	nop                                              ; $4620: $00
	rst  $38                                         ; $4621: $ff
	nop                                              ; $4622: $00
	rst  $38                                         ; $4623: $ff
	nop                                              ; $4624: $00
	rst  $38                                         ; $4625: $ff
	nop                                              ; $4626: $00
	rst  $38                                         ; $4627: $ff
	nop                                              ; $4628: $00

Jump_0a3_4629:
	rst  $38                                         ; $4629: $ff
	nop                                              ; $462a: $00
	rst  $38                                         ; $462b: $ff
	nop                                              ; $462c: $00
	rst  $38                                         ; $462d: $ff
	nop                                              ; $462e: $00
	rst  $38                                         ; $462f: $ff
	nop                                              ; $4630: $00
	rst  $38                                         ; $4631: $ff
	nop                                              ; $4632: $00
	db   $f4                                         ; $4633: $f4
	nop                                              ; $4634: $00
	ld   d, e                                        ; $4635: $53
	nop                                              ; $4636: $00
	add  [hl]                                        ; $4637: $86
	ldh  a, [$0c]                                    ; $4638: $f0 $0c
	di                                               ; $463a: $f3
	ldh  a, [rIE]                                    ; $463b: $f0 $ff
	db   $e3                                         ; $463d: $e3
	rst  $38                                         ; $463e: $ff
	sbc  b                                           ; $463f: $98
	ei                                               ; $4640: $fb
	ld   h, b                                        ; $4641: $60
	ld   d, e                                        ; $4642: $53
	ld   [hl], b                                     ; $4643: $70
	or   b                                           ; $4644: $b0
	ldh  a, [rSVBK]                                  ; $4645: $f0 $70
	adc  c                                           ; $4647: $89
	ldh  a, [rDIV]                                   ; $4648: $f0 $04
	jr   c, jr_0a3_464c                              ; $464a: $38 $00

jr_0a3_464c:
	ccf                                              ; $464c: $3f
	jr   c, jr_0a3_468e                              ; $464d: $38 $3f

	add  b                                           ; $464f: $80
	rrca                                             ; $4650: $0f
	add  b                                           ; $4651: $80
	rlca                                             ; $4652: $07
	rlca                                             ; $4653: $07
	inc  bc                                          ; $4654: $03
	jp   $3800                                       ; $4655: $c3 $00 $38


	ret  nz                                          ; $4658: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4659: $cf
	ldh  a, [$f6]                                    ; $465a: $f0 $f6
	add  c                                           ; $465c: $81
	ldh  a, [rP1]                                    ; $465d: $f0 $00
	di                                               ; $465f: $f3
	add  l                                           ; $4660: $85
	pop  af                                          ; $4661: $f1
	nop                                              ; $4662: $00
	rst  $30                                         ; $4663: $f7
	add  c                                           ; $4664: $81
	di                                               ; $4665: $f3
	nop                                              ; $4666: $00
	rlca                                             ; $4667: $07
	sub  l                                           ; $4668: $95
	nop                                              ; $4669: $00
	ld   bc, $00fe                                   ; $466a: $01 $fe $00
	add  e                                           ; $466d: $83
	cp   $07                                         ; $466e: $fe $07
	ld   c, $ce                                      ; $4670: $0e $ce
	nop                                              ; $4672: $00
	ldh  a, [rP1]                                    ; $4673: $f0 $00
	inc  a                                           ; $4675: $3c
	nop                                              ; $4676: $00
	inc  c                                           ; $4677: $0c
	adc  l                                           ; $4678: $8d
	nop                                              ; $4679: $00
	ld   [$0001], sp                                 ; $467a: $08 $01 $00
	inc  bc                                          ; $467d: $03
	ld   bc, $0307                                   ; $467e: $01 $07 $03
	rrca                                             ; $4681: $0f
	rlca                                             ; $4682: $07
	rra                                              ; $4683: $1f
	add  c                                           ; $4684: $81
	rrca                                             ; $4685: $0f
	inc  bc                                          ; $4686: $03
	ccf                                              ; $4687: $3f
	rra                                              ; $4688: $1f
	rst  JumpTable                                         ; $4689: $df
	rra                                              ; $468a: $1f
	add  b                                           ; $468b: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $468c: $cf
	add  b                                           ; $468d: $80

jr_0a3_468e:
	ldh  a, [c]                                      ; $468e: $f2
	add  b                                           ; $468f: $80
	db   $fc                                         ; $4690: $fc
	add  hl, bc                                      ; $4691: $09
	cp   $7e                                         ; $4692: $fe $7e
	ld   a, a                                        ; $4694: $7f
	ccf                                              ; $4695: $3f
	rst  $38                                         ; $4696: $ff
	rra                                              ; $4697: $1f
	cp   a                                           ; $4698: $bf
	adc  a                                           ; $4699: $8f
	rst  $38                                         ; $469a: $ff
	rst  $28                                         ; $469b: $ef
	add  b                                           ; $469c: $80
	rst  $30                                         ; $469d: $f7
	add  b                                           ; $469e: $80
	di                                               ; $469f: $f3
	ld   b, $f5                                      ; $46a0: $06 $f5
	pop  af                                          ; $46a2: $f1
	ldh  a, [c]                                      ; $46a3: $f2
	ldh  a, [$f1]                                    ; $46a4: $f0 $f1
	ldh  a, [$f8]                                    ; $46a6: $f0 $f8
	adc  e                                           ; $46a8: $8b
	nop                                              ; $46a9: $00

jr_0a3_46aa:
	rlca                                             ; $46aa: $07
	stop                                             ; $46ab: $10 $00
	jr   nc, jr_0a3_46bf                             ; $46ad: $30 $10

	ld   [hl], b                                     ; $46af: $70
	jr   c, jr_0a3_46aa                              ; $46b0: $38 $f8

	ld   a, b                                        ; $46b2: $78
	add  b                                           ; $46b3: $80
	ld   hl, sp-$80                                  ; $46b4: $f8 $80
	ldh  a, [rP1]                                    ; $46b6: $f0 $00
	add  sp, -$7f                                    ; $46b8: $e8 $81
	ldh  [rSC], a                                    ; $46ba: $e0 $02
	ret  nc                                          ; $46bc: $d0

	ret  nz                                          ; $46bd: $c0

	and  b                                           ; $46be: $a0

jr_0a3_46bf:
	add  c                                           ; $46bf: $81
	add  b                                           ; $46c0: $80
	nop                                              ; $46c1: $00
	ld   b, b                                        ; $46c2: $40
	add  c                                           ; $46c3: $81
	nop                                              ; $46c4: $00

Call_0a3_46c5:
	nop                                              ; $46c5: $00
	add  b                                           ; $46c6: $80
	add  e                                           ; $46c7: $83
	nop                                              ; $46c8: $00
	rrca                                             ; $46c9: $0f
	add  b                                           ; $46ca: $80
	nop                                              ; $46cb: $00
	ret  nz                                          ; $46cc: $c0

	add  b                                           ; $46cd: $80
	ldh  [$c0], a                                    ; $46ce: $e0 $c0
	ldh  a, [$e0]                                    ; $46d0: $f0 $e0
	ld   hl, sp-$10                                  ; $46d2: $f8 $f0
	db   $fc                                         ; $46d4: $fc
	ld   hl, sp-$02                                  ; $46d5: $f8 $fe
	db   $fc                                         ; $46d7: $fc
	rst  $38                                         ; $46d8: $ff
	cp   $80                                         ; $46d9: $fe $80
	ld   a, [hl]                                     ; $46db: $7e
	nop                                              ; $46dc: $00
	rst  $38                                         ; $46dd: $ff
	add  e                                           ; $46de: $83
	nop                                              ; $46df: $00
	ld   e, $03                                      ; $46e0: $1e $03
	nop                                              ; $46e2: $00
	ld   b, $03                                      ; $46e3: $06 $03
	inc  c                                           ; $46e5: $0c
	rlca                                             ; $46e6: $07
	dec  d                                           ; $46e7: $15
	rlca                                             ; $46e8: $07
	cpl                                              ; $46e9: $2f
	rrca                                             ; $46ea: $0f
	ld   e, $1f                                      ; $46eb: $1e $1f
	ld   e, l                                        ; $46ed: $5d
	ld   e, $3f                                      ; $46ee: $1e $3f
	inc  a                                           ; $46f0: $3c
	cp   d                                           ; $46f1: $ba
	jr   c, jr_0a3_4768                              ; $46f2: $38 $74

	ld   [hl], b                                     ; $46f4: $70
	ld   l, b                                        ; $46f5: $68
	ld   h, b                                        ; $46f6: $60
	ld   d, b                                        ; $46f7: $50
	ld   b, b                                        ; $46f8: $40
	jr   nz, jr_0a3_46fb                             ; $46f9: $20 $00

jr_0a3_46fb:
	rst  JumpTable                                         ; $46fb: $df
	ld   bc, $1f61                                   ; $46fc: $01 $61 $1f
	sbc  a                                           ; $46ff: $9f
	add  b                                           ; $4700: $80
	ld   a, a                                        ; $4701: $7f
	dec  bc                                          ; $4702: $0b
	rst  $38                                         ; $4703: $ff
	sbc  a                                           ; $4704: $9f
	rst  $38                                         ; $4705: $ff
	rra                                              ; $4706: $1f
	cp   $ff                                         ; $4707: $fe $ff
	ldh  a, [$7e]                                    ; $4709: $f0 $7e
	ret  nz                                          ; $470b: $c0

	ldh  a, [rP1]                                    ; $470c: $f0 $00
	ret  nz                                          ; $470e: $c0

	adc  e                                           ; $470f: $8b
	nop                                              ; $4710: $00
	adc  c                                           ; $4711: $89
	rst  $38                                         ; $4712: $ff
	ld   bc, $ff00                                   ; $4713: $01 $00 $ff
	sub  c                                           ; $4716: $91
	nop                                              ; $4717: $00
	ld   c, $f8                                      ; $4718: $0e $f8
	nop                                              ; $471a: $00
	inc  b                                           ; $471b: $04
	ldh  a, [rSC]                                    ; $471c: $f0 $02
	db   $fc                                         ; $471e: $fc
	jr   nc, @-$02                                   ; $471f: $30 $fc

	rst  JumpTable                                         ; $4721: $df
	cp   $de                                         ; $4722: $fe $de
	ld   a, $c0                                      ; $4724: $3e $c0
	nop                                              ; $4726: $00
	ccf                                              ; $4727: $3f
	adc  a                                           ; $4728: $8f
	nop                                              ; $4729: $00
	rlca                                             ; $472a: $07
	ld   bc, $0300                                   ; $472b: $01 $00 $03
	nop                                              ; $472e: $00
	rlca                                             ; $472f: $07
	nop                                              ; $4730: $00
	rrca                                             ; $4731: $0f
	dec  b                                           ; $4732: $05
	add  b                                           ; $4733: $80
	ld   [bc], a                                     ; $4734: $02
	inc  bc                                          ; $4735: $03
	inc  de                                          ; $4736: $13
	dec  bc                                          ; $4737: $0b
	jr   nz, jr_0a3_4744                             ; $4738: $20 $0a

	add  b                                           ; $473a: $80
	ld   [de], a                                     ; $473b: $12
	ld   [$2242], sp                                 ; $473c: $08 $42 $22
	nop                                              ; $473f: $00
	ld   [hl+], a                                    ; $4740: $22
	dec  hl                                          ; $4741: $2b
	ld   [hl+], a                                    ; $4742: $22
	add  b                                           ; $4743: $80

jr_0a3_4744:
	nop                                              ; $4744: $00
	ld   d, h                                        ; $4745: $54
	add  c                                           ; $4746: $81

jr_0a3_4747:
	ld   b, h                                        ; $4747: $44
	inc  d                                           ; $4748: $14
	ld   h, h                                        ; $4749: $64
	inc  h                                           ; $474a: $24
	and  h                                           ; $474b: $a4
	nop                                              ; $474c: $00
	pop  af                                          ; $474d: $f1
	ld   c, l                                        ; $474e: $4d
	ld   [hl], e                                     ; $474f: $73
	or   $4c                                         ; $4750: $f6 $4c
	cp   b                                           ; $4752: $b8
	ld   hl, $4732                                   ; $4753: $21 $32 $47
	ld   h, a                                        ; $4756: $67
	ld   bc, $420b                                   ; $4757: $01 $0b $42
	ld   c, e                                        ; $475a: $4b
	inc  b                                           ; $475b: $04
	ld   b, b                                        ; $475c: $40
	ld   e, e                                        ; $475d: $5b
	add  c                                           ; $475e: $81
	ld   b, b                                        ; $475f: $40
	nop                                              ; $4760: $00
	ldh  [$81], a                                    ; $4761: $e0 $81
	jr   nz, jr_0a3_4765                             ; $4763: $20 $00

jr_0a3_4765:
	ld   b, b                                        ; $4765: $40
	add  c                                           ; $4766: $81
	nop                                              ; $4767: $00

jr_0a3_4768:
	ld   d, $30                                      ; $4768: $16 $30
	jr   nz, jr_0a3_479c                             ; $476a: $20 $30

	db   $10                                         ; $476c: $10
	ldh  [rP1], a                                    ; $476d: $e0 $00
	adc  b                                           ; $476f: $88
	and  b                                           ; $4770: $a0
	inc  [hl]                                        ; $4771: $34
	db   $10                                         ; $4772: $10
	sub  d                                           ; $4773: $92
	ld   d, b                                        ; $4774: $50
	push hl                                          ; $4775: $e5
	ldh  [rLY], a                                    ; $4776: $e0 $44
	add  b                                           ; $4778: $80
	rrca                                             ; $4779: $0f
	ld   [$80a8], sp                                 ; $477a: $08 $a8 $80
	db   $10                                         ; $477d: $10

jr_0a3_477e:
	add  b                                           ; $477e: $80
	ld   b, b                                        ; $477f: $40
	adc  e                                           ; $4780: $8b
	nop                                              ; $4781: $00
	jr   jr_0a3_4747                                 ; $4782: $18 $c3

	nop                                              ; $4784: $00
	ld   b, c                                        ; $4785: $41
	nop                                              ; $4786: $00
	add  h                                           ; $4787: $84
	nop                                              ; $4788: $00

jr_0a3_4789:
	inc  e                                           ; $4789: $1c
	inc  b                                           ; $478a: $04
	db   $fc                                         ; $478b: $fc
	inc  e                                           ; $478c: $1c
	db   $fc                                         ; $478d: $fc
	inc  a                                           ; $478e: $3c
	jr   c, jr_0a3_4789                              ; $478f: $38 $f8

	rlca                                             ; $4791: $07
	nop                                              ; $4792: $00
	ld   hl, sp+$00                                  ; $4793: $f8 $00
	ld   bc, $8000                                   ; $4795: $01 $00 $80
	nop                                              ; $4798: $00
	ldh  [rP1], a                                    ; $4799: $e0 $00
	ld   h, b                                        ; $479b: $60

jr_0a3_479c:
	add  c                                           ; $479c: $81
	nop                                              ; $479d: $00
	inc  b                                           ; $479e: $04
	ldh  a, [rP1]                                    ; $479f: $f0 $00
	rst  $38                                         ; $47a1: $ff
	nop                                              ; $47a2: $00
	rrca                                             ; $47a3: $0f
	rst  $38                                         ; $47a4: $ff
	nop                                              ; $47a5: $00
	rst  $38                                         ; $47a6: $ff
	nop                                              ; $47a7: $00
	rst  $38                                         ; $47a8: $ff
	nop                                              ; $47a9: $00
	rst  $38                                         ; $47aa: $ff
	nop                                              ; $47ab: $00
	rst  $38                                         ; $47ac: $ff

jr_0a3_47ad:
	nop                                              ; $47ad: $00
	rst  $38                                         ; $47ae: $ff
	nop                                              ; $47af: $00
	rst  $38                                         ; $47b0: $ff
	nop                                              ; $47b1: $00
	rst  $38                                         ; $47b2: $ff
	nop                                              ; $47b3: $00
	rst  $38                                         ; $47b4: $ff
	nop                                              ; $47b5: $00
	rst  $38                                         ; $47b6: $ff
	nop                                              ; $47b7: $00
	rst  $38                                         ; $47b8: $ff
	nop                                              ; $47b9: $00
	rst  $38                                         ; $47ba: $ff
	nop                                              ; $47bb: $00
	sub  c                                           ; $47bc: $91
	nop                                              ; $47bd: $00
	ld   c, l                                        ; $47be: $4d
	nop                                              ; $47bf: $00
	ld   [bc], a                                     ; $47c0: $02
	ld   a, a                                        ; $47c1: $7f
	ccf                                              ; $47c2: $3f
	ld   h, b                                        ; $47c3: $60
	add  e                                           ; $47c4: $83
	nop                                              ; $47c5: $00
	ld   bc, $003f                                   ; $47c6: $01 $3f $00
	add  b                                           ; $47c9: $80
	rrca                                             ; $47ca: $0f
	add  b                                           ; $47cb: $80
	rlca                                             ; $47cc: $07
	nop                                              ; $47cd: $00
	rla                                              ; $47ce: $17
	add  c                                           ; $47cf: $81
	rlca                                             ; $47d0: $07
	nop                                              ; $47d1: $00
	dec  bc                                          ; $47d2: $0b
	add  c                                           ; $47d3: $81
	inc  bc                                          ; $47d4: $03
	nop                                              ; $47d5: $00
	dec  b                                           ; $47d6: $05
	add  e                                           ; $47d7: $83
	ld   bc, $0082                                   ; $47d8: $01 $82 $00
	ld   bc, $fffc                                   ; $47db: $01 $fc $ff
	sbc  h                                           ; $47de: $9c
	nop                                              ; $47df: $00
	ld   c, $fc                                      ; $47e0: $0e $fc
	db   $d3                                         ; $47e2: $d3
	inc  h                                           ; $47e3: $24
	nop                                              ; $47e4: $00
	ld   [hl], e                                     ; $47e5: $73
	nop                                              ; $47e6: $00
	cp   b                                           ; $47e7: $b8
	nop                                              ; $47e8: $00
	ldh  a, [rP1]                                    ; $47e9: $f0 $00
	inc  a                                           ; $47eb: $3c
	nop                                              ; $47ec: $00
	rrca                                             ; $47ed: $0f
	nop                                              ; $47ee: $00
	inc  bc                                          ; $47ef: $03
	adc  a                                           ; $47f0: $8f
	nop                                              ; $47f1: $00
	ld   [$30fe], sp                                 ; $47f2: $08 $fe $30
	dec  [hl]                                        ; $47f5: $35
	jr   z, jr_0a3_47ad                              ; $47f6: $28 $b5

	add  hl, bc                                      ; $47f8: $09
	ld   c, a                                        ; $47f9: $4f
	nop                                              ; $47fa: $00
	jr   nc, jr_0a3_477e                             ; $47fb: $30 $81

jr_0a3_47fd:
	nop                                              ; $47fd: $00
	add  hl, bc                                      ; $47fe: $09
	add  hl, de                                      ; $47ff: $19
	ld   [bc], a                                     ; $4800: $02

Call_0a3_4801:
jr_0a3_4801:
	pop  bc                                          ; $4801: $c1
	nop                                              ; $4802: $00
	ret  nz                                          ; $4803: $c0

	ld   [bc], a                                     ; $4804: $02
	inc  b                                           ; $4805: $04
	ld   bc, $000a                                   ; $4806: $01 $0a $00
	add  b                                           ; $4809: $80
	inc  bc                                          ; $480a: $03
	inc  b                                           ; $480b: $04
	dec  bc                                          ; $480c: $0b
	inc  bc                                          ; $480d: $03
	dec  b                                           ; $480e: $05
	ld   bc, $8119                                   ; $480f: $01 $19 $81
	ld   bc, $561d                                   ; $4812: $01 $1d $56
	nop                                              ; $4815: $00
	ld   b, [hl]                                     ; $4816: $46
	nop                                              ; $4817: $00
	inc  a                                           ; $4818: $3c
	dec  h                                           ; $4819: $25
	ld   de, $3125                                   ; $481a: $11 $25 $31
	add  h                                           ; $481d: $84
	jr   jr_0a3_4824                                 ; $481e: $18 $04

	call nz, $8084                                   ; $4820: $c4 $84 $80
	ld   b, b                                        ; $4823: $40

jr_0a3_4824:
	adc  b                                           ; $4824: $88
	ld   c, b                                        ; $4825: $48
	jp   c, Jump_0a3_4620                            ; $4826: $da $20 $46

	add  b                                           ; $4829: $80
	push bc                                          ; $482a: $c5
	ret  nz                                          ; $482b: $c0

	add  [hl]                                        ; $482c: $86
	add  b                                           ; $482d: $80
	inc  c                                           ; $482e: $0c
	jr   nz, @+$6b                                   ; $482f: $20 $69

	ld   d, b                                        ; $4831: $50
	add  b                                           ; $4832: $80
	sub  b                                           ; $4833: $90
	nop                                              ; $4834: $00
	db   $ed                                         ; $4835: $ed
	add  e                                           ; $4836: $83
	nop                                              ; $4837: $00
	ld   [$0001], sp                                 ; $4838: $08 $01 $00
	inc  bc                                          ; $483b: $03
	nop                                              ; $483c: $00
	dec  b                                           ; $483d: $05
	nop                                              ; $483e: $00
	add  d                                           ; $483f: $82
	ld   b, b                                        ; $4840: $40
	adc  h                                           ; $4841: $8c
	add  c                                           ; $4842: $81
	add  b                                           ; $4843: $80
	ld   [$4064], sp                                 ; $4844: $08 $64 $40
	sbc  d                                           ; $4847: $9a
	add  b                                           ; $4848: $80
	push bc                                          ; $4849: $c5
	ret  nz                                          ; $484a: $c0

	db   $e3                                         ; $484b: $e3
	ldh  [$e1], a                                    ; $484c: $e0 $e1
	add  b                                           ; $484e: $80
	ld   b, b                                        ; $484f: $40
	add  c                                           ; $4850: $81
	nop                                              ; $4851: $00
	ld   [bc], a                                     ; $4852: $02
	inc  [hl]                                        ; $4853: $34
	ld   bc, $8161                                   ; $4854: $01 $61 $81
	nop                                              ; $4857: $00
	inc  b                                           ; $4858: $04
	ret                                              ; $4859: $c9


	nop                                              ; $485a: $00
	ld   [bc], a                                     ; $485b: $02
	inc  b                                           ; $485c: $04
	inc  d                                           ; $485d: $14
	add  b                                           ; $485e: $80
	ld   c, $03                                      ; $485f: $0e $03
	rrca                                             ; $4861: $0f
	adc  a                                           ; $4862: $8f
	rrca                                             ; $4863: $0f
	cpl                                              ; $4864: $2f
	add  b                                           ; $4865: $80
	rrca                                             ; $4866: $0f
	add  b                                           ; $4867: $80
	ld   bc, $000d                                   ; $4868: $01 $0d $00
	rlca                                             ; $486b: $07
	nop                                              ; $486c: $00
	ld   hl, sp+$00                                  ; $486d: $f8 $00
	ret  nz                                          ; $486f: $c0

	nop                                              ; $4870: $00
	rrca                                             ; $4871: $0f
	nop                                              ; $4872: $00
	inc  a                                           ; $4873: $3c
	nop                                              ; $4874: $00
	ld   c, $90                                      ; $4875: $0e $90
	sub  a                                           ; $4877: $97
	add  c                                           ; $4878: $81
	db   $10                                         ; $4879: $10
	inc  b                                           ; $487a: $04
	jr   jr_0a3_47fd                                 ; $487b: $18 $80

	add  $a0                                         ; $487d: $c6 $a0
	jr   nz, jr_0a3_4801                             ; $487f: $20 $80

	ld   h, b                                        ; $4881: $60
	rra                                              ; $4882: $1f
	ldh  [$e3], a                                    ; $4883: $e0 $e3
	ldh  [$e3], a                                    ; $4885: $e0 $e3
	ldh  [$f0], a                                    ; $4887: $e0 $f0
	ret  nz                                          ; $4889: $c0

	ldh  [rP1], a                                    ; $488a: $e0 $00
	call z, $1000                                    ; $488c: $cc $00 $10
	nop                                              ; $488f: $00
	add  sp, $00                                     ; $4890: $e8 $00
	ret  nc                                          ; $4892: $d0

	nop                                              ; $4893: $00
	ldh  [rP1], a                                    ; $4894: $e0 $00
	ld   hl, $fe00                                   ; $4896: $21 $00 $fe
	ld   c, $f8                                      ; $4899: $0e $f8
	nop                                              ; $489b: $00
	sub  $00                                         ; $489c: $d6 $00
	ld   e, $00                                      ; $489e: $1e $00
	ld   h, e                                        ; $48a0: $63
	nop                                              ; $48a1: $00
	jp   $0081                                       ; $48a2: $c3 $81 $00


	nop                                              ; $48a5: $00
	add  c                                           ; $48a6: $81
	adc  l                                           ; $48a7: $8d
	nop                                              ; $48a8: $00
	rlca                                             ; $48a9: $07
	inc  d                                           ; $48aa: $14
	ldh  [$0b], a                                    ; $48ab: $e0 $0b
	ld   bc, $00fc                                   ; $48ad: $01 $fc $00
	ld   b, $00                                      ; $48b0: $06 $00
	add  b                                           ; $48b2: $80
	inc  bc                                          ; $48b3: $03
	ld   [bc], a                                     ; $48b4: $02
	inc  c                                           ; $48b5: $0c
	nop                                              ; $48b6: $00
	rlca                                             ; $48b7: $07
	add  c                                           ; $48b8: $81
	inc  bc                                          ; $48b9: $03
	dec  c                                           ; $48ba: $0d
	dec  de                                          ; $48bb: $1b
	inc  bc                                          ; $48bc: $03
	inc  de                                          ; $48bd: $13
	inc  bc                                          ; $48be: $03
	inc  c                                           ; $48bf: $0c
	nop                                              ; $48c0: $00
	jr   jr_0a3_48c3                                 ; $48c1: $18 $00

jr_0a3_48c3:
	ldh  a, [rP1]                                    ; $48c3: $f0 $00
	rra                                              ; $48c5: $1f
	ld   a, a                                        ; $48c6: $7f
	add  b                                           ; $48c7: $80
	nop                                              ; $48c8: $00
	add  b                                           ; $48c9: $80
	rst  $38                                         ; $48ca: $ff
	db   $10                                         ; $48cb: $10
	ld   d, b                                        ; $48cc: $50
	nop                                              ; $48cd: $00
	jr   jr_0a3_48d0                                 ; $48ce: $18 $00

jr_0a3_48d0:
	ld   l, b                                        ; $48d0: $68
	nop                                              ; $48d1: $00
	ld   a, $00                                      ; $48d2: $3e $00
	dec  e                                           ; $48d4: $1d
	nop                                              ; $48d5: $00
	inc  c                                           ; $48d6: $0c
	nop                                              ; $48d7: $00
	ccf                                              ; $48d8: $3f
	nop                                              ; $48d9: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48da: $cf
	ccf                                              ; $48db: $3f
	ret  nz                                          ; $48dc: $c0

	adc  l                                           ; $48dd: $8d
	nop                                              ; $48de: $00
	ld   a, [bc]                                     ; $48df: $0a
	rst  ToBoot                                         ; $48e0: $c7
	inc  bc                                          ; $48e1: $03
	call c, $3800                                    ; $48e2: $dc $00 $38
	nop                                              ; $48e5: $00
	ld   e, a                                        ; $48e6: $5f
	ccf                                              ; $48e7: $3f
	ret  nz                                          ; $48e8: $c0

	nop                                              ; $48e9: $00
	add  b                                           ; $48ea: $80
	add  a                                           ; $48eb: $87
	nop                                              ; $48ec: $00
	add  hl, de                                      ; $48ed: $19
	ret  nz                                          ; $48ee: $c0

	nop                                              ; $48ef: $00
	jr   nz, jr_0a3_48f2                             ; $48f0: $20 $00

jr_0a3_48f2:
	jr   jr_0a3_48f4                                 ; $48f2: $18 $00

jr_0a3_48f4:
	inc  b                                           ; $48f4: $04
	nop                                              ; $48f5: $00
	add  d                                           ; $48f6: $82
	nop                                              ; $48f7: $00
	ld   b, c                                        ; $48f8: $41
	nop                                              ; $48f9: $00
	or   $00                                         ; $48fa: $f6 $00
	ld   [bc], a                                     ; $48fc: $02
	nop                                              ; $48fd: $00
	rlca                                             ; $48fe: $07
	nop                                              ; $48ff: $00
	ld   bc, $9a00                                   ; $4900: $01 $00 $9a
	add  b                                           ; $4903: $80
	add  c                                           ; $4904: $81
	add  b                                           ; $4905: $80
	and  b                                           ; $4906: $a0
	add  b                                           ; $4907: $80
	add  d                                           ; $4908: $82
	ret  nz                                          ; $4909: $c0

	add  d                                           ; $490a: $82
	ldh  [rP1], a                                    ; $490b: $e0 $00

Call_0a3_490d:
	pop  hl                                          ; $490d: $e1
	add  c                                           ; $490e: $81
	ldh  [rAUD2LEN], a                               ; $490f: $e0 $16
	db   $fc                                         ; $4911: $fc
	ldh  a, [$f1]                                    ; $4912: $f0 $f1
	ldh  a, [$f4]                                    ; $4914: $f0 $f4
	ldh  a, [$e9]                                    ; $4916: $f0 $e9
	inc  bc                                          ; $4918: $03
	jr   nc, jr_0a3_491b                             ; $4919: $30 $00

jr_0a3_491b:
	db   $e3                                         ; $491b: $e3
	inc  bc                                          ; $491c: $03
	rlc  a                                           ; $491d: $cb $07
	rla                                              ; $491f: $17
	rlca                                             ; $4920: $07
	rst  $20                                         ; $4921: $e7
	rrca                                             ; $4922: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4923: $cf
	rra                                              ; $4924: $1f
	rst  JumpTable                                         ; $4925: $df
	ccf                                              ; $4926: $3f
	ret  nz                                          ; $4927: $c0

	adc  l                                           ; $4928: $8d
	nop                                              ; $4929: $00
	add  d                                           ; $492a: $82
	ldh  a, [rIE]                                    ; $492b: $f0 $ff
	nop                                              ; $492d: $00
	rst  $38                                         ; $492e: $ff
	nop                                              ; $492f: $00
	rst  $38                                         ; $4930: $ff
	nop                                              ; $4931: $00
	rst  $38                                         ; $4932: $ff
	nop                                              ; $4933: $00
	rst  $38                                         ; $4934: $ff
	nop                                              ; $4935: $00
	rst  $38                                         ; $4936: $ff
	nop                                              ; $4937: $00
	rst  $38                                         ; $4938: $ff
	nop                                              ; $4939: $00
	rst  $38                                         ; $493a: $ff
	nop                                              ; $493b: $00
	rst  $38                                         ; $493c: $ff
	nop                                              ; $493d: $00
	rst  $38                                         ; $493e: $ff
	nop                                              ; $493f: $00
	rst  $38                                         ; $4940: $ff
	nop                                              ; $4941: $00
	rst  $38                                         ; $4942: $ff
	nop                                              ; $4943: $00
	xor  [hl]                                        ; $4944: $ae
	nop                                              ; $4945: $00
	ld   [hl], e                                     ; $4946: $73
	nop                                              ; $4947: $00
	nop                                              ; $4948: $00
	res  0, c                                        ; $4949: $cb $81
	nop                                              ; $494b: $00
	nop                                              ; $494c: $00
	inc  b                                           ; $494d: $04
	add  c                                           ; $494e: $81
	nop                                              ; $494f: $00
	inc  bc                                          ; $4950: $03
	ld   [rROMB0], sp                                 ; $4951: $08 $00 $20
	nop                                              ; $4954: $00
	add  b                                           ; $4955: $80
	ld   [bc], a                                     ; $4956: $02
	add  b                                           ; $4957: $80
	inc  bc                                          ; $4958: $03
	jr   jr_0a3_49c2                                 ; $4959: $18 $67

	add  b                                           ; $495b: $80
	ret  nz                                          ; $495c: $c0

	ld   b, b                                        ; $495d: $40
	ld   h, b                                        ; $495e: $60
	nop                                              ; $495f: $00
	jr   jr_0a3_49ca                                 ; $4960: $18 $68

	ld   l, [hl]                                     ; $4962: $6e
	ld   [hl], d                                     ; $4963: $72
	ld   [hl], e                                     ; $4964: $73
	inc  a                                           ; $4965: $3c
	cp   h                                           ; $4966: $bc
	rra                                              ; $4967: $1f
	rst  $38                                         ; $4968: $ff
	rrca                                             ; $4969: $0f
	sub  e                                           ; $496a: $93
	ld   [bc], a                                     ; $496b: $02
	ld   b, $04                                      ; $496c: $06 $04
	inc  c                                           ; $496e: $0c
	nop                                              ; $496f: $00
	jr   nc, @+$2a                                   ; $4970: $30 $28

	add  sp, -$80                                    ; $4972: $e8 $80
	sbc  b                                           ; $4974: $98
	ld   b, $78                                      ; $4975: $06 $78
	ld   a, [hl]                                     ; $4977: $7e
	ldh  a, [$fb]                                    ; $4978: $f0 $fb
	pop  hl                                          ; $497a: $e1
	or   a                                           ; $497b: $b7
	ld   b, e                                        ; $497c: $43
	add  b                                           ; $497d: $80
	add  e                                           ; $497e: $83
	dec  d                                           ; $497f: $15

jr_0a3_4980:
	push bc                                          ; $4980: $c5
	pop  bc                                          ; $4981: $c1
	ld   [hl], c                                     ; $4982: $71
	ld   h, c                                        ; $4983: $61
	and  c                                           ; $4984: $a1
	ld   hl, $105a                                   ; $4985: $21 $5a $10
	inc  h                                           ; $4988: $24
	nop                                              ; $4989: $00
	dec  bc                                          ; $498a: $0b
	ld   [$8751], sp                                 ; $498b: $08 $51 $87
	rst  $28                                         ; $498e: $ef
	jp   $e1f7                                       ; $498f: $c3 $f7 $e1


	ei                                               ; $4992: $fb
	ldh  a, [rIE]                                    ; $4993: $f0 $ff
	ld   hl, sp-$80                                  ; $4995: $f8 $80
	db   $fc                                         ; $4997: $fc
	ld   bc, $feff                                   ; $4998: $01 $ff $fe
	add  b                                           ; $499b: $80

jr_0a3_499c:
	ld   a, l                                        ; $499c: $7d
	db   $10                                         ; $499d: $10
	dec  de                                          ; $499e: $1b
	jp   $87ef                                       ; $499f: $c3 $ef $87


	rst  JumpTable                                         ; $49a2: $df
	rrca                                             ; $49a3: $0f
	cp   [hl]                                        ; $49a4: $be
	ld   d, $76                                      ; $49a5: $16 $76
	ld   l, $ee                                      ; $49a7: $2e $ee
	ld   e, [hl]                                     ; $49a9: $5e
	sbc  $9e                                         ; $49aa: $de $9e
	sbc  l                                           ; $49ac: $9d
	dec  a                                           ; $49ad: $3d
	and  b                                           ; $49ae: $a0
	add  c                                           ; $49af: $81
	nop                                              ; $49b0: $00
	add  b                                           ; $49b1: $80
	rrca                                             ; $49b2: $0f
	ld   b, $bf                                      ; $49b3: $06 $bf
	rra                                              ; $49b5: $1f
	ld   [hl], b                                     ; $49b6: $70
	jr   nc, jr_0a3_4980                             ; $49b7: $30 $c7

	ld   c, b                                        ; $49b9: $48
	add  b                                           ; $49ba: $80
	add  b                                           ; $49bb: $80
	and  b                                           ; $49bc: $a0
	ld   b, $80                                      ; $49bd: $06 $80
	ld   l, [hl]                                     ; $49bf: $6e
	ld   l, d                                        ; $49c0: $6a
	db   $eb                                         ; $49c1: $eb

jr_0a3_49c2:
	xor  c                                           ; $49c2: $a9
	sbc  c                                           ; $49c3: $99
	ld   c, l                                        ; $49c4: $4d
	add  b                                           ; $49c5: $80
	ld   b, l                                        ; $49c6: $45
	dec  b                                           ; $49c7: $05
	dec  l                                           ; $49c8: $2d
	add  b                                           ; $49c9: $80

jr_0a3_49ca:
	sub  b                                           ; $49ca: $90
	sub  [hl]                                        ; $49cb: $96
	sub  d                                           ; $49cc: $92
	adc  e                                           ; $49cd: $8b
	add  b                                           ; $49ce: $80
	and  b                                           ; $49cf: $a0
	ld   bc, $2ce3                                   ; $49d0: $01 $e3 $2c
	add  b                                           ; $49d3: $80
	ld   h, l                                        ; $49d4: $65
	add  b                                           ; $49d5: $80
	jp   hl                                          ; $49d6: $e9


	dec  bc                                          ; $49d7: $0b
	db   $ec                                         ; $49d8: $ec
	inc  l                                           ; $49d9: $2c
	jr   nz, jr_0a3_499c                             ; $49da: $20 $c0

	nop                                              ; $49dc: $00
	rra                                              ; $49dd: $1f
	ret  nz                                          ; $49de: $c0

	jr   nz, jr_0a3_49e1                             ; $49df: $20 $00

jr_0a3_49e1:
	ret  nz                                          ; $49e1: $c0

	add  d                                           ; $49e2: $82
	ld   a, h                                        ; $49e3: $7c
	add  b                                           ; $49e4: $80
	ld   a, [hl-]                                    ; $49e5: $3a
	ld   bc, $dbda                                   ; $49e6: $01 $da $db
	add  b                                           ; $49e9: $80
	rst  $20                                         ; $49ea: $e7
	add  c                                           ; $49eb: $81
	nop                                              ; $49ec: $00
	nop                                              ; $49ed: $00
	rst  $38                                         ; $49ee: $ff
	add  d                                           ; $49ef: $82
	nop                                              ; $49f0: $00
	ld   [bc], a                                     ; $49f1: $02
	ld   [bc], a                                     ; $49f2: $02
	dec  a                                           ; $49f3: $3d
	dec  sp                                          ; $49f4: $3b
	add  b                                           ; $49f5: $80
	dec  bc                                          ; $49f6: $0b
	ld   [bc], a                                     ; $49f7: $02
	sbc  e                                           ; $49f8: $9b
	sub  a                                           ; $49f9: $97
	rst  $30                                         ; $49fa: $f7
	add  c                                           ; $49fb: $81
	nop                                              ; $49fc: $00
	nop                                              ; $49fd: $00
	rst  $38                                         ; $49fe: $ff
	add  b                                           ; $49ff: $80
	ld   bc, $0080                                   ; $4a00: $01 $80 $00
	ld   bc, $40e0                                   ; $4a03: $01 $e0 $40
	add  b                                           ; $4a06: $80
	ld   c, h                                        ; $4a07: $4c
	dec  c                                           ; $4a08: $0d
	ld   a, a                                        ; $4a09: $7f
	ld   e, $3e                                      ; $4a0a: $1e $3e
	inc  c                                           ; $4a0c: $0c
	inc  l                                           ; $4a0d: $2c
	inc  d                                           ; $4a0e: $14
	inc  b                                           ; $4a0f: $04
	add  e                                           ; $4a10: $83
	or   d                                           ; $4a11: $b2
	add  $40                                         ; $4a12: $c6 $40
	ld   l, b                                        ; $4a14: $68
	ld   h, b                                        ; $4a15: $60
	sub  b                                           ; $4a16: $90
	add  e                                           ; $4a17: $83
	add  b                                           ; $4a18: $80
	nop                                              ; $4a19: $00
	and  b                                           ; $4a1a: $a0
	add  c                                           ; $4a1b: $81
	nop                                              ; $4a1c: $00
	nop                                              ; $4a1d: $00
	ld   b, b                                        ; $4a1e: $40
	add  b                                           ; $4a1f: $80
	nop                                              ; $4a20: $00
	ld   [bc], a                                     ; $4a21: $02
	ld   a, a                                        ; $4a22: $7f
	nop                                              ; $4a23: $00
	rst  $38                                         ; $4a24: $ff
	adc  e                                           ; $4a25: $8b
	nop                                              ; $4a26: $00
	ld   [bc], a                                     ; $4a27: $02

Call_0a3_4a28:
	rst  $38                                         ; $4a28: $ff
	nop                                              ; $4a29: $00
	rst  $28                                         ; $4a2a: $ef
	add  d                                           ; $4a2b: $82
	nop                                              ; $4a2c: $00
	add  b                                           ; $4a2d: $80
	db   $10                                         ; $4a2e: $10
	add  b                                           ; $4a2f: $80
	nop                                              ; $4a30: $00
	add  b                                           ; $4a31: $80
	db   $10                                         ; $4a32: $10
	add  b                                           ; $4a33: $80
	nop                                              ; $4a34: $00
	ld   b, $10                                      ; $4a35: $06 $10
	rst  $38                                         ; $4a37: $ff
	nop                                              ; $4a38: $00
	ld   [bc], a                                     ; $4a39: $02
	ld   [hl], d                                     ; $4a3a: $72
	halt                                             ; $4a3b: $76
	ld   b, $86                                      ; $4a3c: $06 $86
	ld   c, $80                                      ; $4a3e: $0e $80
	adc  [hl]                                        ; $4a40: $8e
	add  b                                           ; $4a41: $80
	adc  h                                           ; $4a42: $8c
	add  b                                           ; $4a43: $80
	rst  $38                                         ; $4a44: $ff
	add  d                                           ; $4a45: $82
	cp   $80                                         ; $4a46: $fe $80
	db   $fc                                         ; $4a48: $fc
	add  b                                           ; $4a49: $80
	nop                                              ; $4a4a: $00
	ld   bc, $c738                                   ; $4a4b: $01 $38 $c7
	add  b                                           ; $4a4e: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a4f: $cf
	add  b                                           ; $4a50: $80
	rst  $28                                         ; $4a51: $ef
	ld   bc, $7e81                                   ; $4a52: $01 $81 $7e
	add  h                                           ; $4a55: $84
	cp   $81                                         ; $4a56: $fe $81
	nop                                              ; $4a58: $00
	add  c                                           ; $4a59: $81
	db   $fc                                         ; $4a5a: $fc
	add  b                                           ; $4a5b: $80
	db   $fd                                         ; $4a5c: $fd
	ld   [bc], a                                     ; $4a5d: $02
	rst  $38                                         ; $4a5e: $ff
	inc  sp                                          ; $4a5f: $33
	or   a                                           ; $4a60: $b7
	add  d                                           ; $4a61: $82
	add  a                                           ; $4a62: $87
	add  d                                           ; $4a63: $82
	add  l                                           ; $4a64: $85
	add  c                                           ; $4a65: $81
	add  e                                           ; $4a66: $83
	add  b                                           ; $4a67: $80
	adc  e                                           ; $4a68: $8b
	nop                                              ; $4a69: $00
	sbc  b                                           ; $4a6a: $98
	add  e                                           ; $4a6b: $83
	sbc  h                                           ; $4a6c: $9c
	nop                                              ; $4a6d: $00
	sbc  l                                           ; $4a6e: $9d
	add  c                                           ; $4a6f: $81
	dec  e                                           ; $4a70: $1d
	add  b                                           ; $4a71: $80
	inc  e                                           ; $4a72: $1c
	add  d                                           ; $4a73: $82
	ld   e, h                                        ; $4a74: $5c
	ld   b, $90                                      ; $4a75: $06 $90
	rst  $28                                         ; $4a77: $ef
	rst  $20                                         ; $4a78: $e7
	ld   h, a                                        ; $4a79: $67
	ld   a, a                                        ; $4a7a: $7f
	nop                                              ; $4a7b: $00
	rst  $38                                         ; $4a7c: $ff
	add  b                                           ; $4a7d: $80
	nop                                              ; $4a7e: $00
	inc  bc                                          ; $4a7f: $03
	ret  nz                                          ; $4a80: $c0

	ccf                                              ; $4a81: $3f
	nop                                              ; $4a82: $00
	jr   @-$7e                                       ; $4a83: $18 $80

	daa                                              ; $4a85: $27
	ld   bc, $fee7                                   ; $4a86: $01 $e7 $fe
	add  b                                           ; $4a89: $80
	db   $fd                                         ; $4a8a: $fd
	add  b                                           ; $4a8b: $80
	ld   sp, hl                                      ; $4a8c: $f9
	dec  b                                           ; $4a8d: $05
	ld   bc, $04fc                                   ; $4a8e: $01 $fc $04
	ld   b, $1e                                      ; $4a91: $06 $1e
	ldh  [$80], a                                    ; $4a93: $e0 $80
	nop                                              ; $4a95: $00
	add  b                                           ; $4a96: $80
	ld   hl, sp+$02                                  ; $4a97: $f8 $02
	cp   $71                                         ; $4a99: $fe $71
	add  a                                           ; $4a9b: $87
	add  b                                           ; $4a9c: $80
	add  [hl]                                        ; $4a9d: $86
	add  b                                           ; $4a9e: $80
	sub  [hl]                                        ; $4a9f: $96
	nop                                              ; $4aa0: $00
	push de                                          ; $4aa1: $d5
	add  e                                           ; $4aa2: $83
	call $af80                                       ; $4aa3: $cd $80 $af
	ld   [bc], a                                     ; $4aa6: $02
	cpl                                              ; $4aa7: $2f
	rra                                              ; $4aa8: $1f
	rst  JumpTable                                         ; $4aa9: $df
	rst  $38                                         ; $4aaa: $ff
	nop                                              ; $4aab: $00
	rst  $38                                         ; $4aac: $ff
	nop                                              ; $4aad: $00
	rst  $38                                         ; $4aae: $ff
	nop                                              ; $4aaf: $00
	rst  $38                                         ; $4ab0: $ff
	nop                                              ; $4ab1: $00
	rst  $38                                         ; $4ab2: $ff
	nop                                              ; $4ab3: $00
	rst  $38                                         ; $4ab4: $ff
	nop                                              ; $4ab5: $00
	rst  $38                                         ; $4ab6: $ff
	nop                                              ; $4ab7: $00
	rst  $38                                         ; $4ab8: $ff
	nop                                              ; $4ab9: $00
	rst  $38                                         ; $4aba: $ff
	nop                                              ; $4abb: $00
	rst  $38                                         ; $4abc: $ff
	nop                                              ; $4abd: $00
	rst  $38                                         ; $4abe: $ff
	nop                                              ; $4abf: $00
	rst  $38                                         ; $4ac0: $ff
	nop                                              ; $4ac1: $00
	rst  $38                                         ; $4ac2: $ff
	nop                                              ; $4ac3: $00
	add  b                                           ; $4ac4: $80
	nop                                              ; $4ac5: $00
	ld   d, l                                        ; $4ac6: $55
	nop                                              ; $4ac7: $00
	ld   [bc], a                                     ; $4ac8: $02
	nop                                              ; $4ac9: $00
	ld   bc, $ff81                                   ; $4aca: $01 $81 $ff
	nop                                              ; $4acd: $00
	ld   a, [$0900]                                  ; $4ace: $fa $00 $09
	add  b                                           ; $4ad1: $80
	ld   bc, $0103                                   ; $4ad2: $01 $03 $01
	rlca                                             ; $4ad5: $07
	ld   bc, $0103                                   ; $4ad6: $01 $03 $01
	rra                                              ; $4ad9: $1f
	sbc  b                                           ; $4ada: $98
	add  h                                           ; $4adb: $84
	nop                                              ; $4adc: $00
	ld   [$0190], sp                                 ; $4add: $08 $90 $01
	inc  bc                                          ; $4ae0: $03
	ld   bc, $0107                                   ; $4ae1: $01 $07 $01
	inc  bc                                          ; $4ae4: $03
	ld   bc, $8597                                   ; $4ae5: $01 $97 $85
	nop                                              ; $4ae8: $00
	ld   [$0188], sp                                 ; $4ae9: $08 $88 $01
	inc  bc                                          ; $4aec: $03
	ld   bc, $0107                                   ; $4aed: $01 $07 $01
	inc  bc                                          ; $4af0: $03
	ld   bc, $858f                                   ; $4af1: $01 $8f $85
	nop                                              ; $4af4: $00
	add  b                                           ; $4af5: $80
	add  b                                           ; $4af6: $80
	rst  $38                                         ; $4af7: $ff
	nop                                              ; $4af8: $00
	rlc  b                                           ; $4af9: $cb $00
	ld   [$0180], sp                                 ; $4afb: $08 $80 $01
	inc  bc                                          ; $4afe: $03
	ld   bc, $0107                                   ; $4aff: $01 $07 $01
	inc  bc                                          ; $4b02: $03
	ld   bc, $8587                                   ; $4b03: $01 $87 $85
	nop                                              ; $4b06: $00
	ld   [$0389], sp                                 ; $4b07: $08 $89 $03
	ld   bc, $0107                                   ; $4b0a: $01 $07 $01
	inc  bc                                          ; $4b0d: $03
	ld   bc, $901f                                   ; $4b0e: $01 $1f $90
	add  l                                           ; $4b11: $85
	nop                                              ; $4b12: $00
	ld   [$0180], sp                                 ; $4b13: $08 $80 $01
	inc  bc                                          ; $4b16: $03
	ld   bc, $0107                                   ; $4b17: $01 $07 $01
	inc  bc                                          ; $4b1a: $03
	ld   bc, $8587                                   ; $4b1b: $01 $87 $85
	nop                                              ; $4b1e: $00
	add  b                                           ; $4b1f: $80
	sbc  c                                           ; $4b20: $99
	rst  $38                                         ; $4b21: $ff
	nop                                              ; $4b22: $00
	rlc  b                                           ; $4b23: $cb $00
	ld   [$0180], sp                                 ; $4b25: $08 $80 $01
	inc  bc                                          ; $4b28: $03
	ld   bc, $0107                                   ; $4b29: $01 $07 $01
	inc  bc                                          ; $4b2c: $03
	ld   bc, $8587                                   ; $4b2d: $01 $87 $85
	nop                                              ; $4b30: $00
	ld   [$0188], sp                                 ; $4b31: $08 $88 $01
	inc  bc                                          ; $4b34: $03
	ld   bc, $0107                                   ; $4b35: $01 $07 $01
	inc  bc                                          ; $4b38: $03
	ld   bc, $ff8f                                   ; $4b39: $01 $8f $ff
	nop                                              ; $4b3c: $00
	db   $e4                                         ; $4b3d: $e4
	nop                                              ; $4b3e: $00
	ld   [$0180], sp                                 ; $4b3f: $08 $80 $01
	inc  bc                                          ; $4b42: $03
	ld   bc, $0107                                   ; $4b43: $01 $07 $01
	inc  bc                                          ; $4b46: $03
	ld   bc, $8087                                   ; $4b47: $01 $87 $80
	or   d                                           ; $4b4a: $b2
	add  e                                           ; $4b4b: $83
	nop                                              ; $4b4c: $00
	ld   [$01a2], sp                                 ; $4b4d: $08 $a2 $01
	rlca                                             ; $4b50: $07
	ld   bc, $0103                                   ; $4b51: $01 $03 $01
	rrca                                             ; $4b54: $0f
	ld   bc, $85a9                                   ; $4b55: $01 $a9 $85
	nop                                              ; $4b58: $00
	ld   [$0188], sp                                 ; $4b59: $08 $88 $01
	inc  bc                                          ; $4b5c: $03
	ld   bc, $0107                                   ; $4b5d: $01 $07 $01
	inc  bc                                          ; $4b60: $03
	ld   bc, $858f                                   ; $4b61: $01 $8f $85
	nop                                              ; $4b64: $00
	ld   [$0190], sp                                 ; $4b65: $08 $90 $01
	inc  bc                                          ; $4b68: $03
	ld   bc, $0107                                   ; $4b69: $01 $07 $01
	inc  bc                                          ; $4b6c: $03
	ld   bc, $8597                                   ; $4b6d: $01 $97 $85
	nop                                              ; $4b70: $00
	ld   a, [bc]                                     ; $4b71: $0a
	sbc  b                                           ; $4b72: $98
	ld   bc, $0103                                   ; $4b73: $01 $03 $01
	rlca                                             ; $4b76: $07
	ld   bc, $0103                                   ; $4b77: $01 $03 $01
	ccf                                              ; $4b7a: $3f
	ld   bc, hScriptOpcodeParams+1                                   ; $4b7b: $01 $a1 $ff
	nop                                              ; $4b7e: $00
	or   d                                           ; $4b7f: $b2
	nop                                              ; $4b80: $00
	ld   [$0180], sp                                 ; $4b81: $08 $80 $01
	inc  bc                                          ; $4b84: $03
	ld   bc, $0107                                   ; $4b85: $01 $07 $01
	inc  bc                                          ; $4b88: $03
	ld   bc, $8587                                   ; $4b89: $01 $87 $85
	nop                                              ; $4b8c: $00
	ld   [$0389], sp                                 ; $4b8d: $08 $89 $03
	ld   bc, $0107                                   ; $4b90: $01 $07 $01
	inc  bc                                          ; $4b93: $03
	ld   bc, $901f                                   ; $4b94: $01 $1f $90
	add  l                                           ; $4b97: $85
	nop                                              ; $4b98: $00
	add  b                                           ; $4b99: $80
	adc  b                                           ; $4b9a: $88
	rst  $38                                         ; $4b9b: $ff
	nop                                              ; $4b9c: $00
	db   $db                                         ; $4b9d: $db
	nop                                              ; $4b9e: $00
	ld   [$0180], sp                                 ; $4b9f: $08 $80 $01
	inc  bc                                          ; $4ba2: $03
	ld   bc, $0107                                   ; $4ba3: $01 $07 $01
	inc  bc                                          ; $4ba6: $03
	ld   bc, $8587                                   ; $4ba7: $01 $87 $85
	nop                                              ; $4baa: $00
	ld   [$0389], sp                                 ; $4bab: $08 $89 $03
	ld   bc, $0107                                   ; $4bae: $01 $07 $01
	inc  bc                                          ; $4bb1: $03
	ld   bc, $901f                                   ; $4bb2: $01 $1f $90
	rst  $38                                         ; $4bb5: $ff
	nop                                              ; $4bb6: $00
	db   $e4                                         ; $4bb7: $e4
	nop                                              ; $4bb8: $00
	ld   [bc], a                                     ; $4bb9: $02
	add  b                                           ; $4bba: $80
	ld   bc, $ff81                                   ; $4bbb: $01 $81 $ff
	nop                                              ; $4bbe: $00
	ld   a, [$8000]                                  ; $4bbf: $fa $00 $80
	add  b                                           ; $4bc2: $80
	rst  $38                                         ; $4bc3: $ff
	nop                                              ; $4bc4: $00
	ei                                               ; $4bc5: $fb
	nop                                              ; $4bc6: $00
	rlca                                             ; $4bc7: $07
	add  b                                           ; $4bc8: $80
	ld   bc, $0103                                   ; $4bc9: $01 $03 $01
	rlca                                             ; $4bcc: $07
	ld   c, $01                                      ; $4bcd: $0e $01
	adc  e                                           ; $4bcf: $8b
	sub  [hl]                                        ; $4bd0: $96
	nop                                              ; $4bd1: $00
	rlca                                             ; $4bd2: $07
	adc  [hl]                                        ; $4bd3: $8e
	ld   bc, $011f                                   ; $4bd4: $01 $1f $01
	inc  bc                                          ; $4bd7: $03
	ld   bc, $9407                                   ; $4bd8: $01 $07 $94
	rst  $38                                         ; $4bdb: $ff
	nop                                              ; $4bdc: $00
	push de                                          ; $4bdd: $d5
	nop                                              ; $4bde: $00
	rlca                                             ; $4bdf: $07
	add  b                                           ; $4be0: $80
	ld   bc, $0103                                   ; $4be1: $01 $03 $01
	rlca                                             ; $4be4: $07
	ld   c, $01                                      ; $4be5: $0e $01
	adc  e                                           ; $4be7: $8b
	sub  [hl]                                        ; $4be8: $96
	nop                                              ; $4be9: $00
	rlca                                             ; $4bea: $07
	adc  h                                           ; $4beb: $8c
	ld   bc, $0103                                   ; $4bec: $01 $03 $01
	rra                                              ; $4bef: $1f
	ld   bc, $9203                                   ; $4bf0: $01 $03 $92
	rst  $38                                         ; $4bf3: $ff
	nop                                              ; $4bf4: $00
	push de                                          ; $4bf5: $d5
	nop                                              ; $4bf6: $00
	ld   b, $80                                      ; $4bf7: $06 $80
	ld   bc, $0103                                   ; $4bf9: $01 $03 $01
	rlca                                             ; $4bfc: $07
	ld   bc, $9785                                   ; $4bfd: $01 $85 $97
	nop                                              ; $4c00: $00
	ld   b, $8c                                      ; $4c01: $06 $8c
	ld   bc, $0103                                   ; $4c03: $01 $03 $01
	rra                                              ; $4c06: $1f
	ld   bc, $ff91                                   ; $4c07: $01 $91 $ff
	nop                                              ; $4c0a: $00
	sub  $00                                         ; $4c0b: $d6 $00
	inc  b                                           ; $4c0d: $04
	add  b                                           ; $4c0e: $80
	ld   bc, $0103                                   ; $4c0f: $01 $03 $01
	add  e                                           ; $4c12: $83
	rst  $38                                         ; $4c13: $ff
	nop                                              ; $4c14: $00
	ld   hl, sp+$00                                  ; $4c15: $f8 $00
	dec  b                                           ; $4c17: $05
	add  b                                           ; $4c18: $80
	ld   bc, $0103                                   ; $4c19: $01 $03 $01
	rlca                                             ; $4c1c: $07
	add  h                                           ; $4c1d: $84
	rst  $38                                         ; $4c1e: $ff
	nop                                              ; $4c1f: $00
	rst  $30                                         ; $4c20: $f7
	nop                                              ; $4c21: $00
	inc  b                                           ; $4c22: $04
	add  b                                           ; $4c23: $80
	ld   bc, $0103                                   ; $4c24: $01 $03 $01
	add  e                                           ; $4c27: $83
	rst  $38                                         ; $4c28: $ff
	nop                                              ; $4c29: $00

jr_0a3_4c2a:
	ld   hl, sp+$00                                  ; $4c2a: $f8 $00
	dec  b                                           ; $4c2c: $05
	add  b                                           ; $4c2d: $80
	ld   bc, $0103                                   ; $4c2e: $01 $03 $01
	rlca                                             ; $4c31: $07
	add  h                                           ; $4c32: $84
	adc  b                                           ; $4c33: $88
	nop                                              ; $4c34: $00
	add  b                                           ; $4c35: $80
	add  b                                           ; $4c36: $80
	rst  $38                                         ; $4c37: $ff
	nop                                              ; $4c38: $00

jr_0a3_4c39:
	db   $eb                                         ; $4c39: $eb
	nop                                              ; $4c3a: $00
	sbc  c                                           ; $4c3b: $99
	nop                                              ; $4c3c: $00
	sub  [hl]                                        ; $4c3d: $96
	nop                                              ; $4c3e: $00
	add  b                                           ; $4c3f: $80
	ld   a, b                                        ; $4c40: $78
	add  b                                           ; $4c41: $80

jr_0a3_4c42:
	ld   hl, sp-$77                                  ; $4c42: $f8 $89
	nop                                              ; $4c44: $00
	add  b                                           ; $4c45: $80
	ldh  a, [$82]                                    ; $4c46: $f0 $82
	ld   a, b                                        ; $4c48: $78
	ld   [bc], a                                     ; $4c49: $02
	ld   [hl], $34                                   ; $4c4a: $36 $34
	inc  a                                           ; $4c4c: $3c
	add  b                                           ; $4c4d: $80
	jr   nc, @+$06                                   ; $4c4e: $30 $04

	ld   [hl-], a                                    ; $4c50: $32
	inc  bc                                          ; $4c51: $03
	rlca                                             ; $4c52: $07
	ld   b, $0e                                      ; $4c53: $06 $0e
	add  b                                           ; $4c55: $80
	inc  b                                           ; $4c56: $04
	sub  e                                           ; $4c57: $93
	nop                                              ; $4c58: $00
	ld   [bc], a                                     ; $4c59: $02
	jr   nc, jr_0a3_4c2a                             ; $4c5a: $30 $ce

	add  $80                                         ; $4c5c: $c6 $80
	rst  ToBoot                                         ; $4c5e: $c7
	ld   bc, $fec6                                   ; $4c5f: $01 $c6 $fe
	add  b                                           ; $4c62: $80
	ld   l, h                                        ; $4c63: $6c
	sub  c                                           ; $4c64: $91
	nop                                              ; $4c65: $00
	ld   b, $1f                                      ; $4c66: $06 $1f
	nop                                              ; $4c68: $00

jr_0a3_4c69:
	ld   a, a                                        ; $4c69: $7f
	rra                                              ; $4c6a: $1f
	cp   a                                           ; $4c6b: $bf
	jr   nz, jr_0a3_4cce                             ; $4c6c: $20 $60

	add  b                                           ; $4c6e: $80
	ld   b, b                                        ; $4c6f: $40
	dec  c                                           ; $4c70: $0d
	nop                                              ; $4c71: $00
	ret  nz                                          ; $4c72: $c0

	nop                                              ; $4c73: $00
	ldh  a, [rP1]                                    ; $4c74: $f0 $00
	rst  $28                                         ; $4c76: $ef
	nop                                              ; $4c77: $00
	ldh  a, [rP1]                                    ; $4c78: $f0 $00
	ldh  a, [rP1]                                    ; $4c7a: $f0 $00
	ldh  a, [rP1]                                    ; $4c7c: $f0 $00
	xor  a                                           ; $4c7e: $af
	add  a                                           ; $4c7f: $87
	nop                                              ; $4c80: $00
	ld   [$0080], sp                                 ; $4c81: $08 $80 $00
	ldh  [$80], a                                    ; $4c84: $e0 $80
	ret  nc                                          ; $4c86: $d0

	ret  nz                                          ; $4c87: $c0

	ldh  [rP1], a                                    ; $4c88: $e0 $00
	db   $10                                         ; $4c8a: $10
	add  b                                           ; $4c8b: $80
	nop                                              ; $4c8c: $00
	inc  bc                                          ; $4c8d: $03
	db   $10                                         ; $4c8e: $10
	ld   d, b                                        ; $4c8f: $50
	jr   nc, jr_0a3_4c42                             ; $4c90: $30 $b0

	add  l                                           ; $4c92: $85
	jr   nc, jr_0a3_4c95                             ; $4c93: $30 $00

jr_0a3_4c95:
	ldh  a, [$86]                                    ; $4c95: $f0 $86
	nop                                              ; $4c97: $00
	add  b                                           ; $4c98: $80
	ret  nz                                          ; $4c99: $c0

	add  b                                           ; $4c9a: $80
	db   $fc                                         ; $4c9b: $fc
	add  b                                           ; $4c9c: $80
	db   $e3                                         ; $4c9d: $e3
	add  b                                           ; $4c9e: $80
	sbc  a                                           ; $4c9f: $9f
	sbc  d                                           ; $4ca0: $9a
	nop                                              ; $4ca1: $00
	add  b                                           ; $4ca2: $80
	ret  nz                                          ; $4ca3: $c0

	add  b                                           ; $4ca4: $80
	ld   hl, sp-$73                                  ; $4ca5: $f8 $8d
	nop                                              ; $4ca7: $00
	sbc  [hl]                                        ; $4ca8: $9e
	ldh  a, [$8c]                                    ; $4ca9: $f0 $8c
	nop                                              ; $4cab: $00
	add  b                                           ; $4cac: $80
	ldh  a, [$8a]                                    ; $4cad: $f0 $8a
	ld   hl, sp-$80                                  ; $4caf: $f8 $80
	ldh  a, [$80]                                    ; $4cb1: $f0 $80
	jr   nz, jr_0a3_4c39                             ; $4cb3: $20 $84

	nop                                              ; $4cb5: $00
	add  b                                           ; $4cb6: $80

jr_0a3_4cb7:
	inc  c                                           ; $4cb7: $0c
	add  b                                           ; $4cb8: $80

jr_0a3_4cb9:
	rra                                              ; $4cb9: $1f
	add  b                                           ; $4cba: $80
	db   $fc                                         ; $4cbb: $fc
	add  b                                           ; $4cbc: $80

jr_0a3_4cbd:
	ld   bc, $0880                                   ; $4cbd: $01 $80 $08
	add  l                                           ; $4cc0: $85
	nop                                              ; $4cc1: $00
	add  b                                           ; $4cc2: $80
	inc  bc                                          ; $4cc3: $03
	ld   bc, $0706                                   ; $4cc4: $01 $06 $07
	add  b                                           ; $4cc7: $80
	dec  b                                           ; $4cc8: $05
	nop                                              ; $4cc9: $00
	ld   bc, $0380                                   ; $4cca: $01 $80 $03
	add  b                                           ; $4ccd: $80

jr_0a3_4cce:
	nop                                              ; $4cce: $00
	adc  d                                           ; $4ccf: $8a
	ccf                                              ; $4cd0: $3f
	add  b                                           ; $4cd1: $80
	rra                                              ; $4cd2: $1f
	sub  [hl]                                        ; $4cd3: $96
	nop                                              ; $4cd4: $00
	ld   [bc], a                                     ; $4cd5: $02
	pop  bc                                          ; $4cd6: $c1
	reti                                             ; $4cd7: $d9


	sbc  b                                           ; $4cd8: $98

jr_0a3_4cd9:
	add  b                                           ; $4cd9: $80
	sub  b                                           ; $4cda: $90
	ld   bc, $32b2                                   ; $4cdb: $01 $b2 $32
	add  b                                           ; $4cde: $80
	inc  hl                                          ; $4cdf: $23
	sub  e                                           ; $4ce0: $93
	nop                                              ; $4ce1: $00
	add  b                                           ; $4ce2: $80
	ldh  [rSC], a                                    ; $4ce3: $e0 $02
	ret  nz                                          ; $4ce5: $c0

	ret  c                                           ; $4ce6: $d8

	jr   jr_0a3_4c69                                 ; $4ce7: $18 $80

	inc  c                                           ; $4ce9: $0c
	sbc  h                                           ; $4cea: $9c
	nop                                              ; $4ceb: $00
	add  b                                           ; $4cec: $80
	inc  d                                           ; $4ced: $14
	add  b                                           ; $4cee: $80
	ld   a, [bc]                                     ; $4cef: $0a
	add  b                                           ; $4cf0: $80
	dec  d                                           ; $4cf1: $15
	sbc  l                                           ; $4cf2: $9d
	nop                                              ; $4cf3: $00
	ld   [bc], a                                     ; $4cf4: $02
	sub  c                                           ; $4cf5: $91
	ld   l, [hl]                                     ; $4cf6: $6e
	xor  $80                                         ; $4cf7: $ee $80
	ld   l, $01                                      ; $4cf9: $2e $01
	ld   c, $1e                                      ; $4cfb: $0e $1e
	add  b                                           ; $4cfd: $80
	ld   b, $80                                      ; $4cfe: $06 $80
	ld   [bc], a                                     ; $4d00: $02
	add  c                                           ; $4d01: $81
	nop                                              ; $4d02: $00

jr_0a3_4d03:
	ld   [bc], a                                     ; $4d03: $02
	ld   bc, $0800                                   ; $4d04: $01 $00 $08
	add  b                                           ; $4d07: $80
	ld   [hl], a                                     ; $4d08: $77
	inc  bc                                          ; $4d09: $03
	scf                                              ; $4d0a: $37
	jr   nz, jr_0a3_4d0d                             ; $4d0b: $20 $00

jr_0a3_4d0d:
	ld   e, a                                        ; $4d0d: $5f
	add  b                                           ; $4d0e: $80
	ld   b, a                                        ; $4d0f: $47
	nop                                              ; $4d10: $00
	ld   b, b                                        ; $4d11: $40
	add  d                                           ; $4d12: $82
	ldh  [$80], a                                    ; $4d13: $e0 $80
	ret  nz                                          ; $4d15: $c0

	sub  [hl]                                        ; $4d16: $96
	nop                                              ; $4d17: $00
	ld   [bc], a                                     ; $4d18: $02
	inc  b                                           ; $4d19: $04
	nop                                              ; $4d1a: $00
	add  b                                           ; $4d1b: $80
	add  c                                           ; $4d1c: $81
	nop                                              ; $4d1d: $00
	nop                                              ; $4d1e: $00
	inc  b                                           ; $4d1f: $04
	add  l                                           ; $4d20: $85
	nop                                              ; $4d21: $00
	nop                                              ; $4d22: $00
	ret  c                                           ; $4d23: $d8

	add  c                                           ; $4d24: $81
	nop                                              ; $4d25: $00
	nop                                              ; $4d26: $00
	and  b                                           ; $4d27: $a0
	add  c                                           ; $4d28: $81
	nop                                              ; $4d29: $00
	ld   [bc], a                                     ; $4d2a: $02
	ld   [$f000], sp                                 ; $4d2b: $08 $00 $f0
	adc  b                                           ; $4d2e: $88
	ret  nz                                          ; $4d2f: $c0

	add  b                                           ; $4d30: $80
	ld   b, b                                        ; $4d31: $40
	add  b                                           ; $4d32: $80
	ld   h, b                                        ; $4d33: $60
	add  h                                           ; $4d34: $84
	jr   nz, jr_0a3_4cb7                             ; $4d35: $20 $80

	jr   nc, jr_0a3_4cb9                             ; $4d37: $30 $80

	db   $10                                         ; $4d39: $10
	add  b                                           ; $4d3a: $80
	jr   jr_0a3_4cbd                                 ; $4d3b: $18 $80

	ld   [$0c80], sp                                 ; $4d3d: $08 $80 $0c
	add  b                                           ; $4d40: $80
	ld   b, $80                                      ; $4d41: $06 $80
	rlca                                             ; $4d43: $07
	add  b                                           ; $4d44: $80
	inc  bc                                          ; $4d45: $03
	add  b                                           ; $4d46: $80
	ld   bc, $0000                                   ; $4d47: $01 $00 $00
	add  b                                           ; $4d4a: $80
	inc  bc                                          ; $4d4b: $03
	add  b                                           ; $4d4c: $80
	ld   c, $80                                      ; $4d4d: $0e $80
	inc  a                                           ; $4d4f: $3c
	add  b                                           ; $4d50: $80
	ld   e, b                                        ; $4d51: $58
	add  b                                           ; $4d52: $80
	ld   a, b                                        ; $4d53: $78
	add  b                                           ; $4d54: $80
	db   $10                                         ; $4d55: $10
	add  b                                           ; $4d56: $80
	jr   nz, jr_0a3_4cd9                             ; $4d57: $20 $80

	inc  a                                           ; $4d59: $3c
	add  b                                           ; $4d5a: $80
	rra                                              ; $4d5b: $1f
	add  b                                           ; $4d5c: $80
	rrca                                             ; $4d5d: $0f
	add  b                                           ; $4d5e: $80
	rlca                                             ; $4d5f: $07
	add  b                                           ; $4d60: $80
	ld   bc, $0000                                   ; $4d61: $01 $00 $00
	add  b                                           ; $4d64: $80
	rst  $38                                         ; $4d65: $ff
	add  b                                           ; $4d66: $80
	db   $fc                                         ; $4d67: $fc
	add  b                                           ; $4d68: $80
	add  h                                           ; $4d69: $84
	adc  l                                           ; $4d6a: $8d
	nop                                              ; $4d6b: $00
	add  b                                           ; $4d6c: $80
	ld   [$ff80], sp                                 ; $4d6d: $08 $80 $ff
	add  b                                           ; $4d70: $80
	cp   $80                                         ; $4d71: $fe $80
	ldh  [$80], a                                    ; $4d73: $e0 $80
	ret  nz                                          ; $4d75: $c0

	nop                                              ; $4d76: $00
	nop                                              ; $4d77: $00
	add  b                                           ; $4d78: $80
	ld   b, $80                                      ; $4d79: $06 $80
	ld   c, $80                                      ; $4d7b: $0e $80
	inc  e                                           ; $4d7d: $1c
	add  b                                           ; $4d7e: $80
	jr   jr_0a3_4d03                                 ; $4d7f: $18 $82

	jr   nc, jr_0a3_4d03                             ; $4d81: $30 $80

	ld   h, b                                        ; $4d83: $60
	add  b                                           ; $4d84: $80
	ret  nz                                          ; $4d85: $c0

	sbc  d                                           ; $4d86: $9a
	nop                                              ; $4d87: $00
	add  b                                           ; $4d88: $80
	ld   [bc], a                                     ; $4d89: $02
	add  b                                           ; $4d8a: $80
	ld   b, $82                                      ; $4d8b: $06 $82
	inc  b                                           ; $4d8d: $04
	add  h                                           ; $4d8e: $84
	inc  c                                           ; $4d8f: $0c
	add  h                                           ; $4d90: $84
	jr   @+$01                                       ; $4d91: $18 $ff

	nop                                              ; $4d93: $00
	rst  $38                                         ; $4d94: $ff
	nop                                              ; $4d95: $00
	rst  $38                                         ; $4d96: $ff
	nop                                              ; $4d97: $00
	rst  $38                                         ; $4d98: $ff
	nop                                              ; $4d99: $00
	rst  $38                                         ; $4d9a: $ff
	nop                                              ; $4d9b: $00
	rst  $38                                         ; $4d9c: $ff
	nop                                              ; $4d9d: $00
	rst  $38                                         ; $4d9e: $ff
	nop                                              ; $4d9f: $00
	rst  $38                                         ; $4da0: $ff
	nop                                              ; $4da1: $00
	rst  $38                                         ; $4da2: $ff
	nop                                              ; $4da3: $00
	rst  $38                                         ; $4da4: $ff
	nop                                              ; $4da5: $00
	or   e                                           ; $4da6: $b3
	nop                                              ; $4da7: $00
	ld   [hl], a                                     ; $4da8: $77
	nop                                              ; $4da9: $00
	nop                                              ; $4daa: $00
	nop                                              ; $4dab: $00
	adc  c                                           ; $4dac: $89
	rst  $38                                         ; $4dad: $ff
	add  b                                           ; $4dae: $80
	sbc  d                                           ; $4daf: $9a
	add  b                                           ; $4db0: $80
	ld   [hl], $84                                   ; $4db1: $36 $84
	rst  $38                                         ; $4db3: $ff
	add  b                                           ; $4db4: $80
	rst  $30                                         ; $4db5: $f7
	add  b                                           ; $4db6: $80
	or   a                                           ; $4db7: $b7
	add  b                                           ; $4db8: $80
	ld   l, [hl]                                     ; $4db9: $6e
	add  b                                           ; $4dba: $80
	xor  $80                                         ; $4dbb: $ee $80
	sbc  $88                                         ; $4dbd: $de $88
	rst  $38                                         ; $4dbf: $ff
	add  b                                           ; $4dc0: $80
	ei                                               ; $4dc1: $fb
	add  b                                           ; $4dc2: $80
	db   $dd                                         ; $4dc3: $dd
	add  b                                           ; $4dc4: $80
	sbc  $0d                                         ; $4dc5: $de $0d
	ld   h, l                                        ; $4dc7: $65
	dec  h                                           ; $4dc8: $25
	xor  l                                           ; $4dc9: $ad
	ld   l, l                                        ; $4dca: $6d
	ld   c, l                                        ; $4dcb: $4d
	ld   b, h                                        ; $4dcc: $44
	ld   d, d                                        ; $4dcd: $52
	jp   z, $898a                                    ; $4dce: $ca $8a $89

	xor  c                                           ; $4dd1: $a9
	cp   c                                           ; $4dd2: $b9
	add  hl, sp                                      ; $4dd3: $39
	dec  sp                                          ; $4dd4: $3b
	add  b                                           ; $4dd5: $80
	ld   a, [hl-]                                    ; $4dd6: $3a
	add  c                                           ; $4dd7: $81
	sbc  $01                                         ; $4dd8: $de $01
	call c, $809c                                    ; $4dda: $dc $9c $80
	adc  h                                           ; $4ddd: $8c
	ld   bc, $0888                                   ; $4dde: $01 $88 $08
	add  b                                           ; $4de1: $80
	nop                                              ; $4de2: $00
	add  b                                           ; $4de3: $80
	ld   c, h                                        ; $4de4: $4c
	add  hl, bc                                      ; $4de5: $09
	ld   e, h                                        ; $4de6: $5c
	ld   c, h                                        ; $4de7: $4c
	xor  $bf                                         ; $4de8: $ee $bf
	ld   e, l                                        ; $4dea: $5d
	ld   c, l                                        ; $4deb: $4d
	ld   c, $2e                                      ; $4dec: $0e $2e
	ld   a, [hl+]                                    ; $4dee: $2a
	ld   [hl+], a                                    ; $4def: $22
	add  b                                           ; $4df0: $80
	ld   b, h                                        ; $4df1: $44
	rla                                              ; $4df2: $17
	ld   b, [hl]                                     ; $4df3: $46
	ld   [bc], a                                     ; $4df4: $02
	xor  e                                           ; $4df5: $ab
	cp   c                                           ; $4df6: $b9
	or   l                                           ; $4df7: $b5
	sub  h                                           ; $4df8: $94
	sub  $35                                         ; $4df9: $d6 $35
	nop                                              ; $4dfb: $00
	ld   b, d                                        ; $4dfc: $42
	nop                                              ; $4dfd: $00
	ld   [$6100], sp                                 ; $4dfe: $08 $00 $61
	ld   [bc], a                                     ; $4e01: $02
	inc  bc                                          ; $4e02: $03
	ld   [bc], a                                     ; $4e03: $02
	or   e                                           ; $4e04: $b3
	nop                                              ; $4e05: $00
	inc  bc                                          ; $4e06: $03
	nop                                              ; $4e07: $00
	call z, Call_0a3_5900                            ; $4e08: $cc $00 $59
	add  b                                           ; $4e0b: $80
	ld   bc, $000d                                   ; $4e0c: $01 $0d $00
	ld   b, $04                                      ; $4e0f: $06 $04
	inc  c                                           ; $4e11: $0c
	nop                                              ; $4e12: $00
	jr   nc, jr_0a3_4e22                             ; $4e13: $30 $0d

	call $3f3c                                       ; $4e15: $cd $3c $3f
	ldh  [rIE], a                                    ; $4e18: $e0 $ff
	add  b                                           ; $4e1a: $80
	ld   e, h                                        ; $4e1b: $5c
	add  c                                           ; $4e1c: $81
	ld   a, $80                                      ; $4e1d: $3e $80
	ld   e, $80                                      ; $4e1f: $1e $80
	ld   [bc], a                                     ; $4e21: $02

jr_0a3_4e22:
	nop                                              ; $4e22: $00
	inc  bc                                          ; $4e23: $03
	add  c                                           ; $4e24: $81
	ld   bc, $0082                                   ; $4e25: $01 $82 $00
	ld   [de], a                                     ; $4e28: $12
	ld   e, e                                        ; $4e29: $5b
	nop                                              ; $4e2a: $00
	and  a                                           ; $4e2b: $a7
	nop                                              ; $4e2c: $00
	add  h                                           ; $4e2d: $84
	nop                                              ; $4e2e: $00
	sbc  d                                           ; $4e2f: $9a
	nop                                              ; $4e30: $00
	ld   h, [hl]                                     ; $4e31: $66
	ld   bc, $0719                                   ; $4e32: $01 $19 $07
	daa                                              ; $4e35: $27
	rra                                              ; $4e36: $1f
	ld   a, a                                        ; $4e37: $7f
	cpl                                              ; $4e38: $2f
	ld   l, h                                        ; $4e39: $6c
	nop                                              ; $4e3a: $00
	inc  a                                           ; $4e3b: $3c
	add  c                                           ; $4e3c: $81
	nop                                              ; $4e3d: $00
	ld   a, [bc]                                     ; $4e3e: $0a
	ld   bc, $e600                                   ; $4e3f: $01 $00 $e6
	nop                                              ; $4e42: $00
	rlca                                             ; $4e43: $07
	nop                                              ; $4e44: $00
	cp   h                                           ; $4e45: $bc
	nop                                              ; $4e46: $00
	adc  h                                           ; $4e47: $8c
	nop                                              ; $4e48: $00
	ld   [hl], d                                     ; $4e49: $72
	add  c                                           ; $4e4a: $81
	ld   bc, $0083                                   ; $4e4b: $01 $83 $00
	add  l                                           ; $4e4e: $85
	ld   bc, $8d08                                   ; $4e4f: $01 $08 $8d
	ld   [hl], a                                     ; $4e52: $77
	ccf                                              ; $4e53: $3f
	dec  sp                                          ; $4e54: $3b
	ld   e, e                                        ; $4e55: $5b
	dec  de                                          ; $4e56: $1b
	sbc  e                                           ; $4e57: $9b
	dec  de                                          ; $4e58: $1b
	cpl                                              ; $4e59: $2f
	add  l                                           ; $4e5a: $85
	inc  c                                           ; $4e5b: $0c
	nop                                              ; $4e5c: $00
	add  sp, -$7e                                    ; $4e5d: $e8 $82
	db   $e3                                         ; $4e5f: $e3
	ld   bc, $aba3                                   ; $4e60: $01 $a3 $ab
	add  b                                           ; $4e63: $80
	scf                                              ; $4e64: $37
	ld   [$7f7e], sp                                 ; $4e65: $08 $7e $7f
	ld   a, c                                        ; $4e68: $79
	ld   a, [hl]                                     ; $4e69: $7e
	ld   h, $b8                                      ; $4e6a: $26 $b8
	sbc  c                                           ; $4e6c: $99
	ld   bc, $80f0                                   ; $4e6d: $01 $f0 $80
	push af                                          ; $4e70: $f5
	ld   [$c8f8], sp                                 ; $4e71: $08 $f8 $c8
	ldh  a, [$b6]                                    ; $4e74: $f0 $b6
	add  $4f                                         ; $4e76: $c6 $4f
	adc  a                                           ; $4e78: $8f
	cp   a                                           ; $4e79: $bf
	ccf                                              ; $4e7a: $3f
	add  b                                           ; $4e7b: $80
	ld   a, a                                        ; $4e7c: $7f
	add  b                                           ; $4e7d: $80
	rst  $38                                         ; $4e7e: $ff
	add  c                                           ; $4e7f: $81
	rra                                              ; $4e80: $1f
	ld   [bc], a                                     ; $4e81: $02
	rst  $38                                         ; $4e82: $ff
	rst  $28                                         ; $4e83: $ef
	rrca                                             ; $4e84: $0f
	add  b                                           ; $4e85: $80
	rra                                              ; $4e86: $1f
	sub  b                                           ; $4e87: $90
	rst  $38                                         ; $4e88: $ff
	add  b                                           ; $4e89: $80
	rst  $30                                         ; $4e8a: $f7
	add  b                                           ; $4e8b: $80
	di                                               ; $4e8c: $f3
	add  b                                           ; $4e8d: $80
	ldh  a, [rP1]                                    ; $4e8e: $f0 $00
	rlca                                             ; $4e90: $07
	add  b                                           ; $4e91: $80
	ld   d, h                                        ; $4e92: $54
	add  b                                           ; $4e93: $80
	sub  b                                           ; $4e94: $90
	ld   [bc], a                                     ; $4e95: $02
	nop                                              ; $4e96: $00
	jr   nz, jr_0a3_4ec1                             ; $4e97: $20 $28

	add  c                                           ; $4e99: $81
	ldh  a, [$80]                                    ; $4e9a: $f0 $80
	ld   hl, sp-$7c                                  ; $4e9c: $f8 $84
	rst  $38                                         ; $4e9e: $ff
	add  b                                           ; $4e9f: $80
	ld   a, a                                        ; $4ea0: $7f
	add  h                                           ; $4ea1: $84
	ccf                                              ; $4ea2: $3f
	add  b                                           ; $4ea3: $80
	ld   a, a                                        ; $4ea4: $7f
	add  d                                           ; $4ea5: $82
	rst  $38                                         ; $4ea6: $ff
	add  b                                           ; $4ea7: $80
	ld   sp, hl                                      ; $4ea8: $f9
	add  d                                           ; $4ea9: $82
	ldh  a, [$82]                                    ; $4eaa: $f0 $82
	ldh  [$80], a                                    ; $4eac: $e0 $80
	ldh  a, [$81]                                    ; $4eae: $f0 $81
	rst  $38                                         ; $4eb0: $ff
	add  e                                           ; $4eb1: $83
	ld   hl, sp+$00                                  ; $4eb2: $f8 $00
	ld   a, c                                        ; $4eb4: $79
	add  e                                           ; $4eb5: $83
	ld   a, l                                        ; $4eb6: $7d
	add  e                                           ; $4eb7: $83
	db   $fc                                         ; $4eb8: $fc
	add  b                                           ; $4eb9: $80
	rst  $38                                         ; $4eba: $ff
	add  b                                           ; $4ebb: $80

jr_0a3_4ebc:
	ld   hl, sp-$80                                  ; $4ebc: $f8 $80
	add  b                                           ; $4ebe: $80
	add  b                                           ; $4ebf: $80
	nop                                              ; $4ec0: $00

jr_0a3_4ec1:
	add  b                                           ; $4ec1: $80
	ccf                                              ; $4ec2: $3f
	add  b                                           ; $4ec3: $80
	ret  nz                                          ; $4ec4: $c0

	add  b                                           ; $4ec5: $80
	rrca                                             ; $4ec6: $0f
	add  d                                           ; $4ec7: $82
	rst  $38                                         ; $4ec8: $ff
	add  b                                           ; $4ec9: $80
	ccf                                              ; $4eca: $3f
	add  b                                           ; $4ecb: $80
	inc  bc                                          ; $4ecc: $03
	add  b                                           ; $4ecd: $80
	nop                                              ; $4ece: $00
	add  b                                           ; $4ecf: $80
	ldh  a, [$80]                                    ; $4ed0: $f0 $80
	rra                                              ; $4ed2: $1f
	add  b                                           ; $4ed3: $80
	rst  $38                                         ; $4ed4: $ff
	ld   bc, $8283                                   ; $4ed5: $01 $83 $82
	add  b                                           ; $4ed8: $80
	db   $fc                                         ; $4ed9: $fc
	inc  bc                                          ; $4eda: $03
	ld   hl, sp-$06                                  ; $4edb: $f8 $fa
	ld   hl, sp-$04                                  ; $4edd: $f8 $fc
	add  b                                           ; $4edf: $80
	jr   nc, jr_0a3_4ee3                             ; $4ee0: $30 $01

	ld   [hl], b                                     ; $4ee2: $70

jr_0a3_4ee3:
	ld   a, b                                        ; $4ee3: $78
	add  b                                           ; $4ee4: $80
	ldh  [$03], a                                    ; $4ee5: $e0 $03
	ret  nz                                          ; $4ee7: $c0

	ret  nc                                          ; $4ee8: $d0

	ret  nz                                          ; $4ee9: $c0

	rst  JumpTable                                         ; $4eea: $df
	adc  [hl]                                        ; $4eeb: $8e
	rst  $38                                         ; $4eec: $ff
	add  b                                           ; $4eed: $80
	ldh  [$8b], a                                    ; $4eee: $e0 $8b
	rst  $38                                         ; $4ef0: $ff
	nop                                              ; $4ef1: $00
	ldh  [$83], a                                    ; $4ef2: $e0 $83
	ret  nz                                          ; $4ef4: $c0

	nop                                              ; $4ef5: $00
	ldh  [$87], a                                    ; $4ef6: $e0 $87
	add  b                                           ; $4ef8: $80
	nop                                              ; $4ef9: $00
	ld   b, b                                        ; $4efa: $40
	rst  $38                                         ; $4efb: $ff
	nop                                              ; $4efc: $00
	rst  $38                                         ; $4efd: $ff
	nop                                              ; $4efe: $00
	rst  $38                                         ; $4eff: $ff
	nop                                              ; $4f00: $00
	rst  $38                                         ; $4f01: $ff
	nop                                              ; $4f02: $00
	rst  $38                                         ; $4f03: $ff
	nop                                              ; $4f04: $00
	rst  $38                                         ; $4f05: $ff
	nop                                              ; $4f06: $00
	rst  $38                                         ; $4f07: $ff
	nop                                              ; $4f08: $00
	rst  $38                                         ; $4f09: $ff
	nop                                              ; $4f0a: $00
	rst  $38                                         ; $4f0b: $ff
	nop                                              ; $4f0c: $00
	rst  $38                                         ; $4f0d: $ff
	nop                                              ; $4f0e: $00
	rst  $38                                         ; $4f0f: $ff
	nop                                              ; $4f10: $00
	rst  $38                                         ; $4f11: $ff
	nop                                              ; $4f12: $00
	pop  bc                                          ; $4f13: $c1
	nop                                              ; $4f14: $00
	ld   h, e                                        ; $4f15: $63
	nop                                              ; $4f16: $00
	nop                                              ; $4f17: $00
	nop                                              ; $4f18: $00
	add  e                                           ; $4f19: $83
	rst  $38                                         ; $4f1a: $ff
	add  b                                           ; $4f1b: $80
	ccf                                              ; $4f1c: $3f
	sub  b                                           ; $4f1d: $90
	rst  $38                                         ; $4f1e: $ff
	add  b                                           ; $4f1f: $80
	rst  $30                                         ; $4f20: $f7

jr_0a3_4f21:
	add  d                                           ; $4f21: $82
	ei                                               ; $4f22: $fb
	add  b                                           ; $4f23: $80
	cp   $81                                         ; $4f24: $fe $81
	rst  $38                                         ; $4f26: $ff
	add  b                                           ; $4f27: $80
	cp   $81                                         ; $4f28: $fe $81
	rst  $38                                         ; $4f2a: $ff
	ld   c, $f7                                      ; $4f2b: $0e $f7
	or   $7a                                         ; $4f2d: $f6 $7a
	ld   a, e                                        ; $4f2f: $7b
	ld   a, l                                        ; $4f30: $7d
	ld   [hl], l                                     ; $4f31: $75
	rst  $30                                         ; $4f32: $f7
	db   $fd                                         ; $4f33: $fd
	db   $fc                                         ; $4f34: $fc
	ld   l, d                                        ; $4f35: $6a
	jr   z, jr_0a3_4ebc                              ; $4f36: $28 $84

	ld   b, h                                        ; $4f38: $44
	ld   d, h                                        ; $4f39: $54
	ret  nc                                          ; $4f3a: $d0

	add  b                                           ; $4f3b: $80
	xor  b                                           ; $4f3c: $a8
	rlca                                             ; $4f3d: $07
	ld   [$f6e2], a                                  ; $4f3e: $ea $e2 $f6
	ldh  [c], a                                      ; $4f41: $e2
	ld   [$f5f3], a                                  ; $4f42: $ea $f3 $f5
	or   l                                           ; $4f45: $b5
	add  b                                           ; $4f46: $80
	cp   b                                           ; $4f47: $b8
	ld   bc, $9190                                   ; $4f48: $01 $90 $91
	add  b                                           ; $4f4b: $80
	adc  b                                           ; $4f4c: $88
	add  b                                           ; $4f4d: $80
	sbc  b                                           ; $4f4e: $98
	add  b                                           ; $4f4f: $80
	cp   c                                           ; $4f50: $b9
	nop                                              ; $4f51: $00
	cp   l                                           ; $4f52: $bd
	add  b                                           ; $4f53: $80
	dec  a                                           ; $4f54: $3d
	inc  b                                           ; $4f55: $04
	cp   a                                           ; $4f56: $bf
	cp   d                                           ; $4f57: $ba
	cp   e                                           ; $4f58: $bb
	sub  c                                           ; $4f59: $91
	pop  af                                          ; $4f5a: $f1
	add  b                                           ; $4f5b: $80
	push bc                                          ; $4f5c: $c5
	add  b                                           ; $4f5d: $80
	ld   c, a                                        ; $4f5e: $4f
	ld   [bc], a                                     ; $4f5f: $02
	ld   e, a                                        ; $4f60: $5f
	db   $eb                                         ; $4f61: $eb
	ld   l, e                                        ; $4f62: $6b
	add  b                                           ; $4f63: $80
	ld   l, l                                        ; $4f64: $6d
	inc  bc                                          ; $4f65: $03
	inc  l                                           ; $4f66: $2c
	xor  h                                           ; $4f67: $ac
	ld   a, a                                        ; $4f68: $7f
	nop                                              ; $4f69: $00
	add  d                                           ; $4f6a: $82
	inc  bc                                          ; $4f6b: $03
	add  b                                           ; $4f6c: $80
	ld   bc, $070a                                   ; $4f6d: $01 $0a $07
	inc  b                                           ; $4f70: $04
	inc  e                                           ; $4f71: $1c
	db   $10                                         ; $4f72: $10
	ldh  a, [$c0]                                    ; $4f73: $f0 $c0
	jp   nz, $d70c                                   ; $4f75: $c2 $0c $d7

	nop                                              ; $4f78: $00
	add  hl, de                                      ; $4f79: $19
	add  c                                           ; $4f7a: $81
	nop                                              ; $4f7b: $00
	rrca                                             ; $4f7c: $0f
	inc  c                                           ; $4f7d: $0c
	nop                                              ; $4f7e: $00
	stop                                             ; $4f7f: $10 $00
	ld   b, l                                        ; $4f81: $45
	ld   bc, $07af                                   ; $4f82: $01 $af $07
	ccf                                              ; $4f85: $3f
	rrca                                             ; $4f86: $0f
	call nz, $ffc1                                   ; $4f87: $c4 $c1 $ff
	ld   hl, sp-$0d                                  ; $4f8a: $f8 $f3
	ldh  a, [$80]                                    ; $4f8c: $f0 $80
	ld   b, b                                        ; $4f8e: $40
	dec  bc                                          ; $4f8f: $0b
	dec  a                                           ; $4f90: $3d
	nop                                              ; $4f91: $00
	ld   e, e                                        ; $4f92: $5b
	jr   jr_0a3_4f21                                 ; $4f93: $18 $8c

	inc  b                                           ; $4f95: $04
	rrca                                             ; $4f96: $0f
	ld   bc, $90d9                                   ; $4f97: $01 $d9 $90
	cp   $0e                                         ; $4f9a: $fe $0e
	add  b                                           ; $4f9c: $80
	ld   b, [hl]                                     ; $4f9d: $46
	add  b                                           ; $4f9e: $80
	ld   b, a                                        ; $4f9f: $47
	add  hl, de                                      ; $4fa0: $19
	ld   b, d                                        ; $4fa1: $42
	ld   [bc], a                                     ; $4fa2: $02
	add  c                                           ; $4fa3: $81
	nop                                              ; $4fa4: $00
	ld   c, a                                        ; $4fa5: $4f
	ld   bc, $081f                                   ; $4fa6: $01 $1f $08
	rst  ToBoot                                         ; $4fa9: $c7
	rra                                              ; $4faa: $1f
	rst  JumpTable                                         ; $4fab: $df
	rra                                              ; $4fac: $1f
	ld   a, a                                        ; $4fad: $7f
	ccf                                              ; $4fae: $3f
	and  e                                           ; $4faf: $a3
	inc  hl                                          ; $4fb0: $23
	dec  e                                           ; $4fb1: $1d
	ld   bc, $0022                                   ; $4fb2: $01 $22 $00
	ld   e, c                                        ; $4fb5: $59
	nop                                              ; $4fb6: $00
	ld   h, $18                                      ; $4fb7: $26 $18
	sbc  $80                                         ; $4fb9: $de $80
	add  b                                           ; $4fbb: $80
	ret  nz                                          ; $4fbc: $c0

	ld   hl, $c0c8                                   ; $4fbd: $21 $c8 $c0
	pop  hl                                          ; $4fc0: $e1
	ldh  [$d1], a                                    ; $4fc1: $e0 $d1
	ret  nz                                          ; $4fc3: $c0

	call nz, $07c0                                   ; $4fc4: $c4 $c0 $07
	ld   bc, $12b1                                   ; $4fc7: $01 $b1 $12
	ld   [bc], a                                     ; $4fca: $02
	nop                                              ; $4fcb: $00
	ld   [hl], d                                     ; $4fcc: $72
	db   $10                                         ; $4fcd: $10
	ld   e, $2e                                      ; $4fce: $1e $2e
	inc  l                                           ; $4fd0: $2c
	inc  sp                                          ; $4fd1: $33
	pop  af                                          ; $4fd2: $f1
	ld   [hl], h                                     ; $4fd3: $74
	ld   d, a                                        ; $4fd4: $57
	xor  e                                           ; $4fd5: $ab
	adc  a                                           ; $4fd6: $8f
	add  a                                           ; $4fd7: $87
	adc  a                                           ; $4fd8: $8f
	ld   c, a                                        ; $4fd9: $4f
	pop  bc                                          ; $4fda: $c1
	ld   bc, $4787                                   ; $4fdb: $01 $87 $47
	ld   c, a                                        ; $4fde: $4f
	rrca                                             ; $4fdf: $0f
	add  b                                           ; $4fe0: $80
	rra                                              ; $4fe1: $1f
	add  b                                           ; $4fe2: $80
	ld   a, a                                        ; $4fe3: $7f
	add  h                                           ; $4fe4: $84
	rst  $38                                         ; $4fe5: $ff
	ld   bc, $fcfd                                   ; $4fe6: $01 $fd $fc
	add  d                                           ; $4fe9: $82
	db   $fd                                         ; $4fea: $fd
	nop                                              ; $4feb: $00
	rst  $38                                         ; $4fec: $ff
	add  e                                           ; $4fed: $83
	cp   $80                                         ; $4fee: $fe $80
	ld   a, [$f880]                                  ; $4ff0: $fa $80 $f8
	inc  bc                                          ; $4ff3: $03
	or   b                                           ; $4ff4: $b0
	ld   [$0fc8], sp                                 ; $4ff5: $08 $c8 $0f
	add  b                                           ; $4ff8: $80
	rra                                              ; $4ff9: $1f
	ld   bc, $1f9f                                   ; $4ffa: $01 $9f $1f
	add  d                                           ; $4ffd: $82
	ccf                                              ; $4ffe: $3f
	nop                                              ; $4fff: $00
	ld   a, a                                        ; $5000: $7f
	add  c                                           ; $5001: $81
	ld   a, [hl]                                     ; $5002: $7e
	ld   b, $e9                                      ; $5003: $06 $e9
	rlca                                             ; $5005: $07
	inc  de                                          ; $5006: $13
	adc  e                                           ; $5007: $8b
	xor  e                                           ; $5008: $ab
	and  e                                           ; $5009: $a3
	rst  $38                                         ; $500a: $ff
	add  b                                           ; $500b: $80
	ld   a, h                                        ; $500c: $7c
	add  b                                           ; $500d: $80
	ld   a, b                                        ; $500e: $78
	nop                                              ; $500f: $00
	ld   a, h                                        ; $5010: $7c
	add  c                                           ; $5011: $81
	db   $fc                                         ; $5012: $fc
	add  b                                           ; $5013: $80
	cp   $84                                         ; $5014: $fe $84
	rst  $38                                         ; $5016: $ff
	add  b                                           ; $5017: $80
	ld   a, a                                        ; $5018: $7f
	add  h                                           ; $5019: $84
	ccf                                              ; $501a: $3f
	ld   [bc], a                                     ; $501b: $02
	ld   a, a                                        ; $501c: $7f
	ld   a, b                                        ; $501d: $78
	ld   hl, sp-$7f                                  ; $501e: $f8 $81
	db   $fc                                         ; $5020: $fc
	ld   bc, $e6e4                                   ; $5021: $01 $e4 $e6
	add  b                                           ; $5024: $80
	ldh  [c], a                                      ; $5025: $e2
	add  b                                           ; $5026: $80
	ldh  [$80], a                                    ; $5027: $e0 $80
	ldh  a, [$80]                                    ; $5029: $f0 $80
	ldh  a, [c]                                      ; $502b: $f2
	nop                                              ; $502c: $00
	cp   $84                                         ; $502d: $fe $84
	rst  $38                                         ; $502f: $ff
	add  b                                           ; $5030: $80
	inc  a                                           ; $5031: $3c
	add  b                                           ; $5032: $80
	nop                                              ; $5033: $00
	add  b                                           ; $5034: $80
	ld   bc, $0380                                   ; $5035: $01 $80 $03
	add  b                                           ; $5038: $80
	rrca                                             ; $5039: $0f
	add  b                                           ; $503a: $80
	rst  $38                                         ; $503b: $ff
	add  b                                           ; $503c: $80
	db   $fc                                         ; $503d: $fc
	add  b                                           ; $503e: $80
	ld   a, $80                                      ; $503f: $3e $80
	ld   a, [hl]                                     ; $5041: $7e
	add  [hl]                                        ; $5042: $86
	rst  $38                                         ; $5043: $ff
	add  b                                           ; $5044: $80
	ccf                                              ; $5045: $3f
	add  h                                           ; $5046: $84
	ld   a, a                                        ; $5047: $7f
	add  [hl]                                        ; $5048: $86
	ccf                                              ; $5049: $3f
	adc  a                                           ; $504a: $8f
	rst  $38                                         ; $504b: $ff
	rst  $38                                         ; $504c: $ff
	nop                                              ; $504d: $00
	rst  $38                                         ; $504e: $ff
	nop                                              ; $504f: $00
	rst  $38                                         ; $5050: $ff
	nop                                              ; $5051: $00
	rst  $38                                         ; $5052: $ff
	nop                                              ; $5053: $00
	rst  $38                                         ; $5054: $ff
	nop                                              ; $5055: $00
	rst  $38                                         ; $5056: $ff
	nop                                              ; $5057: $00
	rst  $38                                         ; $5058: $ff
	nop                                              ; $5059: $00
	rst  $38                                         ; $505a: $ff
	nop                                              ; $505b: $00
	rst  $38                                         ; $505c: $ff
	nop                                              ; $505d: $00
	rst  $38                                         ; $505e: $ff
	nop                                              ; $505f: $00
	rst  $38                                         ; $5060: $ff
	nop                                              ; $5061: $00
	rst  $38                                         ; $5062: $ff
	nop                                              ; $5063: $00
	rst  $38                                         ; $5064: $ff
	nop                                              ; $5065: $00
	add  b                                           ; $5066: $80
	nop                                              ; $5067: $00
	cp   a                                           ; $5068: $bf
	db   $e3                                         ; $5069: $e3
	ld   a, a                                        ; $506a: $7f
	pop  hl                                          ; $506b: $e1
	ld   a, a                                        ; $506c: $7f
	and  $bd                                         ; $506d: $e6 $bd
	add  sp, -$47                                    ; $506f: $e8 $b9
	pop  hl                                          ; $5071: $e1
	dec  sp                                          ; $5072: $3b
	db   $e3                                         ; $5073: $e3
	cp   e                                           ; $5074: $bb
	ldh  [$dc], a                                    ; $5075: $e0 $dc
	ld   [hl], b                                     ; $5077: $70
	db   $fd                                         ; $5078: $fd
	add  hl, sp                                      ; $5079: $39
	cp   $ce                                         ; $507a: $fe $ce
	cp   $20                                         ; $507c: $fe $20
	rst  $38                                         ; $507e: $ff
	add  b                                           ; $507f: $80
	rst  $38                                         ; $5080: $ff
	ld   h, b                                        ; $5081: $60
	rst  $38                                         ; $5082: $ff
	nop                                              ; $5083: $00
	rst  $38                                         ; $5084: $ff
	ret  nz                                          ; $5085: $c0

	ccf                                              ; $5086: $3f
	ldh  a, [$73]                                    ; $5087: $f0 $73
	ld   de, $fcff                                   ; $5089: $11 $ff $fc
	adc  a                                           ; $508c: $8f
	add  e                                           ; $508d: $83
	rst  $38                                         ; $508e: $ff
	ld   hl, sp-$04                                  ; $508f: $f8 $fc
	db   $fc                                         ; $5091: $fc
	db   $f4                                         ; $5092: $f4
	inc  [hl]                                        ; $5093: $34
	inc  a                                           ; $5094: $3c
	inc  l                                           ; $5095: $2c
	ld   hl, sp+$70                                  ; $5096: $f8 $70
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
	add  b                                           ; $50a6: $80
	nop                                              ; $50a7: $00
	inc  bc                                          ; $50a8: $03
	and  $83                                         ; $50a9: $e6 $83
	rst  $30                                         ; $50ab: $f7
	jp   $e376                                       ; $50ac: $c3 $76 $e3


	cp   a                                           ; $50af: $bf
	ld   [hl], e                                     ; $50b0: $73
	rra                                              ; $50b1: $1f
	scf                                              ; $50b2: $37
	dec  e                                           ; $50b3: $1d
	dec  e                                           ; $50b4: $1d
	dec  c                                           ; $50b5: $0d
	inc  e                                           ; $50b6: $1c
	inc  c                                           ; $50b7: $0c
	jr   jr_0a3_50c2                                 ; $50b8: $18 $08

	db   $10                                         ; $50ba: $10
	stop                                             ; $50bb: $10 $00
	nop                                              ; $50bd: $00
	inc  b                                           ; $50be: $04
	inc  b                                           ; $50bf: $04
	inc  c                                           ; $50c0: $0c
	inc  b                                           ; $50c1: $04

jr_0a3_50c2:
	inc  c                                           ; $50c2: $0c
	nop                                              ; $50c3: $00
	nop                                              ; $50c4: $00
	nop                                              ; $50c5: $00
	nop                                              ; $50c6: $00
	nop                                              ; $50c7: $00
	ldh  a, [c]                                      ; $50c8: $f2
	rst  JumpTable                                         ; $50c9: $df
	inc  sp                                          ; $50ca: $33
	rra                                              ; $50cb: $1f
	ei                                               ; $50cc: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50cd: $cf
	ld   sp, hl                                      ; $50ce: $f9
	rst  $28                                         ; $50cf: $ef
	cp   c                                           ; $50d0: $b9
	xor  a                                           ; $50d1: $af
	reti                                             ; $50d2: $d9


	ld   e, a                                        ; $50d3: $5f
	ld   a, [$3ade]                                  ; $50d4: $fa $de $3a
	ld   e, $35                                      ; $50d7: $1e $35
	dec  e                                           ; $50d9: $1d
	ld   a, l                                        ; $50da: $7d
	ld   a, c                                        ; $50db: $79
	inc  a                                           ; $50dc: $3c
	jr   nc, jr_0a3_515b                             ; $50dd: $30 $7c

	jr   nz, jr_0a3_515d                             ; $50df: $20 $7c

	jr   nz, jr_0a3_5161                             ; $50e1: $20 $7e

	ld   b, b                                        ; $50e3: $40
	cp   $40                                         ; $50e4: $fe $40
	rst  $38                                         ; $50e6: $ff
	add  b                                           ; $50e7: $80
	cp   a                                           ; $50e8: $bf
	db   $e3                                         ; $50e9: $e3
	ld   a, a                                        ; $50ea: $7f
	pop  hl                                          ; $50eb: $e1
	ld   a, a                                        ; $50ec: $7f
	and  $bd                                         ; $50ed: $e6 $bd
	add  sp, -$48                                    ; $50ef: $e8 $b8
	ldh  [$3b], a                                    ; $50f1: $e0 $3b
	pop  hl                                          ; $50f3: $e1
	cp   e                                           ; $50f4: $bb
	db   $e3                                         ; $50f5: $e3
	db   $dd                                         ; $50f6: $dd
	ld   [hl], b                                     ; $50f7: $70
	ld   [hl], e                                     ; $50f8: $73
	ld   de, $fcff                                   ; $50f9: $11 $ff $fc
	adc  a                                           ; $50fc: $8f
	add  e                                           ; $50fd: $83
	rlca                                             ; $50fe: $07
	nop                                              ; $50ff: $00
	ld   hl, sp-$10                                  ; $5100: $f8 $f0
	db   $fc                                         ; $5102: $fc
	db   $fc                                         ; $5103: $fc
	inc  a                                           ; $5104: $3c
	inc  l                                           ; $5105: $2c
	ld   hl, sp+$70                                  ; $5106: $f8 $70
	inc  bc                                          ; $5108: $03
	and  $83                                         ; $5109: $e6 $83
	rst  $30                                         ; $510b: $f7
	jp   $e376                                       ; $510c: $c3 $76 $e3


	cp   [hl]                                        ; $510f: $be
	ld   [hl], e                                     ; $5110: $73
	rra                                              ; $5111: $1f
	scf                                              ; $5112: $37
	dec  e                                           ; $5113: $1d
	dec  e                                           ; $5114: $1d
	dec  c                                           ; $5115: $0d
	inc  e                                           ; $5116: $1c
	inc  c                                           ; $5117: $0c
	ldh  a, [c]                                      ; $5118: $f2
	rst  JumpTable                                         ; $5119: $df
	inc  sp                                          ; $511a: $33
	rra                                              ; $511b: $1f
	dec  sp                                          ; $511c: $3b
	rrca                                             ; $511d: $0f
	ld   sp, hl                                      ; $511e: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $511f: $cf
	ld   sp, hl                                      ; $5120: $f9
	rst  $28                                         ; $5121: $ef
	reti                                             ; $5122: $d9


	ld   e, a                                        ; $5123: $5f
	ld   a, [$3ade]                                  ; $5124: $fa $de $3a
	ld   e, $bf                                      ; $5127: $1e $bf
	db   $e3                                         ; $5129: $e3
	ld   a, a                                        ; $512a: $7f
	pop  hl                                          ; $512b: $e1
	ld   a, a                                        ; $512c: $7f
	and  $bd                                         ; $512d: $e6 $bd
	add  sp, -$48                                    ; $512f: $e8 $b8
	ldh  [$3b], a                                    ; $5131: $e0 $3b
	ldh  [$bb], a                                    ; $5133: $e0 $bb
	db   $e3                                         ; $5135: $e3
	db   $dd                                         ; $5136: $dd
	ld   [hl], b                                     ; $5137: $70
	ld   [hl], e                                     ; $5138: $73
	ld   de, $fcff                                   ; $5139: $11 $ff $fc
	adc  a                                           ; $513c: $8f
	add  e                                           ; $513d: $83
	add  a                                           ; $513e: $87
	nop                                              ; $513f: $00
	nop                                              ; $5140: $00
	nop                                              ; $5141: $00
	inc  c                                           ; $5142: $0c
	nop                                              ; $5143: $00
	db   $fc                                         ; $5144: $fc
	db   $fc                                         ; $5145: $fc
	db   $fc                                         ; $5146: $fc
	ldh  a, [$03]                                    ; $5147: $f0 $03
	and  $83                                         ; $5149: $e6 $83
	rst  $30                                         ; $514b: $f7
	jp   $e276                                       ; $514c: $c3 $76 $e2


	cp   [hl]                                        ; $514f: $be
	ld   [hl], d                                     ; $5150: $72
	ld   e, $37                                      ; $5151: $1e $37
	inc  e                                           ; $5153: $1c
	dec  e                                           ; $5154: $1d
	dec  c                                           ; $5155: $0d
	dec  e                                           ; $5156: $1d
	inc  c                                           ; $5157: $0c
	ldh  a, [c]                                      ; $5158: $f2
	rst  JumpTable                                         ; $5159: $df
	inc  sp                                          ; $515a: $33

jr_0a3_515b:
	rra                                              ; $515b: $1f
	dec  sp                                          ; $515c: $3b

jr_0a3_515d:
	rrca                                             ; $515d: $0f
	add  hl, de                                      ; $515e: $19
	rrca                                             ; $515f: $0f
	add  hl, de                                      ; $5160: $19

jr_0a3_5161:
	rrca                                             ; $5161: $0f
	add  hl, sp                                      ; $5162: $39
	rra                                              ; $5163: $1f
	ld   a, [$fafe]                                  ; $5164: $fa $fe $fa
	sbc  $18                                         ; $5167: $de $18
	ld   [$1010], sp                                 ; $5169: $08 $10 $10
	nop                                              ; $516c: $00
	nop                                              ; $516d: $00
	inc  b                                           ; $516e: $04
	inc  b                                           ; $516f: $04
	inc  c                                           ; $5170: $0c
	inc  b                                           ; $5171: $04
	inc  c                                           ; $5172: $0c
	nop                                              ; $5173: $00
	jr   c, jr_0a3_518e                              ; $5174: $38 $18

	nop                                              ; $5176: $00
	nop                                              ; $5177: $00
	ld   de, $0201                                   ; $5178: $11 $01 $02
	ld   [bc], a                                     ; $517b: $02
	inc  c                                           ; $517c: $0c
	inc  b                                           ; $517d: $04
	jr   @+$0a                                       ; $517e: $18 $08

	jr   nc, jr_0a3_51b2                             ; $5180: $30 $30

	ldh  a, [$f0]                                    ; $5182: $f0 $f0
	sbc  b                                           ; $5184: $98
	ld   hl, sp-$58                                  ; $5185: $f8 $a8
	add  sp, $18                                     ; $5187: $e8 $18
	ld   [$1010], sp                                 ; $5189: $08 $10 $10
	nop                                              ; $518c: $00
	nop                                              ; $518d: $00

jr_0a3_518e:
	inc  b                                           ; $518e: $04
	inc  b                                           ; $518f: $04
	inc  c                                           ; $5190: $0c
	inc  b                                           ; $5191: $04
	inc  c                                           ; $5192: $0c
	nop                                              ; $5193: $00

jr_0a3_5194:
	jr   c, jr_0a3_51ae                              ; $5194: $38 $18

	jr   z, jr_0a3_51c0                              ; $5196: $28 $28

	add  hl, sp                                      ; $5198: $39
	ld   de, $0202                                   ; $5199: $11 $02 $02
	inc  e                                           ; $519c: $1c
	inc  b                                           ; $519d: $04
	jr   @+$0a                                       ; $519e: $18 $08

	jr   nc, jr_0a3_51d2                             ; $51a0: $30 $30

	ldh  a, [$f0]                                    ; $51a2: $f0 $f0
	sbc  b                                           ; $51a4: $98

jr_0a3_51a5:
	ld   hl, sp-$58                                  ; $51a5: $f8 $a8
	add  sp, $00                                     ; $51a7: $e8 $00

jr_0a3_51a9:
	nop                                              ; $51a9: $00
	nop                                              ; $51aa: $00
	nop                                              ; $51ab: $00
	nop                                              ; $51ac: $00
	nop                                              ; $51ad: $00

jr_0a3_51ae:
	nop                                              ; $51ae: $00
	nop                                              ; $51af: $00
	nop                                              ; $51b0: $00
	nop                                              ; $51b1: $00

jr_0a3_51b2:
	nop                                              ; $51b2: $00
	nop                                              ; $51b3: $00
	nop                                              ; $51b4: $00
	nop                                              ; $51b5: $00
	nop                                              ; $51b6: $00

jr_0a3_51b7:
	nop                                              ; $51b7: $00
	ld   e, b                                        ; $51b8: $58
	nop                                              ; $51b9: $00
	ld   b, $0c                                      ; $51ba: $06 $0c
	nop                                              ; $51bc: $00
	inc  de                                          ; $51bd: $13
	inc  c                                           ; $51be: $0c
	ld   l, l                                        ; $51bf: $6d

jr_0a3_51c0:
	inc  c                                           ; $51c0: $0c
	adc  l                                           ; $51c1: $8d
	add  b                                           ; $51c2: $80
	ld   l, b                                        ; $51c3: $68
	rrca                                             ; $51c4: $0f
	halt                                             ; $51c5: $76
	rst  $30                                         ; $51c6: $f7
	dec  l                                           ; $51c7: $2d
	cpl                                              ; $51c8: $2f
	dec  bc                                          ; $51c9: $0b
	adc  b                                           ; $51ca: $88
	add  hl, hl                                      ; $51cb: $29
	cpl                                              ; $51cc: $2f
	ld   [hl], a                                     ; $51cd: $77
	pop  af                                          ; $51ce: $f1
	dec  sp                                          ; $51cf: $3b
	ld   a, e                                        ; $51d0: $7b
	nop                                              ; $51d1: $00

jr_0a3_51d2:
	ld   b, h                                        ; $51d2: $44
	inc  [hl]                                        ; $51d3: $34
	or   b                                           ; $51d4: $b0
	add  b                                           ; $51d5: $80

jr_0a3_51d6:
	ld   [hl], b                                     ; $51d6: $70
	add  c                                           ; $51d7: $81
	ld   a, b                                        ; $51d8: $78
	ld   [$30f8], sp                                 ; $51d9: $08 $f8 $30
	cpl                                              ; $51dc: $2f
	nop                                              ; $51dd: $00
	sub  b                                           ; $51de: $90
	ld   h, b                                        ; $51df: $60
	ld   l, h                                        ; $51e0: $6c
	ld   h, b                                        ; $51e1: $60
	ld   h, d                                        ; $51e2: $62
	add  b                                           ; $51e3: $80
	inc  l                                           ; $51e4: $2c
	rrca                                             ; $51e5: $0f
	call c, Call_0a3_68de                            ; $51e6: $dc $de $68
	add  sp, -$60                                    ; $51e9: $e8 $a0
	ld   [hl+], a                                    ; $51eb: $22
	jr   z, jr_0a3_51d6                              ; $51ec: $28 $e8

	call c, $b81e                                    ; $51ee: $dc $1e $b8
	cp   h                                           ; $51f1: $bc
	nop                                              ; $51f2: $00
	ld   b, h                                        ; $51f3: $44
	ld   e, b                                        ; $51f4: $58
	ld   a, [de]                                     ; $51f5: $1a
	add  b                                           ; $51f6: $80
	inc  e                                           ; $51f7: $1c
	add  c                                           ; $51f8: $81
	inc  a                                           ; $51f9: $3c
	inc  bc                                          ; $51fa: $03
	ld   a, $18                                      ; $51fb: $3e $18
	db   $e4                                         ; $51fd: $e4
	nop                                              ; $51fe: $00
	add  b                                           ; $51ff: $80
	ld   [$0d80], sp                                 ; $5200: $08 $80 $0d
	add  b                                           ; $5203: $80
	jr   z, @-$7e                                    ; $5204: $28 $80

	ld   [hl], b                                     ; $5206: $70
	ld   a, [bc]                                     ; $5207: $0a
	ld   hl, $0320                                   ; $5208: $21 $20 $03
	nop                                              ; $520b: $00
	ld   a, [bc]                                     ; $520c: $0a
	nop                                              ; $520d: $00
	ld   [$2800], sp                                 ; $520e: $08 $00 $28
	nop                                              ; $5211: $00
	jr   z, jr_0a3_5194                              ; $5212: $28 $80

	nop                                              ; $5214: $00
	add  b                                           ; $5215: $80
	jr   nc, jr_0a3_5219                             ; $5216: $30 $01

	db   $10                                         ; $5218: $10

jr_0a3_5219:
	inc  de                                          ; $5219: $13
	add  b                                           ; $521a: $80
	jr   z, jr_0a3_5221                              ; $521b: $28 $04

	ld   a, b                                        ; $521d: $78
	ld   a, [hl]                                     ; $521e: $7e
	jr   nc, @+$37                                   ; $521f: $30 $35

jr_0a3_5221:
	nop                                              ; $5221: $00

jr_0a3_5222:
	add  b                                           ; $5222: $80
	jr   nz, jr_0a3_51a5                             ; $5223: $20 $80

	ld   h, b                                        ; $5225: $60
	add  b                                           ; $5226: $80
	jr   z, jr_0a3_51a9                              ; $5227: $28 $80

	inc  e                                           ; $5229: $1c
	add  b                                           ; $522a: $80
	ld   [$8008], sp                                 ; $522b: $08 $08 $80
	nop                                              ; $522e: $00
	and  b                                           ; $522f: $a0
	nop                                              ; $5230: $00
	jr   nz, jr_0a3_5233                             ; $5231: $20 $00

jr_0a3_5233:
	jr   z, jr_0a3_5235                              ; $5233: $28 $00

jr_0a3_5235:
	jr   z, jr_0a3_51b7                              ; $5235: $28 $80

	nop                                              ; $5237: $00
	add  b                                           ; $5238: $80
	jr   jr_0a3_523c                                 ; $5239: $18 $01

	db   $10                                         ; $523b: $10

jr_0a3_523c:
	sub  b                                           ; $523c: $90
	add  b                                           ; $523d: $80
	jr   z, @+$05                                    ; $523e: $28 $03

	inc  a                                           ; $5240: $3c

jr_0a3_5241:
	db   $fc                                         ; $5241: $fc
	jr   jr_0a3_529c                                 ; $5242: $18 $58

	add  e                                           ; $5244: $83
	nop                                              ; $5245: $00
	inc  bc                                          ; $5246: $03
	ld   bc, $0e00                                   ; $5247: $01 $00 $0e
	ld   bc, $0780                                   ; $524a: $01 $80 $07
	ld   c, $14                                      ; $524d: $0e $14
	dec  b                                           ; $524f: $05
	ld   [hl+], a                                    ; $5250: $22
	ld   a, [bc]                                     ; $5251: $0a
	ld   a, b                                        ; $5252: $78
	dec  [hl]                                        ; $5253: $35
	ld   e, l                                        ; $5254: $5d
	jr   jr_0a3_527f                                 ; $5255: $18 $28

	ld   c, $13                                      ; $5257: $0e $13
	inc  b                                           ; $5259: $04
	ld   a, [bc]                                     ; $525a: $0a
	nop                                              ; $525b: $00
	inc  b                                           ; $525c: $04
	add  e                                           ; $525d: $83
	nop                                              ; $525e: $00
	dec  bc                                          ; $525f: $0b
	rrca                                             ; $5260: $0f
	nop                                              ; $5261: $00
	ld   sp, $5a0d                                   ; $5262: $31 $0d $5a
	ld   a, $95                                      ; $5265: $3e $95
	dec  a                                           ; $5267: $3d
	jr   c, jr_0a3_5222                              ; $5268: $38 $b8

	rst  $30                                         ; $526a: $f7
	ld   [hl], a                                     ; $526b: $77
	add  d                                           ; $526c: $82
	rst  $38                                         ; $526d: $ff
	add  b                                           ; $526e: $80
	ld   c, l                                        ; $526f: $4d
	ld   [$9212], sp                                 ; $5270: $08 $12 $92
	call z, $b34c                                    ; $5273: $cc $4c $b3
	inc  sp                                          ; $5276: $33
	ld   c, h                                        ; $5277: $4c
	nop                                              ; $5278: $00
	inc  sp                                          ; $5279: $33
	add  e                                           ; $527a: $83
	nop                                              ; $527b: $00
	dec  b                                           ; $527c: $05
	rst  $38                                         ; $527d: $ff
	ld   d, b                                        ; $527e: $50

jr_0a3_527f:
	ld   d, h                                        ; $527f: $54
	ld   [hl], l                                     ; $5280: $75
	ld   [hl], d                                     ; $5281: $72
	inc  bc                                          ; $5282: $03
	add  b                                           ; $5283: $80
	adc  l                                           ; $5284: $8d
	add  b                                           ; $5285: $80
	ld   [hl], b                                     ; $5286: $70
	add  b                                           ; $5287: $80
	ld   [hl], a                                     ; $5288: $77
	add  b                                           ; $5289: $80
	rst  $28                                         ; $528a: $ef
	add  b                                           ; $528b: $80
	rst  $38                                         ; $528c: $ff
	add  b                                           ; $528d: $80
	rst  $30                                         ; $528e: $f7
	add  b                                           ; $528f: $80
	ld   [$5180], a                                  ; $5290: $ea $80 $51
	add  b                                           ; $5293: $80
	adc  [hl]                                        ; $5294: $8e
	ld   [bc], a                                     ; $5295: $02
	ld   [hl], c                                     ; $5296: $71
	nop                                              ; $5297: $00
	adc  [hl]                                        ; $5298: $8e
	add  e                                           ; $5299: $83
	nop                                              ; $529a: $00
	dec  bc                                          ; $529b: $0b

jr_0a3_529c:
	add  b                                           ; $529c: $80
	nop                                              ; $529d: $00
	ld   h, b                                        ; $529e: $60
	add  b                                           ; $529f: $80
	ret  c                                           ; $52a0: $d8

	ret  nz                                          ; $52a1: $c0

	ld   h, h                                        ; $52a2: $64
	ld   hl, sp-$15                                  ; $52a3: $f8 $eb
	db   $fc                                         ; $52a5: $fc
	ld   [hl], e                                     ; $52a6: $73
	ld   a, a                                        ; $52a7: $7f
	add  b                                           ; $52a8: $80
	db   $fd                                         ; $52a9: $fd
	add  b                                           ; $52aa: $80
	ld   a, [$900a]                                  ; $52ab: $fa $0a $90
	sub  l                                           ; $52ae: $95
	ld   b, l                                        ; $52af: $45
	ld   c, b                                        ; $52b0: $48
	cp   b                                           ; $52b1: $b8
	or   e                                           ; $52b2: $b3
	ld   l, [hl]                                     ; $52b3: $6e
	ld   h, c                                        ; $52b4: $61
	sub  d                                           ; $52b5: $92
	nop                                              ; $52b6: $00
	ld   h, c                                        ; $52b7: $61
	adc  l                                           ; $52b8: $8d
	nop                                              ; $52b9: $00
	ld   c, $80                                      ; $52ba: $0e $80
	nop                                              ; $52bc: $00
	ld   b, b                                        ; $52bd: $40
	nop                                              ; $52be: $00
	jr   nz, jr_0a3_5241                             ; $52bf: $20 $80

	ldh  a, [$60]                                    ; $52c1: $f0 $60
	ret  nc                                          ; $52c3: $d0

	ret  nz                                          ; $52c4: $c0

	and  b                                           ; $52c5: $a0
	add  b                                           ; $52c6: $80
	ld   b, b                                        ; $52c7: $40
	nop                                              ; $52c8: $00
	add  b                                           ; $52c9: $80
	add  l                                           ; $52ca: $85
	nop                                              ; $52cb: $00
	add  b                                           ; $52cc: $80
	ld   [bc], a                                     ; $52cd: $02
	add  d                                           ; $52ce: $82
	nop                                              ; $52cf: $00
	ld   [bc], a                                     ; $52d0: $02
	ld   bc, $0100                                   ; $52d1: $01 $00 $01
	adc  [hl]                                        ; $52d4: $8e
	nop                                              ; $52d5: $00
	add  b                                           ; $52d6: $80
	inc  de                                          ; $52d7: $13
	add  b                                           ; $52d8: $80
	ld   a, e                                        ; $52d9: $7b
	add  b                                           ; $52da: $80
	ld   h, h                                        ; $52db: $64
	ld   [bc], a                                     ; $52dc: $02
	jr   nz, jr_0a3_527f                             ; $52dd: $20 $a0

	add  b                                           ; $52df: $80
	sub  l                                           ; $52e0: $95
	nop                                              ; $52e1: $00
	add  b                                           ; $52e2: $80
	sub  b                                           ; $52e3: $90
	add  b                                           ; $52e4: $80
	cp   h                                           ; $52e5: $bc
	add  b                                           ; $52e6: $80
	ld   c, h                                        ; $52e7: $4c
	add  b                                           ; $52e8: $80
	ld   [$00ff], sp                                 ; $52e9: $08 $ff $00
	rst  $38                                         ; $52ec: $ff
	nop                                              ; $52ed: $00
	rst  $38                                         ; $52ee: $ff
	nop                                              ; $52ef: $00
	rst  $38                                         ; $52f0: $ff
	nop                                              ; $52f1: $00
	rst  $38                                         ; $52f2: $ff
	nop                                              ; $52f3: $00
	rst  $38                                         ; $52f4: $ff
	nop                                              ; $52f5: $00
	rst  $38                                         ; $52f6: $ff
	nop                                              ; $52f7: $00
	rst  $38                                         ; $52f8: $ff
	nop                                              ; $52f9: $00
	rst  $38                                         ; $52fa: $ff
	nop                                              ; $52fb: $00
	rst  $38                                         ; $52fc: $ff
	nop                                              ; $52fd: $00
	rst  $38                                         ; $52fe: $ff
	nop                                              ; $52ff: $00
	rst  $38                                         ; $5300: $ff
	nop                                              ; $5301: $00
	rst  $38                                         ; $5302: $ff
	nop                                              ; $5303: $00
	sub  b                                           ; $5304: $90
	nop                                              ; $5305: $00
	ld   e, a                                        ; $5306: $5f
	nop                                              ; $5307: $00
	ld   [$000e], sp                                 ; $5308: $08 $0e $00
	add  hl, bc                                      ; $530b: $09
	nop                                              ; $530c: $00
	jr   jr_0a3_530f                                 ; $530d: $18 $00

jr_0a3_530f:
	jr   nz, jr_0a3_5311                             ; $530f: $20 $00

jr_0a3_5311:
	ld   b, b                                        ; $5311: $40
	add  b                                           ; $5312: $80
	db   $10                                         ; $5313: $10
	add  b                                           ; $5314: $80
	inc  c                                           ; $5315: $0c
	nop                                              ; $5316: $00
	nop                                              ; $5317: $00
	add  b                                           ; $5318: $80
	inc  b                                           ; $5319: $04
	add  b                                           ; $531a: $80
	inc  c                                           ; $531b: $0c
	add  b                                           ; $531c: $80
	nop                                              ; $531d: $00
	inc  d                                           ; $531e: $14
	ld   hl, $f9a9                                   ; $531f: $21 $a9 $f9
	db   $fd                                         ; $5322: $fd
	db   $dd                                         ; $5323: $dd
	add  hl, de                                      ; $5324: $19
	daa                                              ; $5325: $27
	rrca                                             ; $5326: $0f
	rla                                              ; $5327: $17
	rlca                                             ; $5328: $07
	stop                                             ; $5329: $10 $00
	rra                                              ; $532b: $1f
	nop                                              ; $532c: $00
	ld   [hl], b                                     ; $532d: $70
	nop                                              ; $532e: $00
	adc  b                                           ; $532f: $88
	nop                                              ; $5330: $00
	inc  b                                           ; $5331: $04
	nop                                              ; $5332: $00
	ld   [bc], a                                     ; $5333: $02
	add  b                                           ; $5334: $80
	ld   [$7080], sp                                 ; $5335: $08 $80 $70
	nop                                              ; $5338: $00
	nop                                              ; $5339: $00
	add  b                                           ; $533a: $80
	add  b                                           ; $533b: $80
	add  b                                           ; $533c: $80
	sub  b                                           ; $533d: $90
	add  b                                           ; $533e: $80
	add  b                                           ; $533f: $80
	add  hl, bc                                      ; $5340: $09
	add  h                                           ; $5341: $84
	sub  l                                           ; $5342: $95
	sbc  a                                           ; $5343: $9f
	rst  JumpTable                                         ; $5344: $df
	db   $db                                         ; $5345: $db
	sbc  b                                           ; $5346: $98
	db   $e4                                         ; $5347: $e4
	ldh  a, [$e8]                                    ; $5348: $f0 $e8
	ldh  [$80], a                                    ; $534a: $e0 $80
	nop                                              ; $534c: $00
	dec  c                                           ; $534d: $0d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $534e: $cf
	ld   [de], a                                     ; $534f: $12
	ld   e, a                                        ; $5350: $5f
	inc  l                                           ; $5351: $2c
	ld   c, l                                        ; $5352: $4d
	dec  c                                           ; $5353: $0d
	pop  hl                                          ; $5354: $e1
	nop                                              ; $5355: $00
	add  [hl]                                        ; $5356: $86
	scf                                              ; $5357: $37
	ld   a, a                                        ; $5358: $7f
	rrca                                             ; $5359: $0f
	ld   l, $0e                                      ; $535a: $2e $0e
	add  d                                           ; $535c: $82
	nop                                              ; $535d: $00
	ld   [bc], a                                     ; $535e: $02
	ld   bc, $1000                                   ; $535f: $01 $00 $10
	add  l                                           ; $5362: $85
	nop                                              ; $5363: $00
	inc  c                                           ; $5364: $0c
	jr   jr_0a3_5375                                 ; $5365: $18 $0e

	ld   b, $00                                      ; $5367: $06 $00
	rst  $20                                         ; $5369: $e7
	ld   h, b                                        ; $536a: $60
	db   $e4                                         ; $536b: $e4
	ld   [$8c8a], sp                                 ; $536c: $08 $8a $8c
	db   $ec                                         ; $536f: $ec
	ld   l, h                                        ; $5370: $6c
	inc  c                                           ; $5371: $0c
	add  b                                           ; $5372: $80
	db   $e4                                         ; $5373: $e4
	add  hl, bc                                      ; $5374: $09

jr_0a3_5375:
	adc  h                                           ; $5375: $8c
	ld   l, $28                                      ; $5376: $2e $28
	inc  c                                           ; $5378: $0c
	nop                                              ; $5379: $00
	ld   h, b                                        ; $537a: $60
	nop                                              ; $537b: $00

jr_0a3_537c:
	ldh  [rP1], a                                    ; $537c: $e0 $00
	ld   [$0085], sp                                 ; $537e: $08 $85 $00
	ld   [$7018], sp                                 ; $5381: $08 $18 $70
	ld   h, b                                        ; $5384: $60
	nop                                              ; $5385: $00
	ld   hl, sp+$00                                  ; $5386: $f8 $00
	ld   bc, $0100                                   ; $5388: $01 $00 $01
	add  b                                           ; $538b: $80
	ldh  [$84], a                                    ; $538c: $e0 $84
	nop                                              ; $538e: $00
	add  h                                           ; $538f: $84
	ld   bc, $008d                                   ; $5390: $01 $8d $00
	ld   [bc], a                                     ; $5393: $02
	add  b                                           ; $5394: $80
	nop                                              ; $5395: $00
	add  b                                           ; $5396: $80
	add  [hl]                                        ; $5397: $86

jr_0a3_5398:
	nop                                              ; $5398: $00
	add  d                                           ; $5399: $82
	add  b                                           ; $539a: $80
	add  b                                           ; $539b: $80
	ldh  [$8b], a                                    ; $539c: $e0 $8b
	nop                                              ; $539e: $00
	dec  c                                           ; $539f: $0d
	rrca                                             ; $53a0: $0f
	ld   [bc], a                                     ; $53a1: $02
	ld   b, e                                        ; $53a2: $43
	nop                                              ; $53a3: $00
	ld   a, h                                        ; $53a4: $7c
	inc  c                                           ; $53a5: $0c
	ld   b, l                                        ; $53a6: $45
	dec  h                                           ; $53a7: $25
	jr   nz, @+$32                                   ; $53a8: $20 $30

	ld   a, a                                        ; $53aa: $7f
	rrca                                             ; $53ab: $0f
	ld   l, $0e                                      ; $53ac: $2e $0e
	add  d                                           ; $53ae: $82
	nop                                              ; $53af: $00
	ld   [bc], a                                     ; $53b0: $02
	ld   bc, $1000                                   ; $53b1: $01 $00 $10
	add  l                                           ; $53b4: $85
	nop                                              ; $53b5: $00
	add  hl, bc                                      ; $53b6: $09
	jr   jr_0a3_53c7                                 ; $53b7: $18 $0e

	ld   b, $00                                      ; $53b9: $06 $00
	rst  $20                                         ; $53bb: $e7
	ld   h, b                                        ; $53bc: $60
	db   $e4                                         ; $53bd: $e4
	ld   [$0c0a], sp                                 ; $53be: $08 $0a $0c
	add  b                                           ; $53c1: $80
	db   $ec                                         ; $53c2: $ec
	nop                                              ; $53c3: $00
	adc  h                                           ; $53c4: $8c
	add  b                                           ; $53c5: $80
	db   $e4                                         ; $53c6: $e4

jr_0a3_53c7:
	add  hl, bc                                      ; $53c7: $09
	adc  h                                           ; $53c8: $8c
	ld   l, $28                                      ; $53c9: $2e $28
	inc  c                                           ; $53cb: $0c
	nop                                              ; $53cc: $00
	ld   h, b                                        ; $53cd: $60
	nop                                              ; $53ce: $00
	ldh  [rP1], a                                    ; $53cf: $e0 $00
	ld   [$0085], sp                                 ; $53d1: $08 $85 $00
	ld   b, $18                                      ; $53d4: $06 $18
	ld   [hl], b                                     ; $53d6: $70
	ld   h, b                                        ; $53d7: $60
	nop                                              ; $53d8: $00
	ld   hl, sp+$60                                  ; $53d9: $f8 $60
	ld   h, c                                        ; $53db: $61
	add  b                                           ; $53dc: $80
	jr   nc, jr_0a3_53e0                             ; $53dd: $30 $01

	nop                                              ; $53df: $00

jr_0a3_53e0:
	ld   bc, $0080                                   ; $53e0: $01 $80 $00
	add  b                                           ; $53e3: $80
	ld   bc, $0080                                   ; $53e4: $01 $80 $00
	add  h                                           ; $53e7: $84
	ld   bc, $008d                                   ; $53e8: $01 $8d $00
	nop                                              ; $53eb: $00
	add  b                                           ; $53ec: $80
	add  c                                           ; $53ed: $81
	nop                                              ; $53ee: $00
	nop                                              ; $53ef: $00
	add  b                                           ; $53f0: $80
	add  h                                           ; $53f1: $84
	nop                                              ; $53f2: $00
	add  d                                           ; $53f3: $82
	add  b                                           ; $53f4: $80
	add  b                                           ; $53f5: $80
	ldh  [$93], a                                    ; $53f6: $e0 $93
	nop                                              ; $53f8: $00
	add  b                                           ; $53f9: $80
	jr   c, jr_0a3_537c                              ; $53fa: $38 $80

	ld   e, h                                        ; $53fc: $5c
	add  b                                           ; $53fd: $80
	jp   nz, $c680                                   ; $53fe: $c2 $80 $c6

	add  b                                           ; $5401: $80
	sbc  b                                           ; $5402: $98
	add  b                                           ; $5403: $80
	inc  c                                           ; $5404: $0c
	add  b                                           ; $5405: $80
	ld   [hl], h                                     ; $5406: $74
	add  b                                           ; $5407: $80
	jr   c, jr_0a3_5398                              ; $5408: $38 $8e

	nop                                              ; $540a: $00
	add  b                                           ; $540b: $80
	inc  c                                           ; $540c: $0c
	add  b                                           ; $540d: $80
	inc  a                                           ; $540e: $3c
	add  b                                           ; $540f: $80
	ld   a, [hl]                                     ; $5410: $7e
	nop                                              ; $5411: $00
	ld   a, a                                        ; $5412: $7f
	add  c                                           ; $5413: $81
	ld   a, [hl]                                     ; $5414: $7e
	ld   b, $fe                                      ; $5415: $06 $fe
	db   $ec                                         ; $5417: $ec
	db   $ed                                         ; $5418: $ed
	ret  nz                                          ; $5419: $c0

	ld   c, [hl]                                     ; $541a: $4e
	nop                                              ; $541b: $00
	ld   [hl], b                                     ; $541c: $70
	sbc  e                                           ; $541d: $9b
	nop                                              ; $541e: $00
	add  b                                           ; $541f: $80
	inc  l                                           ; $5420: $2c
	add  b                                           ; $5421: $80
	halt                                             ; $5422: $76
	add  b                                           ; $5423: $80
	ld   h, d                                        ; $5424: $62
	add  d                                           ; $5425: $82
	nop                                              ; $5426: $00
	add  b                                           ; $5427: $80
	inc  b                                           ; $5428: $04
	add  b                                           ; $5429: $80
	ld   c, $80                                      ; $542a: $0e $80
	inc  e                                           ; $542c: $1c
	rst  $38                                         ; $542d: $ff
	nop                                              ; $542e: $00
	rst  $38                                         ; $542f: $ff
	nop                                              ; $5430: $00
	rst  $38                                         ; $5431: $ff
	nop                                              ; $5432: $00
	rst  $38                                         ; $5433: $ff
	nop                                              ; $5434: $00
	rst  $38                                         ; $5435: $ff
	nop                                              ; $5436: $00
	rst  $38                                         ; $5437: $ff
	nop                                              ; $5438: $00
	rst  $38                                         ; $5439: $ff
	nop                                              ; $543a: $00
	rst  $38                                         ; $543b: $ff
	nop                                              ; $543c: $00
	rst  $38                                         ; $543d: $ff
	nop                                              ; $543e: $00
	rst  $38                                         ; $543f: $ff
	nop                                              ; $5440: $00
	rst  $38                                         ; $5441: $ff
	nop                                              ; $5442: $00
	rst  $38                                         ; $5443: $ff
	nop                                              ; $5444: $00
	call z, $1700                                    ; $5445: $cc $00 $17
	sub  a                                           ; $5448: $97
	and  a                                           ; $5449: $a7
	xor  l                                           ; $544a: $ad
	daa                                              ; $544b: $27
	ld   l, l                                        ; $544c: $6d
	ld   c, [hl]                                     ; $544d: $4e
	ld   a, e                                        ; $544e: $7b
	adc  $fb                                         ; $544f: $ce $fb
	rst  JumpTable                                         ; $5451: $df
	rst  $30                                         ; $5452: $f7
	rst  JumpTable                                         ; $5453: $df
	ei                                               ; $5454: $fb
	cp   l                                           ; $5455: $bd
	pop  af                                          ; $5456: $f1
	cp   a                                           ; $5457: $bf
	rst  $20                                         ; $5458: $e7
	cp   d                                           ; $5459: $ba
	db   $ec                                         ; $545a: $ec
	ld   sp, hl                                      ; $545b: $f9
	reti                                             ; $545c: $d9


	cp   $c7                                         ; $545d: $fe $c7
	ret  nc                                          ; $545f: $d0

	ld   h, b                                        ; $5460: $60
	ldh  a, [$60]                                    ; $5461: $f0 $60
	ldh  a, [$60]                                    ; $5463: $f0 $60
	ldh  a, [hScriptOpcodeParams]                                    ; $5465: $f0 $a0
	dec  a                                           ; $5467: $3d
	ld   a, l                                        ; $5468: $7d
	dec  a                                           ; $5469: $3d
	ld   [hl], l                                     ; $546a: $75
	ld   [hl], l                                     ; $546b: $75
	rst  $10                                         ; $546c: $d7
	push af                                          ; $546d: $f5
	and  a                                           ; $546e: $a7
	push hl                                          ; $546f: $e5
	and  a                                           ; $5470: $a7
	db   $e3                                         ; $5471: $e3
	and  e                                           ; $5472: $a3
	db   $e3                                         ; $5473: $e3
	ld   h, e                                        ; $5474: $63
	ld   [hl], e                                     ; $5475: $73
	inc  sp                                          ; $5476: $33
	pop  af                                          ; $5477: $f1
	ret                                              ; $5478: $c9


	ld   h, c                                        ; $5479: $61
	pop  hl                                          ; $547a: $e1
	or   c                                           ; $547b: $b1
	ret  nz                                          ; $547c: $c0

	ld   b, b                                        ; $547d: $40
	add  b                                           ; $547e: $80
	nop                                              ; $547f: $00
	nop                                              ; $5480: $00
	nop                                              ; $5481: $00
	nop                                              ; $5482: $00
	nop                                              ; $5483: $00
	nop                                              ; $5484: $00
	nop                                              ; $5485: $00
	nop                                              ; $5486: $00
	xor  $fe                                         ; $5487: $ee $fe
	xor  $ae                                         ; $5489: $ee $ae
	rst  $28                                         ; $548b: $ef
	xor  l                                           ; $548c: $ad
	rst  $20                                         ; $548d: $e7
	cp   l                                           ; $548e: $bd
	ld   [hl], a                                     ; $548f: $77
	ld   e, l                                        ; $5490: $5d
	ld   [hl], e                                     ; $5491: $73
	ld   e, [hl]                                     ; $5492: $5e
	dec  sp                                          ; $5493: $3b
	cpl                                              ; $5494: $2f
	ccf                                              ; $5495: $3f
	ld   e, $73                                      ; $5496: $1e $73
	inc  hl                                          ; $5498: $23
	rst  $28                                         ; $5499: $ef
	rrca                                             ; $549a: $0f
	reti                                             ; $549b: $d9


	sbc  e                                           ; $549c: $9b
	adc  [hl]                                        ; $549d: $8e
	add  a                                           ; $549e: $87
	inc  b                                           ; $549f: $04
	inc  bc                                          ; $54a0: $03
	nop                                              ; $54a1: $00
	nop                                              ; $54a2: $00
	nop                                              ; $54a3: $00
	nop                                              ; $54a4: $00
	nop                                              ; $54a5: $00
	nop                                              ; $54a6: $00
	dec  c                                           ; $54a7: $0d
	rst  $38                                         ; $54a8: $ff
	dec  c                                           ; $54a9: $0d
	rst  JumpTable                                         ; $54aa: $df
	rlca                                             ; $54ab: $07
	rra                                              ; $54ac: $1f
	daa                                              ; $54ad: $27
	ld   l, a                                        ; $54ae: $6f
	and  e                                           ; $54af: $a3
	cp   a                                           ; $54b0: $bf
	sub  e                                           ; $54b1: $93
	rst  $38                                         ; $54b2: $ff
	db   $d3                                         ; $54b3: $d3
	rst  $38                                         ; $54b4: $ff
	bit  7, a                                        ; $54b5: $cb $7f
	db   $eb                                         ; $54b7: $eb
	ccf                                              ; $54b8: $3f
	rst  $30                                         ; $54b9: $f7
	rst  JumpTable                                         ; $54ba: $df
	cp   e                                           ; $54bb: $bb
	ld   l, a                                        ; $54bc: $6f
	ld   a, $37                                      ; $54bd: $3e $37
	cp   $c7                                         ; $54bf: $fe $c7
	halt                                             ; $54c1: $76
	rrca                                             ; $54c2: $0f
	inc  e                                           ; $54c3: $1c
	cpl                                              ; $54c4: $2f
	ld   l, h                                        ; $54c5: $6c
	rra                                              ; $54c6: $1f
	or   c                                           ; $54c7: $b1
	pop  hl                                          ; $54c8: $e1
	cp   e                                           ; $54c9: $bb
	rst  $28                                         ; $54ca: $ef
	ld   sp, hl                                      ; $54cb: $f9
	reti                                             ; $54cc: $d9


	cp   $c7                                         ; $54cd: $fe $c7
	ret  nc                                          ; $54cf: $d0

	ld   h, b                                        ; $54d0: $60
	ldh  a, [$60]                                    ; $54d1: $f0 $60
	ldh  a, [$60]                                    ; $54d3: $f0 $60
	ldh  a, [hScriptOpcodeParams]                                    ; $54d5: $f0 $a0
	ld   sp, $f109                                   ; $54d7: $31 $09 $f1
	pop  bc                                          ; $54da: $c1
	and  c                                           ; $54db: $a1
	ldh  [rLCDC], a                                  ; $54dc: $e0 $40
	add  b                                           ; $54de: $80
	nop                                              ; $54df: $00
	nop                                              ; $54e0: $00
	nop                                              ; $54e1: $00
	nop                                              ; $54e2: $00
	nop                                              ; $54e3: $00
	nop                                              ; $54e4: $00
	nop                                              ; $54e5: $00
	nop                                              ; $54e6: $00
	ld   [hl], e                                     ; $54e7: $73
	inc  hl                                          ; $54e8: $23
	add  sp, $00                                     ; $54e9: $e8 $00
	rst  JumpTable                                         ; $54eb: $df
	adc  a                                           ; $54ec: $8f
	sbc  [hl]                                        ; $54ed: $9e
	sbc  a                                           ; $54ee: $9f
	inc  b                                           ; $54ef: $04
	inc  bc                                          ; $54f0: $03
	nop                                              ; $54f1: $00
	nop                                              ; $54f2: $00
	nop                                              ; $54f3: $00
	nop                                              ; $54f4: $00
	nop                                              ; $54f5: $00
	nop                                              ; $54f6: $00
	db   $eb                                         ; $54f7: $eb
	ccf                                              ; $54f8: $3f
	scf                                              ; $54f9: $37
	rra                                              ; $54fa: $1f
	ei                                               ; $54fb: $fb
	rst  $28                                         ; $54fc: $ef
	ld   a, $37                                      ; $54fd: $3e $37
	cp   $c7                                         ; $54ff: $fe $c7
	halt                                             ; $5501: $76
	rrca                                             ; $5502: $0f
	inc  e                                           ; $5503: $1c
	cpl                                              ; $5504: $2f
	ld   l, h                                        ; $5505: $6c
	rra                                              ; $5506: $1f
	or   c                                           ; $5507: $b1
	pop  hl                                          ; $5508: $e1
	or   b                                           ; $5509: $b0
	ldh  [rIE], a                                    ; $550a: $e0 $ff
	rst  JumpTable                                         ; $550c: $df
	cp   $c7                                         ; $550d: $fe $c7
	ret  nc                                          ; $550f: $d0

	ld   h, b                                        ; $5510: $60
	ldh  a, [$60]                                    ; $5511: $f0 $60
	ldh  a, [$60]                                    ; $5513: $f0 $60
	ldh  a, [hScriptOpcodeParams]                                    ; $5515: $f0 $a0
	ld   sp, $7109                                   ; $5517: $31 $09 $71
	ld   bc, $e0f1                                   ; $551a: $01 $f1 $e0
	ld   b, b                                        ; $551d: $40
	add  b                                           ; $551e: $80
	nop                                              ; $551f: $00
	nop                                              ; $5520: $00
	nop                                              ; $5521: $00
	nop                                              ; $5522: $00
	nop                                              ; $5523: $00
	nop                                              ; $5524: $00
	nop                                              ; $5525: $00
	nop                                              ; $5526: $00
	ld   [hl], e                                     ; $5527: $73
	inc  hl                                          ; $5528: $23
	ldh  a, [rP1]                                    ; $5529: $f0 $00
	ld   hl, sp-$80                                  ; $552b: $f8 $80
	cp   a                                           ; $552d: $bf
	sbc  a                                           ; $552e: $9f
	inc  b                                           ; $552f: $04
	inc  bc                                          ; $5530: $03
	nop                                              ; $5531: $00
	nop                                              ; $5532: $00
	nop                                              ; $5533: $00
	nop                                              ; $5534: $00
	nop                                              ; $5535: $00
	nop                                              ; $5536: $00
	db   $eb                                         ; $5537: $eb
	ccf                                              ; $5538: $3f
	scf                                              ; $5539: $37
	rra                                              ; $553a: $1f
	dec  sp                                          ; $553b: $3b
	rrca                                             ; $553c: $0f
	cp   $f7                                         ; $553d: $fe $f7
	cp   $c7                                         ; $553f: $fe $c7
	halt                                             ; $5541: $76
	rrca                                             ; $5542: $0f
	inc  e                                           ; $5543: $1c
	cpl                                              ; $5544: $2f
	ld   l, h                                        ; $5545: $6c
	rra                                              ; $5546: $1f
	inc  b                                           ; $5547: $04
	nop                                              ; $5548: $00
	inc  b                                           ; $5549: $04
	ld   [$081c], sp                                 ; $554a: $08 $1c $08
	inc  c                                           ; $554d: $0c
	nop                                              ; $554e: $00
	ld   [hl], b                                     ; $554f: $70
	ld   h, b                                        ; $5550: $60
	ld   a, h                                        ; $5551: $7c
	ld   b, [hl]                                     ; $5552: $46
	ld   c, $44                                      ; $5553: $0e $44
	ld   h, b                                        ; $5555: $60
	inc  b                                           ; $5556: $04
	jr   z, jr_0a3_5581                              ; $5557: $28 $28

	jr   c, @+$12                                    ; $5559: $38 $10

	nop                                              ; $555b: $00
	nop                                              ; $555c: $00
	nop                                              ; $555d: $00
	nop                                              ; $555e: $00
	nop                                              ; $555f: $00
	nop                                              ; $5560: $00
	nop                                              ; $5561: $00

jr_0a3_5562:
	nop                                              ; $5562: $00
	nop                                              ; $5563: $00
	nop                                              ; $5564: $00
	nop                                              ; $5565: $00
	nop                                              ; $5566: $00
	inc  b                                           ; $5567: $04
	nop                                              ; $5568: $00
	inc  b                                           ; $5569: $04
	ld   [$081c], sp                                 ; $556a: $08 $1c $08
	inc  c                                           ; $556d: $0c
	nop                                              ; $556e: $00
	ld   h, b                                        ; $556f: $60
	ld   b, b                                        ; $5570: $40
	ld   [hl], h                                     ; $5571: $74
	ld   b, $18                                      ; $5572: $06 $18
	nop                                              ; $5574: $00
	nop                                              ; $5575: $00
	nop                                              ; $5576: $00
	nop                                              ; $5577: $00
	nop                                              ; $5578: $00
	nop                                              ; $5579: $00
	nop                                              ; $557a: $00

jr_0a3_557b:
	nop                                              ; $557b: $00
	nop                                              ; $557c: $00
	nop                                              ; $557d: $00
	nop                                              ; $557e: $00
	nop                                              ; $557f: $00
	nop                                              ; $5580: $00

jr_0a3_5581:
	nop                                              ; $5581: $00
	nop                                              ; $5582: $00
	nop                                              ; $5583: $00
	nop                                              ; $5584: $00
	nop                                              ; $5585: $00
	nop                                              ; $5586: $00


RleXorTileData_TitleScreenBank1_9000::
	db $75, $00, $01, $d8, $18, $88, $00, $04, $40, $00, $80, $00, $ff, $87, $00, $0a, $7c, $00, $84, $00, $08, $00, $d5, $00, $82, $08, $50, $97, $00, $80, $10, $03
	db $00, $01, $21, $20, $80, $00, $80, $01, $80, $02, $03, $01, $09, $07, $0f, $80, $03, $02, $1f, $00, $20, $81, $00, $00, $40, $81, $00, $07, $40, $00, $20, $00
	db $10, $00, $ee, $01, $88, $00, $00, $10, $81, $00, $00, $f0, $89, $00, $80, $18, $80, $00, $80, $05, $82, $02, $80, $00, $80, $20, $80, $50, $80, $28, $02, $15
	db $1d, $f8, $89, $00, $80, $02, $80, $00, $00, $ff, $83, $00, $00, $10, $81, $00, $00, $20, $81, $00, $02, $40, $00, $8f, $85, $00, $00, $10, $85, $00, $00, $e0
	db $81, $00, $82, $01, $94, $00, $80, $20, $80, $00, $02, $01, $00, $01, $89, $00, $00, $ff, $83, $00, $00, $80, $81, $00, $00, $80, $93, $00, $82, $02, $81, $04
	db $09, $0c, $00, $18, $00, $30, $00, $60, $40, $00, $ff, $8f, $00, $00, $3f, $80, $00, $80, $1d, $80, $15, $80, $1d, $01, $11, $15, $80, $11, $03, $00, $3b, $00
	db $ff, $80, $00, $80, $dd, $80, $51, $80, $9d, $80, $50, $80, $5d, $03, $00, $ff, $00, $fe, $80, $00, $80, $dc, $80, $10, $80, $dc, $80, $44, $80, $dc, $03, $00
	db $fe, $00, $3f, $80, $00, $80, $1d, $80, $10, $80, $1c, $80, $04, $80, $1c, $03, $00, $3f, $00, $ff, $80, $00, $80, $dd, $80, $95, $80, $9d, $82, $95, $03, $00
	db $ff, $00, $fe, $80, $00, $80, $dc, $01, $48, $4a, $80, $88, $82, $48, $01, $00, $fc, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff
	db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $e1, $00



	ld   e, c                                        ; $56b2: $59
	nop                                              ; $56b3: $00
	add  h                                           ; $56b4: $84
	nop                                              ; $56b5: $00
	inc  c                                           ; $56b6: $0c
	rrca                                             ; $56b7: $0f
	nop                                              ; $56b8: $00
	ld   [$1800], sp                                 ; $56b9: $08 $00 $18
	nop                                              ; $56bc: $00
	jr   nz, jr_0a3_56c7                             ; $56bd: $20 $08

	ld   c, b                                        ; $56bf: $48
	rlca                                             ; $56c0: $07
	ld   b, a                                        ; $56c1: $47
	nop                                              ; $56c2: $00
	ld   b, d                                        ; $56c3: $42
	add  c                                           ; $56c4: $81
	ld   [bc], a                                     ; $56c5: $02
	add  c                                           ; $56c6: $81

jr_0a3_56c7:
	db   $10                                         ; $56c7: $10
	ld   bc, $5312                                   ; $56c8: $01 $12 $53
	add  b                                           ; $56cb: $80
	dec  de                                          ; $56cc: $1b
	inc  bc                                          ; $56cd: $03
	inc  de                                          ; $56ce: $13
	dec  e                                           ; $56cf: $1d
	rra                                              ; $56d0: $1f
	ccf                                              ; $56d1: $3f
	add  l                                           ; $56d2: $85
	nop                                              ; $56d3: $00
	ld   b, $f0                                      ; $56d4: $06 $f0
	nop                                              ; $56d6: $00
	ld   [$0400], sp                                 ; $56d7: $08 $00 $04
	nop                                              ; $56da: $00
	ld   [bc], a                                     ; $56db: $02
	add  b                                           ; $56dc: $80
	ld   [$3001], sp                                 ; $56dd: $08 $01 $30
	ld   sp, $0081                                   ; $56e0: $31 $81 $00
	add  d                                           ; $56e3: $82
	add  b                                           ; $56e4: $80
	ld   bc, $8081                                   ; $56e5: $01 $81 $80
	add  b                                           ; $56e8: $80
	and  b                                           ; $56e9: $a0
	ld   [bc], a                                     ; $56ea: $02
	pop  hl                                          ; $56eb: $e1
	ldh  [rIE], a                                    ; $56ec: $e0 $ff
	adc  a                                           ; $56ee: $8f
	nop                                              ; $56ef: $00
	ld   [bc], a                                     ; $56f0: $02
	inc  bc                                          ; $56f1: $03
	nop                                              ; $56f2: $00
	inc  b                                           ; $56f3: $04
	add  b                                           ; $56f4: $80
	inc  bc                                          ; $56f5: $03
	inc  b                                           ; $56f6: $04
	nop                                              ; $56f7: $00
	ld   [$1707], sp                                 ; $56f8: $08 $07 $17
	rrca                                             ; $56fb: $0f
	add  b                                           ; $56fc: $80
	nop                                              ; $56fd: $00
	ld   bc, $000f                                   ; $56fe: $01 $0f $00
	add  b                                           ; $5701: $80
	ld   c, $02                                      ; $5702: $0e $02
	push hl                                          ; $5704: $e5
	dec  b                                           ; $5705: $05
	nop                                              ; $5706: $00
	add  b                                           ; $5707: $80
	ld   hl, sp-$80                                  ; $5708: $f8 $80
	ld   bc, $fd80                                   ; $570a: $01 $80 $fd
	dec  b                                           ; $570d: $05
	ld   hl, sp+$02                                  ; $570e: $f8 $02
	nop                                              ; $5710: $00
	ld   sp, hl                                      ; $5711: $f9
	nop                                              ; $5712: $00
	db   $fc                                         ; $5713: $fc
	adc  l                                           ; $5714: $8d
	nop                                              ; $5715: $00
	inc  b                                           ; $5716: $04
	cp   a                                           ; $5717: $bf
	ld   b, b                                        ; $5718: $40
	ld   b, e                                        ; $5719: $43
	ld   e, e                                        ; $571a: $5b
	dec  de                                          ; $571b: $1b
	add  b                                           ; $571c: $80
	dec  sp                                          ; $571d: $3b
	add  b                                           ; $571e: $80
	cp   e                                           ; $571f: $bb
	dec  b                                           ; $5720: $05
	di                                               ; $5721: $f3

jr_0a3_5722:
	rst  $30                                         ; $5722: $f7
	rst  $20                                         ; $5723: $e7
	ldh  [rP1], a                                    ; $5724: $e0 $00
	rst  $38                                         ; $5726: $ff
	sbc  a                                           ; $5727: $9f
	nop                                              ; $5728: $00
	inc  b                                           ; $5729: $04
	pop  bc                                          ; $572a: $c1
	nop                                              ; $572b: $00
	ldh  a, [c]                                      ; $572c: $f2
	ret  nz                                          ; $572d: $c0

	call z, $c085                                    ; $572e: $cc $85 $c0
	add  b                                           ; $5731: $80
	nop                                              ; $5732: $00
	nop                                              ; $5733: $00
	rst  $38                                         ; $5734: $ff
	adc  l                                           ; $5735: $8d
	nop                                              ; $5736: $00
	ld   b, $80                                      ; $5737: $06 $80
	nop                                              ; $5739: $00
	ld   b, b                                        ; $573a: $40
	add  b                                           ; $573b: $80
	and  b                                           ; $573c: $a0
	ld   b, b                                        ; $573d: $40
	ld   d, b                                        ; $573e: $50
	add  b                                           ; $573f: $80
	jr   nz, @+$05                                   ; $5740: $20 $03

	nop                                              ; $5742: $00
	ld   [$2420], sp                                 ; $5743: $08 $20 $24
	add  b                                           ; $5746: $80
	jr   c, jr_0a3_574a                              ; $5747: $38 $01

	nop                                              ; $5749: $00

jr_0a3_574a:
	db   $fc                                         ; $574a: $fc
	adc  l                                           ; $574b: $8d
	nop                                              ; $574c: $00
	ld   b, $03                                      ; $574d: $06 $03
	nop                                              ; $574f: $00
	ret  nz                                          ; $5750: $c0

	ld   bc, $c0f1                                   ; $5751: $01 $f1 $c0
	call z, $c085                                    ; $5754: $cc $85 $c0
	add  b                                           ; $5757: $80
	nop                                              ; $5758: $00
	nop                                              ; $5759: $00
	rst  $38                                         ; $575a: $ff
	adc  a                                           ; $575b: $8f
	nop                                              ; $575c: $00
	ld   a, [bc]                                     ; $575d: $0a
	ret  nz                                          ; $575e: $c0

	nop                                              ; $575f: $00
	jr   nz, jr_0a3_5722                             ; $5760: $20 $c0

	ldh  [rP1], a                                    ; $5762: $e0 $00
	jr   nc, jr_0a3_5766                             ; $5764: $30 $00

jr_0a3_5766:
	ld   [$2420], sp                                 ; $5766: $08 $20 $24
	add  b                                           ; $5769: $80
	jr   c, jr_0a3_576d                              ; $576a: $38 $01

	nop                                              ; $576c: $00

jr_0a3_576d:
	db   $fc                                         ; $576d: $fc
	sub  c                                           ; $576e: $91
	nop                                              ; $576f: $00
	ld   [bc], a                                     ; $5770: $02
	inc  bc                                          ; $5771: $03
	nop                                              ; $5772: $00
	inc  b                                           ; $5773: $04
	add  b                                           ; $5774: $80
	inc  bc                                          ; $5775: $03
	inc  b                                           ; $5776: $04
	nop                                              ; $5777: $00
	ld   [$1707], sp                                 ; $5778: $08 $07 $17
	rrca                                             ; $577b: $0f
	add  b                                           ; $577c: $80
	nop                                              ; $577d: $00
	ld   bc, $000f                                   ; $577e: $01 $0f $00
	add  b                                           ; $5781: $80
	ld   c, $0e                                      ; $5782: $0e $0e
	push hl                                          ; $5784: $e5
	dec  b                                           ; $5785: $05
	nop                                              ; $5786: $00
	ldh  a, [$f4]                                    ; $5787: $f0 $f4
	dec  b                                           ; $5789: $05
	dec  c                                           ; $578a: $0d
	db   $ed                                         ; $578b: $ed
	pop  hl                                          ; $578c: $e1
	nop                                              ; $578d: $00
	ld   a, [$f900]                                  ; $578e: $fa $00 $f9
	nop                                              ; $5791: $00
	db   $fc                                         ; $5792: $fc
	sbc  l                                           ; $5793: $9d
	nop                                              ; $5794: $00
	nop                                              ; $5795: $00
	rlca                                             ; $5796: $07
	add  b                                           ; $5797: $80
	nop                                              ; $5798: $00
	add  d                                           ; $5799: $82
	inc  bc                                          ; $579a: $03
	inc  b                                           ; $579b: $04
	nop                                              ; $579c: $00
	ld   [$1707], sp                                 ; $579d: $08 $07 $17
	rrca                                             ; $57a0: $0f
	add  b                                           ; $57a1: $80
	nop                                              ; $57a2: $00
	ld   b, $0f                                      ; $57a3: $06 $0f
	nop                                              ; $57a5: $00
	adc  [hl]                                        ; $57a6: $8e
	ld   l, [hl]                                     ; $57a7: $6e

jr_0a3_57a8:
	dec  b                                           ; $57a8: $05
	add  l                                           ; $57a9: $85
	add  b                                           ; $57aa: $80
	add  b                                           ; $57ab: $80
	ld   hl, sp-$80                                  ; $57ac: $f8 $80
	ld   bc, $fd80                                   ; $57ae: $01 $80 $fd
	dec  b                                           ; $57b1: $05
	ld   hl, sp+$02                                  ; $57b2: $f8 $02
	nop                                              ; $57b4: $00
	ld   sp, hl                                      ; $57b5: $f9
	nop                                              ; $57b6: $00
	db   $fc                                         ; $57b7: $fc
	sbc  d                                           ; $57b8: $9a
	nop                                              ; $57b9: $00
	add  b                                           ; $57ba: $80
	rrca                                             ; $57bb: $0f
	sbc  h                                           ; $57bc: $9c
	nop                                              ; $57bd: $00
	add  b                                           ; $57be: $80
	ld   hl, sp-$01                                  ; $57bf: $f8 $ff
	nop                                              ; $57c1: $00
	rst  $38                                         ; $57c2: $ff
	nop                                              ; $57c3: $00
	rst  $38                                         ; $57c4: $ff
	nop                                              ; $57c5: $00
	rst  $38                                         ; $57c6: $ff
	nop                                              ; $57c7: $00
	rst  $38                                         ; $57c8: $ff
	nop                                              ; $57c9: $00
	rst  $38                                         ; $57ca: $ff
	nop                                              ; $57cb: $00
	rst  $38                                         ; $57cc: $ff
	nop                                              ; $57cd: $00
	rst  $38                                         ; $57ce: $ff
	nop                                              ; $57cf: $00
	rst  $38                                         ; $57d0: $ff
	nop                                              ; $57d1: $00
	rst  $38                                         ; $57d2: $ff
	nop                                              ; $57d3: $00
	rst  $38                                         ; $57d4: $ff
	nop                                              ; $57d5: $00
	rst  $38                                         ; $57d6: $ff
	nop                                              ; $57d7: $00
	and  e                                           ; $57d8: $a3
	nop                                              ; $57d9: $00
	ld   e, e                                        ; $57da: $5b

jr_0a3_57db:
	nop                                              ; $57db: $00
	add  d                                           ; $57dc: $82
	nop                                              ; $57dd: $00
	inc  b                                           ; $57de: $04
	ld   bc, $0200                                   ; $57df: $01 $00 $02
	nop                                              ; $57e2: $00
	inc  b                                           ; $57e3: $04
	add  b                                           ; $57e4: $80
	ld   bc, $0001                                   ; $57e5: $01 $01 $00
	ld   [$0085], sp                                 ; $57e8: $08 $85 $00
	nop                                              ; $57eb: $00
	ld   [$0081], sp                                 ; $57ec: $08 $81 $00
	inc  b                                           ; $57ef: $04
	inc  b                                           ; $57f0: $04
	nop                                              ; $57f1: $00
	ld   [bc], a                                     ; $57f2: $02
	nop                                              ; $57f3: $00
	ld   bc, $0081                                   ; $57f4: $01 $81 $00
	inc  b                                           ; $57f7: $04
	rrca                                             ; $57f8: $0f
	nop                                              ; $57f9: $00
	pop  af                                          ; $57fa: $f1
	nop                                              ; $57fb: $00
	ld   bc, $0080                                   ; $57fc: $01 $80 $00
	add  b                                           ; $57ff: $80
	ld   bc, $0e80                                   ; $5800: $01 $80 $0e
	ld   bc, $c4c0                                   ; $5803: $01 $c0 $c4
	add  c                                           ; $5806: $81
	inc  b                                           ; $5807: $04

jr_0a3_5808:
	add  b                                           ; $5808: $80
	inc  d                                           ; $5809: $14
	add  c                                           ; $580a: $81
	db   $10                                         ; $580b: $10
	ld   b, $14                                      ; $580c: $06 $14
	ld   e, h                                        ; $580e: $5c
	ld   e, l                                        ; $580f: $5d
	ld   a, l                                        ; $5810: $7d
	ld   a, h                                        ; $5811: $7c
	dec  sp                                          ; $5812: $3b
	ccf                                              ; $5813: $3f
	add  b                                           ; $5814: $80
	ld   a, $02                                      ; $5815: $3e $02
	add  b                                           ; $5817: $80
	nop                                              ; $5818: $00
	ld   a, a                                        ; $5819: $7f
	add  c                                           ; $581a: $81
	nop                                              ; $581b: $00
	ld   [$0080], sp                                 ; $581c: $08 $80 $00
	ld   b, b                                        ; $581f: $40
	nop                                              ; $5820: $00
	jr   nz, jr_0a3_5823                             ; $5821: $20 $00

jr_0a3_5823:
	jr   nz, jr_0a3_5825                             ; $5823: $20 $00

jr_0a3_5825:
	jr   nz, jr_0a3_57a8                             ; $5825: $20 $81

	nop                                              ; $5827: $00
	add  d                                           ; $5828: $82
	add  b                                           ; $5829: $80
	ld   bc, $80a0                                   ; $582a: $01 $a0 $80
	add  c                                           ; $582d: $81
	add  [hl]                                        ; $582e: $86
	rlca                                             ; $582f: $07
	add  b                                           ; $5830: $80
	ld   b, d                                        ; $5831: $42
	nop                                              ; $5832: $00
	sbc  b                                           ; $5833: $98
	nop                                              ; $5834: $00
	ld   [$fe08], a                                  ; $5835: $ea $08 $fe
	add  l                                           ; $5838: $85
	nop                                              ; $5839: $00

jr_0a3_583a:
	nop                                              ; $583a: $00
	ld   bc, $0085                                   ; $583b: $01 $85 $00
	ld   [bc], a                                     ; $583e: $02
	ld   [bc], a                                     ; $583f: $02
	ld   bc, $8005                                   ; $5840: $01 $05 $80
	inc  bc                                          ; $5843: $03
	ld   bc, $0700                                   ; $5844: $01 $00 $07
	add  a                                           ; $5847: $87
	nop                                              ; $5848: $00
	ld   [bc], a                                     ; $5849: $02
	ld   a, a                                        ; $584a: $7f
	dec  b                                           ; $584b: $05
	add  l                                           ; $584c: $85
	add  c                                           ; $584d: $81
	ld   c, $80                                      ; $584e: $0e $80
	ld   l, [hl]                                     ; $5850: $6e
	add  c                                           ; $5851: $81
	xor  $04                                         ; $5852: $ee $04
	rst  $28                                         ; $5854: $ef
	rst  $38                                         ; $5855: $ff
	or   $3e                                         ; $5856: $f6 $3e
	jr   c, jr_0a3_57db                              ; $5858: $38 $81

	nop                                              ; $585a: $00
	add  b                                           ; $585b: $80
	add  b                                           ; $585c: $80
	ld   bc, $ff00                                   ; $585d: $01 $00 $ff
	add  a                                           ; $5860: $87
	nop                                              ; $5861: $00
	ld   [bc], a                                     ; $5862: $02
	rst  $30                                         ; $5863: $f7
	ld   [$80e2], a                                  ; $5864: $ea $e2 $80
	and  $05                                         ; $5867: $e6 $05
	adc  [hl]                                        ; $5869: $8e
	xor  $0e                                         ; $586a: $ee $0e
	adc  [hl]                                        ; $586c: $8e
	nop                                              ; $586d: $00
	sbc  a                                           ; $586e: $9f
	add  c                                           ; $586f: $81
	nop                                              ; $5870: $00
	ld   bc, $80c0                                   ; $5871: $01 $c0 $80
	add  b                                           ; $5874: $80
	nop                                              ; $5875: $00
	ld   [bc], a                                     ; $5876: $02
	ld   b, b                                        ; $5877: $40
	nop                                              ; $5878: $00
	add  b                                           ; $5879: $80
	adc  l                                           ; $587a: $8d
	nop                                              ; $587b: $00
	ld   [$0080], sp                                 ; $587c: $08 $80 $00
	ld   b, b                                        ; $587f: $40
	nop                                              ; $5880: $00
	jr   nz, jr_0a3_5883                             ; $5881: $20 $00

jr_0a3_5883:
	jr   nz, jr_0a3_5885                             ; $5883: $20 $00

jr_0a3_5885:
	jr   nz, jr_0a3_5808                             ; $5885: $20 $81

	nop                                              ; $5887: $00
	add  d                                           ; $5888: $82
	add  b                                           ; $5889: $80
	ld   bc, $80a0                                   ; $588a: $01 $a0 $80
	add  c                                           ; $588d: $81
	add  [hl]                                        ; $588e: $86
	rlca                                             ; $588f: $07
	add  b                                           ; $5890: $80
	ld   b, d                                        ; $5891: $42
	nop                                              ; $5892: $00
	add  b                                           ; $5893: $80
	nop                                              ; $5894: $00
	ld   a, [$fe00]                                  ; $5895: $fa $00 $fe
	add  l                                           ; $5898: $85
	nop                                              ; $5899: $00
	add  b                                           ; $589a: $80
	ld   b, b                                        ; $589b: $40
	add  b                                           ; $589c: $80
	db   $10                                         ; $589d: $10
	add  b                                           ; $589e: $80
	ld   [bc], a                                     ; $589f: $02
	add  b                                           ; $58a0: $80
	jr   nz, jr_0a3_5823                             ; $58a1: $20 $80

	inc  b                                           ; $58a3: $04
	add  b                                           ; $58a4: $80
	db   $10                                         ; $58a5: $10
	adc  d                                           ; $58a6: $8a
	nop                                              ; $58a7: $00
	ld   c, $07                                      ; $58a8: $0e $07
	nop                                              ; $58aa: $00
	rrca                                             ; $58ab: $0f
	nop                                              ; $58ac: $00
	jr   jr_0a3_58af                                 ; $58ad: $18 $00

jr_0a3_58af:
	jr   nz, jr_0a3_58b1                             ; $58af: $20 $00

jr_0a3_58b1:
	rrca                                             ; $58b1: $0f
	db   $10                                         ; $58b2: $10
	ld   de, $1e1f                                   ; $58b3: $11 $1f $1e
	nop                                              ; $58b6: $00
	jr   nz, jr_0a3_583a                             ; $58b7: $20 $81

	rrca                                             ; $58b9: $0f
	inc  b                                           ; $58ba: $04
	rra                                              ; $58bb: $1f
	rlca                                             ; $58bc: $07
	rrca                                             ; $58bd: $0f
	nop                                              ; $58be: $00
	rlca                                             ; $58bf: $07
	add  a                                           ; $58c0: $87
	nop                                              ; $58c1: $00
	add  hl, bc                                      ; $58c2: $09
	add  b                                           ; $58c3: $80
	nop                                              ; $58c4: $00
	ret  nz                                          ; $58c5: $c0

	nop                                              ; $58c6: $00
	ld   h, b                                        ; $58c7: $60
	nop                                              ; $58c8: $00
	stop                                             ; $58c9: $10 $00
	ldh  [rAUD4LEN], a                               ; $58cb: $e0 $20
	add  b                                           ; $58cd: $80
	ldh  [$80], a                                    ; $58ce: $e0 $80
	nop                                              ; $58d0: $00
	nop                                              ; $58d1: $00
	ret  nc                                          ; $58d2: $d0

	add  c                                           ; $58d3: $81
	ret  nz                                          ; $58d4: $c0

	inc  b                                           ; $58d5: $04
	and  b                                           ; $58d6: $a0
	add  b                                           ; $58d7: $80
	ld   b, b                                        ; $58d8: $40
	nop                                              ; $58d9: $00
	add  b                                           ; $58da: $80
	adc  c                                           ; $58db: $89
	nop                                              ; $58dc: $00
	ld   b, $1c                                      ; $58dd: $06 $1c
	ld   e, $3e                                      ; $58df: $1e $3e
	ccf                                              ; $58e1: $3f
	dec  sp                                          ; $58e2: $3b
	ccf                                              ; $58e3: $3f
	rlca                                             ; $58e4: $07
	rst  $38                                         ; $58e5: $ff
	nop                                              ; $58e6: $00
	rst  $38                                         ; $58e7: $ff
	nop                                              ; $58e8: $00
	rst  $38                                         ; $58e9: $ff
	nop                                              ; $58ea: $00
	rst  $38                                         ; $58eb: $ff
	nop                                              ; $58ec: $00
	rst  $38                                         ; $58ed: $ff
	nop                                              ; $58ee: $00
	rst  $38                                         ; $58ef: $ff
	nop                                              ; $58f0: $00
	rst  $38                                         ; $58f1: $ff
	nop                                              ; $58f2: $00
	rst  $38                                         ; $58f3: $ff
	nop                                              ; $58f4: $00
	rst  $38                                         ; $58f5: $ff
	nop                                              ; $58f6: $00
	rst  $38                                         ; $58f7: $ff
	nop                                              ; $58f8: $00
	rst  $38                                         ; $58f9: $ff
	nop                                              ; $58fa: $00
	rst  $38                                         ; $58fb: $ff
	nop                                              ; $58fc: $00
	rst  $38                                         ; $58fd: $ff
	nop                                              ; $58fe: $00
	xor  b                                           ; $58ff: $a8

Call_0a3_5900:
	nop                                              ; $5900: $00
	ld   e, l                                        ; $5901: $5d
	nop                                              ; $5902: $00
	rlca                                             ; $5903: $07
	ld   h, e                                        ; $5904: $63
	and  b                                           ; $5905: $a0
	cpl                                              ; $5906: $2f
	ld   h, e                                        ; $5907: $63
	ld   a, a                                        ; $5908: $7f
	ld   l, a                                        ; $5909: $6f
	ld   a, a                                        ; $590a: $7f
	rra                                              ; $590b: $1f
	add  b                                           ; $590c: $80
	ld   a, a                                        ; $590d: $7f
	add  b                                           ; $590e: $80
	ei                                               ; $590f: $fb
	add  b                                           ; $5910: $80
	rst  $30                                         ; $5911: $f7
	inc  bc                                          ; $5912: $03
	rst  $28                                         ; $5913: $ef
	xor  a                                           ; $5914: $af
	ld   b, b                                        ; $5915: $40
	nop                                              ; $5916: $00
	adc  b                                           ; $5917: $88
	rst  $38                                         ; $5918: $ff
	add  d                                           ; $5919: $82
	rst  $30                                         ; $591a: $f7
	add  hl, bc                                      ; $591b: $09
	nop                                              ; $591c: $00
	ld   a, [hl]                                     ; $591d: $7e
	cp   $8f                                         ; $591e: $fe $8f
	rst  $38                                         ; $5920: $ff
	di                                               ; $5921: $f3
	rst  $38                                         ; $5922: $ff
	db   $fd                                         ; $5923: $fd
	rst  $38                                         ; $5924: $ff
	cp   $82                                         ; $5925: $fe $82
	rst  $38                                         ; $5927: $ff
	add  b                                           ; $5928: $80
	ld   a, [$3f86]                                  ; $5929: $fa $86 $3f
	add  b                                           ; $592c: $80
	cp   a                                           ; $592d: $bf
	add  d                                           ; $592e: $82
	ccf                                              ; $592f: $3f
	add  b                                           ; $5930: $80
	scf                                              ; $5931: $37
	ld   a, [bc]                                     ; $5932: $0a
	rrca                                             ; $5933: $0f
	nop                                              ; $5934: $00
	rst  $38                                         ; $5935: $ff
	nop                                              ; $5936: $00
	cp   $00                                         ; $5937: $fe $00
	rst  $28                                         ; $5939: $ef
	nop                                              ; $593a: $00
	cp   $00                                         ; $593b: $fe $00
	ldh  [$83], a                                    ; $593d: $e0 $83
	nop                                              ; $593f: $00
	ld   b, $f3                                      ; $5940: $06 $f3
	nop                                              ; $5942: $00
	rst  $28                                         ; $5943: $ef
	nop                                              ; $5944: $00
	db   $fc                                         ; $5945: $fc
	nop                                              ; $5946: $00
	ldh  [$87], a                                    ; $5947: $e0 $87
	nop                                              ; $5949: $00
	dec  b                                           ; $594a: $05
	xor  a                                           ; $594b: $af
	nop                                              ; $594c: $00
	add  l                                           ; $594d: $85
	dec  b                                           ; $594e: $05
	add  hl, sp                                      ; $594f: $39
	ld   bc, $0380                                   ; $5950: $01 $80 $03
	ld   bc, $011d                                   ; $5953: $01 $1d $01
	add  b                                           ; $5956: $80
	nop                                              ; $5957: $00
	nop                                              ; $5958: $00
	ld   c, $81                                      ; $5959: $0e $81
	nop                                              ; $595b: $00
	dec  b                                           ; $595c: $05
	and  l                                           ; $595d: $a5
	ld   b, b                                        ; $595e: $40
	ld   d, b                                        ; $595f: $50
	ld   b, b                                        ; $5960: $40
	ld   c, b                                        ; $5961: $48
	ld   d, b                                        ; $5962: $50
	add  b                                           ; $5963: $80
	db   $10                                         ; $5964: $10
	ld   bc, $0814                                   ; $5965: $01 $14 $08
	add  b                                           ; $5968: $80
	adc  b                                           ; $5969: $88
	ld   bc, $848a                                   ; $596a: $01 $8a $84
	add  b                                           ; $596d: $80
	call nz, $fa00                                   ; $596e: $c4 $00 $fa
	adc  e                                           ; $5971: $8b
	nop                                              ; $5972: $00
	add  b                                           ; $5973: $80
	ld   a, a                                        ; $5974: $7f
	adc  h                                           ; $5975: $8c
	nop                                              ; $5976: $00
	add  b                                           ; $5977: $80
	add  b                                           ; $5978: $80
	nop                                              ; $5979: $00
	ld   [bc], a                                     ; $597a: $02
	add  c                                           ; $597b: $81
	nop                                              ; $597c: $00
	nop                                              ; $597d: $00
	inc  bc                                          ; $597e: $03
	add  e                                           ; $597f: $83
	nop                                              ; $5980: $00
	nop                                              ; $5981: $00
	ld   bc, $0083                                   ; $5982: $01 $83 $00
	ld   bc, $7fff                                   ; $5985: $01 $ff $7f
	add  b                                           ; $5988: $80
	rra                                              ; $5989: $1f
	nop                                              ; $598a: $00
	ret  nz                                          ; $598b: $c0

	add  c                                           ; $598c: $81
	nop                                              ; $598d: $00
	add  b                                           ; $598e: $80
	jr   c, jr_0a3_5993                              ; $598f: $38 $02

	db   $fc                                         ; $5991: $fc
	inc  e                                           ; $5992: $1c

jr_0a3_5993:
	rra                                              ; $5993: $1f
	add  b                                           ; $5994: $80
	ld   e, $0e                                      ; $5995: $1e $0e
	nop                                              ; $5997: $00
	ld   c, [hl]                                     ; $5998: $4e
	ldh  [$d8], a                                    ; $5999: $e0 $d8
	ret  nz                                          ; $599b: $c0

	inc  c                                           ; $599c: $0c
	nop                                              ; $599d: $00
	ld   b, $00                                      ; $599e: $06 $00
	ld   [bc], a                                     ; $59a0: $02
	nop                                              ; $59a1: $00
	ld   bc, $ff00                                   ; $59a2: $01 $00 $ff
	nop                                              ; $59a5: $00
	add  b                                           ; $59a6: $80
	add  b                                           ; $59a7: $80
	ld   [bc], a                                     ; $59a8: $02
	ret  nz                                          ; $59a9: $c0

	jp   nz, $81e2                                   ; $59aa: $c2 $e2 $81

	ldh  [rSC], a                                    ; $59ad: $e0 $02
	pop  af                                          ; $59af: $f1
	ldh  a, [$f2]                                    ; $59b0: $f0 $f2
	add  b                                           ; $59b2: $80
	ldh  a, [rP1]                                    ; $59b3: $f0 $00
	db   $f4                                         ; $59b5: $f4
	add  b                                           ; $59b6: $80
	ldh  a, [$0e]                                    ; $59b7: $f0 $0e
	ld   h, b                                        ; $59b9: $60
	ld   l, b                                        ; $59ba: $68
	rrca                                             ; $59bb: $0f
	db   $e3                                         ; $59bc: $e3
	rst  $38                                         ; $59bd: $ff
	add  b                                           ; $59be: $80
	db   $e3                                         ; $59bf: $e3
	nop                                              ; $59c0: $00
	add  b                                           ; $59c1: $80
	nop                                              ; $59c2: $00
	rra                                              ; $59c3: $1f
	nop                                              ; $59c4: $00
	ld   a, a                                        ; $59c5: $7f
	nop                                              ; $59c6: $00
	ld   h, b                                        ; $59c7: $60
	add  c                                           ; $59c8: $81
	nop                                              ; $59c9: $00
	add  b                                           ; $59ca: $80
	ldh  a, [$80]                                    ; $59cb: $f0 $80
	cp   $0c                                         ; $59cd: $fe $0c
	rst  $38                                         ; $59cf: $ff
	ccf                                              ; $59d0: $3f
	rst  $38                                         ; $59d1: $ff
	rrca                                             ; $59d2: $0f
	rra                                              ; $59d3: $1f
	rlca                                             ; $59d4: $07
	rst  $10                                         ; $59d5: $d7
	rrca                                             ; $59d6: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59d7: $cf
	rlca                                             ; $59d8: $07
	cpl                                              ; $59d9: $2f
	inc  bc                                          ; $59da: $03
	inc  d                                           ; $59db: $14
	add  c                                           ; $59dc: $81
	nop                                              ; $59dd: $00
	add  b                                           ; $59de: $80
	add  b                                           ; $59df: $80
	add  b                                           ; $59e0: $80
	ldh  [$80], a                                    ; $59e1: $e0 $80
	ldh  a, [$80]                                    ; $59e3: $f0 $80
	db   $fc                                         ; $59e5: $fc
	add  b                                           ; $59e6: $80
	cp   $80                                         ; $59e7: $fe $80
	rst  $38                                         ; $59e9: $ff
	ld   bc, $0e51                                   ; $59ea: $01 $51 $0e
	add  b                                           ; $59ed: $80
	nop                                              ; $59ee: $00
	inc  b                                           ; $59ef: $04
	rlca                                             ; $59f0: $07
	ld   bc, $0709                                   ; $59f1: $01 $09 $07
	ld   a, a                                        ; $59f4: $7f
	add  l                                           ; $59f5: $85
	rlca                                             ; $59f6: $07
	ld   [bc], a                                     ; $59f7: $02
	ret  nc                                          ; $59f8: $d0

	nop                                              ; $59f9: $00
	rst  $38                                         ; $59fa: $ff
	add  b                                           ; $59fb: $80
	ccf                                              ; $59fc: $3f
	add  b                                           ; $59fd: $80
	rst  $38                                         ; $59fe: $ff
	add  b                                           ; $59ff: $80
	db   $fc                                         ; $5a00: $fc
	add  b                                           ; $5a01: $80
	pop  hl                                          ; $5a02: $e1
	add  b                                           ; $5a03: $80
	jp   $cf03                                       ; $5a04: $c3 $03 $cf


	ret  z                                           ; $5a07: $c8

	cp   b                                           ; $5a08: $b8
	cp   a                                           ; $5a09: $bf
	rst  $38                                         ; $5a0a: $ff
	nop                                              ; $5a0b: $00
	rst  $38                                         ; $5a0c: $ff
	nop                                              ; $5a0d: $00
	rst  $38                                         ; $5a0e: $ff
	nop                                              ; $5a0f: $00
	rst  $38                                         ; $5a10: $ff
	nop                                              ; $5a11: $00
	rst  $38                                         ; $5a12: $ff
	nop                                              ; $5a13: $00
	rst  $38                                         ; $5a14: $ff
	nop                                              ; $5a15: $00
	rst  $38                                         ; $5a16: $ff
	nop                                              ; $5a17: $00
	rst  $38                                         ; $5a18: $ff
	nop                                              ; $5a19: $00
	rst  $38                                         ; $5a1a: $ff
	nop                                              ; $5a1b: $00
	rst  $38                                         ; $5a1c: $ff
	nop                                              ; $5a1d: $00
	rst  $38                                         ; $5a1e: $ff
	nop                                              ; $5a1f: $00
	rst  $38                                         ; $5a20: $ff
	nop                                              ; $5a21: $00
	rst  $38                                         ; $5a22: $ff
	nop                                              ; $5a23: $00
	ret  nz                                          ; $5a24: $c0

	nop                                              ; $5a25: $00
	dec  bc                                          ; $5a26: $0b
	dec  bc                                          ; $5a27: $0b
	dec  bc                                          ; $5a28: $0b
	dec  bc                                          ; $5a29: $0b
	dec  bc                                          ; $5a2a: $0b
	ld   a, [bc]                                     ; $5a2b: $0a
	ld   a, [bc]                                     ; $5a2c: $0a
	ld   a, [bc]                                     ; $5a2d: $0a
	ld   a, [bc]                                     ; $5a2e: $0a
	ld   a, [bc]                                     ; $5a2f: $0a
	ld   a, [bc]                                     ; $5a30: $0a
	ld   a, [bc]                                     ; $5a31: $0a
	ld   a, [bc]                                     ; $5a32: $0a
	dec  bc                                          ; $5a33: $0b
	dec  bc                                          ; $5a34: $0b
	dec  bc                                          ; $5a35: $0b
	dec  bc                                          ; $5a36: $0b
	dec  bc                                          ; $5a37: $0b
	ld   a, [bc]                                     ; $5a38: $0a
	dec  bc                                          ; $5a39: $0b
	dec  bc                                          ; $5a3a: $0b
	dec  bc                                          ; $5a3b: $0b
	dec  bc                                          ; $5a3c: $0b
	dec  bc                                          ; $5a3d: $0b
	dec  bc                                          ; $5a3e: $0b
	ld   a, [bc]                                     ; $5a3f: $0a
	ld   a, [bc]                                     ; $5a40: $0a
	ld   a, [bc]                                     ; $5a41: $0a
	ld   a, [bc]                                     ; $5a42: $0a
	ld   a, [bc]                                     ; $5a43: $0a
	ld   a, [bc]                                     ; $5a44: $0a
	ld   a, [bc]                                     ; $5a45: $0a
	ld   a, [bc]                                     ; $5a46: $0a
	dec  bc                                          ; $5a47: $0b
	dec  bc                                          ; $5a48: $0b
	dec  bc                                          ; $5a49: $0b
	dec  bc                                          ; $5a4a: $0b
	dec  bc                                          ; $5a4b: $0b
	ld   a, [bc]                                     ; $5a4c: $0a
	dec  bc                                          ; $5a4d: $0b
	dec  bc                                          ; $5a4e: $0b
	dec  bc                                          ; $5a4f: $0b
	dec  bc                                          ; $5a50: $0b
	dec  bc                                          ; $5a51: $0b
	dec  bc                                          ; $5a52: $0b
	ld   a, [bc]                                     ; $5a53: $0a
	ld   a, [bc]                                     ; $5a54: $0a
	ld   a, [bc]                                     ; $5a55: $0a
	ld   a, [bc]                                     ; $5a56: $0a
	ld   a, [bc]                                     ; $5a57: $0a
	ld   a, [bc]                                     ; $5a58: $0a
	ld   a, [bc]                                     ; $5a59: $0a
	ld   a, [bc]                                     ; $5a5a: $0a
	dec  bc                                          ; $5a5b: $0b
	dec  bc                                          ; $5a5c: $0b
	dec  bc                                          ; $5a5d: $0b
	dec  bc                                          ; $5a5e: $0b
	dec  bc                                          ; $5a5f: $0b
	ld   a, [bc]                                     ; $5a60: $0a
	dec  bc                                          ; $5a61: $0b
	dec  bc                                          ; $5a62: $0b
	dec  bc                                          ; $5a63: $0b
	dec  bc                                          ; $5a64: $0b
	dec  bc                                          ; $5a65: $0b
	dec  bc                                          ; $5a66: $0b
	dec  bc                                          ; $5a67: $0b
	dec  bc                                          ; $5a68: $0b
	ld   a, [bc]                                     ; $5a69: $0a
	ld   a, [bc]                                     ; $5a6a: $0a
	ld   a, [bc]                                     ; $5a6b: $0a
	ld   a, [bc]                                     ; $5a6c: $0a
	ld   a, [bc]                                     ; $5a6d: $0a
	ld   a, [bc]                                     ; $5a6e: $0a
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
	ld   a, [bc]                                     ; $5a7d: $0a
	ld   a, [bc]                                     ; $5a7e: $0a
	ld   a, [bc]                                     ; $5a7f: $0a
	ld   a, [bc]                                     ; $5a80: $0a
	ld   a, [bc]                                     ; $5a81: $0a
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
	dec  bc                                          ; $5a90: $0b
	dec  bc                                          ; $5a91: $0b
	dec  bc                                          ; $5a92: $0b
	dec  bc                                          ; $5a93: $0b
	dec  bc                                          ; $5a94: $0b
	dec  bc                                          ; $5a95: $0b
	dec  bc                                          ; $5a96: $0b
	dec  bc                                          ; $5a97: $0b
	dec  bc                                          ; $5a98: $0b
	dec  bc                                          ; $5a99: $0b
	dec  bc                                          ; $5a9a: $0b
	dec  bc                                          ; $5a9b: $0b
	dec  bc                                          ; $5a9c: $0b
	dec  bc                                          ; $5a9d: $0b
	dec  bc                                          ; $5a9e: $0b
	dec  bc                                          ; $5a9f: $0b
	dec  bc                                          ; $5aa0: $0b
	dec  bc                                          ; $5aa1: $0b
	dec  bc                                          ; $5aa2: $0b
	dec  bc                                          ; $5aa3: $0b
	dec  bc                                          ; $5aa4: $0b
	dec  bc                                          ; $5aa5: $0b
	dec  bc                                          ; $5aa6: $0b
	dec  bc                                          ; $5aa7: $0b
	dec  bc                                          ; $5aa8: $0b
	dec  bc                                          ; $5aa9: $0b
	dec  bc                                          ; $5aaa: $0b
	dec  bc                                          ; $5aab: $0b
	dec  bc                                          ; $5aac: $0b
	dec  bc                                          ; $5aad: $0b
	dec  bc                                          ; $5aae: $0b
	dec  bc                                          ; $5aaf: $0b
	dec  bc                                          ; $5ab0: $0b
	dec  bc                                          ; $5ab1: $0b
	db   $10                                         ; $5ab2: $10
	ld   de, $1312                                   ; $5ab3: $11 $12 $13
	inc  d                                           ; $5ab6: $14
	dec  d                                           ; $5ab7: $15
	ld   d, $17                                      ; $5ab8: $16 $17
	jr   @+$1b                                       ; $5aba: $18 $19

	ld   a, [de]                                     ; $5abc: $1a
	ld   a, [hl+]                                    ; $5abd: $2a
	ld   bc, $301d                                   ; $5abe: $01 $1d $30
	rra                                              ; $5ac1: $1f
	dec  sp                                          ; $5ac2: $3b
	inc  e                                           ; $5ac3: $1c
	ld   [bc], a                                     ; $5ac4: $02
	inc  bc                                          ; $5ac5: $03
	jr   nz, @+$23                                   ; $5ac6: $20 $21

	ld   [hl+], a                                    ; $5ac8: $22
	inc  hl                                          ; $5ac9: $23
	inc  h                                           ; $5aca: $24
	dec  h                                           ; $5acb: $25
	ld   h, $1e                                      ; $5acc: $26 $1e
	dec  l                                           ; $5ace: $2d
	ld   l, $34                                      ; $5acf: $2e $34
	dec  a                                           ; $5ad1: $3d
	ld   a, $1d                                      ; $5ad2: $3e $1d
	jr   nc, jr_0a3_5b05                             ; $5ad4: $30 $2f

	dec  de                                          ; $5ad6: $1b
	inc  e                                           ; $5ad7: $1c
	daa                                              ; $5ad8: $27
	jr   z, jr_0a3_5b0b                              ; $5ad9: $28 $30

	ld   sp, $3332                                   ; $5adb: $31 $32 $33
	jr   nc, jr_0a3_5b15                             ; $5ade: $30 $35

	ld   [hl], $1e                                   ; $5ae0: $36 $1e
	ccf                                              ; $5ae2: $3f
	ld   b, b                                        ; $5ae3: $40
	ld   b, h                                        ; $5ae4: $44
	ld   b, l                                        ; $5ae5: $45
	ld   b, [hl]                                     ; $5ae6: $46
	dec  e                                           ; $5ae7: $1d
	jr   nc, jr_0a3_5b1a                             ; $5ae8: $30 $30

	inc  b                                           ; $5aea: $04
	inc  e                                           ; $5aeb: $1c
	ld   b, $07                                      ; $5aec: $06 $07
	jr   nc, jr_0a3_5b31                             ; $5aee: $30 $41

	ld   b, d                                        ; $5af0: $42
	ld   b, e                                        ; $5af1: $43
	jr   nc, jr_0a3_5b24                             ; $5af2: $30 $30

	jr   nc, @+$20                                   ; $5af4: $30 $1e

	ccf                                              ; $5af6: $3f
	ld   d, b                                        ; $5af7: $50
	ld   b, h                                        ; $5af8: $44
	ld   h, b                                        ; $5af9: $60
	ld   l, b                                        ; $5afa: $68
	ld   c, l                                        ; $5afb: $4d
	ld   c, [hl]                                     ; $5afc: $4e
	ld   c, a                                        ; $5afd: $4f
	add  hl, hl                                      ; $5afe: $29
	inc  e                                           ; $5aff: $1c
	dec  hl                                          ; $5b00: $2b
	inc  l                                           ; $5b01: $2c
	jr   nc, jr_0a3_5b55                             ; $5b02: $30 $51

	ld   d, d                                        ; $5b04: $52

jr_0a3_5b05:
	ld   d, e                                        ; $5b05: $53
	ld   d, h                                        ; $5b06: $54
	ld   d, l                                        ; $5b07: $55
	ld   d, [hl]                                     ; $5b08: $56
	ld   l, c                                        ; $5b09: $69
	ld   l, d                                        ; $5b0a: $6a

jr_0a3_5b0b:
	ld   [hl], d                                     ; $5b0b: $72
	ld   [hl], e                                     ; $5b0c: $73
	ld   a, h                                        ; $5b0d: $7c
	ld   e, h                                        ; $5b0e: $5c
	ld   e, l                                        ; $5b0f: $5d
	ld   e, [hl]                                     ; $5b10: $5e
	ld   e, a                                        ; $5b11: $5f
	ld   [$0a09], sp                                 ; $5b12: $08 $09 $0a

jr_0a3_5b15:
	dec  bc                                          ; $5b15: $0b
	jr   nc, jr_0a3_5b79                             ; $5b16: $30 $61

	ld   h, d                                        ; $5b18: $62
	ld   h, e                                        ; $5b19: $63

jr_0a3_5b1a:
	ld   h, h                                        ; $5b1a: $64
	ld   h, l                                        ; $5b1b: $65
	ld   h, [hl]                                     ; $5b1c: $66
	ld   h, a                                        ; $5b1d: $67
	ld   a, a                                        ; $5b1e: $7f
	ld   a, a                                        ; $5b1f: $7f
	ld   a, a                                        ; $5b20: $7f
	ld   l, e                                        ; $5b21: $6b
	ld   l, h                                        ; $5b22: $6c
	ld   l, l                                        ; $5b23: $6d

jr_0a3_5b24:
	ld   l, [hl]                                     ; $5b24: $6e
	ld   l, a                                        ; $5b25: $6f
	scf                                              ; $5b26: $37
	jr   c, jr_0a3_5b62                              ; $5b27: $38 $39

	ld   a, [hl-]                                    ; $5b29: $3a
	ld   [hl], b                                     ; $5b2a: $70
	ld   [hl], c                                     ; $5b2b: $71
	inc  c                                           ; $5b2c: $0c
	inc  c                                           ; $5b2d: $0c
	ld   [hl], h                                     ; $5b2e: $74
	ld   [hl], l                                     ; $5b2f: $75
	halt                                             ; $5b30: $76

jr_0a3_5b31:
	ld   [hl], a                                     ; $5b31: $77
	ld   a, b                                        ; $5b32: $78
	ld   a, c                                        ; $5b33: $79
	ld   a, d                                        ; $5b34: $7a
	ld   e, d                                        ; $5b35: $5a
	ld   e, e                                        ; $5b36: $5b
	ld   a, l                                        ; $5b37: $7d
	ld   a, [hl]                                     ; $5b38: $7e
	inc  c                                           ; $5b39: $0c
	inc  c                                           ; $5b3a: $0c
	inc  c                                           ; $5b3b: $0c
	ld   c, $0f                                      ; $5b3c: $0e $0f
	inc  b                                           ; $5b3e: $04
	inc  b                                           ; $5b3f: $04
	inc  b                                           ; $5b40: $04
	inc  b                                           ; $5b41: $04
	inc  b                                           ; $5b42: $04
	inc  b                                           ; $5b43: $04
	inc  b                                           ; $5b44: $04
	inc  b                                           ; $5b45: $04
	inc  b                                           ; $5b46: $04
	inc  b                                           ; $5b47: $04
	inc  b                                           ; $5b48: $04
	inc  b                                           ; $5b49: $04
	inc  b                                           ; $5b4a: $04
	inc  b                                           ; $5b4b: $04
	inc  b                                           ; $5b4c: $04
	inc  b                                           ; $5b4d: $04
	inc  b                                           ; $5b4e: $04
	inc  b                                           ; $5b4f: $04
	inc  b                                           ; $5b50: $04
	inc  b                                           ; $5b51: $04
	inc  b                                           ; $5b52: $04
	inc  b                                           ; $5b53: $04
	inc  b                                           ; $5b54: $04

jr_0a3_5b55:
	inc  b                                           ; $5b55: $04
	inc  b                                           ; $5b56: $04
	inc  b                                           ; $5b57: $04
	inc  b                                           ; $5b58: $04
	inc  b                                           ; $5b59: $04
	inc  b                                           ; $5b5a: $04
	inc  b                                           ; $5b5b: $04
	inc  b                                           ; $5b5c: $04
	inc  b                                           ; $5b5d: $04
	inc  b                                           ; $5b5e: $04
	inc  b                                           ; $5b5f: $04
	inc  b                                           ; $5b60: $04
	inc  b                                           ; $5b61: $04

jr_0a3_5b62:
	inc  b                                           ; $5b62: $04
	inc  b                                           ; $5b63: $04
	inc  b                                           ; $5b64: $04
	inc  b                                           ; $5b65: $04
	inc  b                                           ; $5b66: $04
	inc  b                                           ; $5b67: $04
	inc  b                                           ; $5b68: $04
	inc  b                                           ; $5b69: $04
	inc  b                                           ; $5b6a: $04
	inc  b                                           ; $5b6b: $04
	inc  b                                           ; $5b6c: $04
	inc  b                                           ; $5b6d: $04
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

jr_0a3_5b79:
	inc  b                                           ; $5b79: $04
	inc  b                                           ; $5b7a: $04
	inc  b                                           ; $5b7b: $04
	inc  b                                           ; $5b7c: $04
	inc  b                                           ; $5b7d: $04
	inc  b                                           ; $5b7e: $04
	inc  b                                           ; $5b7f: $04
	inc  b                                           ; $5b80: $04
	inc  b                                           ; $5b81: $04
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
	inc  b                                           ; $5b8e: $04
	inc  b                                           ; $5b8f: $04
	inc  b                                           ; $5b90: $04
	inc  b                                           ; $5b91: $04
	inc  b                                           ; $5b92: $04
	inc  b                                           ; $5b93: $04
	inc  b                                           ; $5b94: $04
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
	inc  b                                           ; $5b9f: $04
	inc  b                                           ; $5ba0: $04
	inc  b                                           ; $5ba1: $04
	inc  b                                           ; $5ba2: $04
	inc  b                                           ; $5ba3: $04
	inc  b                                           ; $5ba4: $04
	inc  b                                           ; $5ba5: $04
	inc  b                                           ; $5ba6: $04
	inc  b                                           ; $5ba7: $04
	inc  b                                           ; $5ba8: $04
	inc  b                                           ; $5ba9: $04
	inc  b                                           ; $5baa: $04
	inc  b                                           ; $5bab: $04
	inc  b                                           ; $5bac: $04
	inc  b                                           ; $5bad: $04
	inc  b                                           ; $5bae: $04
	inc  b                                           ; $5baf: $04
	inc  b                                           ; $5bb0: $04
	inc  b                                           ; $5bb1: $04
	inc  b                                           ; $5bb2: $04
	inc  b                                           ; $5bb3: $04
	inc  b                                           ; $5bb4: $04
	inc  b                                           ; $5bb5: $04
	inc  b                                           ; $5bb6: $04
	inc  b                                           ; $5bb7: $04
	inc  b                                           ; $5bb8: $04
	inc  b                                           ; $5bb9: $04
	inc  b                                           ; $5bba: $04
	inc  b                                           ; $5bbb: $04
	inc  b                                           ; $5bbc: $04
	inc  b                                           ; $5bbd: $04
	inc  b                                           ; $5bbe: $04
	inc  b                                           ; $5bbf: $04
	inc  b                                           ; $5bc0: $04
	inc  b                                           ; $5bc1: $04
	inc  b                                           ; $5bc2: $04
	inc  b                                           ; $5bc3: $04
	inc  b                                           ; $5bc4: $04
	inc  b                                           ; $5bc5: $04
	inc  b                                           ; $5bc6: $04
	inc  b                                           ; $5bc7: $04
	inc  b                                           ; $5bc8: $04
	inc  b                                           ; $5bc9: $04
	db   $10                                         ; $5bca: $10
	ld   de, $1312                                   ; $5bcb: $11 $12 $13
	nop                                              ; $5bce: $00
	dec  e                                           ; $5bcf: $1d
	ld   e, $00                                      ; $5bd0: $1e $00
	inc  d                                           ; $5bd2: $14
	dec  d                                           ; $5bd3: $15
	ld   d, $17                                      ; $5bd4: $16 $17
	jr   jr_0a3_5bd8                                 ; $5bd6: $18 $00

jr_0a3_5bd8:
	nop                                              ; $5bd8: $00
	nop                                              ; $5bd9: $00
	dec  sp                                          ; $5bda: $3b
	inc  e                                           ; $5bdb: $1c

jr_0a3_5bdc:
	ld   [bc], a                                     ; $5bdc: $02
	inc  bc                                          ; $5bdd: $03
	jr   nz, jr_0a3_5c01                             ; $5bde: $20 $21

	ld   [hl+], a                                    ; $5be0: $22
	inc  hl                                          ; $5be1: $23
	nop                                              ; $5be2: $00
	dec  l                                           ; $5be3: $2d
	ld   l, $00                                      ; $5be4: $2e $00
	inc  h                                           ; $5be6: $24
	dec  h                                           ; $5be7: $25
	ld   h, $27                                      ; $5be8: $26 $27
	jr   z, jr_0a3_5bec                              ; $5bea: $28 $00

jr_0a3_5bec:
	nop                                              ; $5bec: $00
	nop                                              ; $5bed: $00
	dec  de                                          ; $5bee: $1b
	inc  e                                           ; $5bef: $1c
	cpl                                              ; $5bf0: $2f
	ld   a, [de]                                     ; $5bf1: $1a
	jr   nz, jr_0a3_5c25                             ; $5bf2: $20 $31

	ld   [hl-], a                                    ; $5bf4: $32
	inc  sp                                          ; $5bf5: $33
	nop                                              ; $5bf6: $00
	dec  a                                           ; $5bf7: $3d
	ld   a, $00                                      ; $5bf8: $3e $00
	inc  [hl]                                        ; $5bfa: $34
	dec  [hl]                                        ; $5bfb: $35
	ld   [hl], $37                                   ; $5bfc: $36 $37
	jr   c, jr_0a3_5c00                              ; $5bfe: $38 $00

jr_0a3_5c00:
	nop                                              ; $5c00: $00

jr_0a3_5c01:
	nop                                              ; $5c01: $00
	inc  b                                           ; $5c02: $04
	inc  e                                           ; $5c03: $1c
	ld   b, $07                                      ; $5c04: $06 $07
	jr   nz, jr_0a3_5c49                             ; $5c06: $20 $41

	ld   b, d                                        ; $5c08: $42
	ld   b, e                                        ; $5c09: $43
	nop                                              ; $5c0a: $00
	nop                                              ; $5c0b: $00
	nop                                              ; $5c0c: $00
	nop                                              ; $5c0d: $00
	ld   b, h                                        ; $5c0e: $44
	ld   b, l                                        ; $5c0f: $45
	ld   b, [hl]                                     ; $5c10: $46
	ld   b, a                                        ; $5c11: $47
	ld   c, b                                        ; $5c12: $48
	ld   c, l                                        ; $5c13: $4d
	ld   c, [hl]                                     ; $5c14: $4e
	ld   c, a                                        ; $5c15: $4f
	add  hl, hl                                      ; $5c16: $29
	inc  e                                           ; $5c17: $1c
	dec  hl                                          ; $5c18: $2b
	inc  l                                           ; $5c19: $2c
	jr   nc, jr_0a3_5c6d                             ; $5c1a: $30 $51

	ld   d, d                                        ; $5c1c: $52
	ld   d, e                                        ; $5c1d: $53
	ld   d, h                                        ; $5c1e: $54
	ld   d, l                                        ; $5c1f: $55
	ld   d, [hl]                                     ; $5c20: $56
	ld   l, c                                        ; $5c21: $69
	ld   l, d                                        ; $5c22: $6a
	ld   [hl], d                                     ; $5c23: $72
	ld   [hl], e                                     ; $5c24: $73

jr_0a3_5c25:
	ld   a, h                                        ; $5c25: $7c
	ld   e, h                                        ; $5c26: $5c
	ld   e, l                                        ; $5c27: $5d
	ld   e, [hl]                                     ; $5c28: $5e
	ld   e, a                                        ; $5c29: $5f
	ld   [$0a09], sp                                 ; $5c2a: $08 $09 $0a
	dec  bc                                          ; $5c2d: $0b
	jr   nc, jr_0a3_5c91                             ; $5c2e: $30 $61

	ld   h, d                                        ; $5c30: $62
	ld   h, e                                        ; $5c31: $63
	ld   h, h                                        ; $5c32: $64
	ld   h, l                                        ; $5c33: $65
	ld   h, [hl]                                     ; $5c34: $66
	ld   h, a                                        ; $5c35: $67
	ld   l, b                                        ; $5c36: $68
	ld   l, b                                        ; $5c37: $68
	ld   l, b                                        ; $5c38: $68
	ld   l, e                                        ; $5c39: $6b
	ld   l, h                                        ; $5c3a: $6c
	ld   l, l                                        ; $5c3b: $6d
	ld   l, [hl]                                     ; $5c3c: $6e
	ld   l, a                                        ; $5c3d: $6f
	ccf                                              ; $5c3e: $3f
	ld   a, [hl+]                                    ; $5c3f: $2a
	add  hl, sp                                      ; $5c40: $39
	ld   a, [hl-]                                    ; $5c41: $3a
	ld   [hl], b                                     ; $5c42: $70
	ld   [hl], c                                     ; $5c43: $71
	inc  c                                           ; $5c44: $0c
	inc  c                                           ; $5c45: $0c
	ld   [hl], h                                     ; $5c46: $74
	ld   [hl], l                                     ; $5c47: $75
	halt                                             ; $5c48: $76

jr_0a3_5c49:
	ld   [hl], a                                     ; $5c49: $77
	ld   a, b                                        ; $5c4a: $78
	ld   a, c                                        ; $5c4b: $79
	ld   a, d                                        ; $5c4c: $7a
	ld   e, c                                        ; $5c4d: $59
	ld   e, d                                        ; $5c4e: $5a
	ld   a, l                                        ; $5c4f: $7d
	ld   a, [hl]                                     ; $5c50: $7e
	ld   a, a                                        ; $5c51: $7f
	inc  c                                           ; $5c52: $0c
	dec  c                                           ; $5c53: $0d
	ld   c, $0f                                      ; $5c54: $0e $0f
	ld   b, d                                        ; $5c56: $42
	nop                                              ; $5c57: $00
	add  h                                           ; $5c58: $84
	nop                                              ; $5c59: $00
	jr   nz, jr_0a3_5bdc                             ; $5c5a: $20 $80

	nop                                              ; $5c5c: $00
	ret  nz                                          ; $5c5d: $c0

	nop                                              ; $5c5e: $00
	ld   [hl], b                                     ; $5c5f: $70
	nop                                              ; $5c60: $00
	ccf                                              ; $5c61: $3f
	nop                                              ; $5c62: $00
	rrca                                             ; $5c63: $0f
	nop                                              ; $5c64: $00
	inc  bc                                          ; $5c65: $03
	nop                                              ; $5c66: $00
	dec  b                                           ; $5c67: $05
	nop                                              ; $5c68: $00
	ld   a, [bc]                                     ; $5c69: $0a
	nop                                              ; $5c6a: $00
	inc  d                                           ; $5c6b: $14
	nop                                              ; $5c6c: $00

jr_0a3_5c6d:
	jr   z, jr_0a3_5c6f                              ; $5c6d: $28 $00

jr_0a3_5c6f:
	ld   d, c                                        ; $5c6f: $51
	nop                                              ; $5c70: $00
	db   $e3                                         ; $5c71: $e3
	ld   bc, $038f                                   ; $5c72: $01 $8f $03
	adc  a                                           ; $5c75: $8f
	nop                                              ; $5c76: $00
	ret  nz                                          ; $5c77: $c0

	add  b                                           ; $5c78: $80
	db   $e3                                         ; $5c79: $e3
	ld   b, b                                        ; $5c7a: $40
	rra                                              ; $5c7b: $1f
	add  b                                           ; $5c7c: $80
	nop                                              ; $5c7d: $00
	ld   bc, $38ba                                   ; $5c7e: $01 $ba $38
	add  d                                           ; $5c81: $82
	ld   a, h                                        ; $5c82: $7c
	dec  b                                           ; $5c83: $05
	ld   a, c                                        ; $5c84: $79
	or   a                                           ; $5c85: $b7
	inc  bc                                          ; $5c86: $03
	di                                               ; $5c87: $f3
	rlca                                             ; $5c88: $07
	rst  ToBoot                                         ; $5c89: $c7
	add  d                                           ; $5c8a: $82
	rlca                                             ; $5c8b: $07
	add  d                                           ; $5c8c: $82
	rrca                                             ; $5c8d: $0f
	add  b                                           ; $5c8e: $80
	inc  c                                           ; $5c8f: $0c
	add  hl, bc                                      ; $5c90: $09

jr_0a3_5c91:
	nop                                              ; $5c91: $00
	ld   hl, $3102                                   ; $5c92: $21 $02 $31
	ld   bc, $0307                                   ; $5c95: $01 $07 $03
	adc  a                                           ; $5c98: $8f
	inc  bc                                          ; $5c99: $03
	dec  de                                          ; $5c9a: $1b
	add  b                                           ; $5c9b: $80
	inc  bc                                          ; $5c9c: $03
	add  e                                           ; $5c9d: $83
	ld   bc, $7e0a                                   ; $5c9e: $01 $0a $7e
	ld   c, b                                        ; $5ca1: $48
	ld   c, e                                        ; $5ca2: $4b
	inc  hl                                          ; $5ca3: $23
	add  e                                           ; $5ca4: $83
	add  d                                           ; $5ca5: $82
	add  [hl]                                        ; $5ca6: $86
	sub  l                                           ; $5ca7: $95
	ld   d, $54                                      ; $5ca8: $16 $54
	scf                                              ; $5caa: $37
	add  b                                           ; $5cab: $80
	ld   [hl], $80                                   ; $5cac: $36 $80
	inc  [hl]                                        ; $5cae: $34
	dec  bc                                          ; $5caf: $0b
	scf                                              ; $5cb0: $37
	adc  [hl]                                        ; $5cb1: $8e
	nop                                              ; $5cb2: $00
	add  e                                           ; $5cb3: $83
	nop                                              ; $5cb4: $00
	add  $80                                         ; $5cb5: $c6 $80
	inc  c                                           ; $5cb7: $0c
	nop                                              ; $5cb8: $00
	ld   hl, sp-$80                                  ; $5cb9: $f8 $80
	or   b                                           ; $5cbb: $b0
	add  b                                           ; $5cbc: $80
	inc  e                                           ; $5cbd: $1c
	add  b                                           ; $5cbe: $80
	ld   hl, sp+$11                                  ; $5cbf: $f8 $11
	ldh  a, [$d1]                                    ; $5cc1: $f0 $d1
	nop                                              ; $5cc3: $00
	jr   nz, jr_0a3_5cc6                             ; $5cc4: $20 $00

jr_0a3_5cc6:
	ld   [bc], a                                     ; $5cc6: $02
	ld   bc, $0305                                   ; $5cc7: $01 $05 $03
	ld   a, [bc]                                     ; $5cca: $0a
	ld   b, $17                                      ; $5ccb: $06 $17
	rrca                                             ; $5ccd: $0f
	cpl                                              ; $5cce: $2f
	rra                                              ; $5ccf: $1f
	ld   e, a                                        ; $5cd0: $5f
	scf                                              ; $5cd1: $37
	ret                                              ; $5cd2: $c9


	add  e                                           ; $5cd3: $83
	nop                                              ; $5cd4: $00
	ld   [bc], a                                     ; $5cd5: $02
	ld   [bc], a                                     ; $5cd6: $02
	ld   bc, $81c1                                   ; $5cd7: $01 $c1 $81
	add  c                                           ; $5cda: $81
	nop                                              ; $5cdb: $00
	add  l                                           ; $5cdc: $85
	add  c                                           ; $5cdd: $81
	add  e                                           ; $5cde: $83
	ld   bc, $b47c                                   ; $5cdf: $01 $7c $b4
	add  l                                           ; $5ce2: $85
	db   $f4                                         ; $5ce3: $f4
	add  l                                           ; $5ce4: $85
	db   $e4                                         ; $5ce5: $e4
	add  hl, bc                                      ; $5ce6: $09
	inc  e                                           ; $5ce7: $1c
	nop                                              ; $5ce8: $00
	ld   bc, $0200                                   ; $5ce9: $01 $00 $02
	ld   bc, $0005                                   ; $5cec: $01 $05 $00
	ld   a, [bc]                                     ; $5cef: $0a
	ld   [bc], a                                     ; $5cf0: $02
	add  b                                           ; $5cf1: $80
	ld   b, $04                                      ; $5cf2: $06 $04
	inc  e                                           ; $5cf4: $1c
	inc  c                                           ; $5cf5: $0c
	dec  a                                           ; $5cf6: $3d
	dec  e                                           ; $5cf7: $1d
	ret  nz                                          ; $5cf8: $c0

	add  b                                           ; $5cf9: $80
	ld   h, a                                        ; $5cfa: $67
	add  b                                           ; $5cfb: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cfc: $cf
	add  b                                           ; $5cfd: $80
	sbc  a                                           ; $5cfe: $9f
	add  b                                           ; $5cff: $80
	rra                                              ; $5d00: $1f
	inc  b                                           ; $5d01: $04
	ld   e, $7e                                      ; $5d02: $1e $7e
	ld   h, d                                        ; $5d04: $62
	cp   $fc                                         ; $5d05: $fe $fc
	add  b                                           ; $5d07: $80
	cp   $00                                         ; $5d08: $fe $00
	nop                                              ; $5d0a: $00
	add  d                                           ; $5d0b: $82
	rst  $38                                         ; $5d0c: $ff
	add  d                                           ; $5d0d: $82
	ld   a, a                                        ; $5d0e: $7f
	add  d                                           ; $5d0f: $82
	ld   [hl], a                                     ; $5d10: $77
	add  b                                           ; $5d11: $80
	daa                                              ; $5d12: $27
	ld   bc, $0007                                   ; $5d13: $01 $07 $00
	add  c                                           ; $5d16: $81
	ldh  a, [rP1]                                    ; $5d17: $f0 $00
	ld   hl, sp-$7f                                  ; $5d19: $f8 $81
	ldh  [rP1], a                                    ; $5d1b: $e0 $00
	ldh  a, [$81]                                    ; $5d1d: $f0 $81

jr_0a3_5d1f:
	ret  nz                                          ; $5d1f: $c0

	nop                                              ; $5d20: $00
	ldh  [$81], a                                    ; $5d21: $e0 $81
	add  b                                           ; $5d23: $80
	nop                                              ; $5d24: $00
	ld   b, b                                        ; $5d25: $40
	rst  $38                                         ; $5d26: $ff
	nop                                              ; $5d27: $00
	rst  $38                                         ; $5d28: $ff
	nop                                              ; $5d29: $00
	rst  $38                                         ; $5d2a: $ff
	nop                                              ; $5d2b: $00
	rst  $38                                         ; $5d2c: $ff
	nop                                              ; $5d2d: $00
	rst  $38                                         ; $5d2e: $ff
	nop                                              ; $5d2f: $00
	rst  $38                                         ; $5d30: $ff
	nop                                              ; $5d31: $00
	sub  a                                           ; $5d32: $97
	nop                                              ; $5d33: $00
	nop                                              ; $5d34: $00
	rst  $38                                         ; $5d35: $ff
	rst  $38                                         ; $5d36: $ff
	nop                                              ; $5d37: $00
	rst  $38                                         ; $5d38: $ff
	nop                                              ; $5d39: $00
	rst  $38                                         ; $5d3a: $ff
	nop                                              ; $5d3b: $00
	rst  $38                                         ; $5d3c: $ff
	nop                                              ; $5d3d: $00
	rst  $38                                         ; $5d3e: $ff
	nop                                              ; $5d3f: $00
	rst  $38                                         ; $5d40: $ff
	nop                                              ; $5d41: $00
	rst  $38                                         ; $5d42: $ff
	nop                                              ; $5d43: $00
	or   $00                                         ; $5d44: $f6 $00
	ld   d, d                                        ; $5d46: $52
	nop                                              ; $5d47: $00
	nop                                              ; $5d48: $00
	rst  $38                                         ; $5d49: $ff
	add  b                                           ; $5d4a: $80
	nop                                              ; $5d4b: $00
	add  b                                           ; $5d4c: $80
	ld   a, a                                        ; $5d4d: $7f
	ld   [bc], a                                     ; $5d4e: $02
	ld   h, b                                        ; $5d4f: $60
	ld   a, a                                        ; $5d50: $7f
	ld   e, a                                        ; $5d51: $5f
	add  c                                           ; $5d52: $81
	ld   d, b                                        ; $5d53: $50
	add  b                                           ; $5d54: $80
	ld   d, a                                        ; $5d55: $57
	nop                                              ; $5d56: $00
	ld   d, h                                        ; $5d57: $54
	add  d                                           ; $5d58: $82
	ld   d, l                                        ; $5d59: $55
	add  c                                           ; $5d5a: $81
	ld   d, h                                        ; $5d5b: $54
	add  b                                           ; $5d5c: $80
	ld   d, a                                        ; $5d5d: $57
	nop                                              ; $5d5e: $00
	ld   d, b                                        ; $5d5f: $50
	add  b                                           ; $5d60: $80
	ld   e, a                                        ; $5d61: $5f
	nop                                              ; $5d62: $00
	ld   b, b                                        ; $5d63: $40
	add  b                                           ; $5d64: $80
	ld   h, b                                        ; $5d65: $60
	add  b                                           ; $5d66: $80
	ld   a, a                                        ; $5d67: $7f
	add  d                                           ; $5d68: $82
	nop                                              ; $5d69: $00
	add  b                                           ; $5d6a: $80
	cp   $02                                         ; $5d6b: $fe $02
	ld   b, $fe                                      ; $5d6d: $06 $fe
	ld   a, [$0a81]                                  ; $5d6f: $fa $81 $0a
	add  b                                           ; $5d72: $80
	ld   [$2a00], a                                  ; $5d73: $ea $00 $2a
	add  d                                           ; $5d76: $82
	xor  d                                           ; $5d77: $aa
	add  c                                           ; $5d78: $81
	ld   a, [hl+]                                    ; $5d79: $2a
	add  b                                           ; $5d7a: $80
	ld   [$0a00], a                                  ; $5d7b: $ea $00 $0a
	add  b                                           ; $5d7e: $80
	ld   a, [$0200]                                  ; $5d7f: $fa $00 $02
	add  b                                           ; $5d82: $80
	ld   b, $80                                      ; $5d83: $06 $80
	cp   $82                                         ; $5d85: $fe $82
	nop                                              ; $5d87: $00
	add  b                                           ; $5d88: $80
	ld   a, a                                        ; $5d89: $7f
	ld   [bc], a                                     ; $5d8a: $02
	ld   h, b                                        ; $5d8b: $60
	ld   a, a                                        ; $5d8c: $7f
	ld   e, a                                        ; $5d8d: $5f
	add  c                                           ; $5d8e: $81
	ld   d, b                                        ; $5d8f: $50
	add  b                                           ; $5d90: $80
	ld   d, a                                        ; $5d91: $57
	nop                                              ; $5d92: $00
	ld   d, h                                        ; $5d93: $54
	adc  d                                           ; $5d94: $8a
	ld   d, l                                        ; $5d95: $55
	ld   b, $45                                      ; $5d96: $06 $45
	ld   c, l                                        ; $5d98: $4d
	ld   c, a                                        ; $5d99: $4f
	ld   e, e                                        ; $5d9a: $5b
	ld   e, a                                        ; $5d9b: $5f
	scf                                              ; $5d9c: $37
	jr   nc, jr_0a3_5d1f                             ; $5d9d: $30 $80

	nop                                              ; $5d9f: $00
	add  b                                           ; $5da0: $80
	cp   $08                                         ; $5da1: $fe $08
	ld   bc, $fbf9                                   ; $5da3: $01 $f9 $fb
	inc  bc                                          ; $5da6: $03
	ld   b, $07                                      ; $5da7: $06 $07
	db   $fd                                         ; $5da9: $fd
	rst  $38                                         ; $5daa: $ff
	inc  bc                                          ; $5dab: $03
	sub  b                                           ; $5dac: $90
	rst  $38                                         ; $5dad: $ff
	add  c                                           ; $5dae: $81
	nop                                              ; $5daf: $00
	add  b                                           ; $5db0: $80
	rst  $38                                         ; $5db1: $ff
	ld   [bc], a                                     ; $5db2: $02
	add  b                                           ; $5db3: $80
	rst  $38                                         ; $5db4: $ff
	ld   a, a                                        ; $5db5: $7f
	sub  [hl]                                        ; $5db6: $96
	rst  $38                                         ; $5db7: $ff
	add  c                                           ; $5db8: $81
	nop                                              ; $5db9: $00
	add  b                                           ; $5dba: $80
	rst  $38                                         ; $5dbb: $ff
	nop                                              ; $5dbc: $00
	nop                                              ; $5dbd: $00
	sbc  b                                           ; $5dbe: $98
	rst  $38                                         ; $5dbf: $ff
	ld   [bc], a                                     ; $5dc0: $02
	rrca                                             ; $5dc1: $0f
	ld   l, a                                        ; $5dc2: $6f
	ld   a, a                                        ; $5dc3: $7f
	sbc  e                                           ; $5dc4: $9b
	ld   e, a                                        ; $5dc5: $5f
	nop                                              ; $5dc6: $00
	cp   a                                           ; $5dc7: $bf
	sbc  l                                           ; $5dc8: $9d
	rst  $38                                         ; $5dc9: $ff
	add  c                                           ; $5dca: $81
	nop                                              ; $5dcb: $00
	add  b                                           ; $5dcc: $80
	ld   a, a                                        ; $5dcd: $7f
	ld   [bc], a                                     ; $5dce: $02
	ld   h, b                                        ; $5dcf: $60
	ld   a, a                                        ; $5dd0: $7f
	ld   e, a                                        ; $5dd1: $5f
	add  c                                           ; $5dd2: $81
	ld   d, b                                        ; $5dd3: $50
	add  b                                           ; $5dd4: $80
	ld   d, a                                        ; $5dd5: $57
	ld   bc, $5554                                   ; $5dd6: $01 $54 $55
	add  b                                           ; $5dd9: $80
	ld   d, h                                        ; $5dda: $54
	add  a                                           ; $5ddb: $87
	ld   d, l                                        ; $5ddc: $55
	ld   [$4d45], sp                                 ; $5ddd: $08 $45 $4d
	ld   c, a                                        ; $5de0: $4f
	ld   e, e                                        ; $5de1: $5b
	ld   e, a                                        ; $5de2: $5f
	scf                                              ; $5de3: $37
	ccf                                              ; $5de4: $3f
	ld   l, a                                        ; $5de5: $6f
	ld   a, a                                        ; $5de6: $7f
	cp   e                                           ; $5de7: $bb
	ld   e, a                                        ; $5de8: $5f
	nop                                              ; $5de9: $00
	cp   a                                           ; $5dea: $bf
	adc  l                                           ; $5deb: $8d
	nop                                              ; $5dec: $00
	nop                                              ; $5ded: $00
	rst  $38                                         ; $5dee: $ff
	add  b                                           ; $5def: $80
	nop                                              ; $5df0: $00
	add  b                                           ; $5df1: $80
	cp   $08                                         ; $5df2: $fe $08
	ld   bc, $fbf9                                   ; $5df4: $01 $f9 $fb
	inc  bc                                          ; $5df7: $03
	ld   b, $07                                      ; $5df8: $06 $07
	db   $fd                                         ; $5dfa: $fd
	rst  $38                                         ; $5dfb: $ff
	inc  bc                                          ; $5dfc: $03
	add  c                                           ; $5dfd: $81
	rst  $38                                         ; $5dfe: $ff
	adc  l                                           ; $5dff: $8d
	nop                                              ; $5e00: $00
	nop                                              ; $5e01: $00
	rst  $38                                         ; $5e02: $ff
	add  b                                           ; $5e03: $80
	nop                                              ; $5e04: $00
	add  b                                           ; $5e05: $80
	rst  $38                                         ; $5e06: $ff
	ld   [bc], a                                     ; $5e07: $02
	add  b                                           ; $5e08: $80
	rst  $38                                         ; $5e09: $ff
	ld   a, a                                        ; $5e0a: $7f
	add  a                                           ; $5e0b: $87
	rst  $38                                         ; $5e0c: $ff
	adc  l                                           ; $5e0d: $8d
	nop                                              ; $5e0e: $00
	nop                                              ; $5e0f: $00
	rst  $38                                         ; $5e10: $ff
	add  b                                           ; $5e11: $80
	nop                                              ; $5e12: $00
	add  b                                           ; $5e13: $80
	rst  $38                                         ; $5e14: $ff
	nop                                              ; $5e15: $00
	nop                                              ; $5e16: $00
	ret  z                                           ; $5e17: $c8

	rst  $38                                         ; $5e18: $ff
	nop                                              ; $5e19: $00
	nop                                              ; $5e1a: $00
	add  b                                           ; $5e1b: $80
	nop                                              ; $5e1c: $00
	and  b                                           ; $5e1d: $a0
	ret  nz                                          ; $5e1e: $c0

	ld   hl, sp-$04                                  ; $5e1f: $f8 $fc
	xor  h                                           ; $5e21: $ac
	sbc  [hl]                                        ; $5e22: $9e
	ld   e, b                                        ; $5e23: $58
	ld   c, h                                        ; $5e24: $4c
	ld   b, b                                        ; $5e25: $40
	ld   b, b                                        ; $5e26: $40
	ld   h, b                                        ; $5e27: $60
	ld   b, b                                        ; $5e28: $40
	jr   nz, jr_0a3_5e4b                             ; $5e29: $20 $20

	jr   nc, jr_0a3_5e4d                             ; $5e2b: $30 $20

	db   $10                                         ; $5e2d: $10
	db   $10                                         ; $5e2e: $10
	ld   [$0410], sp                                 ; $5e2f: $08 $10 $04
	ld   [$0402], sp                                 ; $5e32: $08 $02 $04
	nop                                              ; $5e35: $00
	inc  bc                                          ; $5e36: $03
	ld   bc, $0101                                   ; $5e37: $01 $01 $01
	nop                                              ; $5e3a: $00
	rrca                                             ; $5e3b: $0f
	rlca                                             ; $5e3c: $07
	dec  sp                                          ; $5e3d: $3b
	inc  e                                           ; $5e3e: $1c
	ld   l, $7f                                      ; $5e3f: $2e $7f
	ld   l, h                                        ; $5e41: $6c
	ld   b, $00                                      ; $5e42: $06 $00
	nop                                              ; $5e44: $00
	nop                                              ; $5e45: $00
	nop                                              ; $5e46: $00
	ld   b, b                                        ; $5e47: $40
	nop                                              ; $5e48: $00
	ld   h, b                                        ; $5e49: $60
	nop                                              ; $5e4a: $00

jr_0a3_5e4b:
	ldh  [$80], a                                    ; $5e4b: $e0 $80

jr_0a3_5e4d:
	ld   h, b                                        ; $5e4d: $60
	ret  nz                                          ; $5e4e: $c0

	nop                                              ; $5e4f: $00
	nop                                              ; $5e50: $00
	ld   bc, $0100                                   ; $5e51: $01 $00 $01
	nop                                              ; $5e54: $00
	ld   bc, $8100                                   ; $5e55: $01 $00 $81
	add  c                                           ; $5e58: $81
	rst  $38                                         ; $5e59: $ff
	inc  de                                          ; $5e5a: $13
	cp   a                                           ; $5e5b: $bf
	push bc                                          ; $5e5c: $c5
	rst  $38                                         ; $5e5d: $ff
	add  hl, bc                                      ; $5e5e: $09
	cp   $0d                                         ; $5e5f: $fe $0d
	cp   $0a                                         ; $5e61: $fe $0a
	ld   hl, sp+$0e                                  ; $5e63: $f8 $0e
	db   $fc                                         ; $5e65: $fc
	inc  b                                           ; $5e66: $04
	db   $fc                                         ; $5e67: $fc
	inc  c                                           ; $5e68: $0c
	db   $fc                                         ; $5e69: $fc
	inc  d                                           ; $5e6a: $14
	ld   hl, sp+$14                                  ; $5e6b: $f8 $14
	db   $fc                                         ; $5e6d: $fc
	ld   [hl+], a                                    ; $5e6e: $22
	cp   $22                                         ; $5e6f: $fe $22
	rst  $38                                         ; $5e71: $ff
	ld   b, a                                        ; $5e72: $47
	ld   a, a                                        ; $5e73: $7f
	rst  JumpTable                                         ; $5e74: $df
	rst  $38                                         ; $5e75: $ff
	cp   $ff                                         ; $5e76: $fe $ff
	cp   $00                                         ; $5e78: $fe $00
	nop                                              ; $5e7a: $00
	add  b                                           ; $5e7b: $80
	nop                                              ; $5e7c: $00
	and  b                                           ; $5e7d: $a0
	ret  nz                                          ; $5e7e: $c0

	ld   hl, sp-$04                                  ; $5e7f: $f8 $fc
	and  h                                           ; $5e81: $a4
	sbc  [hl]                                        ; $5e82: $9e
	ld   d, b                                        ; $5e83: $50
	ld   c, h                                        ; $5e84: $4c
	ld   b, b                                        ; $5e85: $40
	ld   b, b                                        ; $5e86: $40
	ld   h, b                                        ; $5e87: $60
	ld   b, b                                        ; $5e88: $40
	ld   bc, $0f00                                   ; $5e89: $01 $00 $0f
	rlca                                             ; $5e8c: $07
	dec  sp                                          ; $5e8d: $3b
	inc  e                                           ; $5e8e: $1c
	jr   z, jr_0a3_5f08                              ; $5e8f: $28 $77

	ld   h, b                                        ; $5e91: $60
	ld   c, $00                                      ; $5e92: $0e $00
	nop                                              ; $5e94: $00
	nop                                              ; $5e95: $00
	nop                                              ; $5e96: $00
	ld   b, b                                        ; $5e97: $40
	nop                                              ; $5e98: $00
	nop                                              ; $5e99: $00
	nop                                              ; $5e9a: $00
	add  b                                           ; $5e9b: $80
	nop                                              ; $5e9c: $00
	and  b                                           ; $5e9d: $a0
	ret  nz                                          ; $5e9e: $c0

	ld   hl, sp-$04                                  ; $5e9f: $f8 $fc
	sbc  h                                           ; $5ea1: $9c
	add  d                                           ; $5ea2: $82
	ld   c, h                                        ; $5ea3: $4c
	ld   e, h                                        ; $5ea4: $5c
	ld   b, b                                        ; $5ea5: $40
	ld   b, b                                        ; $5ea6: $40
	ld   h, b                                        ; $5ea7: $60
	ld   b, b                                        ; $5ea8: $40
	ld   bc, $0f00                                   ; $5ea9: $01 $00 $0f
	rlca                                             ; $5eac: $07
	dec  sp                                          ; $5ead: $3b
	inc  e                                           ; $5eae: $1c
	cpl                                              ; $5eaf: $2f
	ld   [hl], c                                     ; $5eb0: $71
	ld   l, [hl]                                     ; $5eb1: $6e
	ld   c, $00                                      ; $5eb2: $0e $00
	nop                                              ; $5eb4: $00
	nop                                              ; $5eb5: $00
	nop                                              ; $5eb6: $00
	ld   b, b                                        ; $5eb7: $40
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
	ld   h, b                                        ; $5ec9: $60
	nop                                              ; $5eca: $00
	ldh  [$80], a                                    ; $5ecb: $e0 $80
	ld   h, h                                        ; $5ecd: $64
	jp   nz, $5824                                   ; $5ece: $c2 $24 $58

	ld   bc, $3100                                   ; $5ed1: $01 $00 $31
	nop                                              ; $5ed4: $00
	ld   bc, $8100                                   ; $5ed5: $01 $00 $81
	add  c                                           ; $5ed8: $81
	ld   h, b                                        ; $5ed9: $60
	nop                                              ; $5eda: $00
	ldh  [$80], a                                    ; $5edb: $e0 $80
	ld   h, [hl]                                     ; $5edd: $66
	ret  nz                                          ; $5ede: $c0

	ld   b, d                                        ; $5edf: $42
	inc  e                                           ; $5ee0: $1c
	dec  h                                           ; $5ee1: $25
	ld   b, b                                        ; $5ee2: $40
	ld   hl, $0118                                   ; $5ee3: $21 $18 $01
	nop                                              ; $5ee6: $00
	sbc  c                                           ; $5ee7: $99
	add  c                                           ; $5ee8: $81
	nop                                              ; $5ee9: $00
	nop                                              ; $5eea: $00
	dec  b                                           ; $5eeb: $05
	add  b                                           ; $5eec: $80
	add  c                                           ; $5eed: $81
	add  d                                           ; $5eee: $82
	add  e                                           ; $5eef: $83
	add  h                                           ; $5ef0: $84
	nop                                              ; $5ef1: $00
	ld   [$0506], sp                                 ; $5ef2: $08 $06 $05
	ld   b, $07                                      ; $5ef5: $06 $07
	ld   [$0a09], sp                                 ; $5ef7: $08 $09 $0a
	nop                                              ; $5efa: $00
	jr   nz, jr_0a3_5f02                             ; $5efb: $20 $05

	sub  b                                           ; $5efd: $90
	sub  c                                           ; $5efe: $91
	sub  d                                           ; $5eff: $92
	sub  e                                           ; $5f00: $93
	sub  h                                           ; $5f01: $94

jr_0a3_5f02:
	nop                                              ; $5f02: $00
	jr   z, jr_0a3_5f0b                              ; $5f03: $28 $06

Jump_0a3_5f05:
	dec  d                                           ; $5f05: $15
	ld   d, $17                                      ; $5f06: $16 $17

jr_0a3_5f08:
	jr   jr_0a3_5f23                                 ; $5f08: $18 $19

	ld   a, [de]                                     ; $5f0a: $1a

jr_0a3_5f0b:
	nop                                              ; $5f0b: $00
	ld   b, b                                        ; $5f0c: $40
	ld   b, $a0                                      ; $5f0d: $06 $a0
	and  c                                           ; $5f0f: $a1
	and  d                                           ; $5f10: $a2
	and  e                                           ; $5f11: $a3
	and  h                                           ; $5f12: $a4
	and  l                                           ; $5f13: $a5
	nop                                              ; $5f14: $00
	ld   c, b                                        ; $5f15: $48
	ld   b, $36                                      ; $5f16: $06 $36
	ld   [hl], c                                     ; $5f18: $71
	ld   [hl], c                                     ; $5f19: $71
	ld   [hl], c                                     ; $5f1a: $71
	add  hl, hl                                      ; $5f1b: $29
	ld   a, [hl+]                                    ; $5f1c: $2a
	nop                                              ; $5f1d: $00
	ld   h, b                                        ; $5f1e: $60
	rlca                                             ; $5f1f: $07
	or   b                                           ; $5f20: $b0
	or   c                                           ; $5f21: $b1
	or   d                                           ; $5f22: $b2

jr_0a3_5f23:
	or   e                                           ; $5f23: $b3
	or   h                                           ; $5f24: $b4
	or   l                                           ; $5f25: $b5
	and  [hl]                                        ; $5f26: $a6
	nop                                              ; $5f27: $00
	ld   l, c                                        ; $5f28: $69
	dec  b                                           ; $5f29: $05
	ld   [hl], c                                     ; $5f2a: $71
	ld   [hl], c                                     ; $5f2b: $71
	ld   [hl], c                                     ; $5f2c: $71
	add  hl, sp                                      ; $5f2d: $39
	ld   a, [hl-]                                    ; $5f2e: $3a
	nop                                              ; $5f2f: $00
	add  b                                           ; $5f30: $80
	rlca                                             ; $5f31: $07
	adc  e                                           ; $5f32: $8b
	adc  h                                           ; $5f33: $8c
	adc  l                                           ; $5f34: $8d
	adc  [hl]                                        ; $5f35: $8e
	adc  a                                           ; $5f36: $8f
	and  a                                           ; $5f37: $a7
	xor  b                                           ; $5f38: $a8
	nop                                              ; $5f39: $00
	adc  c                                           ; $5f3a: $89
	dec  b                                           ; $5f3b: $05
	ld   [hl], c                                     ; $5f3c: $71
	ld   [hl], c                                     ; $5f3d: $71
	ld   [hl], c                                     ; $5f3e: $71
	ld   [hl], c                                     ; $5f3f: $71
	ld   [hl], c                                     ; $5f40: $71
	nop                                              ; $5f41: $00
	and  b                                           ; $5f42: $a0
	ld   [$9c9b], sp                                 ; $5f43: $08 $9b $9c
	sbc  l                                           ; $5f46: $9d
	sbc  [hl]                                        ; $5f47: $9e
	sbc  a                                           ; $5f48: $9f
	or   a                                           ; $5f49: $b7
	cp   b                                           ; $5f4a: $b8
	ld   [hl], c                                     ; $5f4b: $71
	nop                                              ; $5f4c: $00
	xor  c                                           ; $5f4d: $a9
	dec  b                                           ; $5f4e: $05
	ld   [hl], c                                     ; $5f4f: $71
	ld   [hl], c                                     ; $5f50: $71
	ld   [hl], c                                     ; $5f51: $71
	ld   [hl], c                                     ; $5f52: $71
	ld   [hl], c                                     ; $5f53: $71
	nop                                              ; $5f54: $00
	ret  nz                                          ; $5f55: $c0

	add  hl, bc                                      ; $5f56: $09
	xor  e                                           ; $5f57: $ab
	xor  h                                           ; $5f58: $ac
	xor  l                                           ; $5f59: $ad
	xor  [hl]                                        ; $5f5a: $ae
	xor  a                                           ; $5f5b: $af
	ldh  [$e1], a                                    ; $5f5c: $e0 $e1
	ldh  [c], a                                      ; $5f5e: $e2
	ld   [hl], c                                     ; $5f5f: $71
	nop                                              ; $5f60: $00
	jp   z, Jump_0a3_7105                            ; $5f61: $ca $05 $71

	ld   [hl], c                                     ; $5f64: $71
	ld   [hl], c                                     ; $5f65: $71
	ld   h, a                                        ; $5f66: $67
	ld   l, b                                        ; $5f67: $68
	nop                                              ; $5f68: $00
	ldh  [$09], a                                    ; $5f69: $e0 $09
	cp   e                                           ; $5f6b: $bb
	cp   h                                           ; $5f6c: $bc
	cp   l                                           ; $5f6d: $bd
	cp   [hl]                                        ; $5f6e: $be
	cp   a                                           ; $5f6f: $bf
	db   $e3                                         ; $5f70: $e3
	db   $e4                                         ; $5f71: $e4
	push hl                                          ; $5f72: $e5
	and  $00                                         ; $5f73: $e6 $00
	db   $eb                                         ; $5f75: $eb
	dec  b                                           ; $5f76: $05
	ld   l, c                                        ; $5f77: $69
	ld   l, d                                        ; $5f78: $6a
	ld   l, e                                        ; $5f79: $6b
	ld   l, h                                        ; $5f7a: $6c
	ld   l, l                                        ; $5f7b: $6d
	ld   bc, $1000                                   ; $5f7c: $01 $00 $10
	ret  nz                                          ; $5f7f: $c0

	pop  bc                                          ; $5f80: $c1
	jp   nz, $c4c3                                   ; $5f81: $c2 $c3 $c4

	push bc                                          ; $5f84: $c5
	add  $c7                                         ; $5f85: $c6 $c7
	ret  z                                           ; $5f87: $c8

	ret                                              ; $5f88: $c9


	ld   c, d                                        ; $5f89: $4a
	ld   c, e                                        ; $5f8a: $4b
	ld   c, h                                        ; $5f8b: $4c
	ld   c, l                                        ; $5f8c: $4d
	ld   c, [hl]                                     ; $5f8d: $4e
	ld   c, a                                        ; $5f8e: $4f
	ld   bc, $1320                                   ; $5f8f: $01 $20 $13
	ret  nc                                          ; $5f92: $d0

	pop  de                                          ; $5f93: $d1
	jp   nc, $d4d3                                   ; $5f94: $d2 $d3 $d4

	push de                                          ; $5f97: $d5
	sub  $d7                                         ; $5f98: $d6 $d7
	ret  c                                           ; $5f9a: $d8

	reti                                             ; $5f9b: $d9


	ld   e, d                                        ; $5f9c: $5a
	ld   e, e                                        ; $5f9d: $5b
	ld   e, h                                        ; $5f9e: $5c

jr_0a3_5f9f:
	ld   e, l                                        ; $5f9f: $5d
	ld   e, [hl]                                     ; $5fa0: $5e
	ld   e, a                                        ; $5fa1: $5f
	ld   l, [hl]                                     ; $5fa2: $6e
	rst  $28                                         ; $5fa3: $ef
	ldh  a, [rIE]                                    ; $5fa4: $f0 $ff
	dec  a                                           ; $5fa6: $3d
	nop                                              ; $5fa7: $00
	adc  d                                           ; $5fa8: $8a
	nop                                              ; $5fa9: $00
	ld   [bc], a                                     ; $5faa: $02
	ld   de, $567f                                   ; $5fab: $11 $7f $56
	add  c                                           ; $5fae: $81
	rst  $38                                         ; $5faf: $ff
	inc  b                                           ; $5fb0: $04
	cp   [hl]                                        ; $5fb1: $be
	rst  $38                                         ; $5fb2: $ff
	or   c                                           ; $5fb3: $b1
	ld   a, a                                        ; $5fb4: $7f
	ld   a, e                                        ; $5fb5: $7b
	add  b                                           ; $5fb6: $80
	ld   a, a                                        ; $5fb7: $7f
	rlca                                             ; $5fb8: $07
	rst  $38                                         ; $5fb9: $ff
	db   $fd                                         ; $5fba: $fd
	rst  $38                                         ; $5fbb: $ff
	ld   sp, hl                                      ; $5fbc: $f9
	cp   a                                           ; $5fbd: $bf
	or   a                                           ; $5fbe: $b7
	add  hl, sp                                      ; $5fbf: $39
	ld   b, $8b                                      ; $5fc0: $06 $8b
	nop                                              ; $5fc2: $00
	add  [hl]                                        ; $5fc3: $86
	add  b                                           ; $5fc4: $80
	sub  b                                           ; $5fc5: $90
	nop                                              ; $5fc6: $00
	ld   [bc], a                                     ; $5fc7: $02
	ld   bc, $0300                                   ; $5fc8: $01 $00 $03
	add  c                                           ; $5fcb: $81
	ld   bc, $0600                                   ; $5fcc: $01 $00 $06
	add  b                                           ; $5fcf: $80
	ld   [bc], a                                     ; $5fd0: $02
	add  e                                           ; $5fd1: $83
	inc  bc                                          ; $5fd2: $03
	nop                                              ; $5fd3: $00
	ld   b, $87                                      ; $5fd4: $06 $87
	nop                                              ; $5fd6: $00
	ld   [$3d3e], sp                                 ; $5fd7: $08 $3e $3d
	ld   [hl], d                                     ; $5fda: $72
	ccf                                              ; $5fdb: $3f
	ldh  a, [$7f]                                    ; $5fdc: $f0 $7f
	pop  af                                          ; $5fde: $f1
	rst  $38                                         ; $5fdf: $ff
	rst  JumpTable                                         ; $5fe0: $df
	add  c                                           ; $5fe1: $81
	rst  $38                                         ; $5fe2: $ff
	ld   [bc], a                                     ; $5fe3: $02
	ld   [$253d], sp                                 ; $5fe4: $08 $3d $25
	add  b                                           ; $5fe7: $80
	add  hl, de                                      ; $5fe8: $19
	add  b                                           ; $5fe9: $80
	ld   de, $1980                                   ; $5fea: $11 $80 $19
	dec  b                                           ; $5fed: $05
	cpl                                              ; $5fee: $2f
	call $1a0b                                       ; $5fef: $cd $0b $1a
	dec  bc                                          ; $5ff2: $0b
	rlca                                             ; $5ff3: $07
	add  e                                           ; $5ff4: $83

jr_0a3_5ff5:
	nop                                              ; $5ff5: $00
	add  b                                           ; $5ff6: $80
	add  b                                           ; $5ff7: $80
	ld   [bc], a                                     ; $5ff8: $02
	ld   b, b                                        ; $5ff9: $40
	ret  nz                                          ; $5ffa: $c0

	and  b                                           ; $5ffb: $a0
	add  c                                           ; $5ffc: $81
	ldh  [rP1], a                                    ; $5ffd: $e0 $00
	sub  b                                           ; $5fff: $90
	add  c                                           ; $6000: $81
	ldh  a, [rDIV]                                   ; $6001: $f0 $04
	jr   nc, jr_0a3_5ff5                             ; $6003: $30 $f0

	add  sp, -$08                                    ; $6005: $e8 $f8
	db   $e4                                         ; $6007: $e4
	add  c                                           ; $6008: $81
	db   $fc                                         ; $6009: $fc
	ld   bc, $fcec                                   ; $600a: $01 $ec $fc
	add  c                                           ; $600d: $81
	ld   hl, sp+$01                                  ; $600e: $f8 $01
	ldh  a, [rSVBK]                                  ; $6010: $f0 $70
	add  e                                           ; $6012: $83
	nop                                              ; $6013: $00
	add  b                                           ; $6014: $80
	inc  a                                           ; $6015: $3c
	add  b                                           ; $6016: $80
	ld   sp, $3e80                                   ; $6017: $31 $80 $3e
	add  b                                           ; $601a: $80
	jr   nc, jr_0a3_5f9f                             ; $601b: $30 $82

	db   $10                                         ; $601d: $10
	add  b                                           ; $601e: $80
	dec  h                                           ; $601f: $25
	add  b                                           ; $6020: $80
	add  hl, de                                      ; $6021: $19
	add  b                                           ; $6022: $80
	ld   de, $1980                                   ; $6023: $11 $80 $19
	add  b                                           ; $6026: $80
	cpl                                              ; $6027: $2f
	inc  b                                           ; $6028: $04
	add  hl, bc                                      ; $6029: $09
	dec  bc                                          ; $602a: $0b
	ld   a, [bc]                                     ; $602b: $0a
	dec  bc                                          ; $602c: $0b
	inc  bc                                          ; $602d: $03
	rst  $38                                         ; $602e: $ff
	nop                                              ; $602f: $00
	rst  $38                                         ; $6030: $ff
	nop                                              ; $6031: $00
	rst  $38                                         ; $6032: $ff
	nop                                              ; $6033: $00
	rst  $38                                         ; $6034: $ff
	nop                                              ; $6035: $00
	rst  $38                                         ; $6036: $ff
	nop                                              ; $6037: $00
	rst  $38                                         ; $6038: $ff
	nop                                              ; $6039: $00
	rst  $38                                         ; $603a: $ff
	nop                                              ; $603b: $00
	rst  $38                                         ; $603c: $ff
	nop                                              ; $603d: $00
	rst  $38                                         ; $603e: $ff
	nop                                              ; $603f: $00
	rst  $38                                         ; $6040: $ff
	nop                                              ; $6041: $00
	rst  $38                                         ; $6042: $ff
	nop                                              ; $6043: $00
	rst  $38                                         ; $6044: $ff
	nop                                              ; $6045: $00
	rst  $38                                         ; $6046: $ff
	nop                                              ; $6047: $00
	rst  $38                                         ; $6048: $ff
	nop                                              ; $6049: $00
	or   l                                           ; $604a: $b5
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
	ccf                                              ; $6064: $3f
	ld   e, a                                        ; $6065: $5f
	ld   [hl], $3e                                   ; $6066: $36 $3e
	ld   [hl], b                                     ; $6068: $70
	dec  h                                           ; $6069: $25
	db   $ed                                         ; $606a: $ed
	inc  d                                           ; $606b: $14
	ccf                                              ; $606c: $3f
	ld   e, a                                        ; $606d: $5f
	ld   [hl], $3e                                   ; $606e: $36 $3e
	ld   [hl], b                                     ; $6070: $70
	dec  h                                           ; $6071: $25
	db   $ed                                         ; $6072: $ed
	inc  d                                           ; $6073: $14
	ccf                                              ; $6074: $3f
	ld   e, a                                        ; $6075: $5f
	ld   [hl], $3e                                   ; $6076: $36 $3e
	ld   [hl], b                                     ; $6078: $70
	dec  h                                           ; $6079: $25
	db   $ed                                         ; $607a: $ed
	inc  d                                           ; $607b: $14
	ccf                                              ; $607c: $3f
	ld   e, a                                        ; $607d: $5f
	ld   [hl], $3e                                   ; $607e: $36 $3e
	ld   [hl], b                                     ; $6080: $70
	dec  h                                           ; $6081: $25
	db   $ed                                         ; $6082: $ed
	inc  d                                           ; $6083: $14
	ccf                                              ; $6084: $3f
	ld   e, a                                        ; $6085: $5f
	ld   [hl], $3e                                   ; $6086: $36 $3e
	ld   [hl], b                                     ; $6088: $70
	dec  h                                           ; $6089: $25
	db   $ed                                         ; $608a: $ed
	inc  d                                           ; $608b: $14
	ccf                                              ; $608c: $3f
	ld   e, a                                        ; $608d: $5f
	ld   [hl], $3e                                   ; $608e: $36 $3e
	ld   [hl], b                                     ; $6090: $70
	dec  h                                           ; $6091: $25
	db   $ed                                         ; $6092: $ed
	inc  d                                           ; $6093: $14
	ccf                                              ; $6094: $3f
	ld   e, a                                        ; $6095: $5f
	ld   [hl], b                                     ; $6096: $70
	dec  h                                           ; $6097: $25
	ld   [hl], b                                     ; $6098: $70
	dec  h                                           ; $6099: $25
	db   $ed                                         ; $609a: $ed
	inc  d                                           ; $609b: $14
	ccf                                              ; $609c: $3f
	ld   e, a                                        ; $609d: $5f
	ccf                                              ; $609e: $3f
	ld   e, a                                        ; $609f: $5f
	ld   [hl], b                                     ; $60a0: $70
	dec  h                                           ; $60a1: $25
	db   $ed                                         ; $60a2: $ed
	inc  d                                           ; $60a3: $14
	ccf                                              ; $60a4: $3f
	ld   e, a                                        ; $60a5: $5f
	ld   [hl], b                                     ; $60a6: $70
	dec  h                                           ; $60a7: $25
	ccf                                              ; $60a8: $3f
	ld   e, a                                        ; $60a9: $5f
	db   $ed                                         ; $60aa: $ed
	inc  d                                           ; $60ab: $14
	ccf                                              ; $60ac: $3f
	ld   e, a                                        ; $60ad: $5f
	ld   [hl], $3e                                   ; $60ae: $36 $3e
	ld   [hl], $3e                                   ; $60b0: $36 $3e
	db   $ed                                         ; $60b2: $ed
	inc  d                                           ; $60b3: $14
	nop                                              ; $60b4: $00
	nop                                              ; $60b5: $00
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
	nop                                              ; $60c3: $00
	nop                                              ; $60c4: $00
	nop                                              ; $60c5: $00
	nop                                              ; $60c6: $00
	nop                                              ; $60c7: $00
	nop                                              ; $60c8: $00
	nop                                              ; $60c9: $00
	nop                                              ; $60ca: $00
	nop                                              ; $60cb: $00
	nop                                              ; $60cc: $00
	nop                                              ; $60cd: $00
	nop                                              ; $60ce: $00
	nop                                              ; $60cf: $00
	nop                                              ; $60d0: $00
	nop                                              ; $60d1: $00
	nop                                              ; $60d2: $00
	nop                                              ; $60d3: $00
	nop                                              ; $60d4: $00
	nop                                              ; $60d5: $00
	nop                                              ; $60d6: $00
	nop                                              ; $60d7: $00
	nop                                              ; $60d8: $00
	nop                                              ; $60d9: $00
	nop                                              ; $60da: $00
	nop                                              ; $60db: $00
	nop                                              ; $60dc: $00
	nop                                              ; $60dd: $00
	nop                                              ; $60de: $00
	nop                                              ; $60df: $00
	nop                                              ; $60e0: $00
	nop                                              ; $60e1: $00
	nop                                              ; $60e2: $00
	nop                                              ; $60e3: $00
	ccf                                              ; $60e4: $3f
	ld   e, a                                        ; $60e5: $5f
	ld   [hl], $3e                                   ; $60e6: $36 $3e
	ld   [hl], b                                     ; $60e8: $70
	dec  h                                           ; $60e9: $25
	db   $ed                                         ; $60ea: $ed
	inc  d                                           ; $60eb: $14
	ccf                                              ; $60ec: $3f
	ld   e, a                                        ; $60ed: $5f
	ld   [hl], $3e                                   ; $60ee: $36 $3e
	ld   [hl], b                                     ; $60f0: $70
	dec  h                                           ; $60f1: $25
	db   $ed                                         ; $60f2: $ed
	inc  d                                           ; $60f3: $14
	ccf                                              ; $60f4: $3f
	ld   e, a                                        ; $60f5: $5f
	ld   [hl], $3e                                   ; $60f6: $36 $3e
	ld   [hl], b                                     ; $60f8: $70
	dec  h                                           ; $60f9: $25
	db   $ed                                         ; $60fa: $ed
	inc  d                                           ; $60fb: $14
	ccf                                              ; $60fc: $3f
	ld   e, a                                        ; $60fd: $5f
	ld   [hl], $3e                                   ; $60fe: $36 $3e
	ld   [hl], b                                     ; $6100: $70
	dec  h                                           ; $6101: $25
	db   $ed                                         ; $6102: $ed
	inc  d                                           ; $6103: $14
	ccf                                              ; $6104: $3f
	ld   e, a                                        ; $6105: $5f
	ld   [hl], $3e                                   ; $6106: $36 $3e
	ld   [hl], b                                     ; $6108: $70
	dec  h                                           ; $6109: $25
	db   $ed                                         ; $610a: $ed
	inc  d                                           ; $610b: $14
	ccf                                              ; $610c: $3f
	ld   e, a                                        ; $610d: $5f
	ld   [hl], $3e                                   ; $610e: $36 $3e
	ld   [hl], b                                     ; $6110: $70
	dec  h                                           ; $6111: $25
	db   $ed                                         ; $6112: $ed
	inc  d                                           ; $6113: $14
	ccf                                              ; $6114: $3f
	ld   e, a                                        ; $6115: $5f
	ld   [hl], $3e                                   ; $6116: $36 $3e
	ld   [hl], b                                     ; $6118: $70
	dec  h                                           ; $6119: $25
	db   $ed                                         ; $611a: $ed
	inc  d                                           ; $611b: $14
	ccf                                              ; $611c: $3f
	ld   e, a                                        ; $611d: $5f
	ccf                                              ; $611e: $3f
	ld   e, a                                        ; $611f: $5f
	ld   [hl], b                                     ; $6120: $70
	dec  h                                           ; $6121: $25
	db   $ed                                         ; $6122: $ed
	inc  d                                           ; $6123: $14
	ccf                                              ; $6124: $3f
	ld   e, a                                        ; $6125: $5f
	ccf                                              ; $6126: $3f
	ld   e, a                                        ; $6127: $5f
	ld   [hl], b                                     ; $6128: $70
	dec  h                                           ; $6129: $25
	db   $ed                                         ; $612a: $ed
	inc  d                                           ; $612b: $14
	ccf                                              ; $612c: $3f
	ld   e, a                                        ; $612d: $5f
	ld   [hl], $3e                                   ; $612e: $36 $3e
	ld   [hl], $3e                                   ; $6130: $36 $3e
	db   $ed                                         ; $6132: $ed
	inc  d                                           ; $6133: $14
	nop                                              ; $6134: $00
	nop                                              ; $6135: $00
	nop                                              ; $6136: $00
	nop                                              ; $6137: $00
	nop                                              ; $6138: $00
	nop                                              ; $6139: $00
	nop                                              ; $613a: $00
	nop                                              ; $613b: $00
	nop                                              ; $613c: $00
	nop                                              ; $613d: $00
	nop                                              ; $613e: $00
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
	nop                                              ; $6153: $00
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
	ccf                                              ; $6164: $3f
	ld   e, a                                        ; $6165: $5f
	ld   [hl], $3e                                   ; $6166: $36 $3e
	ld   [hl], b                                     ; $6168: $70
	dec  h                                           ; $6169: $25
	db   $ed                                         ; $616a: $ed
	inc  d                                           ; $616b: $14
	ccf                                              ; $616c: $3f
	ld   e, a                                        ; $616d: $5f
	ld   [hl], $3e                                   ; $616e: $36 $3e
	ld   [hl], b                                     ; $6170: $70
	dec  h                                           ; $6171: $25
	db   $ed                                         ; $6172: $ed
	inc  d                                           ; $6173: $14
	ccf                                              ; $6174: $3f
	ld   e, a                                        ; $6175: $5f
	ld   [hl], $3e                                   ; $6176: $36 $3e
	ld   [hl], b                                     ; $6178: $70
	dec  h                                           ; $6179: $25
	db   $ed                                         ; $617a: $ed
	inc  d                                           ; $617b: $14
	ccf                                              ; $617c: $3f
	ld   e, a                                        ; $617d: $5f
	ld   [hl], $3e                                   ; $617e: $36 $3e
	ld   [hl], b                                     ; $6180: $70
	dec  h                                           ; $6181: $25
	db   $ed                                         ; $6182: $ed
	inc  d                                           ; $6183: $14
	ccf                                              ; $6184: $3f
	ld   e, a                                        ; $6185: $5f
	ld   [hl], $3e                                   ; $6186: $36 $3e
	ccf                                              ; $6188: $3f
	ld   e, a                                        ; $6189: $5f
	db   $ed                                         ; $618a: $ed
	inc  d                                           ; $618b: $14
	ccf                                              ; $618c: $3f
	ld   e, a                                        ; $618d: $5f
	ld   [hl], $3e                                   ; $618e: $36 $3e
	ccf                                              ; $6190: $3f
	ld   e, a                                        ; $6191: $5f
	db   $ed                                         ; $6192: $ed
	inc  d                                           ; $6193: $14
	ccf                                              ; $6194: $3f
	ld   e, a                                        ; $6195: $5f
	ld   [hl], $3e                                   ; $6196: $36 $3e
	ccf                                              ; $6198: $3f
	ld   e, a                                        ; $6199: $5f
	db   $ed                                         ; $619a: $ed
	inc  d                                           ; $619b: $14
	ccf                                              ; $619c: $3f
	ld   e, a                                        ; $619d: $5f
	ld   [hl], $3e                                   ; $619e: $36 $3e
	ld   [hl], b                                     ; $61a0: $70
	dec  h                                           ; $61a1: $25
	db   $ed                                         ; $61a2: $ed
	inc  d                                           ; $61a3: $14
	ccf                                              ; $61a4: $3f
	ld   e, a                                        ; $61a5: $5f
	ld   [hl], $3e                                   ; $61a6: $36 $3e
	ld   [hl], b                                     ; $61a8: $70
	dec  h                                           ; $61a9: $25
	db   $ed                                         ; $61aa: $ed
	inc  d                                           ; $61ab: $14
	ccf                                              ; $61ac: $3f
	ld   e, a                                        ; $61ad: $5f
	ld   [hl], $3e                                   ; $61ae: $36 $3e
	ccf                                              ; $61b0: $3f
	ld   e, a                                        ; $61b1: $5f
	db   $ed                                         ; $61b2: $ed
	inc  d                                           ; $61b3: $14
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
	ccf                                              ; $61e4: $3f
	ld   e, a                                        ; $61e5: $5f
	ld   [hl], $3e                                   ; $61e6: $36 $3e
	ld   [hl], b                                     ; $61e8: $70
	dec  h                                           ; $61e9: $25
	db   $ed                                         ; $61ea: $ed
	inc  d                                           ; $61eb: $14
	ccf                                              ; $61ec: $3f
	ld   e, a                                        ; $61ed: $5f
	ld   [hl], $3e                                   ; $61ee: $36 $3e
	ld   [hl], b                                     ; $61f0: $70
	dec  h                                           ; $61f1: $25
	db   $ed                                         ; $61f2: $ed
	inc  d                                           ; $61f3: $14
	ccf                                              ; $61f4: $3f
	ld   e, a                                        ; $61f5: $5f
	ld   [hl], $3e                                   ; $61f6: $36 $3e
	ld   [hl], b                                     ; $61f8: $70
	dec  h                                           ; $61f9: $25
	db   $ed                                         ; $61fa: $ed
	inc  d                                           ; $61fb: $14
	ccf                                              ; $61fc: $3f
	ld   e, a                                        ; $61fd: $5f
	ld   [hl], $3e                                   ; $61fe: $36 $3e
	ld   [hl], b                                     ; $6200: $70
	dec  h                                           ; $6201: $25
	db   $ed                                         ; $6202: $ed
	inc  d                                           ; $6203: $14
	ccf                                              ; $6204: $3f
	ld   e, a                                        ; $6205: $5f
	ld   [hl], $3e                                   ; $6206: $36 $3e
	ld   [hl], b                                     ; $6208: $70
	dec  h                                           ; $6209: $25
	db   $ed                                         ; $620a: $ed
	inc  d                                           ; $620b: $14
	ccf                                              ; $620c: $3f
	ld   e, a                                        ; $620d: $5f
	ld   [hl], $3e                                   ; $620e: $36 $3e
	ld   [hl], $3e                                   ; $6210: $36 $3e
	db   $ed                                         ; $6212: $ed
	inc  d                                           ; $6213: $14
	ccf                                              ; $6214: $3f
	ld   e, a                                        ; $6215: $5f
	ld   [hl], $3e                                   ; $6216: $36 $3e
	ld   [hl], $3e                                   ; $6218: $36 $3e
	db   $ed                                         ; $621a: $ed
	inc  d                                           ; $621b: $14
	ccf                                              ; $621c: $3f
	ld   e, a                                        ; $621d: $5f
	ld   [hl], $3e                                   ; $621e: $36 $3e
	ccf                                              ; $6220: $3f
	ld   e, a                                        ; $6221: $5f
	db   $ed                                         ; $6222: $ed
	inc  d                                           ; $6223: $14
	ccf                                              ; $6224: $3f
	ld   e, a                                        ; $6225: $5f
	ld   [hl], $3e                                   ; $6226: $36 $3e
	db   $ed                                         ; $6228: $ed
	inc  d                                           ; $6229: $14
	db   $ed                                         ; $622a: $ed
	inc  d                                           ; $622b: $14
	ccf                                              ; $622c: $3f
	ld   e, a                                        ; $622d: $5f
	ld   [hl], $3e                                   ; $622e: $36 $3e
	db   $ed                                         ; $6230: $ed
	inc  d                                           ; $6231: $14
	db   $ed                                         ; $6232: $ed
	inc  d                                           ; $6233: $14
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
	ccf                                              ; $6264: $3f
	ld   e, a                                        ; $6265: $5f
	ld   [hl], $3e                                   ; $6266: $36 $3e
	ld   [hl], b                                     ; $6268: $70
	dec  h                                           ; $6269: $25
	db   $ed                                         ; $626a: $ed
	inc  d                                           ; $626b: $14
	ccf                                              ; $626c: $3f
	ld   e, a                                        ; $626d: $5f
	ld   [hl], $3e                                   ; $626e: $36 $3e
	ld   [hl], b                                     ; $6270: $70
	dec  h                                           ; $6271: $25
	db   $ed                                         ; $6272: $ed
	inc  d                                           ; $6273: $14
	ccf                                              ; $6274: $3f
	ld   e, a                                        ; $6275: $5f
	ld   [hl], $3e                                   ; $6276: $36 $3e
	ld   [hl], b                                     ; $6278: $70
	dec  h                                           ; $6279: $25
	db   $ed                                         ; $627a: $ed
	inc  d                                           ; $627b: $14
	ccf                                              ; $627c: $3f
	ld   e, a                                        ; $627d: $5f
	ld   [hl], b                                     ; $627e: $70
	dec  h                                           ; $627f: $25
	ld   [hl], $3e                                   ; $6280: $36 $3e
	db   $ed                                         ; $6282: $ed
	inc  d                                           ; $6283: $14
	ccf                                              ; $6284: $3f
	ld   e, a                                        ; $6285: $5f
	ld   [hl], $3e                                   ; $6286: $36 $3e
	ld   [hl], b                                     ; $6288: $70
	dec  h                                           ; $6289: $25
	db   $ed                                         ; $628a: $ed
	inc  d                                           ; $628b: $14
	ccf                                              ; $628c: $3f
	ld   e, a                                        ; $628d: $5f
	ld   [hl], $3e                                   ; $628e: $36 $3e
	ld   [hl], b                                     ; $6290: $70
	dec  h                                           ; $6291: $25
	db   $ed                                         ; $6292: $ed
	inc  d                                           ; $6293: $14
	ccf                                              ; $6294: $3f
	ld   e, a                                        ; $6295: $5f
	ccf                                              ; $6296: $3f
	ld   e, a                                        ; $6297: $5f
	ld   [hl], b                                     ; $6298: $70
	dec  h                                           ; $6299: $25
	db   $ed                                         ; $629a: $ed
	inc  d                                           ; $629b: $14
	ccf                                              ; $629c: $3f
	ld   e, a                                        ; $629d: $5f
	ld   [hl], b                                     ; $629e: $70
	dec  h                                           ; $629f: $25
	ld   [hl], b                                     ; $62a0: $70
	dec  h                                           ; $62a1: $25
	db   $ed                                         ; $62a2: $ed
	inc  d                                           ; $62a3: $14
	ccf                                              ; $62a4: $3f
	ld   e, a                                        ; $62a5: $5f
	ld   [hl], $3e                                   ; $62a6: $36 $3e
	ld   [hl], b                                     ; $62a8: $70
	dec  h                                           ; $62a9: $25
	db   $ed                                         ; $62aa: $ed
	inc  d                                           ; $62ab: $14
	ccf                                              ; $62ac: $3f
	ld   e, a                                        ; $62ad: $5f
	ld   [hl], $3e                                   ; $62ae: $36 $3e
	ld   [hl], $3e                                   ; $62b0: $36 $3e
	db   $ed                                         ; $62b2: $ed
	inc  d                                           ; $62b3: $14
	nop                                              ; $62b4: $00
	nop                                              ; $62b5: $00
	nop                                              ; $62b6: $00
	nop                                              ; $62b7: $00
	nop                                              ; $62b8: $00
	nop                                              ; $62b9: $00
	nop                                              ; $62ba: $00
	nop                                              ; $62bb: $00
	nop                                              ; $62bc: $00
	nop                                              ; $62bd: $00
	nop                                              ; $62be: $00
	nop                                              ; $62bf: $00
	nop                                              ; $62c0: $00
	nop                                              ; $62c1: $00
	nop                                              ; $62c2: $00
	nop                                              ; $62c3: $00
	nop                                              ; $62c4: $00
	nop                                              ; $62c5: $00
	nop                                              ; $62c6: $00
	nop                                              ; $62c7: $00
	nop                                              ; $62c8: $00
	nop                                              ; $62c9: $00
	nop                                              ; $62ca: $00
	nop                                              ; $62cb: $00
	nop                                              ; $62cc: $00
	nop                                              ; $62cd: $00
	nop                                              ; $62ce: $00
	nop                                              ; $62cf: $00
	nop                                              ; $62d0: $00
	nop                                              ; $62d1: $00
	nop                                              ; $62d2: $00
	nop                                              ; $62d3: $00
	nop                                              ; $62d4: $00
	nop                                              ; $62d5: $00
	nop                                              ; $62d6: $00
	nop                                              ; $62d7: $00
	nop                                              ; $62d8: $00
	nop                                              ; $62d9: $00
	nop                                              ; $62da: $00
	nop                                              ; $62db: $00
	nop                                              ; $62dc: $00
	nop                                              ; $62dd: $00
	nop                                              ; $62de: $00
	nop                                              ; $62df: $00
	nop                                              ; $62e0: $00
	nop                                              ; $62e1: $00
	nop                                              ; $62e2: $00
	nop                                              ; $62e3: $00
	ccf                                              ; $62e4: $3f
	ld   e, a                                        ; $62e5: $5f
	ld   [hl], $3e                                   ; $62e6: $36 $3e
	ld   [hl], b                                     ; $62e8: $70
	dec  h                                           ; $62e9: $25
	db   $ed                                         ; $62ea: $ed
	inc  d                                           ; $62eb: $14
	ccf                                              ; $62ec: $3f
	ld   e, a                                        ; $62ed: $5f
	ld   [hl], $3e                                   ; $62ee: $36 $3e
	ld   [hl], b                                     ; $62f0: $70
	dec  h                                           ; $62f1: $25
	db   $ed                                         ; $62f2: $ed
	inc  d                                           ; $62f3: $14
	ccf                                              ; $62f4: $3f
	ld   e, a                                        ; $62f5: $5f
	ld   [hl], $3e                                   ; $62f6: $36 $3e
	ld   [hl], b                                     ; $62f8: $70
	dec  h                                           ; $62f9: $25
	db   $ed                                         ; $62fa: $ed
	inc  d                                           ; $62fb: $14
	ccf                                              ; $62fc: $3f
	ld   e, a                                        ; $62fd: $5f
	ld   [hl], $3e                                   ; $62fe: $36 $3e
	ld   [hl], b                                     ; $6300: $70
	dec  h                                           ; $6301: $25
	db   $ed                                         ; $6302: $ed
	inc  d                                           ; $6303: $14
	ccf                                              ; $6304: $3f
	ld   e, a                                        ; $6305: $5f
	ld   [hl], $3e                                   ; $6306: $36 $3e
	ld   [hl], b                                     ; $6308: $70
	dec  h                                           ; $6309: $25
	db   $ed                                         ; $630a: $ed
	inc  d                                           ; $630b: $14
	ccf                                              ; $630c: $3f
	ld   e, a                                        ; $630d: $5f
	ld   [hl], $3e                                   ; $630e: $36 $3e
	ld   [hl], b                                     ; $6310: $70
	dec  h                                           ; $6311: $25
	db   $ed                                         ; $6312: $ed
	inc  d                                           ; $6313: $14
	ccf                                              ; $6314: $3f
	ld   e, a                                        ; $6315: $5f
	ld   [hl], $3e                                   ; $6316: $36 $3e
	ld   [hl], b                                     ; $6318: $70
	dec  h                                           ; $6319: $25
	db   $ed                                         ; $631a: $ed
	inc  d                                           ; $631b: $14
	ccf                                              ; $631c: $3f
	ld   e, a                                        ; $631d: $5f
	ccf                                              ; $631e: $3f
	ld   e, a                                        ; $631f: $5f
	ld   [hl], b                                     ; $6320: $70
	dec  h                                           ; $6321: $25
	db   $ed                                         ; $6322: $ed
	inc  d                                           ; $6323: $14
	ccf                                              ; $6324: $3f
	ld   e, a                                        ; $6325: $5f
	ccf                                              ; $6326: $3f
	ld   e, a                                        ; $6327: $5f
	ld   [hl], $3e                                   ; $6328: $36 $3e
	db   $ed                                         ; $632a: $ed
	inc  d                                           ; $632b: $14
	ccf                                              ; $632c: $3f
	ld   e, a                                        ; $632d: $5f
	ld   [hl], $3e                                   ; $632e: $36 $3e
	ld   [hl], b                                     ; $6330: $70
	dec  h                                           ; $6331: $25
	db   $ed                                         ; $6332: $ed
	inc  d                                           ; $6333: $14
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
	ccf                                              ; $6364: $3f
	ld   e, a                                        ; $6365: $5f
	ld   [hl], $3e                                   ; $6366: $36 $3e
	ld   [hl], b                                     ; $6368: $70
	dec  h                                           ; $6369: $25
	db   $ed                                         ; $636a: $ed
	inc  d                                           ; $636b: $14
	ccf                                              ; $636c: $3f
	ld   e, a                                        ; $636d: $5f
	ld   [hl], $3e                                   ; $636e: $36 $3e
	ld   [hl], b                                     ; $6370: $70
	dec  h                                           ; $6371: $25
	db   $ed                                         ; $6372: $ed
	inc  d                                           ; $6373: $14
	ccf                                              ; $6374: $3f
	ld   e, a                                        ; $6375: $5f
	ld   [hl], $3e                                   ; $6376: $36 $3e
	ld   [hl], b                                     ; $6378: $70
	dec  h                                           ; $6379: $25
	db   $ed                                         ; $637a: $ed
	inc  d                                           ; $637b: $14
	ccf                                              ; $637c: $3f
	ld   e, a                                        ; $637d: $5f
	ld   [hl], b                                     ; $637e: $70
	dec  h                                           ; $637f: $25
	ld   [hl], $3e                                   ; $6380: $36 $3e
	db   $ed                                         ; $6382: $ed
	inc  d                                           ; $6383: $14
	ccf                                              ; $6384: $3f
	ld   e, a                                        ; $6385: $5f
	ld   [hl], b                                     ; $6386: $70
	dec  h                                           ; $6387: $25
	ld   [hl], $3e                                   ; $6388: $36 $3e
	db   $ed                                         ; $638a: $ed
	inc  d                                           ; $638b: $14
	ccf                                              ; $638c: $3f
	ld   e, a                                        ; $638d: $5f
	ld   [hl], $3e                                   ; $638e: $36 $3e
	ld   [hl], b                                     ; $6390: $70
	dec  h                                           ; $6391: $25
	db   $ed                                         ; $6392: $ed
	inc  d                                           ; $6393: $14
	ccf                                              ; $6394: $3f
	ld   e, a                                        ; $6395: $5f
	ld   [hl], $3e                                   ; $6396: $36 $3e
	ccf                                              ; $6398: $3f
	ld   e, a                                        ; $6399: $5f
	db   $ed                                         ; $639a: $ed
	inc  d                                           ; $639b: $14
	ccf                                              ; $639c: $3f
	ld   e, a                                        ; $639d: $5f
	ld   [hl], $3e                                   ; $639e: $36 $3e
	ld   [hl], $3e                                   ; $63a0: $36 $3e
	db   $ed                                         ; $63a2: $ed
	inc  d                                           ; $63a3: $14
	ccf                                              ; $63a4: $3f
	ld   e, a                                        ; $63a5: $5f
	ccf                                              ; $63a6: $3f
	ld   e, a                                        ; $63a7: $5f
	ld   [hl], $3e                                   ; $63a8: $36 $3e
	db   $ed                                         ; $63aa: $ed
	inc  d                                           ; $63ab: $14
	ccf                                              ; $63ac: $3f
	ld   e, a                                        ; $63ad: $5f
	ld   [hl], b                                     ; $63ae: $70
	dec  h                                           ; $63af: $25
	ccf                                              ; $63b0: $3f
	ld   e, a                                        ; $63b1: $5f
	db   $ed                                         ; $63b2: $ed
	inc  d                                           ; $63b3: $14
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
	rst  $38                                         ; $63cc: $ff
	ld   a, a                                        ; $63cd: $7f
	push bc                                          ; $63ce: $c5
	ld   sp, $4acb                                   ; $63cf: $31 $cb $4a
	nop                                              ; $63d2: $00
	nop                                              ; $63d3: $00
	rst  $38                                         ; $63d4: $ff
	ld   a, a                                        ; $63d5: $7f
	push bc                                          ; $63d6: $c5
	ld   sp, $3abd                                   ; $63d7: $31 $bd $3a
	nop                                              ; $63da: $00
	nop                                              ; $63db: $00
	rst  $38                                         ; $63dc: $ff
	ld   a, a                                        ; $63dd: $7f
	push bc                                          ; $63de: $c5
	ld   sp, $1d33                                   ; $63df: $31 $33 $1d
	nop                                              ; $63e2: $00
	nop                                              ; $63e3: $00
	rst  $38                                         ; $63e4: $ff
	ld   a, a                                        ; $63e5: $7f
	db   $d3                                         ; $63e6: $d3
	db   $10                                         ; $63e7: $10
	ld   a, $42                                      ; $63e8: $3e $42
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
	rst  $30                                         ; $640c: $f7
	ld   a, a                                        ; $640d: $7f
	push bc                                          ; $640e: $c5
	ld   sp, $4acb                                   ; $640f: $31 $cb $4a
	nop                                              ; $6412: $00
	nop                                              ; $6413: $00
	ld   a, l                                        ; $6414: $7d
	ld   a, [hl]                                     ; $6415: $7e
	bit  1, d                                        ; $6416: $cb $4a
	inc  sp                                          ; $6418: $33
	dec  e                                           ; $6419: $1d
	nop                                              ; $641a: $00
	nop                                              ; $641b: $00
	rst  $38                                         ; $641c: $ff
	ld   e, a                                        ; $641d: $5f
	push bc                                          ; $641e: $c5
	ld   sp, $1d33                                   ; $641f: $31 $33 $1d
	nop                                              ; $6422: $00
	nop                                              ; $6423: $00
	ld   e, a                                        ; $6424: $5f
	ld   l, e                                        ; $6425: $6b
	ld   [hl-], a                                    ; $6426: $32
	ld   [hl-], a                                    ; $6427: $32
	db   $ed                                         ; $6428: $ed
	db   $10                                         ; $6429: $10
	ld   c, b                                        ; $642a: $48
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
	ld   b, $06                                      ; $644c: $06 $06
	ld   b, $06                                      ; $644e: $06 $06
	ld   b, $26                                      ; $6450: $06 $26
	ld   h, $26                                      ; $6452: $26 $26
	ld   b, $80                                      ; $6454: $06 $80
	add  b                                           ; $6456: $80
	add  b                                           ; $6457: $80
	add  b                                           ; $6458: $80
	add  b                                           ; $6459: $80
	add  b                                           ; $645a: $80
	ld   h, $06                                      ; $645b: $26 $06
	add  b                                           ; $645d: $80
	add  b                                           ; $645e: $80
	add  b                                           ; $645f: $80
	add  b                                           ; $6460: $80
	add  b                                           ; $6461: $80
	add  b                                           ; $6462: $80
	ld   h, $06                                      ; $6463: $26 $06
	add  b                                           ; $6465: $80
	add  b                                           ; $6466: $80
	add  b                                           ; $6467: $80
	add  b                                           ; $6468: $80
	add  b                                           ; $6469: $80
	add  b                                           ; $646a: $80
	ld   h, $06                                      ; $646b: $26 $06
	add  b                                           ; $646d: $80
	add  b                                           ; $646e: $80
	add  b                                           ; $646f: $80
	add  b                                           ; $6470: $80
	add  b                                           ; $6471: $80
	add  b                                           ; $6472: $80
	ld   h, $46                                      ; $6473: $26 $46
	add  b                                           ; $6475: $80
	add  b                                           ; $6476: $80
	add  b                                           ; $6477: $80
	add  b                                           ; $6478: $80
	add  b                                           ; $6479: $80
	add  b                                           ; $647a: $80
	ld   h, [hl]                                     ; $647b: $66
	ld   b, [hl]                                     ; $647c: $46
	add  b                                           ; $647d: $80
	add  b                                           ; $647e: $80
	add  b                                           ; $647f: $80
	add  b                                           ; $6480: $80
	add  b                                           ; $6481: $80
	add  b                                           ; $6482: $80
	ld   h, [hl]                                     ; $6483: $66
	ld   b, [hl]                                     ; $6484: $46
	ld   b, [hl]                                     ; $6485: $46
	ld   b, [hl]                                     ; $6486: $46
	ld   b, [hl]                                     ; $6487: $46
	ld   b, [hl]                                     ; $6488: $46
	ld   h, [hl]                                     ; $6489: $66
	ld   h, [hl]                                     ; $648a: $66
	ld   h, [hl]                                     ; $648b: $66
	add  h                                           ; $648c: $84
	add  [hl]                                        ; $648d: $86
	adc  b                                           ; $648e: $88
	adc  d                                           ; $648f: $8a
	adc  d                                           ; $6490: $8a
	adc  b                                           ; $6491: $88
	add  [hl]                                        ; $6492: $86
	add  h                                           ; $6493: $84
	add  l                                           ; $6494: $85
	adc  a                                           ; $6495: $8f
	adc  a                                           ; $6496: $8f
	adc  a                                           ; $6497: $8f
	adc  a                                           ; $6498: $8f
	adc  a                                           ; $6499: $8f
	adc  a                                           ; $649a: $8f
	add  l                                           ; $649b: $85
	adc  h                                           ; $649c: $8c
	adc  a                                           ; $649d: $8f
	adc  a                                           ; $649e: $8f
	adc  a                                           ; $649f: $8f
	adc  a                                           ; $64a0: $8f
	adc  a                                           ; $64a1: $8f
	adc  a                                           ; $64a2: $8f
	adc  h                                           ; $64a3: $8c
	adc  l                                           ; $64a4: $8d
	adc  a                                           ; $64a5: $8f
	adc  a                                           ; $64a6: $8f
	adc  a                                           ; $64a7: $8f
	adc  a                                           ; $64a8: $8f
	adc  a                                           ; $64a9: $8f
	adc  a                                           ; $64aa: $8f
	adc  l                                           ; $64ab: $8d
	adc  l                                           ; $64ac: $8d
	adc  a                                           ; $64ad: $8f
	adc  a                                           ; $64ae: $8f
	adc  a                                           ; $64af: $8f
	adc  a                                           ; $64b0: $8f
	adc  a                                           ; $64b1: $8f
	adc  a                                           ; $64b2: $8f
	adc  l                                           ; $64b3: $8d
	adc  h                                           ; $64b4: $8c
	adc  a                                           ; $64b5: $8f
	adc  a                                           ; $64b6: $8f
	adc  a                                           ; $64b7: $8f
	adc  a                                           ; $64b8: $8f
	adc  a                                           ; $64b9: $8f
	adc  a                                           ; $64ba: $8f
	adc  h                                           ; $64bb: $8c
	add  l                                           ; $64bc: $85
	adc  a                                           ; $64bd: $8f
	adc  a                                           ; $64be: $8f
	adc  a                                           ; $64bf: $8f
	adc  a                                           ; $64c0: $8f
	adc  a                                           ; $64c1: $8f
	adc  a                                           ; $64c2: $8f
	add  l                                           ; $64c3: $85
	add  h                                           ; $64c4: $84
	add  [hl]                                        ; $64c5: $86
	adc  b                                           ; $64c6: $88
	adc  d                                           ; $64c7: $8a
	adc  d                                           ; $64c8: $8a
	adc  b                                           ; $64c9: $88
	add  [hl]                                        ; $64ca: $86
	add  h                                           ; $64cb: $84
	rst  $38                                         ; $64cc: $ff
	ld   a, a                                        ; $64cd: $7f
	or   d                                           ; $64ce: $b2
	ld   [hl], d                                     ; $64cf: $72
	ld   b, h                                        ; $64d0: $44
	ld   h, l                                        ; $64d1: $65
	nop                                              ; $64d2: $00
	nop                                              ; $64d3: $00
	rst  $38                                         ; $64d4: $ff
	ld   a, a                                        ; $64d5: $7f
	ld   d, h                                        ; $64d6: $54
	ld   a, a                                        ; $64d7: $7f
	adc  d                                           ; $64d8: $8a
	ld   c, l                                        ; $64d9: $4d
	ld   h, d                                        ; $64da: $62
	inc  d                                           ; $64db: $14
	rst  $38                                         ; $64dc: $ff
	ld   a, a                                        ; $64dd: $7f
	or   d                                           ; $64de: $b2
	ld   [hl], d                                     ; $64df: $72
	ld   b, h                                        ; $64e0: $44
	ld   h, l                                        ; $64e1: $65
	nop                                              ; $64e2: $00
	nop                                              ; $64e3: $00
	rst  $38                                         ; $64e4: $ff
	ld   a, a                                        ; $64e5: $7f
	ld   d, h                                        ; $64e6: $54
	ld   a, a                                        ; $64e7: $7f
	adc  d                                           ; $64e8: $8a
	ld   c, l                                        ; $64e9: $4d
	ld   h, d                                        ; $64ea: $62
	inc  d                                           ; $64eb: $14
	rst  $38                                         ; $64ec: $ff
	ld   a, a                                        ; $64ed: $7f
	rst  $38                                         ; $64ee: $ff
	ld   a, a                                        ; $64ef: $7f
	adc  d                                           ; $64f0: $8a
	ld   c, l                                        ; $64f1: $4d
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
	ld   [hl-], a                                    ; $650c: $32
	ld   a, a                                        ; $650d: $7f
	rst  $38                                         ; $650e: $ff
	ld   a, a                                        ; $650f: $7f
	ld   b, h                                        ; $6510: $44
	ld   h, l                                        ; $6511: $65
	nop                                              ; $6512: $00
	nop                                              ; $6513: $00
	ld   [hl-], a                                    ; $6514: $32
	ld   a, a                                        ; $6515: $7f
	rst  $38                                         ; $6516: $ff
	ld   a, a                                        ; $6517: $7f
	ld   d, c                                        ; $6518: $51
	ld   c, l                                        ; $6519: $4d
	ld   h, [hl]                                     ; $651a: $66
	inc  e                                           ; $651b: $1c
	ld   [hl-], a                                    ; $651c: $32
	ld   a, a                                        ; $651d: $7f
	rst  $38                                         ; $651e: $ff
	ld   a, a                                        ; $651f: $7f
	ld   b, h                                        ; $6520: $44
	ld   h, l                                        ; $6521: $65
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
	ld   [hl-], a                                    ; $652c: $32
	ld   a, a                                        ; $652d: $7f
	rst  $38                                         ; $652e: $ff
	ld   a, a                                        ; $652f: $7f
	adc  d                                           ; $6530: $8a
	ld   c, l                                        ; $6531: $4d
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
	rst  $38                                         ; $654c: $ff
	ld   a, a                                        ; $654d: $7f
	or   l                                           ; $654e: $b5
	ld   d, [hl]                                     ; $654f: $56
	ld   c, d                                        ; $6550: $4a
	add  hl, hl                                      ; $6551: $29
	nop                                              ; $6552: $00
	nop                                              ; $6553: $00
	rst  $38                                         ; $6554: $ff
	ld   a, a                                        ; $6555: $7f
	rst  JumpTable                                         ; $6556: $df
	ld   a, [hl-]                                    ; $6557: $3a
	ld   a, [$8a21]                                  ; $6558: $fa $21 $8a
	inc  b                                           ; $655b: $04
	rst  $38                                         ; $655c: $ff
	ld   a, a                                        ; $655d: $7f
	or   l                                           ; $655e: $b5
	ld   d, [hl]                                     ; $655f: $56
	ld   c, d                                        ; $6560: $4a
	add  hl, hl                                      ; $6561: $29
	nop                                              ; $6562: $00
	nop                                              ; $6563: $00
	rst  $38                                         ; $6564: $ff
	ld   a, a                                        ; $6565: $7f
	rst  JumpTable                                         ; $6566: $df
	ld   a, [hl-]                                    ; $6567: $3a
	ld   a, [$8a21]                                  ; $6568: $fa $21 $8a
	inc  b                                           ; $656b: $04
	rst  $38                                         ; $656c: $ff
	ld   a, a                                        ; $656d: $7f
	rst  $38                                         ; $656e: $ff
	ld   a, a                                        ; $656f: $7f
	sbc  a                                           ; $6570: $9f
	ld   b, $00                                      ; $6571: $06 $00
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
	ld   [hl-], a                                    ; $658c: $32
	ld   a, a                                        ; $658d: $7f
	rst  $38                                         ; $658e: $ff
	ld   a, a                                        ; $658f: $7f
	ld   c, d                                        ; $6590: $4a
	add  hl, hl                                      ; $6591: $29
	nop                                              ; $6592: $00
	nop                                              ; $6593: $00
	ld   [hl-], a                                    ; $6594: $32
	ld   a, a                                        ; $6595: $7f
	rst  $38                                         ; $6596: $ff
	ld   a, a                                        ; $6597: $7f
	ld   a, [$8a21]                                  ; $6598: $fa $21 $8a
	inc  b                                           ; $659b: $04
	ld   [hl-], a                                    ; $659c: $32
	ld   a, a                                        ; $659d: $7f
	rst  $38                                         ; $659e: $ff
	ld   a, a                                        ; $659f: $7f
	ld   c, d                                        ; $65a0: $4a
	add  hl, hl                                      ; $65a1: $29
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
	ld   [hl-], a                                    ; $65ac: $32
	ld   a, a                                        ; $65ad: $7f
	rst  $38                                         ; $65ae: $ff
	ld   a, a                                        ; $65af: $7f
	sbc  a                                           ; $65b0: $9f
	ld   b, $00                                      ; $65b1: $06 $00
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
	rst  $38                                         ; $65cc: $ff
	ld   a, a                                        ; $65cd: $7f
	or   l                                           ; $65ce: $b5
	ld   d, [hl]                                     ; $65cf: $56
	ld   c, d                                        ; $65d0: $4a
	add  hl, hl                                      ; $65d1: $29
	nop                                              ; $65d2: $00
	nop                                              ; $65d3: $00
	rst  $38                                         ; $65d4: $ff
	ld   a, a                                        ; $65d5: $7f
	cp   a                                           ; $65d6: $bf
	dec  sp                                          ; $65d7: $3b
	call nc, Call_0a3_490d                           ; $65d8: $d4 $0d $49
	nop                                              ; $65db: $00
	rst  $38                                         ; $65dc: $ff
	ld   a, a                                        ; $65dd: $7f
	or   l                                           ; $65de: $b5
	ld   d, [hl]                                     ; $65df: $56
	ld   c, d                                        ; $65e0: $4a
	add  hl, hl                                      ; $65e1: $29
	nop                                              ; $65e2: $00
	nop                                              ; $65e3: $00
	rst  $38                                         ; $65e4: $ff
	ld   a, a                                        ; $65e5: $7f
	cp   a                                           ; $65e6: $bf
	dec  sp                                          ; $65e7: $3b
	call nc, Call_0a3_490d                           ; $65e8: $d4 $0d $49
	nop                                              ; $65eb: $00
	rst  $38                                         ; $65ec: $ff
	ld   a, a                                        ; $65ed: $7f
	rst  $38                                         ; $65ee: $ff
	ld   a, a                                        ; $65ef: $7f
	sbc  a                                           ; $65f0: $9f
	ld   b, $00                                      ; $65f1: $06 $00
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
	ld   [hl-], a                                    ; $660c: $32
	ld   a, a                                        ; $660d: $7f
	rst  $38                                         ; $660e: $ff
	ld   a, a                                        ; $660f: $7f
	ld   c, d                                        ; $6610: $4a
	add  hl, hl                                      ; $6611: $29
	nop                                              ; $6612: $00
	nop                                              ; $6613: $00
	ld   [hl-], a                                    ; $6614: $32
	ld   a, a                                        ; $6615: $7f
	rst  $38                                         ; $6616: $ff
	ld   a, a                                        ; $6617: $7f
	call nc, Call_0a3_490d                           ; $6618: $d4 $0d $49
	nop                                              ; $661b: $00
	ld   [hl-], a                                    ; $661c: $32
	ld   a, a                                        ; $661d: $7f
	rst  $38                                         ; $661e: $ff
	ld   a, a                                        ; $661f: $7f
	ld   c, d                                        ; $6620: $4a
	add  hl, hl                                      ; $6621: $29
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
	ld   [hl-], a                                    ; $662c: $32
	ld   a, a                                        ; $662d: $7f
	rst  $38                                         ; $662e: $ff
	ld   a, a                                        ; $662f: $7f
	sbc  a                                           ; $6630: $9f
	ld   b, $00                                      ; $6631: $06 $00
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
	ld   b, $06                                      ; $664c: $06 $06
	ld   b, $06                                      ; $664e: $06 $06
	ld   b, $06                                      ; $6650: $06 $06
	ld   b, $06                                      ; $6652: $06 $06
	ld   b, $06                                      ; $6654: $06 $06
	ld   b, $06                                      ; $6656: $06 $06
	ld   b, $06                                      ; $6658: $06 $06
	ld   b, $06                                      ; $665a: $06 $06
	ld   b, $06                                      ; $665c: $06 $06
	ld   b, $06                                      ; $665e: $06 $06
	ld   b, $06                                      ; $6660: $06 $06
	ld   b, $06                                      ; $6662: $06 $06
	ld   b, $06                                      ; $6664: $06 $06
	ld   b, $06                                      ; $6666: $06 $06
	ld   b, $06                                      ; $6668: $06 $06
	ld   b, $06                                      ; $666a: $06 $06
	ld   b, $06                                      ; $666c: $06 $06
	ld   b, $06                                      ; $666e: $06 $06
	ld   b, $06                                      ; $6670: $06 $06
	ld   b, $06                                      ; $6672: $06 $06
	ld   b, $06                                      ; $6674: $06 $06
	ld   b, $06                                      ; $6676: $06 $06
	ld   b, $06                                      ; $6678: $06 $06
	ld   b, $06                                      ; $667a: $06 $06
	ld   b, $06                                      ; $667c: $06 $06
	ld   b, $06                                      ; $667e: $06 $06
	ld   b, $06                                      ; $6680: $06 $06
	ld   b, $06                                      ; $6682: $06 $06
	ld   b, $06                                      ; $6684: $06 $06
	ld   b, $06                                      ; $6686: $06 $06
	ld   b, $06                                      ; $6688: $06 $06
	ld   b, $06                                      ; $668a: $06 $06
	sub  b                                           ; $668c: $90
	sub  c                                           ; $668d: $91
	sub  d                                           ; $668e: $92
	sub  d                                           ; $668f: $92
	sub  [hl]                                        ; $6690: $96
	sub  a                                           ; $6691: $97
	sbc  b                                           ; $6692: $98
	sub  b                                           ; $6693: $90
	sub  h                                           ; $6694: $94
	sub  l                                           ; $6695: $95
	sbc  c                                           ; $6696: $99
	sbc  d                                           ; $6697: $9a
	sbc  e                                           ; $6698: $9b
	sbc  h                                           ; $6699: $9c
	sbc  l                                           ; $669a: $9d
	sbc  [hl]                                        ; $669b: $9e
	sub  e                                           ; $669c: $93
	sbc  a                                           ; $669d: $9f
	and  b                                           ; $669e: $a0
	and  c                                           ; $669f: $a1
	and  d                                           ; $66a0: $a2
	and  e                                           ; $66a1: $a3
	and  h                                           ; $66a2: $a4
	and  l                                           ; $66a3: $a5
	sub  e                                           ; $66a4: $93
	and  [hl]                                        ; $66a5: $a6
	and  a                                           ; $66a6: $a7
	xor  b                                           ; $66a7: $a8
	xor  c                                           ; $66a8: $a9
	xor  d                                           ; $66a9: $aa
	xor  e                                           ; $66aa: $ab
	xor  h                                           ; $66ab: $ac
	xor  l                                           ; $66ac: $ad
	xor  [hl]                                        ; $66ad: $ae
	xor  a                                           ; $66ae: $af
	or   b                                           ; $66af: $b0
	or   c                                           ; $66b0: $b1
	or   d                                           ; $66b1: $b2
	or   e                                           ; $66b2: $b3
	or   h                                           ; $66b3: $b4
	or   l                                           ; $66b4: $b5
	or   [hl]                                        ; $66b5: $b6
	or   a                                           ; $66b6: $b7
	cp   b                                           ; $66b7: $b8
	cp   c                                           ; $66b8: $b9
	cp   d                                           ; $66b9: $ba
	cp   e                                           ; $66ba: $bb
	adc  h                                           ; $66bb: $8c
	adc  l                                           ; $66bc: $8d
	adc  [hl]                                        ; $66bd: $8e
	adc  a                                           ; $66be: $8f
	add  b                                           ; $66bf: $80
	add  c                                           ; $66c0: $81
	add  d                                           ; $66c1: $82
	add  e                                           ; $66c2: $83
	add  h                                           ; $66c3: $84
	sub  b                                           ; $66c4: $90
	add  l                                           ; $66c5: $85
	add  [hl]                                        ; $66c6: $86
	add  a                                           ; $66c7: $87
	adc  b                                           ; $66c8: $88
	adc  c                                           ; $66c9: $89
	adc  d                                           ; $66ca: $8a
	adc  e                                           ; $66cb: $8b
	ld   b, $06                                      ; $66cc: $06 $06
	ld   b, $06                                      ; $66ce: $06 $06
	ld   b, $06                                      ; $66d0: $06 $06
	ld   b, $06                                      ; $66d2: $06 $06
	ld   b, $06                                      ; $66d4: $06 $06
	ld   b, $06                                      ; $66d6: $06 $06
	ld   b, $06                                      ; $66d8: $06 $06
	ld   b, $06                                      ; $66da: $06 $06
	ld   b, $06                                      ; $66dc: $06 $06
	ld   b, $06                                      ; $66de: $06 $06
	ld   b, $06                                      ; $66e0: $06 $06
	ld   b, $06                                      ; $66e2: $06 $06
	ld   b, $06                                      ; $66e4: $06 $06
	ld   b, $06                                      ; $66e6: $06 $06
	ld   b, $06                                      ; $66e8: $06 $06
	ld   b, $06                                      ; $66ea: $06 $06
	ld   b, $06                                      ; $66ec: $06 $06
	ld   b, $06                                      ; $66ee: $06 $06
	ld   b, $06                                      ; $66f0: $06 $06
	ld   b, $26                                      ; $66f2: $06 $26
	ld   b, $06                                      ; $66f4: $06 $06
	ld   b, $06                                      ; $66f6: $06 $06
	ld   b, $06                                      ; $66f8: $06 $06
	ld   b, $26                                      ; $66fa: $06 $26
	ld   b, [hl]                                     ; $66fc: $46
	ld   b, $06                                      ; $66fd: $06 $06
	ld   b, $06                                      ; $66ff: $06 $06
	ld   b, $06                                      ; $6701: $06 $06
	ld   h, [hl]                                     ; $6703: $66
	ld   b, $46                                      ; $6704: $06 $46
	ld   b, $06                                      ; $6706: $06 $06
	ld   b, $06                                      ; $6708: $06 $06
	ld   b, $06                                      ; $670a: $06 $06
	sub  b                                           ; $670c: $90
	sub  c                                           ; $670d: $91
	sub  a                                           ; $670e: $97
	sbc  b                                           ; $670f: $98
	sbc  c                                           ; $6710: $99
	sbc  d                                           ; $6711: $9a
	sbc  e                                           ; $6712: $9b
	sub  b                                           ; $6713: $90
	sub  d                                           ; $6714: $92
	sbc  h                                           ; $6715: $9c
	sbc  l                                           ; $6716: $9d
	sbc  [hl]                                        ; $6717: $9e
	sbc  a                                           ; $6718: $9f
	and  b                                           ; $6719: $a0
	and  c                                           ; $671a: $a1
	and  d                                           ; $671b: $a2
	and  e                                           ; $671c: $a3
	and  h                                           ; $671d: $a4
	and  l                                           ; $671e: $a5
	and  [hl]                                        ; $671f: $a6
	and  a                                           ; $6720: $a7
	xor  b                                           ; $6721: $a8
	xor  c                                           ; $6722: $a9
	xor  d                                           ; $6723: $aa
	or   e                                           ; $6724: $b3
	or   h                                           ; $6725: $b4
	or   l                                           ; $6726: $b5
	or   [hl]                                        ; $6727: $b6
	or   a                                           ; $6728: $b7
	cp   b                                           ; $6729: $b8
	cp   c                                           ; $672a: $b9
	cp   d                                           ; $672b: $ba
	sub  e                                           ; $672c: $93
	cp   e                                           ; $672d: $bb
	cp   h                                           ; $672e: $bc
	cp   l                                           ; $672f: $bd
	cp   [hl]                                        ; $6730: $be
	sub  h                                           ; $6731: $94
	add  b                                           ; $6732: $80
	sub  e                                           ; $6733: $93
	sub  e                                           ; $6734: $93
	add  c                                           ; $6735: $81
	add  d                                           ; $6736: $82
	add  e                                           ; $6737: $83
	add  h                                           ; $6738: $84
	add  l                                           ; $6739: $85
	add  [hl]                                        ; $673a: $86
	sub  e                                           ; $673b: $93
	sub  d                                           ; $673c: $92
	add  a                                           ; $673d: $87
	adc  b                                           ; $673e: $88
	adc  c                                           ; $673f: $89
	adc  d                                           ; $6740: $8a
	adc  e                                           ; $6741: $8b
	adc  h                                           ; $6742: $8c
	sub  d                                           ; $6743: $92
	sub  b                                           ; $6744: $90
	sub  c                                           ; $6745: $91
	adc  l                                           ; $6746: $8d
	adc  [hl]                                        ; $6747: $8e
	adc  a                                           ; $6748: $8f
	sub  l                                           ; $6749: $95
	sub  [hl]                                        ; $674a: $96
	sub  b                                           ; $674b: $90
	ld   b, $06                                      ; $674c: $06 $06
	ld   b, $06                                      ; $674e: $06 $06
	ld   b, $06                                      ; $6750: $06 $06
	ld   b, $06                                      ; $6752: $06 $06
	ld   b, $06                                      ; $6754: $06 $06
	ld   b, $06                                      ; $6756: $06 $06
	ld   b, $06                                      ; $6758: $06 $06
	ld   b, $06                                      ; $675a: $06 $06
	ld   b, $06                                      ; $675c: $06 $06
	ld   b, $06                                      ; $675e: $06 $06
	ld   b, $06                                      ; $6760: $06 $06
	ld   b, $06                                      ; $6762: $06 $06
	ld   b, $06                                      ; $6764: $06 $06
	ld   b, $06                                      ; $6766: $06 $06
	ld   b, $06                                      ; $6768: $06 $06
	ld   b, $06                                      ; $676a: $06 $06
	ld   b, $06                                      ; $676c: $06 $06
	ld   b, $06                                      ; $676e: $06 $06
	ld   b, $06                                      ; $6770: $06 $06
	ld   b, $06                                      ; $6772: $06 $06
	ld   b, $06                                      ; $6774: $06 $06
	ld   b, $06                                      ; $6776: $06 $06
	ld   b, $06                                      ; $6778: $06 $06
	ld   b, $06                                      ; $677a: $06 $06
	ld   b, $06                                      ; $677c: $06 $06
	ld   b, $06                                      ; $677e: $06 $06
	ld   b, $06                                      ; $6780: $06 $06
	ld   b, $06                                      ; $6782: $06 $06
	ld   b, $06                                      ; $6784: $06 $06
	ld   b, $06                                      ; $6786: $06 $06
	ld   b, $06                                      ; $6788: $06 $06
	ld   b, $06                                      ; $678a: $06 $06
	sub  b                                           ; $678c: $90
	sub  [hl]                                        ; $678d: $96
	sub  a                                           ; $678e: $97
	sbc  b                                           ; $678f: $98
	sub  c                                           ; $6790: $91
	sub  c                                           ; $6791: $91
	sub  d                                           ; $6792: $92
	sub  b                                           ; $6793: $90
	sbc  c                                           ; $6794: $99
	sbc  d                                           ; $6795: $9a
	sbc  e                                           ; $6796: $9b
	sbc  h                                           ; $6797: $9c
	sbc  l                                           ; $6798: $9d
	sbc  [hl]                                        ; $6799: $9e
	sub  l                                           ; $679a: $95
	sub  e                                           ; $679b: $93
	sbc  a                                           ; $679c: $9f
	and  b                                           ; $679d: $a0
	and  c                                           ; $679e: $a1
	and  d                                           ; $679f: $a2
	and  e                                           ; $67a0: $a3
	and  h                                           ; $67a1: $a4
	and  l                                           ; $67a2: $a5
	sub  h                                           ; $67a3: $94
	and  a                                           ; $67a4: $a7
	xor  b                                           ; $67a5: $a8
	xor  c                                           ; $67a6: $a9
	xor  d                                           ; $67a7: $aa
	xor  e                                           ; $67a8: $ab
	xor  h                                           ; $67a9: $ac
	xor  l                                           ; $67aa: $ad
	xor  [hl]                                        ; $67ab: $ae
	or   b                                           ; $67ac: $b0
	or   c                                           ; $67ad: $b1
	or   d                                           ; $67ae: $b2
	or   e                                           ; $67af: $b3
	or   h                                           ; $67b0: $b4
	or   l                                           ; $67b1: $b5
	or   [hl]                                        ; $67b2: $b6
	or   a                                           ; $67b3: $b7
	cp   b                                           ; $67b4: $b8
	cp   c                                           ; $67b5: $b9
	cp   d                                           ; $67b6: $ba
	cp   e                                           ; $67b7: $bb
	adc  h                                           ; $67b8: $8c
	adc  l                                           ; $67b9: $8d
	adc  [hl]                                        ; $67ba: $8e
	adc  a                                           ; $67bb: $8f
	add  b                                           ; $67bc: $80
	add  c                                           ; $67bd: $81
	add  d                                           ; $67be: $82
	add  e                                           ; $67bf: $83
	add  h                                           ; $67c0: $84
	add  l                                           ; $67c1: $85
	add  [hl]                                        ; $67c2: $86
	add  a                                           ; $67c3: $87
	sub  b                                           ; $67c4: $90
	adc  b                                           ; $67c5: $88
	adc  c                                           ; $67c6: $89
	adc  d                                           ; $67c7: $8a
	adc  e                                           ; $67c8: $8b
	and  [hl]                                        ; $67c9: $a6
	xor  a                                           ; $67ca: $af
	sub  b                                           ; $67cb: $90
	ld   b, $06                                      ; $67cc: $06 $06
	ld   b, $06                                      ; $67ce: $06 $06
	ld   b, $06                                      ; $67d0: $06 $06
	ld   b, $06                                      ; $67d2: $06 $06
	ld   b, $06                                      ; $67d4: $06 $06
	ld   b, $06                                      ; $67d6: $06 $06
	ld   b, $06                                      ; $67d8: $06 $06
	ld   b, $06                                      ; $67da: $06 $06
	ld   b, $06                                      ; $67dc: $06 $06
	ld   b, $06                                      ; $67de: $06 $06
	ld   b, $06                                      ; $67e0: $06 $06
	ld   b, $06                                      ; $67e2: $06 $06
	ld   b, $06                                      ; $67e4: $06 $06
	ld   b, $06                                      ; $67e6: $06 $06
	ld   b, $06                                      ; $67e8: $06 $06
	ld   b, $06                                      ; $67ea: $06 $06
	ld   b, $06                                      ; $67ec: $06 $06
	ld   b, $06                                      ; $67ee: $06 $06
	ld   b, $06                                      ; $67f0: $06 $06
	ld   b, $06                                      ; $67f2: $06 $06
	ld   b, $06                                      ; $67f4: $06 $06
	ld   b, $06                                      ; $67f6: $06 $06
	ld   b, $06                                      ; $67f8: $06 $06
	ld   b, $06                                      ; $67fa: $06 $06
	ld   b, [hl]                                     ; $67fc: $46
	ld   b, $06                                      ; $67fd: $06 $06
	ld   b, $06                                      ; $67ff: $06 $06
	ld   b, $06                                      ; $6801: $06 $06
	ld   b, $06                                      ; $6803: $06 $06
	ld   b, [hl]                                     ; $6805: $46
	ld   b, $06                                      ; $6806: $06 $06
	ld   b, $06                                      ; $6808: $06 $06
	ld   b, $06                                      ; $680a: $06 $06
	sub  b                                           ; $680c: $90
	sub  c                                           ; $680d: $91
	sub  d                                           ; $680e: $92
	sub  d                                           ; $680f: $92
	sub  [hl]                                        ; $6810: $96
	sub  a                                           ; $6811: $97
	sbc  b                                           ; $6812: $98
	sub  b                                           ; $6813: $90
	sub  e                                           ; $6814: $93
	sub  l                                           ; $6815: $95
	sub  l                                           ; $6816: $95
	sbc  c                                           ; $6817: $99
	sbc  d                                           ; $6818: $9a
	sbc  e                                           ; $6819: $9b
	sbc  h                                           ; $681a: $9c
	sbc  l                                           ; $681b: $9d
	sbc  a                                           ; $681c: $9f
	and  b                                           ; $681d: $a0
	and  c                                           ; $681e: $a1
	and  d                                           ; $681f: $a2
	and  e                                           ; $6820: $a3
	and  h                                           ; $6821: $a4
	and  l                                           ; $6822: $a5
	and  [hl]                                        ; $6823: $a6
	xor  b                                           ; $6824: $a8
	xor  c                                           ; $6825: $a9
	xor  d                                           ; $6826: $aa
	xor  e                                           ; $6827: $ab
	xor  h                                           ; $6828: $ac
	xor  l                                           ; $6829: $ad
	xor  [hl]                                        ; $682a: $ae
	xor  a                                           ; $682b: $af
	or   b                                           ; $682c: $b0
	or   c                                           ; $682d: $b1
	or   d                                           ; $682e: $b2
	or   e                                           ; $682f: $b3
	or   h                                           ; $6830: $b4
	or   l                                           ; $6831: $b5
	or   [hl]                                        ; $6832: $b6
	add  a                                           ; $6833: $87
	sub  h                                           ; $6834: $94
	sub  l                                           ; $6835: $95
	adc  b                                           ; $6836: $88
	adc  c                                           ; $6837: $89
	adc  d                                           ; $6838: $8a
	adc  e                                           ; $6839: $8b
	adc  h                                           ; $683a: $8c
	adc  l                                           ; $683b: $8d
	sub  e                                           ; $683c: $93
	sub  l                                           ; $683d: $95
	adc  [hl]                                        ; $683e: $8e
	adc  a                                           ; $683f: $8f
	add  b                                           ; $6840: $80
	add  c                                           ; $6841: $81
	add  d                                           ; $6842: $82
	add  e                                           ; $6843: $83
	sub  b                                           ; $6844: $90
	sub  c                                           ; $6845: $91
	add  h                                           ; $6846: $84
	add  l                                           ; $6847: $85
	add  [hl]                                        ; $6848: $86
	sbc  [hl]                                        ; $6849: $9e
	and  a                                           ; $684a: $a7
	sub  b                                           ; $684b: $90
	ld   b, $06                                      ; $684c: $06 $06
	ld   b, $06                                      ; $684e: $06 $06
	ld   b, $06                                      ; $6850: $06 $06
	ld   b, $06                                      ; $6852: $06 $06
	ld   b, $06                                      ; $6854: $06 $06
	ld   b, $06                                      ; $6856: $06 $06
	ld   b, $06                                      ; $6858: $06 $06
	ld   b, $06                                      ; $685a: $06 $06
	ld   b, $06                                      ; $685c: $06 $06
	ld   b, $06                                      ; $685e: $06 $06
	ld   b, $06                                      ; $6860: $06 $06
	ld   b, $06                                      ; $6862: $06 $06
	ld   b, $06                                      ; $6864: $06 $06
	ld   b, $06                                      ; $6866: $06 $06
	ld   b, $06                                      ; $6868: $06 $06
	ld   b, $06                                      ; $686a: $06 $06
	ld   b, $06                                      ; $686c: $06 $06
	ld   b, $06                                      ; $686e: $06 $06
	ld   b, $06                                      ; $6870: $06 $06
	ld   b, $06                                      ; $6872: $06 $06
	ld   b, $06                                      ; $6874: $06 $06
	ld   b, $06                                      ; $6876: $06 $06
	ld   b, $06                                      ; $6878: $06 $06
	ld   b, $06                                      ; $687a: $06 $06
	ld   b, $06                                      ; $687c: $06 $06
	ld   b, $06                                      ; $687e: $06 $06
	ld   b, $06                                      ; $6880: $06 $06
	ld   b, $06                                      ; $6882: $06 $06
	ld   b, $06                                      ; $6884: $06 $06
	ld   b, $06                                      ; $6886: $06 $06
	ld   b, $06                                      ; $6888: $06 $06
	ld   b, $06                                      ; $688a: $06 $06
	sub  b                                           ; $688c: $90
	sub  l                                           ; $688d: $95
	sub  [hl]                                        ; $688e: $96
	sub  a                                           ; $688f: $97
	sbc  b                                           ; $6890: $98
	sub  c                                           ; $6891: $91
	sub  d                                           ; $6892: $92
	sub  b                                           ; $6893: $90
	sbc  c                                           ; $6894: $99
	sbc  d                                           ; $6895: $9a
	sbc  e                                           ; $6896: $9b
	sbc  h                                           ; $6897: $9c
	sbc  l                                           ; $6898: $9d
	sbc  [hl]                                        ; $6899: $9e
	sbc  a                                           ; $689a: $9f
	sub  e                                           ; $689b: $93
	and  b                                           ; $689c: $a0
	and  c                                           ; $689d: $a1
	and  d                                           ; $689e: $a2
	and  e                                           ; $689f: $a3
	and  h                                           ; $68a0: $a4
	and  l                                           ; $68a1: $a5
	and  [hl]                                        ; $68a2: $a6
	sub  h                                           ; $68a3: $94
	and  a                                           ; $68a4: $a7
	xor  b                                           ; $68a5: $a8
	xor  c                                           ; $68a6: $a9
	xor  d                                           ; $68a7: $aa
	xor  e                                           ; $68a8: $ab
	xor  h                                           ; $68a9: $ac
	xor  l                                           ; $68aa: $ad
	sub  h                                           ; $68ab: $94
	xor  [hl]                                        ; $68ac: $ae
	xor  a                                           ; $68ad: $af
	or   b                                           ; $68ae: $b0
	or   c                                           ; $68af: $b1
	or   d                                           ; $68b0: $b2
	or   e                                           ; $68b1: $b3
	or   h                                           ; $68b2: $b4
	or   l                                           ; $68b3: $b5
	or   a                                           ; $68b4: $b7
	cp   b                                           ; $68b5: $b8
	cp   c                                           ; $68b6: $b9
	cp   d                                           ; $68b7: $ba
	cp   e                                           ; $68b8: $bb
	or   [hl]                                        ; $68b9: $b6
	adc  a                                           ; $68ba: $8f
	adc  b                                           ; $68bb: $88
	add  b                                           ; $68bc: $80
	add  c                                           ; $68bd: $81
	add  d                                           ; $68be: $82
	add  e                                           ; $68bf: $83
	add  h                                           ; $68c0: $84
	add  l                                           ; $68c1: $85
	add  [hl]                                        ; $68c2: $86
	add  a                                           ; $68c3: $87
	sub  b                                           ; $68c4: $90
	adc  c                                           ; $68c5: $89
	adc  d                                           ; $68c6: $8a
	adc  e                                           ; $68c7: $8b
	adc  h                                           ; $68c8: $8c
	adc  l                                           ; $68c9: $8d
	adc  [hl]                                        ; $68ca: $8e
	sub  b                                           ; $68cb: $90
	ld   b, $06                                      ; $68cc: $06 $06
	ld   b, $06                                      ; $68ce: $06 $06
	ld   b, $06                                      ; $68d0: $06 $06
	ld   b, $06                                      ; $68d2: $06 $06
	ld   b, $06                                      ; $68d4: $06 $06
	ld   b, $06                                      ; $68d6: $06 $06
	ld   b, $06                                      ; $68d8: $06 $06
	ld   b, $66                                      ; $68da: $06 $66
	ld   b, $06                                      ; $68dc: $06 $06

Call_0a3_68de:
	ld   b, $06                                      ; $68de: $06 $06
	ld   b, $06                                      ; $68e0: $06 $06
	ld   b, $06                                      ; $68e2: $06 $06
	ld   b, $06                                      ; $68e4: $06 $06
	ld   b, $06                                      ; $68e6: $06 $06
	ld   b, $06                                      ; $68e8: $06 $06
	ld   b, $06                                      ; $68ea: $06 $06
	ld   b, $06                                      ; $68ec: $06 $06
	ld   b, $06                                      ; $68ee: $06 $06
	ld   b, $06                                      ; $68f0: $06 $06
	ld   b, $06                                      ; $68f2: $06 $06
	ld   b, $06                                      ; $68f4: $06 $06
	ld   b, $06                                      ; $68f6: $06 $06
	ld   b, $06                                      ; $68f8: $06 $06
	ld   b, $06                                      ; $68fa: $06 $06
	ld   b, $06                                      ; $68fc: $06 $06
	ld   b, $06                                      ; $68fe: $06 $06
	ld   b, $06                                      ; $6900: $06 $06
	ld   b, $26                                      ; $6902: $06 $26
	ld   b, $06                                      ; $6904: $06 $06
	ld   b, $06                                      ; $6906: $06 $06
	ld   b, $06                                      ; $6908: $06 $06
	ld   b, $06                                      ; $690a: $06 $06
	sub  b                                           ; $690c: $90
	sub  e                                           ; $690d: $93
	sub  h                                           ; $690e: $94
	sub  l                                           ; $690f: $95
	sub  [hl]                                        ; $6910: $96
	sub  a                                           ; $6911: $97
	sub  d                                           ; $6912: $92
	sub  b                                           ; $6913: $90
	sbc  b                                           ; $6914: $98
	sbc  c                                           ; $6915: $99
	sbc  d                                           ; $6916: $9a
	sbc  e                                           ; $6917: $9b
	sbc  h                                           ; $6918: $9c
	sbc  l                                           ; $6919: $9d
	sbc  [hl]                                        ; $691a: $9e
	sub  c                                           ; $691b: $91
	sbc  a                                           ; $691c: $9f
	and  b                                           ; $691d: $a0
	and  c                                           ; $691e: $a1
	and  d                                           ; $691f: $a2
	and  e                                           ; $6920: $a3
	and  h                                           ; $6921: $a4
	and  l                                           ; $6922: $a5
	and  [hl]                                        ; $6923: $a6
	and  a                                           ; $6924: $a7
	xor  b                                           ; $6925: $a8
	xor  c                                           ; $6926: $a9
	xor  d                                           ; $6927: $aa
	xor  e                                           ; $6928: $ab
	xor  h                                           ; $6929: $ac
	xor  l                                           ; $692a: $ad
	xor  [hl]                                        ; $692b: $ae
	xor  a                                           ; $692c: $af
	or   b                                           ; $692d: $b0
	or   c                                           ; $692e: $b1
	or   d                                           ; $692f: $b2
	or   e                                           ; $6930: $b3
	or   h                                           ; $6931: $b4
	or   l                                           ; $6932: $b5
	or   [hl]                                        ; $6933: $b6
	or   a                                           ; $6934: $b7
	cp   b                                           ; $6935: $b8
	cp   c                                           ; $6936: $b9
	cp   d                                           ; $6937: $ba
	adc  e                                           ; $6938: $8b
	adc  h                                           ; $6939: $8c
	adc  l                                           ; $693a: $8d
	adc  [hl]                                        ; $693b: $8e
	sub  c                                           ; $693c: $91
	adc  a                                           ; $693d: $8f
	add  b                                           ; $693e: $80
	add  c                                           ; $693f: $81
	add  d                                           ; $6940: $82
	add  e                                           ; $6941: $83
	add  h                                           ; $6942: $84
	sub  c                                           ; $6943: $91
	sub  b                                           ; $6944: $90
	add  l                                           ; $6945: $85
	add  [hl]                                        ; $6946: $86
	add  a                                           ; $6947: $87
	adc  b                                           ; $6948: $88
	adc  c                                           ; $6949: $89
	adc  d                                           ; $694a: $8a
	sub  b                                           ; $694b: $90
	ld   de, $a700                                   ; $694c: $11 $00 $a7
	nop                                              ; $694f: $00
	ccf                                              ; $6950: $3f
	ld   c, [hl]                                     ; $6951: $4e
	ld   e, a                                        ; $6952: $5f
	ld   c, e                                        ; $6953: $4b
	ld   e, a                                        ; $6954: $5f
	ld   c, e                                        ; $6955: $4b
	push de                                          ; $6956: $d5
	add  hl, de                                      ; $6957: $19
	rrca                                             ; $6958: $0f
	dec  c                                           ; $6959: $0d
	and  a                                           ; $695a: $a7
	nop                                              ; $695b: $00
	jp   hl                                          ; $695c: $e9


	inc  [hl]                                        ; $695d: $34
	and  a                                           ; $695e: $a7
	nop                                              ; $695f: $00
	ccf                                              ; $6960: $3f
	ld   c, [hl]                                     ; $6961: $4e
	rst  $38                                         ; $6962: $ff
	ld   a, a                                        ; $6963: $7f
	push de                                          ; $6964: $d5
	add  hl, de                                      ; $6965: $19
	and  a                                           ; $6966: $a7
	nop                                              ; $6967: $00
	ccf                                              ; $6968: $3f
	ld   c, [hl]                                     ; $6969: $4e
	ccf                                              ; $696a: $3f
	dec  l                                           ; $696b: $2d
	ld   de, $a700                                   ; $696c: $11 $00 $a7
	nop                                              ; $696f: $00
	adc  $44                                         ; $6970: $ce $44
	ret  nz                                          ; $6972: $c0

	ld   d, [hl]                                     ; $6973: $56
	ld   e, a                                        ; $6974: $5f
	ld   c, e                                        ; $6975: $4b
	rst  $38                                         ; $6976: $ff
	ld   a, a                                        ; $6977: $7f
	rrca                                             ; $6978: $0f
	dec  c                                           ; $6979: $0d
	and  a                                           ; $697a: $a7
	nop                                              ; $697b: $00
	ld   e, a                                        ; $697c: $5f
	ld   c, e                                        ; $697d: $4b
	push de                                          ; $697e: $d5
	add  hl, de                                      ; $697f: $19
	ld   de, $a700                                   ; $6980: $11 $00 $a7
	nop                                              ; $6983: $00
	rst  $38                                         ; $6984: $ff
	ld   a, a                                        ; $6985: $7f
	ld   sp, $3f46                                   ; $6986: $31 $46 $3f
	ld   c, [hl]                                     ; $6989: $4e
	db   $fc                                         ; $698a: $fc
	jr   z, jr_0a3_69ac                              ; $698b: $28 $1f

	ld   a, h                                        ; $698d: $7c
	add  l                                           ; $698e: $85
	inc  h                                           ; $698f: $24
	rrca                                             ; $6990: $0f
	dec  c                                           ; $6991: $0d
	inc  c                                           ; $6992: $0c
	nop                                              ; $6993: $00
	rra                                              ; $6994: $1f
	nop                                              ; $6995: $00
	db   $fc                                         ; $6996: $fc
	add  hl, de                                      ; $6997: $19
	rrca                                             ; $6998: $0f
	dec  c                                           ; $6999: $0d
	ld   de, $0000                                   ; $699a: $11 $00 $00
	ld   a, h                                        ; $699d: $7c
	jp   hl                                          ; $699e: $e9


	inc  [hl]                                        ; $699f: $34
	add  l                                           ; $69a0: $85
	inc  h                                           ; $69a1: $24
	rst  $38                                         ; $69a2: $ff
	ld   a, a                                        ; $69a3: $7f
	rst  $38                                         ; $69a4: $ff
	inc  bc                                          ; $69a5: $03
	add  l                                           ; $69a6: $85
	inc  h                                           ; $69a7: $24
	db   $fc                                         ; $69a8: $fc
	add  hl, de                                      ; $69a9: $19
	push de                                          ; $69aa: $d5
	add  hl, de                                      ; $69ab: $19

jr_0a3_69ac:
	ldh  [rVBK], a                                   ; $69ac: $e0 $4f
	ld   e, a                                        ; $69ae: $5f
	ld   c, e                                        ; $69af: $4b
	db   $fc                                         ; $69b0: $fc
	add  hl, de                                      ; $69b1: $19
	add  l                                           ; $69b2: $85
	inc  h                                           ; $69b3: $24
	ldh  [$7f], a                                    ; $69b4: $e0 $7f
	ccf                                              ; $69b6: $3f
	ld   c, [hl]                                     ; $69b7: $4e
	ccf                                              ; $69b8: $3f
	dec  l                                           ; $69b9: $2d
	rrca                                             ; $69ba: $0f
	dec  c                                           ; $69bb: $0d
	ld   e, a                                        ; $69bc: $5f
	ld   [bc], a                                     ; $69bd: $02
	ld   l, l                                        ; $69be: $6d
	add  hl, hl                                      ; $69bf: $29
	ld   de, $fc00                                   ; $69c0: $11 $00 $fc
	add  hl, de                                      ; $69c3: $19
	ccf                                              ; $69c4: $3f
	dec  l                                           ; $69c5: $2d
	add  l                                           ; $69c6: $85
	inc  h                                           ; $69c7: $24
	ld   de, $fc00                                   ; $69c8: $11 $00 $fc
	add  hl, de                                      ; $69cb: $19
	rst  $38                                         ; $69cc: $ff
	ld   a, a                                        ; $69cd: $7f
	rst  $38                                         ; $69ce: $ff
	dec  sp                                          ; $69cf: $3b
	db   $ed                                         ; $69d0: $ed
	db   $10                                         ; $69d1: $10
	ld   b, l                                        ; $69d2: $45
	db   $10                                         ; $69d3: $10
	rst  $38                                         ; $69d4: $ff
	ld   a, a                                        ; $69d5: $7f
	ld   e, a                                        ; $69d6: $5f
	ld   c, $9f                                      ; $69d7: $0e $9f
	ld   c, a                                        ; $69d9: $4f
	ld   b, l                                        ; $69da: $45
	db   $10                                         ; $69db: $10
	db   $ed                                         ; $69dc: $ed
	db   $10                                         ; $69dd: $10
	ld   e, a                                        ; $69de: $5f
	ld   c, $9f                                      ; $69df: $0e $9f
	ld   c, a                                        ; $69e1: $4f
	ld   b, l                                        ; $69e2: $45
	db   $10                                         ; $69e3: $10
	sbc  a                                           ; $69e4: $9f
	ld   c, a                                        ; $69e5: $4f
	dec  bc                                          ; $69e6: $0b
	ld   c, h                                        ; $69e7: $4c
	add  hl, bc                                      ; $69e8: $09
	add  hl, hl                                      ; $69e9: $29
	ld   b, l                                        ; $69ea: $45
	db   $10                                         ; $69eb: $10
	rst  $38                                         ; $69ec: $ff
	ld   a, a                                        ; $69ed: $7f
	sbc  a                                           ; $69ee: $9f
	ld   c, a                                        ; $69ef: $4f
	add  hl, bc                                      ; $69f0: $09
	add  hl, hl                                      ; $69f1: $29
	ld   b, l                                        ; $69f2: $45
	db   $10                                         ; $69f3: $10
	db   $ed                                         ; $69f4: $ed
	db   $10                                         ; $69f5: $10
	rst  $38                                         ; $69f6: $ff
	dec  sp                                          ; $69f7: $3b
	rst  JumpTable                                         ; $69f8: $df
	ld   b, d                                        ; $69f9: $42
	ld   b, l                                        ; $69fa: $45
	db   $10                                         ; $69fb: $10
	rst  $38                                         ; $69fc: $ff
	ld   a, a                                        ; $69fd: $7f
	rst  $38                                         ; $69fe: $ff
	dec  sp                                          ; $69ff: $3b
	rst  JumpTable                                         ; $6a00: $df
	ld   b, d                                        ; $6a01: $42
	ld   b, l                                        ; $6a02: $45
	db   $10                                         ; $6a03: $10
	rst  $38                                         ; $6a04: $ff
	ld   a, a                                        ; $6a05: $7f
	jr   nc, jr_0a3_6a59                             ; $6a06: $30 $51

	ld   sp, $a746                                   ; $6a08: $31 $46 $a7
	jr   z, @+$01                                    ; $6a0b: $28 $ff

	ld   a, a                                        ; $6a0d: $7f
	ld   a, a                                        ; $6a0e: $7f
	ld   c, e                                        ; $6a0f: $4b
	db   $ed                                         ; $6a10: $ed
	db   $10                                         ; $6a11: $10
	ld   b, l                                        ; $6a12: $45
	db   $10                                         ; $6a13: $10
	rst  $38                                         ; $6a14: $ff
	ld   a, a                                        ; $6a15: $7f
	call z, $6f61                                    ; $6a16: $cc $61 $6f
	halt                                             ; $6a19: $76
	ld   b, l                                        ; $6a1a: $45
	db   $10                                         ; $6a1b: $10
	rst  $38                                         ; $6a1c: $ff
	ld   a, a                                        ; $6a1d: $7f
	ld   a, [hl-]                                    ; $6a1e: $3a
	ld   l, e                                        ; $6a1f: $6b
	ld   [hl], e                                     ; $6a20: $73
	ld   d, d                                        ; $6a21: $52
	ld   b, l                                        ; $6a22: $45
	db   $10                                         ; $6a23: $10
	rst  $38                                         ; $6a24: $ff
	ld   a, a                                        ; $6a25: $7f
	or   e                                           ; $6a26: $b3
	nop                                              ; $6a27: $00
	rst  JumpTable                                         ; $6a28: $df
	ld   b, d                                        ; $6a29: $42
	ld   b, l                                        ; $6a2a: $45
	db   $10                                         ; $6a2b: $10
	rst  $38                                         ; $6a2c: $ff
	ld   a, a                                        ; $6a2d: $7f
	dec  bc                                          ; $6a2e: $0b
	ld   c, h                                        ; $6a2f: $4c
	add  hl, bc                                      ; $6a30: $09
	add  hl, hl                                      ; $6a31: $29
	ld   b, l                                        ; $6a32: $45
	stop                                             ; $6a33: $10 $00
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
	rst  $38                                         ; $6a4c: $ff
	ld   a, a                                        ; $6a4d: $7f
	ld   e, a                                        ; $6a4e: $5f
	ld   c, $ff                                      ; $6a4f: $0e $ff
	inc  sp                                          ; $6a51: $33
	and  [hl]                                        ; $6a52: $a6
	ld   [$1af7], sp                                 ; $6a53: $08 $f7 $1a
	ld   e, a                                        ; $6a56: $5f
	ld   c, $9f                                      ; $6a57: $0e $9f

jr_0a3_6a59:
	ld   c, a                                        ; $6a59: $4f
	and  [hl]                                        ; $6a5a: $a6
	ld   [$7fff], sp                                 ; $6a5b: $08 $ff $7f
	rst  $30                                         ; $6a5e: $f7
	ld   a, [de]                                     ; $6a5f: $1a
	rst  $38                                         ; $6a60: $ff
	inc  sp                                          ; $6a61: $33
	and  [hl]                                        ; $6a62: $a6
	ld   [$4f5a], sp                                 ; $6a63: $08 $5a $4f
	ret  nc                                          ; $6a66: $d0

	ld   sp, $1d2b                                   ; $6a67: $31 $2b $1d
	and  [hl]                                        ; $6a6a: $a6
	ld   [$4f5a], sp                                 ; $6a6b: $08 $5a $4f
	inc  h                                           ; $6a6e: $24
	ld   bc, $05c6                                   ; $6a6f: $01 $c6 $05
	and  [hl]                                        ; $6a72: $a6
	ld   [$5c6d], sp                                 ; $6a73: $08 $6d $5c
	db   $10                                         ; $6a76: $10
	ld   a, l                                        ; $6a77: $7d
	or   c                                           ; $6a78: $b1
	ld   [hl], c                                     ; $6a79: $71
	and  [hl]                                        ; $6a7a: $a6
	ld   [$5c6d], sp                                 ; $6a7b: $08 $6d $5c
	rst  $30                                         ; $6a7e: $f7
	ld   a, [de]                                     ; $6a7f: $1a
	rst  $38                                         ; $6a80: $ff
	inc  sp                                          ; $6a81: $33
	and  [hl]                                        ; $6a82: $a6
	ld   [$7fff], sp                                 ; $6a83: $08 $ff $7f
	sub  c                                           ; $6a86: $91
	dec  a                                           ; $6a87: $3d
	ld   sp, $cc46                                   ; $6a88: $31 $46 $cc
	inc  h                                           ; $6a8b: $24
	rst  $38                                         ; $6a8c: $ff
	ld   a, a                                        ; $6a8d: $7f
	pop  af                                          ; $6a8e: $f1
	db   $10                                         ; $6a8f: $10
	ld   l, l                                        ; $6a90: $6d
	ld   e, h                                        ; $6a91: $5c
	sub  $3e                                         ; $6a92: $d6 $3e
	rst  $38                                         ; $6a94: $ff
	ld   a, a                                        ; $6a95: $7f
	rst  $38                                         ; $6a96: $ff
	ld   a, a                                        ; $6a97: $7f
	rst  $38                                         ; $6a98: $ff
	inc  sp                                          ; $6a99: $33
	and  [hl]                                        ; $6a9a: $a6
	ld   [$7fff], sp                                 ; $6a9b: $08 $ff $7f
	rst  $38                                         ; $6a9e: $ff
	ld   a, a                                        ; $6a9f: $7f
	ld   c, d                                        ; $6aa0: $4a
	daa                                              ; $6aa1: $27
	and  [hl]                                        ; $6aa2: $a6
	ld   [$7fff], sp                                 ; $6aa3: $08 $ff $7f
	ret  nc                                          ; $6aa6: $d0

	ld   sp, $1d2b                                   ; $6aa7: $31 $2b $1d
	ld   e, d                                        ; $6aaa: $5a
	ld   c, a                                        ; $6aab: $4f
	rst  $38                                         ; $6aac: $ff
	ld   a, a                                        ; $6aad: $7f
	pop  af                                          ; $6aae: $f1
	db   $10                                         ; $6aaf: $10
	ld   l, l                                        ; $6ab0: $6d
	ld   e, h                                        ; $6ab1: $5c
	ld   d, h                                        ; $6ab2: $54
	ld   [hl], a                                     ; $6ab3: $77
	rst  $38                                         ; $6ab4: $ff
	ld   a, a                                        ; $6ab5: $7f
	dec  hl                                          ; $6ab6: $2b
	dec  e                                           ; $6ab7: $1d
	or   c                                           ; $6ab8: $b1
	ld   [hl], c                                     ; $6ab9: $71
	and  [hl]                                        ; $6aba: $a6
	ld   [rRAMG], sp                                 ; $6abb: $08 $00 $00
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
	rst  $38                                         ; $6acc: $ff
	ld   a, a                                        ; $6acd: $7f
	and  a                                           ; $6ace: $a7
	nop                                              ; $6acf: $00
	sbc  a                                           ; $6ad0: $9f
	ld   [bc], a                                     ; $6ad1: $02
	sbc  a                                           ; $6ad2: $9f
	inc  sp                                          ; $6ad3: $33
	rst  $38                                         ; $6ad4: $ff
	ld   a, a                                        ; $6ad5: $7f
	and  a                                           ; $6ad6: $a7
	nop                                              ; $6ad7: $00
	ld   e, a                                        ; $6ad8: $5f
	ld   c, e                                        ; $6ad9: $4b
	inc  a                                           ; $6ada: $3c
	ld   [hl+], a                                    ; $6adb: $22
	rst  $38                                         ; $6adc: $ff
	ld   a, a                                        ; $6add: $7f
	and  a                                           ; $6ade: $a7
	nop                                              ; $6adf: $00
	rst  JumpTable                                         ; $6ae0: $df
	ld   c, c                                        ; $6ae1: $49
	sbc  a                                           ; $6ae2: $9f
	inc  sp                                          ; $6ae3: $33
	rst  $38                                         ; $6ae4: $ff
	ld   a, a                                        ; $6ae5: $7f
	and  a                                           ; $6ae6: $a7
	nop                                              ; $6ae7: $00
	sbc  a                                           ; $6ae8: $9f
	inc  sp                                          ; $6ae9: $33
	inc  e                                           ; $6aea: $1c
	dec  l                                           ; $6aeb: $2d
	rst  $38                                         ; $6aec: $ff
	ld   a, a                                        ; $6aed: $7f
	and  a                                           ; $6aee: $a7
	nop                                              ; $6aef: $00
	or   c                                           ; $6af0: $b1
	ld   a, [hl]                                     ; $6af1: $7e
	sbc  a                                           ; $6af2: $9f
	inc  sp                                          ; $6af3: $33
	rst  $38                                         ; $6af4: $ff
	ld   a, a                                        ; $6af5: $7f
	and  a                                           ; $6af6: $a7
	nop                                              ; $6af7: $00
	inc  a                                           ; $6af8: $3c
	ld   [hl+], a                                    ; $6af9: $22
	jp   nc, $ff05                                   ; $6afa: $d2 $05 $ff

	ld   a, a                                        ; $6afd: $7f
	and  a                                           ; $6afe: $a7
	nop                                              ; $6aff: $00
	or   c                                           ; $6b00: $b1
	ld   a, [hl]                                     ; $6b01: $7e
	inc  a                                           ; $6b02: $3c
	ld   [hl+], a                                    ; $6b03: $22
	rst  $38                                         ; $6b04: $ff
	ld   a, a                                        ; $6b05: $7f
	ld   sp, $7f46                                   ; $6b06: $31 $46 $7f
	inc  bc                                          ; $6b09: $03
	ld   d, [hl]                                     ; $6b0a: $56
	ld   [bc], a                                     ; $6b0b: $02
	nop                                              ; $6b0c: $00
	nop                                              ; $6b0d: $00
	ccf                                              ; $6b0e: $3f
	dec  de                                          ; $6b0f: $1b
	jp   nc, $9f05                                   ; $6b10: $d2 $05 $9f

	ld   [bc], a                                     ; $6b13: $02
	nop                                              ; $6b14: $00
	nop                                              ; $6b15: $00
	or   c                                           ; $6b16: $b1
	ld   a, [hl]                                     ; $6b17: $7e
	jp   nc, $9f05                                   ; $6b18: $d2 $05 $9f

	inc  sp                                          ; $6b1b: $33
	nop                                              ; $6b1c: $00
	nop                                              ; $6b1d: $00
	ld   d, h                                        ; $6b1e: $54
	ld   d, c                                        ; $6b1f: $51
	or   c                                           ; $6b20: $b1
	ld   a, [hl]                                     ; $6b21: $7e
	sbc  a                                           ; $6b22: $9f
	ld   [bc], a                                     ; $6b23: $02
	nop                                              ; $6b24: $00
	nop                                              ; $6b25: $00
	ld   [hl], l                                     ; $6b26: $75
	inc  e                                           ; $6b27: $1c
	jp   nc, Jump_0a3_5f05                           ; $6b28: $d2 $05 $5f

	ld   c, e                                        ; $6b2b: $4b
	nop                                              ; $6b2c: $00
	nop                                              ; $6b2d: $00
	ld   d, h                                        ; $6b2e: $54
	ld   d, c                                        ; $6b2f: $51
	or   c                                           ; $6b30: $b1
	ld   a, [hl]                                     ; $6b31: $7e
	jp   nc, $0005                                   ; $6b32: $d2 $05 $00

	nop                                              ; $6b35: $00
	sbc  a                                           ; $6b36: $9f
	inc  sp                                          ; $6b37: $33
	sbc  a                                           ; $6b38: $9f
	ld   [bc], a                                     ; $6b39: $02
	rst  JumpTable                                         ; $6b3a: $df
	ld   c, c                                        ; $6b3b: $49
	nop                                              ; $6b3c: $00
	nop                                              ; $6b3d: $00
	jp   nc, $b105                                   ; $6b3e: $d2 $05 $b1

	ld   a, [hl]                                     ; $6b41: $7e
	sbc  a                                           ; $6b42: $9f
	ld   [bc], a                                     ; $6b43: $02
	nop                                              ; $6b44: $00
	nop                                              ; $6b45: $00
	nop                                              ; $6b46: $00
	nop                                              ; $6b47: $00
	nop                                              ; $6b48: $00
	nop                                              ; $6b49: $00
	nop                                              ; $6b4a: $00
	nop                                              ; $6b4b: $00
	dec  e                                           ; $6b4c: $1d
	ld   h, e                                        ; $6b4d: $63
	and  a                                           ; $6b4e: $a7
	nop                                              ; $6b4f: $00
	ld   d, d                                        ; $6b50: $52
	nop                                              ; $6b51: $00
	inc  c                                           ; $6b52: $0c
	nop                                              ; $6b53: $00
	rst  $38                                         ; $6b54: $ff
	ld   a, a                                        ; $6b55: $7f
	and  a                                           ; $6b56: $a7
	nop                                              ; $6b57: $00
	ld   l, l                                        ; $6b58: $6d
	add  hl, hl                                      ; $6b59: $29
	or   [hl]                                        ; $6b5a: $b6
	ld   h, [hl]                                     ; $6b5b: $66
	rst  $38                                         ; $6b5c: $ff
	ld   a, a                                        ; $6b5d: $7f
	and  a                                           ; $6b5e: $a7
	nop                                              ; $6b5f: $00
	ld   e, a                                        ; $6b60: $5f
	ld   c, e                                        ; $6b61: $4b
	db   $fc                                         ; $6b62: $fc
	add  hl, de                                      ; $6b63: $19
	db   $dd                                         ; $6b64: $dd
	ld   e, d                                        ; $6b65: $5a
	and  a                                           ; $6b66: $a7
	nop                                              ; $6b67: $00
	ld   [de], a                                     ; $6b68: $12
	inc  a                                           ; $6b69: $3c
	inc  c                                           ; $6b6a: $0c
	inc  e                                           ; $6b6b: $1c
	ld   e, a                                        ; $6b6c: $5f
	ld   c, e                                        ; $6b6d: $4b
	and  a                                           ; $6b6e: $a7
	nop                                              ; $6b6f: $00
	ld   a, a                                        ; $6b70: $7f
	inc  bc                                          ; $6b71: $03
	ld   [hl], a                                     ; $6b72: $77
	ld   [bc], a                                     ; $6b73: $02
	or   [hl]                                        ; $6b74: $b6
	ld   h, [hl]                                     ; $6b75: $66
	and  a                                           ; $6b76: $a7
	nop                                              ; $6b77: $00
	ld   [de], a                                     ; $6b78: $12
	inc  a                                           ; $6b79: $3c
	inc  c                                           ; $6b7a: $0c
	inc  e                                           ; $6b7b: $1c
	rst  $38                                         ; $6b7c: $ff
	ld   a, a                                        ; $6b7d: $7f
	and  a                                           ; $6b7e: $a7
	nop                                              ; $6b7f: $00
	ld   d, d                                        ; $6b80: $52
	nop                                              ; $6b81: $00
	db   $dd                                         ; $6b82: $dd
	ld   e, d                                        ; $6b83: $5a
	rst  $38                                         ; $6b84: $ff
	ld   a, a                                        ; $6b85: $7f
	ld   sp, $6446                                   ; $6b86: $31 $46 $64
	ld   a, [bc]                                     ; $6b89: $0a
	and  b                                           ; $6b8a: $a0
	ld   bc, $7c1f                                   ; $6b8b: $01 $1f $7c
	inc  c                                           ; $6b8e: $0c
	inc  e                                           ; $6b8f: $1c
	ld   [de], a                                     ; $6b90: $12
	inc  a                                           ; $6b91: $3c
	ld   l, l                                        ; $6b92: $6d
	add  hl, hl                                      ; $6b93: $29
	rra                                              ; $6b94: $1f
	nop                                              ; $6b95: $00
	jp   $1701                                       ; $6b96: $c3 $01 $17


	ld   [bc], a                                     ; $6b99: $02
	inc  c                                           ; $6b9a: $0c
	nop                                              ; $6b9b: $00
	nop                                              ; $6b9c: $00
	ld   a, h                                        ; $6b9d: $7c
	ld   l, l                                        ; $6b9e: $6d
	add  hl, hl                                      ; $6b9f: $29
	ld   c, l                                        ; $6ba0: $4d
	ld   bc, $000c                                   ; $6ba1: $01 $0c $00
	rst  $38                                         ; $6ba4: $ff
	inc  bc                                          ; $6ba5: $03
	or   [hl]                                        ; $6ba6: $b6
	ld   h, [hl]                                     ; $6ba7: $66
	ld   e, a                                        ; $6ba8: $5f
	ld   c, e                                        ; $6ba9: $4b
	inc  a                                           ; $6baa: $3c
	ld   [hl+], a                                    ; $6bab: $22
	ldh  [rVBK], a                                   ; $6bac: $e0 $4f
	ld   [hl], a                                     ; $6bae: $77
	ld   [bc], a                                     ; $6baf: $02
	rst  $38                                         ; $6bb0: $ff
	ld   a, a                                        ; $6bb1: $7f
	inc  a                                           ; $6bb2: $3c
	ld   [hl+], a                                    ; $6bb3: $22
	ldh  [$7f], a                                    ; $6bb4: $e0 $7f
	ld   c, l                                        ; $6bb6: $4d
	ld   bc, $3c0f                                   ; $6bb7: $01 $0f $3c
	ld   l, l                                        ; $6bba: $6d
	add  hl, hl                                      ; $6bbb: $29
	ld   e, a                                        ; $6bbc: $5f
	ld   [bc], a                                     ; $6bbd: $02
	ld   a, a                                        ; $6bbe: $7f
	inc  bc                                          ; $6bbf: $03
	ld   d, d                                        ; $6bc0: $52
	nop                                              ; $6bc1: $00
	inc  a                                           ; $6bc2: $3c
	ld   [hl+], a                                    ; $6bc3: $22
	ldh  [$32], a                                    ; $6bc4: $e0 $32
	inc  a                                           ; $6bc6: $3c
	ld   [hl+], a                                    ; $6bc7: $22
	ld   a, a                                        ; $6bc8: $7f
	inc  bc                                          ; $6bc9: $03
	ld   e, a                                        ; $6bca: $5f
	ld   c, e                                        ; $6bcb: $4b
	adc  $49                                         ; $6bcc: $ce $49
	ld   [hl], e                                     ; $6bce: $73
	ld   e, [hl]                                     ; $6bcf: $5e
	jr   jr_0a3_6c3d                                 ; $6bd0: $18 $6b

	inc  bc                                          ; $6bd2: $03
	nop                                              ; $6bd3: $00
	rst  $38                                         ; $6bd4: $ff
	ccf                                              ; $6bd5: $3f
	sub  a                                           ; $6bd6: $97
	ld   [de], a                                     ; $6bd7: $12
	jr   jr_0a3_6c45                                 ; $6bd8: $18 $6b

	inc  bc                                          ; $6bda: $03
	nop                                              ; $6bdb: $00
	ld   [hl], e                                     ; $6bdc: $73
	add  hl, bc                                      ; $6bdd: $09
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bde: $cf
	nop                                              ; $6bdf: $00
	ld   l, h                                        ; $6be0: $6c
	nop                                              ; $6be1: $00
	inc  bc                                          ; $6be2: $03
	nop                                              ; $6be3: $00
	rst  $38                                         ; $6be4: $ff
	ccf                                              ; $6be5: $3f
	sub  a                                           ; $6be6: $97
	ld   [de], a                                     ; $6be7: $12
	di                                               ; $6be8: $f3
	nop                                              ; $6be9: $00
	inc  bc                                          ; $6bea: $03
	nop                                              ; $6beb: $00
	rst  $38                                         ; $6bec: $ff
	ccf                                              ; $6bed: $3f
	ld   e, a                                        ; $6bee: $5f
	ld   [de], a                                     ; $6bef: $12
	di                                               ; $6bf0: $f3
	nop                                              ; $6bf1: $00
	inc  bc                                          ; $6bf2: $03
	nop                                              ; $6bf3: $00
	ld   [hl], e                                     ; $6bf4: $73
	ld   a, [hl-]                                    ; $6bf5: $3a
	rst  $28                                         ; $6bf6: $ef
	dec  l                                           ; $6bf7: $2d
	ld   l, c                                        ; $6bf8: $69
	inc  b                                           ; $6bf9: $04
	inc  bc                                          ; $6bfa: $03
	nop                                              ; $6bfb: $00
	add  hl, sp                                      ; $6bfc: $39
	ld   d, e                                        ; $6bfd: $53
	ld   [hl], e                                     ; $6bfe: $73
	ld   a, [hl-]                                    ; $6bff: $3a
	adc  d                                           ; $6c00: $8a
	ld   [$0003], sp                                 ; $6c01: $08 $03 $00
	rst  $38                                         ; $6c04: $ff
	ld   a, a                                        ; $6c05: $7f
	adc  $39                                         ; $6c06: $ce $39
	or   h                                           ; $6c08: $b4
	nop                                              ; $6c09: $00
	add  hl, bc                                      ; $6c0a: $09
	nop                                              ; $6c0b: $00
	rra                                              ; $6c0c: $1f
	ld   a, h                                        ; $6c0d: $7c
	rst  $38                                         ; $6c0e: $ff
	ld   a, a                                        ; $6c0f: $7f
	jr   nc, @+$81                                   ; $6c10: $30 $7f

	add  hl, de                                      ; $6c12: $19
	nop                                              ; $6c13: $00
	rra                                              ; $6c14: $1f
	ld   a, h                                        ; $6c15: $7c
	rst  $38                                         ; $6c16: $ff
	ld   a, a                                        ; $6c17: $7f
	jr   nc, jr_0a3_6c99                             ; $6c18: $30 $7f

	ld   d, $7c                                      ; $6c1a: $16 $7c
	rra                                              ; $6c1c: $1f
	ld   a, h                                        ; $6c1d: $7c
	jr   nc, @+$81                                   ; $6c1e: $30 $7f

	sbc  $3f                                         ; $6c20: $de $3f
	sub  a                                           ; $6c22: $97
	ld   [de], a                                     ; $6c23: $12
	rra                                              ; $6c24: $1f
	ld   a, h                                        ; $6c25: $7c
	sbc  a                                           ; $6c26: $9f
	ld   h, e                                        ; $6c27: $63
	ld   e, a                                        ; $6c28: $5f
	ld   [de], a                                     ; $6c29: $12
	sub  l                                           ; $6c2a: $95
	ld   de, $7c1f                                   ; $6c2b: $11 $1f $7c
	rra                                              ; $6c2e: $1f
	nop                                              ; $6c2f: $00
	ld   e, a                                        ; $6c30: $5f
	ld   [de], a                                     ; $6c31: $12
	ld   sp, $1f00                                   ; $6c32: $31 $00 $1f
	ld   a, h                                        ; $6c35: $7c
	rst  $38                                         ; $6c36: $ff
	ld   a, a                                        ; $6c37: $7f
	ld   [hl], e                                     ; $6c38: $73
	ld   e, [hl]                                     ; $6c39: $5e
	adc  $49                                         ; $6c3a: $ce $49
	rra                                              ; $6c3c: $1f

jr_0a3_6c3d:
	ld   a, h                                        ; $6c3d: $7c
	sbc  a                                           ; $6c3e: $9f
	ld   h, e                                        ; $6c3f: $63
	jr   jr_0a3_6cad                                 ; $6c40: $18 $6b

	ld   [hl], e                                     ; $6c42: $73
	ld   e, [hl]                                     ; $6c43: $5e
	rra                                              ; $6c44: $1f

jr_0a3_6c45:
	ld   a, h                                        ; $6c45: $7c
	rra                                              ; $6c46: $1f
	nop                                              ; $6c47: $00
	sbc  a                                           ; $6c48: $9f
	ld   h, e                                        ; $6c49: $63
	ld   sp, $0900                                   ; $6c4a: $31 $00 $09
	add  hl, de                                      ; $6c4d: $19
	and  a                                           ; $6c4e: $a7
	nop                                              ; $6c4f: $00
	sbc  $32                                         ; $6c50: $de $32
	or   $19                                         ; $6c52: $f6 $19
	nop                                              ; $6c54: $00
	ld   d, h                                        ; $6c55: $54
	and  a                                           ; $6c56: $a7
	nop                                              ; $6c57: $00
	sbc  $32                                         ; $6c58: $de $32
	or   $19                                         ; $6c5a: $f6 $19
	and  a                                           ; $6c5c: $a7
	nop                                              ; $6c5d: $00
	rst  $38                                         ; $6c5e: $ff
	ld   b, l                                        ; $6c5f: $45
	inc  de                                          ; $6c60: $13
	nop                                              ; $6c61: $00
	ld   a, [bc]                                     ; $6c62: $0a
	nop                                              ; $6c63: $00
	rst  $38                                         ; $6c64: $ff
	ld   a, a                                        ; $6c65: $7f
	and  a                                           ; $6c66: $a7
	nop                                              ; $6c67: $00
	add  hl, bc                                      ; $6c68: $09
	add  hl, de                                      ; $6c69: $19
	add  [hl]                                        ; $6c6a: $86
	ld   a, h                                        ; $6c6b: $7c
	xor  $7e                                         ; $6c6c: $ee $7e
	add  sp, $7c                                     ; $6c6e: $e8 $7c
	rst  $38                                         ; $6c70: $ff
	ld   a, a                                        ; $6c71: $7f
	add  [hl]                                        ; $6c72: $86
	ld   a, h                                        ; $6c73: $7c
	add  [hl]                                        ; $6c74: $86
	ld   a, h                                        ; $6c75: $7c
	and  a                                           ; $6c76: $a7
	nop                                              ; $6c77: $00
	sbc  $32                                         ; $6c78: $de $32
	nop                                              ; $6c7a: $00
	ld   d, h                                        ; $6c7b: $54
	inc  de                                          ; $6c7c: $13
	nop                                              ; $6c7d: $00
	and  a                                           ; $6c7e: $a7
	nop                                              ; $6c7f: $00
	sbc  $32                                         ; $6c80: $de $32
	or   $19                                         ; $6c82: $f6 $19
	rst  $38                                         ; $6c84: $ff
	ld   a, a                                        ; $6c85: $7f
	ld   sp, $1446                                   ; $6c86: $31 $46 $14
	nop                                              ; $6c89: $00
	inc  c                                           ; $6c8a: $0c
	nop                                              ; $6c8b: $00
	nop                                              ; $6c8c: $00
	nop                                              ; $6c8d: $00
	and  a                                           ; $6c8e: $a7
	nop                                              ; $6c8f: $00
	sbc  $32                                         ; $6c90: $de $32
	or   $19                                         ; $6c92: $f6 $19
	nop                                              ; $6c94: $00
	nop                                              ; $6c95: $00
	add  hl, bc                                      ; $6c96: $09
	add  hl, de                                      ; $6c97: $19
	nop                                              ; $6c98: $00

jr_0a3_6c99:
	ld   [bc], a                                     ; $6c99: $02
	rst  JumpTable                                         ; $6c9a: $df
	ld   e, d                                        ; $6c9b: $5a
	nop                                              ; $6c9c: $00
	nop                                              ; $6c9d: $00
	xor  $7e                                         ; $6c9e: $ee $7e
	nop                                              ; $6ca0: $00
	ld   [bc], a                                     ; $6ca1: $02
	rst  $38                                         ; $6ca2: $ff
	ld   a, a                                        ; $6ca3: $7f
	nop                                              ; $6ca4: $00
	nop                                              ; $6ca5: $00
	inc  de                                          ; $6ca6: $13
	nop                                              ; $6ca7: $00
	ld   a, [bc]                                     ; $6ca8: $0a
	nop                                              ; $6ca9: $00
	or   $19                                         ; $6caa: $f6 $19
	nop                                              ; $6cac: $00

jr_0a3_6cad:
	nop                                              ; $6cad: $00
	rst  JumpTable                                         ; $6cae: $df
	ld   e, d                                        ; $6caf: $5a
	inc  de                                          ; $6cb0: $13
	nop                                              ; $6cb1: $00
	rst  $38                                         ; $6cb2: $ff
	ld   a, a                                        ; $6cb3: $7f
	nop                                              ; $6cb4: $00
	nop                                              ; $6cb5: $00
	add  sp, $7c                                     ; $6cb6: $e8 $7c
	rst  $38                                         ; $6cb8: $ff
	ld   b, l                                        ; $6cb9: $45
	add  [hl]                                        ; $6cba: $86
	ld   a, h                                        ; $6cbb: $7c
	nop                                              ; $6cbc: $00
	nop                                              ; $6cbd: $00
	rst  $38                                         ; $6cbe: $ff
	ld   a, a                                        ; $6cbf: $7f
	add  [hl]                                        ; $6cc0: $86
	ld   a, h                                        ; $6cc1: $7c
	ld   e, a                                        ; $6cc2: $5f
	ld   [bc], a                                     ; $6cc3: $02
	nop                                              ; $6cc4: $00
	nop                                              ; $6cc5: $00
	sbc  $32                                         ; $6cc6: $de $32
	add  [hl]                                        ; $6cc8: $86
	ld   a, h                                        ; $6cc9: $7c
	or   $19                                         ; $6cca: $f6 $19
	ld   b, l                                        ; $6ccc: $45
	ld   b, h                                        ; $6ccd: $44
	ld   b, c                                        ; $6cce: $41
	db   $10                                         ; $6ccf: $10
	pop  de                                          ; $6cd0: $d1
	ld   h, l                                        ; $6cd1: $65
	cp   $47                                         ; $6cd2: $fe $47
	and  a                                           ; $6cd4: $a7
	inc  e                                           ; $6cd5: $1c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cd6: $cf
	dec  a                                           ; $6cd7: $3d
	ld   b, l                                        ; $6cd8: $45
	ld   b, h                                        ; $6cd9: $44
	rst  $30                                         ; $6cda: $f7
	ld   d, d                                        ; $6cdb: $52
	ret  z                                           ; $6cdc: $c8

	ld   c, b                                        ; $6cdd: $48
	ld   b, c                                        ; $6cde: $41
	db   $10                                         ; $6cdf: $10
	ld   b, l                                        ; $6ce0: $45
	ld   b, h                                        ; $6ce1: $44
	add  h                                           ; $6ce2: $84
	inc  e                                           ; $6ce3: $1c
	cpl                                              ; $6ce4: $2f
	ld   h, l                                        ; $6ce5: $65
	reti                                             ; $6ce6: $d9


	dec  l                                           ; $6ce7: $2d
	and  a                                           ; $6ce8: $a7
	inc  e                                           ; $6ce9: $1c
	cp   $47                                         ; $6cea: $fe $47
	xor  e                                           ; $6cec: $ab
	ld   d, h                                        ; $6ced: $54
	reti                                             ; $6cee: $d9


	dec  l                                           ; $6cef: $2d
	and  a                                           ; $6cf0: $a7
	inc  e                                           ; $6cf1: $1c
	cpl                                              ; $6cf2: $2f
	ld   h, l                                        ; $6cf3: $65
	ld   [hl], h                                     ; $6cf4: $74
	ld   h, d                                        ; $6cf5: $62
	cpl                                              ; $6cf6: $2f
	ld   h, l                                        ; $6cf7: $65
	and  a                                           ; $6cf8: $a7
	inc  e                                           ; $6cf9: $1c
	ret  z                                           ; $6cfa: $c8

	jr   nc, jr_0a3_6d71                             ; $6cfb: $30 $74

	ld   h, d                                        ; $6cfd: $62
	or   h                                           ; $6cfe: $b4
	inc  hl                                          ; $6cff: $23
	ld   b, l                                        ; $6d00: $45
	ld   b, h                                        ; $6d01: $44
	cp   $47                                         ; $6d02: $fe $47
	db   $fd                                         ; $6d04: $fd
	ld   a, a                                        ; $6d05: $7f
	ld   sp, $2a46                                   ; $6d06: $31 $46 $2a
	ld   b, l                                        ; $6d09: $45
	ld   d, e                                        ; $6d0a: $53
	ld   l, d                                        ; $6d0b: $6a
	cp   $7f                                         ; $6d0c: $fe $7f
	ld   b, l                                        ; $6d0e: $45
	ld   b, h                                        ; $6d0f: $44
	ld   b, c                                        ; $6d10: $41
	db   $10                                         ; $6d11: $10
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d12: $cf
	dec  a                                           ; $6d13: $3d
	sub  e                                           ; $6d14: $93
	ld   a, a                                        ; $6d15: $7f
	rst  $30                                         ; $6d16: $f7
	ld   d, d                                        ; $6d17: $52
	ld   de, $4646                                   ; $6d18: $11 $46 $46
	nop                                              ; $6d1b: $00
	and  a                                           ; $6d1c: $a7
	ld   d, a                                        ; $6d1d: $57
	cp   $47                                         ; $6d1e: $fe $47
	or   e                                           ; $6d20: $b3
	inc  hl                                          ; $6d21: $23
	dec  hl                                          ; $6d22: $2b
	dec  l                                           ; $6d23: $2d
	rra                                              ; $6d24: $1f
	ld   h, l                                        ; $6d25: $65
	cp   $47                                         ; $6d26: $fe $47
	cp   $7f                                         ; $6d28: $fe $7f
	dec  de                                          ; $6d2a: $1b
	ld   a, a                                        ; $6d2b: $7f
	sub  e                                           ; $6d2c: $93
	inc  bc                                          ; $6d2d: $03
	ld   hl, sp+$06                                  ; $6d2e: $f8 $06
	jp   z, Jump_0a3_4610                            ; $6d30: $ca $10 $46

	nop                                              ; $6d33: $00
	sub  e                                           ; $6d34: $93
	inc  bc                                          ; $6d35: $03
	ld   [de], a                                     ; $6d36: $12
	ld   l, [hl]                                     ; $6d37: $6e
	dec  de                                          ; $6d38: $1b
	ld   a, a                                        ; $6d39: $7f
	ret  z                                           ; $6d3a: $c8

	jr   nc, jr_0a3_6d3d                             ; $6d3b: $30 $00

jr_0a3_6d3d:
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
	rst  $38                                         ; $6d4c: $ff
	ld   a, a                                        ; $6d4d: $7f
	rst  $38                                         ; $6d4e: $ff
	inc  bc                                          ; $6d4f: $03
	ld   a, c                                        ; $6d50: $79
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
	rst  $38                                         ; $6d5c: $ff
	ld   l, a                                        ; $6d5d: $6f
	ldh  a, [c]                                      ; $6d5e: $f2
	ld   [hl], d                                     ; $6d5f: $72
	dec  l                                           ; $6d60: $2d
	ld   a, [hl-]                                    ; $6d61: $3a
	ld   l, [hl]                                     ; $6d62: $6e
	ld   c, c                                        ; $6d63: $49
	rst  $38                                         ; $6d64: $ff
	ld   l, a                                        ; $6d65: $6f
	rst  $10                                         ; $6d66: $d7
	ld   [hl-], a                                    ; $6d67: $32
	rla                                              ; $6d68: $17
	ld   a, [hl-]                                    ; $6d69: $3a
	sub  c                                           ; $6d6a: $91
	ld   sp, $6fff                                   ; $6d6b: $31 $ff $6f
	cp   a                                           ; $6d6e: $bf
	ld   a, [hl+]                                    ; $6d6f: $2a
	sbc  e                                           ; $6d70: $9b

jr_0a3_6d71:
	dec  [hl]                                        ; $6d71: $35
	or   b                                           ; $6d72: $b0
	dec  h                                           ; $6d73: $25
	nop                                              ; $6d74: $00
	nop                                              ; $6d75: $00
	nop                                              ; $6d76: $00
	nop                                              ; $6d77: $00
	nop                                              ; $6d78: $00
	nop                                              ; $6d79: $00
	nop                                              ; $6d7a: $00
	nop                                              ; $6d7b: $00
	rst  $38                                         ; $6d7c: $ff
	ld   a, a                                        ; $6d7d: $7f
	adc  d                                           ; $6d7e: $8a
	ld   c, l                                        ; $6d7f: $4d
	ld   h, d                                        ; $6d80: $62
	inc  d                                           ; $6d81: $14
	ld   d, h                                        ; $6d82: $54
	ld   a, a                                        ; $6d83: $7f
	rst  $38                                         ; $6d84: $ff
	ld   a, a                                        ; $6d85: $7f
	ldh  [$03], a                                    ; $6d86: $e0 $03
	rra                                              ; $6d88: $1f
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
	and  a                                           ; $6dac: $a7
	ld   a, a                                        ; $6dad: $7f
	ld   a, c                                        ; $6dae: $79
	nop                                              ; $6daf: $00
	ld   h, d                                        ; $6db0: $62
	inc  d                                           ; $6db1: $14
	sbc  a                                           ; $6db2: $9f
	ld   [hl], e                                     ; $6db3: $73
	and  a                                           ; $6db4: $a7
	ld   a, a                                        ; $6db5: $7f
	rst  $38                                         ; $6db6: $ff
	ld   a, a                                        ; $6db7: $7f
	cp   a                                           ; $6db8: $bf
	halt                                             ; $6db9: $76
	ld   h, d                                        ; $6dba: $62
	inc  d                                           ; $6dbb: $14
	and  a                                           ; $6dbc: $a7
	ld   a, a                                        ; $6dbd: $7f
	ldh  [$03], a                                    ; $6dbe: $e0 $03
	rst  $38                                         ; $6dc0: $ff
	inc  bc                                          ; $6dc1: $03
	rra                                              ; $6dc2: $1f
	nop                                              ; $6dc3: $00
	and  a                                           ; $6dc4: $a7
	ld   a, a                                        ; $6dc5: $7f
	rst  $38                                         ; $6dc6: $ff
	ld   a, a                                        ; $6dc7: $7f
	db   $ec                                         ; $6dc8: $ec
	ld   h, c                                        ; $6dc9: $61
	ld   h, d                                        ; $6dca: $62
	inc  d                                           ; $6dcb: $14
	rst  $38                                         ; $6dcc: $ff
	ld   a, a                                        ; $6dcd: $7f
	rst  $38                                         ; $6dce: $ff
	inc  bc                                          ; $6dcf: $03
	ld   a, c                                        ; $6dd0: $79
	nop                                              ; $6dd1: $00
	nop                                              ; $6dd2: $00
	nop                                              ; $6dd3: $00
	nop                                              ; $6dd4: $00
	nop                                              ; $6dd5: $00
	nop                                              ; $6dd6: $00

jr_0a3_6dd7:
	nop                                              ; $6dd7: $00
	nop                                              ; $6dd8: $00
	nop                                              ; $6dd9: $00
	nop                                              ; $6dda: $00
	nop                                              ; $6ddb: $00
	db   $fc                                         ; $6ddc: $fc
	ld   [hl], a                                     ; $6ddd: $77
	inc  sp                                          ; $6dde: $33
	ld   [hl], e                                     ; $6ddf: $73
	ld   c, $3e                                      ; $6de0: $0e $3e
	adc  [hl]                                        ; $6de2: $8e
	ld   b, c                                        ; $6de3: $41
	db   $fc                                         ; $6de4: $fc
	ld   [hl], a                                     ; $6de5: $77
	scf                                              ; $6de6: $37
	ccf                                              ; $6de7: $3f
	ld   d, h                                        ; $6de8: $54
	ld   a, $91                                      ; $6de9: $3e $91
	ld   sp, $77fc                                   ; $6deb: $31 $fc $77
	db   $fd                                         ; $6dee: $fd
	ld   [hl], $dd                                   ; $6def: $36 $dd
	dec  a                                           ; $6df1: $3d
	or   b                                           ; $6df2: $b0
	dec  h                                           ; $6df3: $25
	nop                                              ; $6df4: $00
	nop                                              ; $6df5: $00
	nop                                              ; $6df6: $00
	nop                                              ; $6df7: $00
	nop                                              ; $6df8: $00
	nop                                              ; $6df9: $00
	nop                                              ; $6dfa: $00
	nop                                              ; $6dfb: $00
	rst  $38                                         ; $6dfc: $ff
	ld   a, a                                        ; $6dfd: $7f
	and  [hl]                                        ; $6dfe: $a6
	ld   b, c                                        ; $6dff: $41
	and  e                                           ; $6e00: $a3
	jr   nz, jr_0a3_6e77                             ; $6e01: $20 $74

	ld   [hl], a                                     ; $6e03: $77
	rst  $38                                         ; $6e04: $ff
	ld   a, a                                        ; $6e05: $7f
	ldh  [$03], a                                    ; $6e06: $e0 $03
	rra                                              ; $6e08: $1f
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
	and  a                                           ; $6e2c: $a7
	ld   a, a                                        ; $6e2d: $7f
	ld   a, c                                        ; $6e2e: $79
	nop                                              ; $6e2f: $00
	ld   h, d                                        ; $6e30: $62
	inc  d                                           ; $6e31: $14
	sbc  a                                           ; $6e32: $9f
	ld   [hl], e                                     ; $6e33: $73
	and  a                                           ; $6e34: $a7
	ld   a, a                                        ; $6e35: $7f
	rst  $38                                         ; $6e36: $ff
	ld   a, a                                        ; $6e37: $7f
	cp   a                                           ; $6e38: $bf
	halt                                             ; $6e39: $76
	ld   h, d                                        ; $6e3a: $62
	inc  d                                           ; $6e3b: $14
	and  a                                           ; $6e3c: $a7
	ld   a, a                                        ; $6e3d: $7f
	ldh  [$03], a                                    ; $6e3e: $e0 $03
	rst  $38                                         ; $6e40: $ff
	inc  bc                                          ; $6e41: $03
	rra                                              ; $6e42: $1f
	nop                                              ; $6e43: $00
	and  a                                           ; $6e44: $a7
	ld   a, a                                        ; $6e45: $7f
	rst  $38                                         ; $6e46: $ff
	ld   a, a                                        ; $6e47: $7f
	db   $ec                                         ; $6e48: $ec
	ld   h, c                                        ; $6e49: $61
	ld   h, d                                        ; $6e4a: $62
	inc  d                                           ; $6e4b: $14

jr_0a3_6e4c:
	rst  $38                                         ; $6e4c: $ff
	ld   a, a                                        ; $6e4d: $7f
	ld   a, a                                        ; $6e4e: $7f
	ld   c, l                                        ; $6e4f: $4d
	dec  e                                           ; $6e50: $1d
	jr   z, jr_0a3_6dd7                              ; $6e51: $28 $84

	db   $10                                         ; $6e53: $10
	rst  $38                                         ; $6e54: $ff
	ld   a, a                                        ; $6e55: $7f
	ld   d, $7d                                      ; $6e56: $16 $7d
	ld   de, $847c                                   ; $6e58: $11 $7c $84
	db   $10                                         ; $6e5b: $10
	rst  $38                                         ; $6e5c: $ff
	ld   a, a                                        ; $6e5d: $7f
	inc  l                                           ; $6e5e: $2c
	ld   [hl], a                                     ; $6e5f: $77
	nop                                              ; $6e60: $00
	ld   d, l                                        ; $6e61: $55
	add  h                                           ; $6e62: $84
	db   $10                                         ; $6e63: $10
	rst  $38                                         ; $6e64: $ff
	ld   a, a                                        ; $6e65: $7f
	add  b                                           ; $6e66: $80
	ld   b, [hl]                                     ; $6e67: $46
	add  b                                           ; $6e68: $80
	dec  l                                           ; $6e69: $2d
	add  h                                           ; $6e6a: $84
	db   $10                                         ; $6e6b: $10
	rst  $38                                         ; $6e6c: $ff
	ld   a, a                                        ; $6e6d: $7f
	ld   h, b                                        ; $6e6e: $60
	ld   e, e                                        ; $6e6f: $5b
	add  b                                           ; $6e70: $80
	ld   b, [hl]                                     ; $6e71: $46
	add  h                                           ; $6e72: $84
	db   $10                                         ; $6e73: $10
	ld   c, d                                        ; $6e74: $4a
	ld   a, [hl]                                     ; $6e75: $7e
	rst  JumpTable                                         ; $6e76: $df

jr_0a3_6e77:
	ld   e, l                                        ; $6e77: $5d
	sbc  d                                           ; $6e78: $9a
	inc  l                                           ; $6e79: $2c
	jr   nz, jr_0a3_6e9c                             ; $6e7a: $20 $20

	adc  d                                           ; $6e7c: $8a
	nop                                              ; $6e7d: $00
	cp   a                                           ; $6e7e: $bf
	halt                                             ; $6e7f: $76
	cp   a                                           ; $6e80: $bf
	ld   d, c                                        ; $6e81: $51
	ret  c                                           ; $6e82: $d8

	db $28, $4a

	ld   a, [hl]                                     ; $6e85: $7e
	cp   a                                           ; $6e86: $bf
	halt                                             ; $6e87: $76
	cp   a                                           ; $6e88: $bf
	ld   d, c                                        ; $6e89: $51
	ret  c                                           ; $6e8a: $d8

	jr   z, jr_0a3_6e4c                              ; $6e8b: $28 $bf

	ld   a, [hl]                                     ; $6e8d: $7e
	sub  $71                                         ; $6e8e: $d6 $71
	ld   sp, $5f65                                   ; $6e90: $31 $65 $5f
	ld   c, h                                        ; $6e93: $4c
	cp   a                                           ; $6e94: $bf
	ld   a, [hl]                                     ; $6e95: $7e
	ld   h, b                                        ; $6e96: $60
	ld   e, e                                        ; $6e97: $5b
	rst  $38                                         ; $6e98: $ff
	ld   a, a                                        ; $6e99: $7f
	rst  $38                                         ; $6e9a: $ff
	ld   a, a                                        ; $6e9b: $7f

jr_0a3_6e9c:
	cp   a                                           ; $6e9c: $bf
	ld   a, [hl]                                     ; $6e9d: $7e
	add  hl, de                                      ; $6e9e: $19
	ld   a, a                                        ; $6e9f: $7f
	or   b                                           ; $6ea0: $b0
	ld   e, c                                        ; $6ea1: $59
	rst  $38                                         ; $6ea2: $ff
	ld   a, a                                        ; $6ea3: $7f
	cp   a                                           ; $6ea4: $bf
	ld   a, [hl]                                     ; $6ea5: $7e
	rst  $38                                         ; $6ea6: $ff
	ld   a, a                                        ; $6ea7: $7f
	rst  $38                                         ; $6ea8: $ff
	ld   c, d                                        ; $6ea9: $4a
	jr   c, jr_0a3_6ec5                              ; $6eaa: $38 $19

	cp   a                                           ; $6eac: $bf
	ld   a, [hl]                                     ; $6ead: $7e
	rst  $38                                         ; $6eae: $ff
	ld   a, a                                        ; $6eaf: $7f
	rst  $38                                         ; $6eb0: $ff
	ld   c, d                                        ; $6eb1: $4a
	ld   a, [de]                                     ; $6eb2: $1a
	nop                                              ; $6eb3: $00
	cp   a                                           ; $6eb4: $bf
	ld   a, [hl]                                     ; $6eb5: $7e
	rst  $38                                         ; $6eb6: $ff
	ld   a, a                                        ; $6eb7: $7f
	db $38, $19

	ld   a, [de]                                     ; $6eba: $1a
	nop                                              ; $6ebb: $00
	cp   a                                           ; $6ebc: $bf
	ld   a, [hl]                                     ; $6ebd: $7e
	rst  $38                                         ; $6ebe: $ff
	ld   a, a                                        ; $6ebf: $7f
	db $38, $19

	db $20, $20

	cp   a                                           ; $6ec4: $bf

jr_0a3_6ec5:
	ld   a, [hl]                                     ; $6ec5: $7e
	ld   a, a                                        ; $6ec6: $7f
	ld   d, a                                        ; $6ec7: $57
	rst  JumpTable                                         ; $6ec8: $df
	ld   l, $1e                                      ; $6ec9: $2e $1e
	ld   [bc], a                                     ; $6ecb: $02

jr_0a3_6ecc:


Palettes_TitleScreen::
	db $ff, $7f, $7f, $4d, $1d, $28, $84, $10
	db $ff, $7f, $16, $7d, $11, $7c, $84, $10
	db $ff, $7f, $2c, $77, $00, $55, $84, $10
	db $ff, $7f, $80, $46, $80, $2d, $84, $10
	db $ff, $7f, $60, $5b, $80, $46, $84, $10
	db $4a, $7e, $ff, $4a, $38, $19, $00, $00
	db $8a, $00, $bf, $76, $bf, $51, $d8, $28
	db $4a, $7e, $bf, $76, $bf, $51, $d8, $28

if def(VWF)
; Replace palettes 0, 1 7
; 0 - sakura wars orange + 2 blues
; 1 - 2 reds + flower pink
; 7 - 2 purples + subtitle blossom green
	db $ff, $7f, $1e, $02, $2c, $77, $00, $55
	db $ff, $7f, $7f, $4d, $3f, $4c, $1d, $28
	db $bf, $7e, $19, $7f, $b0, $59, $ff, $7f
	db $bf, $7e, $ff, $7f, $df, $5d, $a5, $30
	db $bf, $7e, $1a, $00, $0c, $00, $a5, $30
	db $00, $00, $10, $56, $d6, $38, $a5, $30
	db $bf, $7e, $ff, $7f, $38, $19, $00, $00
	db $ff, $7f, $80, $46, $16, $7d, $11, $7c
else
	db $bf, $7e, $16, $7d, $11, $7c, $5f, $4c
	db $bf, $7e, $60, $5b, $ff, $7f, $ff, $7f
	db $bf, $7e, $19, $7f, $b0, $59, $ff, $7f
	db $bf, $7e, $ff, $7f, $df, $5d, $a5, $30
	db $bf, $7e, $1a, $00, $0c, $00, $a5, $30
	db $00, $00, $10, $56, $d6, $38, $a5, $30
	db $bf, $7e, $ff, $7f, $38, $19, $00, $00
	db $bf, $7e, $7f, $57, $df, $2e, $1e, $02
endc


	

	jr   jr_0a3_6fb1                                 ; $6f4c: $18 $63

	sub  l                                           ; $6f4e: $95

jr_0a3_6f4f:
	ld   b, [hl]                                     ; $6f4f: $46
	or   b                                           ; $6f50: $b0
	dec  [hl]                                        ; $6f51: $35
	adc  e                                           ; $6f52: $8b
	dec  [hl]                                        ; $6f53: $35
	jr   @+$65                                       ; $6f54: $18 $63

	sub  l                                           ; $6f56: $95

jr_0a3_6f57:
	ld   b, [hl]                                     ; $6f57: $46
	ret  nc                                          ; $6f58: $d0

	ld   h, c                                        ; $6f59: $61
	adc  e                                           ; $6f5a: $8b

jr_0a3_6f5b:
	dec  [hl]                                        ; $6f5b: $35
	jr   @+$65                                       ; $6f5c: $18 $63

	ret  nc                                          ; $6f5e: $d0

	ld   h, c                                        ; $6f5f: $61
	call nc, $8b66                                   ; $6f60: $d4 $66 $8b
	dec  [hl]                                        ; $6f63: $35
	nop                                              ; $6f64: $00
	nop                                              ; $6f65: $00
	nop                                              ; $6f66: $00
	nop                                              ; $6f67: $00
	nop                                              ; $6f68: $00
	nop                                              ; $6f69: $00
	nop                                              ; $6f6a: $00
	nop                                              ; $6f6b: $00
	rst  $38                                         ; $6f6c: $ff
	ld   a, a                                        ; $6f6d: $7f
	nop                                              ; $6f6e: $00
	nop                                              ; $6f6f: $00
	nop                                              ; $6f70: $00
	nop                                              ; $6f71: $00
	and  l                                           ; $6f72: $a5
	inc  d                                           ; $6f73: $14
	rst  $38                                         ; $6f74: $ff
	ld   a, a                                        ; $6f75: $7f
	add  hl, de                                      ; $6f76: $19
	dec  sp                                          ; $6f77: $3b
	jp   nc, $2a29                                   ; $6f78: $d2 $29 $2a

	dec  [hl]                                        ; $6f7b: $35
	rst  $38                                         ; $6f7c: $ff
	ld   a, a                                        ; $6f7d: $7f
	add  hl, de                                      ; $6f7e: $19
	dec  sp                                          ; $6f7f: $3b
	ld   l, [hl]                                     ; $6f80: $6e
	ld   a, l                                        ; $6f81: $7d
	ld   a, [hl+]                                    ; $6f82: $2a
	dec  [hl]                                        ; $6f83: $35
	rst  $38                                         ; $6f84: $ff
	ld   a, a                                        ; $6f85: $7f
	ld   l, [hl]                                     ; $6f86: $6e
	ld   a, l                                        ; $6f87: $7d
	sub  d                                           ; $6f88: $92
	halt                                             ; $6f89: $76
	ld   a, [hl+]                                    ; $6f8a: $2a
	dec  [hl]                                        ; $6f8b: $35
	db   $ed                                         ; $6f8c: $ed
	ld   sp, $7fff                                   ; $6f8d: $31 $ff $7f
	rst  $38                                         ; $6f90: $ff
	scf                                              ; $6f91: $37
	and  l                                           ; $6f92: $a5
	inc  d                                           ; $6f93: $14
	db   $ed                                         ; $6f94: $ed
	ld   sp, $4e7f                                   ; $6f95: $31 $7f $4e
	rst  $38                                         ; $6f98: $ff
	scf                                              ; $6f99: $37
	and  l                                           ; $6f9a: $a5
	inc  d                                           ; $6f9b: $14
	nop                                              ; $6f9c: $00
	nop                                              ; $6f9d: $00
	nop                                              ; $6f9e: $00

jr_0a3_6f9f:
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
	ldh  [$03], a                                    ; $6fac: $e0 $03
	rst  $38                                         ; $6fae: $ff
	ld   a, a                                        ; $6faf: $7f
	rra                                              ; $6fb0: $1f

jr_0a3_6fb1:
	nop                                              ; $6fb1: $00
	nop                                              ; $6fb2: $00
	nop                                              ; $6fb3: $00
	rst  $38                                         ; $6fb4: $ff
	inc  bc                                          ; $6fb5: $03
	rst  $38                                         ; $6fb6: $ff
	ld   a, a                                        ; $6fb7: $7f
	ldh  [$7f], a                                    ; $6fb8: $e0 $7f
	nop                                              ; $6fba: $00
	nop                                              ; $6fbb: $00
	ld   e, a                                        ; $6fbc: $5f
	ld   l, d                                        ; $6fbd: $6a
	rst  $38                                         ; $6fbe: $ff
	ld   a, a                                        ; $6fbf: $7f
	ldh  a, [$3d]                                    ; $6fc0: $f0 $3d
	nop                                              ; $6fc2: $00
	nop                                              ; $6fc3: $00
	rst  $38                                         ; $6fc4: $ff
	ld   a, a                                        ; $6fc5: $7f
	ld   l, [hl]                                     ; $6fc6: $6e
	ld   a, l                                        ; $6fc7: $7d
	sub  d                                           ; $6fc8: $92
	halt                                             ; $6fc9: $76
	ld   l, [hl]                                     ; $6fca: $6e
	ld   a, l                                        ; $6fcb: $7d
	cp   a                                           ; $6fcc: $bf
	halt                                             ; $6fcd: $76
	ld   a, a                                        ; $6fce: $7f
	ld   c, l                                        ; $6fcf: $4d
	dec  e                                           ; $6fd0: $1d
	jr   z, jr_0a3_6f57                              ; $6fd1: $28 $84

	db   $10                                         ; $6fd3: $10
	cp   a                                           ; $6fd4: $bf
	halt                                             ; $6fd5: $76
	ld   d, $7d                                      ; $6fd6: $16 $7d
	ld   de, $847c                                   ; $6fd8: $11 $7c $84
	db   $10                                         ; $6fdb: $10
	cp   a                                           ; $6fdc: $bf
	halt                                             ; $6fdd: $76
	inc  l                                           ; $6fde: $2c
	ld   [hl], a                                     ; $6fdf: $77
	nop                                              ; $6fe0: $00
	ld   d, l                                        ; $6fe1: $55
	rst  $38                                         ; $6fe2: $ff
	ld   a, a                                        ; $6fe3: $7f
	cp   a                                           ; $6fe4: $bf
	halt                                             ; $6fe5: $76
	add  b                                           ; $6fe6: $80
	ld   b, [hl]                                     ; $6fe7: $46
	add  b                                           ; $6fe8: $80
	dec  l                                           ; $6fe9: $2d
	rst  $38                                         ; $6fea: $ff
	ld   a, a                                        ; $6feb: $7f
	cp   a                                           ; $6fec: $bf
	halt                                             ; $6fed: $76
	ld   h, b                                        ; $6fee: $60
	ld   e, e                                        ; $6fef: $5b
	add  b                                           ; $6ff0: $80
	ld   b, [hl]                                     ; $6ff1: $46
	rst  $38                                         ; $6ff2: $ff
	ld   a, a                                        ; $6ff3: $7f
	rst  $38                                         ; $6ff4: $ff
	ld   a, a                                        ; $6ff5: $7f
	cp   a                                           ; $6ff6: $bf
	halt                                             ; $6ff7: $76
	cp   a                                           ; $6ff8: $bf
	ld   [bc], a                                     ; $6ff9: $02
	add  h                                           ; $6ffa: $84
	db   $10                                         ; $6ffb: $10
	rst  $38                                         ; $6ffc: $ff
	ld   a, a                                        ; $6ffd: $7f
	sub  $5a                                         ; $6ffe: $d6 $5a
	xor  l                                           ; $7000: $ad
	dec  [hl]                                        ; $7001: $35
	add  h                                           ; $7002: $84
	db   $10                                         ; $7003: $10
	rst  $38                                         ; $7004: $ff
	ld   a, a                                        ; $7005: $7f
	cp   a                                           ; $7006: $bf
	halt                                             ; $7007: $76
	nop                                              ; $7008: $00
	ld   d, l                                        ; $7009: $55
	add  h                                           ; $700a: $84
	db   $10                                         ; $700b: $10
	rst  $38                                         ; $700c: $ff
	ld   a, a                                        ; $700d: $7f
	ld   d, $7d                                      ; $700e: $16 $7d
	ld   de, $847c                                   ; $7010: $11 $7c $84
	db   $10                                         ; $7013: $10
	rst  $38                                         ; $7014: $ff
	ld   a, a                                        ; $7015: $7f
	ld   a, a                                        ; $7016: $7f
	ld   c, l                                        ; $7017: $4d
	dec  e                                           ; $7018: $1d
	jr   z, jr_0a3_6f9f                              ; $7019: $28 $84

	db   $10                                         ; $701b: $10
	rst  $38                                         ; $701c: $ff
	ld   a, a                                        ; $701d: $7f
	add  hl, de                                      ; $701e: $19
	ld   a, a                                        ; $701f: $7f
	rst  JumpTable                                         ; $7020: $df
	ld   l, $1e                                      ; $7021: $2e $1e
	ld   [bc], a                                     ; $7023: $02
	rst  $38                                         ; $7024: $ff
	ld   a, a                                        ; $7025: $7f
	sub  h                                           ; $7026: $94
	ld   d, d                                        ; $7027: $52
	ld   [$a521], sp                                 ; $7028: $08 $21 $a5
	inc  d                                           ; $702b: $14
	rst  $38                                         ; $702c: $ff
	ld   a, a                                        ; $702d: $7f
	add  b                                           ; $702e: $80
	ld   b, [hl]                                     ; $702f: $46
	add  b                                           ; $7030: $80

jr_0a3_7031:
	dec  l                                           ; $7031: $2d
	rst  $38                                         ; $7032: $ff
	ld   a, a                                        ; $7033: $7f
	rst  $38                                         ; $7034: $ff
	ld   a, a                                        ; $7035: $7f
	rst  $38                                         ; $7036: $ff
	ld   a, a                                        ; $7037: $7f
	ccf                                              ; $7038: $3f
	ld   d, c                                        ; $7039: $51
	jr   jr_0a3_7060                                 ; $703a: $18 $24

	rst  $38                                         ; $703c: $ff
	ld   a, a                                        ; $703d: $7f
	rst  $38                                         ; $703e: $ff
	ld   a, a                                        ; $703f: $7f
	ld   b, l                                        ; $7040: $45
	ld   a, [hl]                                     ; $7041: $7e
	ld   b, b                                        ; $7042: $40
	ld   e, c                                        ; $7043: $59
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

jr_0a3_7060:
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
	xor  h                                           ; $7074: $ac
	ld   b, c                                        ; $7075: $41
	xor  $41                                         ; $7076: $ee $41
	rlca                                             ; $7078: $07
	ld   sp, $28c4                                   ; $7079: $31 $c4 $28
	xor  h                                           ; $707c: $ac
	ld   b, c                                        ; $707d: $41
	xor  $41                                         ; $707e: $ee $41
	call nz, $c428                                   ; $7080: $c4 $28 $c4
	jr   z, jr_0a3_7031                              ; $7083: $28 $ac

	ld   b, c                                        ; $7085: $41
	call nz, Call_0a3_4a28                           ; $7086: $c4 $28 $4a
	dec  l                                           ; $7089: $2d
	call nz, $ed28                                   ; $708a: $c4 $28 $ed
	ld   sp, $7fff                                   ; $708d: $31 $ff $7f
	rst  $38                                         ; $7090: $ff
	scf                                              ; $7091: $37
	and  l                                           ; $7092: $a5
	inc  d                                           ; $7093: $14
	db   $ed                                         ; $7094: $ed
	ld   sp, $2cbf                                   ; $7095: $31 $bf $2c
	rst  $38                                         ; $7098: $ff
	scf                                              ; $7099: $37
	and  l                                           ; $709a: $a5
	inc  d                                           ; $709b: $14
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
	ldh  [$03], a                                    ; $70ac: $e0 $03
	rst  $38                                         ; $70ae: $ff
	ld   a, a                                        ; $70af: $7f
	rra                                              ; $70b0: $1f
	nop                                              ; $70b1: $00
	nop                                              ; $70b2: $00
	nop                                              ; $70b3: $00
	rst  $38                                         ; $70b4: $ff
	inc  bc                                          ; $70b5: $03
	rst  $38                                         ; $70b6: $ff
	ld   a, a                                        ; $70b7: $7f
	ldh  [$7f], a                                    ; $70b8: $e0 $7f
	nop                                              ; $70ba: $00
	nop                                              ; $70bb: $00
	ld   e, a                                        ; $70bc: $5f
	ld   l, d                                        ; $70bd: $6a
	rst  $38                                         ; $70be: $ff
	ld   a, a                                        ; $70bf: $7f
	ldh  a, [$3d]                                    ; $70c0: $f0 $3d
	nop                                              ; $70c2: $00
	nop                                              ; $70c3: $00
	or   $7f                                         ; $70c4: $f6 $7f
	sub  d                                           ; $70c6: $92
	ld   h, $92                                      ; $70c7: $26 $92
	ld   h, $a9                                      ; $70c9: $26 $a9
	ld   d, l                                        ; $70cb: $55
	jr   jr_0a3_7131                                 ; $70cc: $18 $63

	sub  l                                           ; $70ce: $95
	ld   b, [hl]                                     ; $70cf: $46
	or   b                                           ; $70d0: $b0
	dec  [hl]                                        ; $70d1: $35
	adc  e                                           ; $70d2: $8b
	dec  [hl]                                        ; $70d3: $35
	jr   @+$65                                       ; $70d4: $18 $63

	sub  l                                           ; $70d6: $95
	ld   b, [hl]                                     ; $70d7: $46
	ret  nc                                          ; $70d8: $d0

	ld   h, c                                        ; $70d9: $61
	adc  e                                           ; $70da: $8b
	dec  [hl]                                        ; $70db: $35
	jr   @+$65                                       ; $70dc: $18 $63

	ret  nc                                          ; $70de: $d0

	ld   h, c                                        ; $70df: $61
	call nc, $8b66                                   ; $70e0: $d4 $66 $8b
	dec  [hl]                                        ; $70e3: $35
	nop                                              ; $70e4: $00
	nop                                              ; $70e5: $00
	nop                                              ; $70e6: $00
	nop                                              ; $70e7: $00
	nop                                              ; $70e8: $00
	nop                                              ; $70e9: $00
	nop                                              ; $70ea: $00
	nop                                              ; $70eb: $00
	rst  $38                                         ; $70ec: $ff
	ld   a, a                                        ; $70ed: $7f
	nop                                              ; $70ee: $00
	nop                                              ; $70ef: $00
	nop                                              ; $70f0: $00
	nop                                              ; $70f1: $00
	and  l                                           ; $70f2: $a5
	inc  d                                           ; $70f3: $14
	rst  $38                                         ; $70f4: $ff
	ld   a, a                                        ; $70f5: $7f
	add  hl, de                                      ; $70f6: $19
	dec  sp                                          ; $70f7: $3b
	jp   nc, $2a29                                   ; $70f8: $d2 $29 $2a

	dec  [hl]                                        ; $70fb: $35
	rst  $38                                         ; $70fc: $ff
	ld   a, a                                        ; $70fd: $7f
	add  hl, de                                      ; $70fe: $19
	dec  sp                                          ; $70ff: $3b
	ld   l, [hl]                                     ; $7100: $6e
	ld   a, l                                        ; $7101: $7d
	ld   a, [hl+]                                    ; $7102: $2a
	dec  [hl]                                        ; $7103: $35
	rst  $38                                         ; $7104: $ff

Jump_0a3_7105:
	ld   a, a                                        ; $7105: $7f
	ld   l, [hl]                                     ; $7106: $6e
	ld   a, l                                        ; $7107: $7d
	sub  d                                           ; $7108: $92
	halt                                             ; $7109: $76
	ld   a, [hl+]                                    ; $710a: $2a
	dec  [hl]                                        ; $710b: $35
	db   $ed                                         ; $710c: $ed
	ld   sp, $7fff                                   ; $710d: $31 $ff $7f
	rst  $38                                         ; $7110: $ff
	scf                                              ; $7111: $37
	and  l                                           ; $7112: $a5
	inc  d                                           ; $7113: $14
	db   $ed                                         ; $7114: $ed
	ld   sp, $4e7f                                   ; $7115: $31 $7f $4e
	rst  $38                                         ; $7118: $ff
	scf                                              ; $7119: $37
	and  l                                           ; $711a: $a5
	inc  d                                           ; $711b: $14
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
	ldh  [$03], a                                    ; $712c: $e0 $03
	rst  $38                                         ; $712e: $ff
	ld   a, a                                        ; $712f: $7f
	rra                                              ; $7130: $1f

jr_0a3_7131:
	nop                                              ; $7131: $00
	nop                                              ; $7132: $00
	nop                                              ; $7133: $00
	rst  $38                                         ; $7134: $ff
	inc  bc                                          ; $7135: $03
	rst  $38                                         ; $7136: $ff
	ld   a, a                                        ; $7137: $7f
	ldh  [$7f], a                                    ; $7138: $e0 $7f
	nop                                              ; $713a: $00
	nop                                              ; $713b: $00
	ld   e, a                                        ; $713c: $5f
	ld   l, d                                        ; $713d: $6a
	rst  $38                                         ; $713e: $ff
	ld   a, a                                        ; $713f: $7f
	ldh  a, [$3d]                                    ; $7140: $f0 $3d
	nop                                              ; $7142: $00
	nop                                              ; $7143: $00
	rst  $38                                         ; $7144: $ff
	ld   a, a                                        ; $7145: $7f
	ld   l, [hl]                                     ; $7146: $6e
	ld   a, l                                        ; $7147: $7d
	sub  d                                           ; $7148: $92
	halt                                             ; $7149: $76
	ld   l, [hl]                                     ; $714a: $6e
	ld   a, l                                        ; $714b: $7d
	rst  $38                                         ; $714c: $ff
	ld   a, a                                        ; $714d: $7f
	ld   a, a                                        ; $714e: $7f
	rrca                                             ; $714f: $0f
	ldh  [c], a                                      ; $7150: $e2
	inc  bc                                          ; $7151: $03
	nop                                              ; $7152: $00
	nop                                              ; $7153: $00
	rst  $38                                         ; $7154: $ff
	ld   a, a                                        ; $7155: $7f
	ld   a, a                                        ; $7156: $7f
	ld   [bc], a                                     ; $7157: $02
	adc  [hl]                                        ; $7158: $8e
	ld   bc, $0000                                   ; $7159: $01 $00 $00
	rst  $38                                         ; $715c: $ff
	ld   a, a                                        ; $715d: $7f
	ld   a, a                                        ; $715e: $7f
	rrca                                             ; $715f: $0f
	ldh  [c], a                                      ; $7160: $e2
	inc  bc                                          ; $7161: $03
	nop                                              ; $7162: $00
	nop                                              ; $7163: $00
	rst  $38                                         ; $7164: $ff
	ld   a, a                                        ; $7165: $7f
	ld   a, a                                        ; $7166: $7f
	rrca                                             ; $7167: $0f
	ldh  [c], a                                      ; $7168: $e2
	inc  bc                                          ; $7169: $03
	nop                                              ; $716a: $00
	nop                                              ; $716b: $00
	rst  $38                                         ; $716c: $ff
	ld   a, a                                        ; $716d: $7f
	ld   a, a                                        ; $716e: $7f
	rrca                                             ; $716f: $0f
	ldh  [c], a                                      ; $7170: $e2
	inc  bc                                          ; $7171: $03
	nop                                              ; $7172: $00
	nop                                              ; $7173: $00
	rst  $38                                         ; $7174: $ff
	ld   a, a                                        ; $7175: $7f
	ld   a, a                                        ; $7176: $7f
	rrca                                             ; $7177: $0f
	ldh  [c], a                                      ; $7178: $e2
	inc  bc                                          ; $7179: $03
	nop                                              ; $717a: $00
	nop                                              ; $717b: $00
	rst  $38                                         ; $717c: $ff
	ld   a, a                                        ; $717d: $7f
	ld   a, a                                        ; $717e: $7f
	rrca                                             ; $717f: $0f
	ldh  [c], a                                      ; $7180: $e2
	inc  bc                                          ; $7181: $03
	nop                                              ; $7182: $00
	nop                                              ; $7183: $00
	rst  $38                                         ; $7184: $ff
	ld   a, a                                        ; $7185: $7f
	ld   a, a                                        ; $7186: $7f
	rrca                                             ; $7187: $0f
	ldh  [c], a                                      ; $7188: $e2
	inc  bc                                          ; $7189: $03
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
	rst  $38                                         ; $71be: $ff
	ld   a, a                                        ; $71bf: $7f
	ld   a, a                                        ; $71c0: $7f
	ld   [bc], a                                     ; $71c1: $02
	nop                                              ; $71c2: $00
	nop                                              ; $71c3: $00
	rst  $38                                         ; $71c4: $ff
	ld   a, a                                        ; $71c5: $7f
	rra                                              ; $71c6: $1f
	nop                                              ; $71c7: $00
	nop                                              ; $71c8: $00
	ld   a, h                                        ; $71c9: $7c
	nop                                              ; $71ca: $00
	nop                                              ; $71cb: $00
	inc  l                                           ; $71cc: $2c
	nop                                              ; $71cd: $00
	add  b                                           ; $71ce: $80
	rst  $38                                         ; $71cf: $ff
	add  b                                           ; $71d0: $80
	nop                                              ; $71d1: $00
	add  d                                           ; $71d2: $82
	rst  $38                                         ; $71d3: $ff
	add  b                                           ; $71d4: $80
	nop                                              ; $71d5: $00
	add  l                                           ; $71d6: $85
	rst  $38                                         ; $71d7: $ff
	nop                                              ; $71d8: $00
	cp   $80                                         ; $71d9: $fe $80
	nop                                              ; $71db: $00
	nop                                              ; $71dc: $00
	cp   $81                                         ; $71dd: $fe $81
	rst  $38                                         ; $71df: $ff
	add  b                                           ; $71e0: $80
	nop                                              ; $71e1: $00
	add  h                                           ; $71e2: $84
	rst  $38                                         ; $71e3: $ff
	nop                                              ; $71e4: $00
	nop                                              ; $71e5: $00
	add  c                                           ; $71e6: $81
	rst  $38                                         ; $71e7: $ff
	add  d                                           ; $71e8: $82
	ld   a, a                                        ; $71e9: $7f
	ld   a, [bc]                                     ; $71ea: $0a
	cp   a                                           ; $71eb: $bf
	ccf                                              ; $71ec: $3f
	sbc  a                                           ; $71ed: $9f
	rst  JumpTable                                         ; $71ee: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71ef: $cf
	rst  $28                                         ; $71f0: $ef
	rst  $20                                         ; $71f1: $e7
	rst  $30                                         ; $71f2: $f7
	add  hl, sp                                      ; $71f3: $39
	ld   bc, $8220                                   ; $71f4: $01 $20 $82
	ld   bc, $0081                                   ; $71f7: $01 $81 $00
	nop                                              ; $71fa: $00
	inc  e                                           ; $71fb: $1c
	add  b                                           ; $71fc: $80
	nop                                              ; $71fd: $00
	inc  bc                                          ; $71fe: $03
	ld   bc, $0105                                   ; $71ff: $01 $05 $01
	pop  bc                                          ; $7202: $c1
	add  c                                           ; $7203: $81
	or   b                                           ; $7204: $b0
	ld   b, $94                                      ; $7205: $06 $94
	or   b                                           ; $7207: $b0
	and  [hl]                                        ; $7208: $a6
	ld   a, b                                        ; $7209: $78
	ld   a, e                                        ; $720a: $7b
	db   $fc                                         ; $720b: $fc
	db   $fd                                         ; $720c: $fd
	add  h                                           ; $720d: $84
	ld   a, [hl]                                     ; $720e: $7e
	nop                                              ; $720f: $00
	rst  $38                                         ; $7210: $ff
	add  b                                           ; $7211: $80
	nop                                              ; $7212: $00
	nop                                              ; $7213: $00
	rst  $38                                         ; $7214: $ff
	add  b                                           ; $7215: $80
	ccf                                              ; $7216: $3f
	add  hl, bc                                      ; $7217: $09
	rra                                              ; $7218: $1f
	jr   jr_0a3_721b                                 ; $7219: $18 $00

jr_0a3_721b:
	rlca                                             ; $721b: $07
	inc  bc                                          ; $721c: $03
	add  e                                           ; $721d: $83
	ld   bc, $0041                                   ; $721e: $01 $41 $00
	ccf                                              ; $7221: $3f
	rst  $38                                         ; $7222: $ff
	nop                                              ; $7223: $00
	rst  $38                                         ; $7224: $ff
	nop                                              ; $7225: $00
	rst  $38                                         ; $7226: $ff
	nop                                              ; $7227: $00
	rst  $38                                         ; $7228: $ff
	nop                                              ; $7229: $00
	rst  $38                                         ; $722a: $ff
	nop                                              ; $722b: $00
	rst  $38                                         ; $722c: $ff
	nop                                              ; $722d: $00
	rst  $38                                         ; $722e: $ff
	nop                                              ; $722f: $00
	rst  $38                                         ; $7230: $ff
	nop                                              ; $7231: $00
	rst  $38                                         ; $7232: $ff
	nop                                              ; $7233: $00
	rst  $38                                         ; $7234: $ff
	nop                                              ; $7235: $00
	rst  $38                                         ; $7236: $ff
	nop                                              ; $7237: $00
	rst  $38                                         ; $7238: $ff
	nop                                              ; $7239: $00
	rst  $38                                         ; $723a: $ff
	nop                                              ; $723b: $00
	rst  $38                                         ; $723c: $ff
	nop                                              ; $723d: $00
	rst  $38                                         ; $723e: $ff
	nop                                              ; $723f: $00
	adc  [hl]                                        ; $7240: $8e
	nop                                              ; $7241: $00
	ld   sp, $0100                                   ; $7242: $31 $00 $01
	ldh  [$1f], a                                    ; $7245: $e0 $1f
	add  b                                           ; $7247: $80
	ccf                                              ; $7248: $3f
	add  b                                           ; $7249: $80
	ld   a, [hl]                                     ; $724a: $7e
	add  b                                           ; $724b: $80
	db   $fc                                         ; $724c: $fc
	add  b                                           ; $724d: $80
	ld   a, [$3a80]                                  ; $724e: $fa $80 $3a
	add  b                                           ; $7251: $80
	ld   d, $81                                      ; $7252: $16 $81
	rrca                                             ; $7254: $0f
	nop                                              ; $7255: $00
	ld   c, a                                        ; $7256: $4f
	add  e                                           ; $7257: $83
	ld   b, a                                        ; $7258: $47
	nop                                              ; $7259: $00
	ld   d, a                                        ; $725a: $57
	add  b                                           ; $725b: $80
	ld   d, [hl]                                     ; $725c: $56
	ld   [bc], a                                     ; $725d: $02
	ld   d, h                                        ; $725e: $54
	ld   d, l                                        ; $725f: $55
	ld   d, c                                        ; $7260: $51
	add  b                                           ; $7261: $80
	ld   d, e                                        ; $7262: $53
	adc  h                                           ; $7263: $8c
	ld   c, e                                        ; $7264: $4b
	add  b                                           ; $7265: $80
	ld   a, [bc]                                     ; $7266: $0a
	inc  b                                           ; $7267: $04
	nop                                              ; $7268: $00
	call $fd01                                       ; $7269: $cd $01 $fd
	ld   sp, $ff8a                                   ; $726c: $31 $8a $ff
	add  b                                           ; $726f: $80
	nop                                              ; $7270: $00
	add  b                                           ; $7271: $80
	db   $10                                         ; $7272: $10
	add  b                                           ; $7273: $80
	inc  l                                           ; $7274: $2c
	add  b                                           ; $7275: $80
	sbc  $80                                         ; $7276: $de $80
	cp   d                                           ; $7278: $ba
	add  b                                           ; $7279: $80
	inc  sp                                          ; $727a: $33
	add  b                                           ; $727b: $80
	rlca                                             ; $727c: $07
	add  b                                           ; $727d: $80
	rrca                                             ; $727e: $0f
	nop                                              ; $727f: $00
	nop                                              ; $7280: $00
	add  b                                           ; $7281: $80
	xor  l                                           ; $7282: $ad
	ld   b, $80                                      ; $7283: $06 $80
	ld   bc, $4ecf                                   ; $7285: $01 $cf $4e
	ld   c, a                                        ; $7288: $4f
	rrca                                             ; $7289: $0f
	ld   b, b                                        ; $728a: $40
	add  b                                           ; $728b: $80
	sbc  [hl]                                        ; $728c: $9e
	add  b                                           ; $728d: $80
	rrca                                             ; $728e: $0f
	add  b                                           ; $728f: $80
	ld   c, a                                        ; $7290: $4f
	nop                                              ; $7291: $00
	rst  $38                                         ; $7292: $ff
	rst  $38                                         ; $7293: $ff
	nop                                              ; $7294: $00
	rst  $38                                         ; $7295: $ff
	nop                                              ; $7296: $00
	rst  $38                                         ; $7297: $ff
	nop                                              ; $7298: $00
	rst  $38                                         ; $7299: $ff
	nop                                              ; $729a: $00
	rst  $38                                         ; $729b: $ff
	nop                                              ; $729c: $00
	rst  $38                                         ; $729d: $ff
	nop                                              ; $729e: $00
	rst  $38                                         ; $729f: $ff
	nop                                              ; $72a0: $00
	rst  $38                                         ; $72a1: $ff
	nop                                              ; $72a2: $00
	rst  $38                                         ; $72a3: $ff
	nop                                              ; $72a4: $00
	rst  $38                                         ; $72a5: $ff
	nop                                              ; $72a6: $00
	rst  $38                                         ; $72a7: $ff
	nop                                              ; $72a8: $00
	rst  $38                                         ; $72a9: $ff
	nop                                              ; $72aa: $00
	rst  $38                                         ; $72ab: $ff
	nop                                              ; $72ac: $00
	rst  $38                                         ; $72ad: $ff
	nop                                              ; $72ae: $00
	rst  $38                                         ; $72af: $ff
	nop                                              ; $72b0: $00
	adc  [hl]                                        ; $72b1: $8e
	nop                                              ; $72b2: $00
	nop                                              ; $72b3: $00
	add  hl, bc                                      ; $72b4: $09
	inc  b                                           ; $72b5: $04
	add  b                                           ; $72b6: $80
	add  c                                           ; $72b7: $81
	add  d                                           ; $72b8: $82
	add  e                                           ; $72b9: $83
	nop                                              ; $72ba: $00
	daa                                              ; $72bb: $27
	ld   b, $84                                      ; $72bc: $06 $84
	add  l                                           ; $72be: $85
	add  [hl]                                        ; $72bf: $86
	add  a                                           ; $72c0: $87
	adc  b                                           ; $72c1: $88
	adc  c                                           ; $72c2: $89
	nop                                              ; $72c3: $00
	ld   b, [hl]                                     ; $72c4: $46
	ld   [$8b8a], sp                                 ; $72c5: $08 $8a $8b
	adc  h                                           ; $72c8: $8c
	adc  l                                           ; $72c9: $8d
	adc  [hl]                                        ; $72ca: $8e
	adc  a                                           ; $72cb: $8f
	sub  b                                           ; $72cc: $90
	sub  c                                           ; $72cd: $91
	nop                                              ; $72ce: $00
	ld   h, l                                        ; $72cf: $65
	add  hl, bc                                      ; $72d0: $09
	sub  d                                           ; $72d1: $92
	sub  e                                           ; $72d2: $93
	sub  h                                           ; $72d3: $94
	sub  l                                           ; $72d4: $95
	sub  [hl]                                        ; $72d5: $96
	sub  a                                           ; $72d6: $97
	sbc  b                                           ; $72d7: $98
	sbc  c                                           ; $72d8: $99
	sbc  d                                           ; $72d9: $9a
	nop                                              ; $72da: $00
	add  l                                           ; $72db: $85
	add  hl, bc                                      ; $72dc: $09
	sbc  e                                           ; $72dd: $9b
	sbc  h                                           ; $72de: $9c
	sbc  l                                           ; $72df: $9d
	sbc  [hl]                                        ; $72e0: $9e
	sbc  a                                           ; $72e1: $9f
	sbc  a                                           ; $72e2: $9f
	and  b                                           ; $72e3: $a0
	and  c                                           ; $72e4: $a1
	and  d                                           ; $72e5: $a2
	nop                                              ; $72e6: $00
	and  [hl]                                        ; $72e7: $a6
	ld   [$24a3], sp                                 ; $72e8: $08 $a3 $24
	and  l                                           ; $72eb: $a5
	and  [hl]                                        ; $72ec: $a6
	and  a                                           ; $72ed: $a7
	xor  b                                           ; $72ee: $a8
	xor  c                                           ; $72ef: $a9
	xor  d                                           ; $72f0: $aa
	nop                                              ; $72f1: $00
	add  $08                                         ; $72f2: $c6 $08
	xor  e                                           ; $72f4: $ab
	inc  l                                           ; $72f5: $2c
	dec  l                                           ; $72f6: $2d
	xor  [hl]                                        ; $72f7: $ae
	xor  a                                           ; $72f8: $af
	or   b                                           ; $72f9: $b0
	ld   sp, $0032                                   ; $72fa: $31 $32 $00
	and  $08                                         ; $72fd: $e6 $08
	inc  sp                                          ; $72ff: $33
	inc  [hl]                                        ; $7300: $34
	dec  [hl]                                        ; $7301: $35
	ld   [hl], $37                                   ; $7302: $36 $37
	cp   b                                           ; $7304: $b8
	add  hl, sp                                      ; $7305: $39
	ld   a, [hl-]                                    ; $7306: $3a
	ld   bc, $0707                                   ; $7307: $01 $07 $07
	dec  sp                                          ; $730a: $3b
	inc  a                                           ; $730b: $3c
	dec  a                                           ; $730c: $3d
	ld   a, $bf                                      ; $730d: $3e $bf
	ld   b, b                                        ; $730f: $40
	ld   b, c                                        ; $7310: $41
	ld   bc, $0727                                   ; $7311: $01 $27 $07
	ld   b, d                                        ; $7314: $42
	ld   b, e                                        ; $7315: $43
	call nz, Call_0a3_46c5                           ; $7316: $c4 $c5 $46
	ld   b, a                                        ; $7319: $47
	ld   c, b                                        ; $731a: $48
	rst  $38                                         ; $731b: $ff
	ld   a, [de]                                     ; $731c: $1a
	nop                                              ; $731d: $00
	rlca                                             ; $731e: $07
	jr   nc, jr_0a3_7321                             ; $731f: $30 $00

jr_0a3_7321:
	ld   a, a                                        ; $7321: $7f
	jr   nc, jr_0a3_7333                             ; $7322: $30 $0f

	cpl                                              ; $7324: $2f
	ld   a, a                                        ; $7325: $7f
	rra                                              ; $7326: $1f
	add  b                                           ; $7327: $80
	rla                                              ; $7328: $17
	ld   de, $1f1d                                   ; $7329: $11 $1d $1f
	ld   a, [de]                                     ; $732c: $1a
	dec  e                                           ; $732d: $1d
	dec  l                                           ; $732e: $2d
	rrca                                             ; $732f: $0f
	daa                                              ; $7330: $27
	nop                                              ; $7331: $00
	ld   d, a                                        ; $7332: $57

jr_0a3_7333:
	scf                                              ; $7333: $37
	cpl                                              ; $7334: $2f
	rrca                                             ; $7335: $0f
	ld   l, a                                        ; $7336: $6f
	rrca                                             ; $7337: $0f
	ld   l, a                                        ; $7338: $6f
	rrca                                             ; $7339: $0f
	rra                                              ; $733a: $1f
	ccf                                              ; $733b: $3f
	add  b                                           ; $733c: $80
	jr   nc, @+$0b                                   ; $733d: $30 $09

	and  b                                           ; $733f: $a0
	nop                                              ; $7340: $00
	sbc  a                                           ; $7341: $9f
	nop                                              ; $7342: $00
	ldh  a, [$60]                                    ; $7343: $f0 $60
	add  b                                           ; $7345: $80
	and  b                                           ; $7346: $a0
	ldh  a, [$c0]                                    ; $7347: $f0 $c0
	add  b                                           ; $7349: $80
	ld   b, b                                        ; $734a: $40
	add  d                                           ; $734b: $82
	ret  nz                                          ; $734c: $c0

	dec  c                                           ; $734d: $0d
	and  b                                           ; $734e: $a0
	add  b                                           ; $734f: $80
	jr   nz, jr_0a3_7352                             ; $7350: $20 $00

jr_0a3_7352:
	ld   d, b                                        ; $7352: $50
	ld   h, b                                        ; $7353: $60
	and  b                                           ; $7354: $a0
	add  b                                           ; $7355: $80
	or   b                                           ; $7356: $b0
	add  b                                           ; $7357: $80
	or   b                                           ; $7358: $b0
	add  b                                           ; $7359: $80
	ret  nz                                          ; $735a: $c0

	ldh  [$80], a                                    ; $735b: $e0 $80
	ld   h, b                                        ; $735d: $60
	ld   [bc], a                                     ; $735e: $02
	jr   z, jr_0a3_7361                              ; $735f: $28 $00

jr_0a3_7361:
	ld   hl, sp-$01                                  ; $7361: $f8 $ff
	nop                                              ; $7363: $00
	rst  $38                                         ; $7364: $ff
	nop                                              ; $7365: $00
	rst  $38                                         ; $7366: $ff
	nop                                              ; $7367: $00
	rst  $38                                         ; $7368: $ff
	nop                                              ; $7369: $00
	rst  $38                                         ; $736a: $ff
	nop                                              ; $736b: $00
	rst  $38                                         ; $736c: $ff
	nop                                              ; $736d: $00
	rst  $38                                         ; $736e: $ff
	nop                                              ; $736f: $00
	rst  $38                                         ; $7370: $ff
	nop                                              ; $7371: $00
	rst  $38                                         ; $7372: $ff
	nop                                              ; $7373: $00
	rst  $38                                         ; $7374: $ff
	nop                                              ; $7375: $00
	rst  $38                                         ; $7376: $ff
	nop                                              ; $7377: $00
	rst  $38                                         ; $7378: $ff
	nop                                              ; $7379: $00
	rst  $38                                         ; $737a: $ff
	nop                                              ; $737b: $00
	rst  $38                                         ; $737c: $ff
	nop                                              ; $737d: $00
	rst  $38                                         ; $737e: $ff
	nop                                              ; $737f: $00
	xor  [hl]                                        ; $7380: $ae
	nop                                              ; $7381: $00
	rra                                              ; $7382: $1f
	nop                                              ; $7383: $00
	inc  b                                           ; $7384: $04
	inc  d                                           ; $7385: $14
	nop                                              ; $7386: $00
	or   [hl]                                        ; $7387: $b6
	nop                                              ; $7388: $00
	db   $e3                                         ; $7389: $e3
	add  c                                           ; $738a: $81
	nop                                              ; $738b: $00
	nop                                              ; $738c: $00
	pop  bc                                          ; $738d: $c1
	add  c                                           ; $738e: $81
	nop                                              ; $738f: $00
	rlca                                             ; $7390: $07
	pop  bc                                          ; $7391: $c1
	nop                                              ; $7392: $00
	ld   a, $00                                      ; $7393: $3e $00
	ret                                              ; $7395: $c9


	nop                                              ; $7396: $00
	push de                                          ; $7397: $d5
	and  d                                           ; $7398: $a2
	add  b                                           ; $7399: $80
	ld   [$6304], sp                                 ; $739a: $08 $04 $63
	ld   [hl+], a                                    ; $739d: $22
	ret                                              ; $739e: $c9


	adc  b                                           ; $739f: $88
	cp   [hl]                                        ; $73a0: $be
	add  b                                           ; $73a1: $80
	sbc  h                                           ; $73a2: $9c
	ld   b, $80                                      ; $73a3: $06 $80
	sbc  b                                           ; $73a5: $98
	and  [hl]                                        ; $73a6: $a6
	cp   [hl]                                        ; $73a7: $be
	pop  bc                                          ; $73a8: $c1
	db   $e3                                         ; $73a9: $e3
	db   $dd                                         ; $73aa: $dd
	add  b                                           ; $73ab: $80
	adc  h                                           ; $73ac: $8c
	ld   [bc], a                                     ; $73ad: $02
	add  c                                           ; $73ae: $81
	nop                                              ; $73af: $00
	ret  nz                                          ; $73b0: $c0

	add  b                                           ; $73b1: $80
	nop                                              ; $73b2: $00
	rlca                                             ; $73b3: $07
	add  b                                           ; $73b4: $80
	db   $e3                                         ; $73b5: $e3
	nop                                              ; $73b6: $00
	add  b                                           ; $73b7: $80
	nop                                              ; $73b8: $00
	push de                                          ; $73b9: $d5
	nop                                              ; $73ba: $00
	db   $e3                                         ; $73bb: $e3
	add  l                                           ; $73bc: $85
	nop                                              ; $73bd: $00
	ld   b, $22                                      ; $73be: $06 $22
	nop                                              ; $73c0: $00
	inc  b                                           ; $73c1: $04
	db   $10                                         ; $73c2: $10
	pop  de                                          ; $73c3: $d1
	db   $10                                         ; $73c4: $10
	db   $e3                                         ; $73c5: $e3
	rst  $38                                         ; $73c6: $ff
	nop                                              ; $73c7: $00
	rst  $38                                         ; $73c8: $ff
	nop                                              ; $73c9: $00
	rst  $38                                         ; $73ca: $ff
	nop                                              ; $73cb: $00
	rst  $38                                         ; $73cc: $ff
	nop                                              ; $73cd: $00
	rst  $38                                         ; $73ce: $ff
	nop                                              ; $73cf: $00
	rst  $38                                         ; $73d0: $ff
	nop                                              ; $73d1: $00
	rst  $38                                         ; $73d2: $ff
	nop                                              ; $73d3: $00
	rst  $38                                         ; $73d4: $ff
	nop                                              ; $73d5: $00
	rst  $38                                         ; $73d6: $ff
	nop                                              ; $73d7: $00
	rst  $38                                         ; $73d8: $ff
	nop                                              ; $73d9: $00
	rst  $38                                         ; $73da: $ff
	nop                                              ; $73db: $00
	rst  $38                                         ; $73dc: $ff
	nop                                              ; $73dd: $00
	rst  $38                                         ; $73de: $ff
	nop                                              ; $73df: $00
	rst  $38                                         ; $73e0: $ff
	nop                                              ; $73e1: $00
	rst  $38                                         ; $73e2: $ff
	nop                                              ; $73e3: $00
	xor  [hl]                                        ; $73e4: $ae
	nop                                              ; $73e5: $00
	nop                                              ; $73e6: $00
	daa                                              ; $73e7: $27
	rlca                                             ; $73e8: $07
	add  b                                           ; $73e9: $80
	add  c                                           ; $73ea: $81
	add  d                                           ; $73eb: $82
	add  e                                           ; $73ec: $83
	add  h                                           ; $73ed: $84
	add  l                                           ; $73ee: $85
	add  [hl]                                        ; $73ef: $86
	nop                                              ; $73f0: $00
	ld   b, l                                        ; $73f1: $45
	ld   a, [bc]                                     ; $73f2: $0a
	add  a                                           ; $73f3: $87
	adc  b                                           ; $73f4: $88
	adc  c                                           ; $73f5: $89
	adc  d                                           ; $73f6: $8a
	adc  e                                           ; $73f7: $8b
	adc  h                                           ; $73f8: $8c
	adc  l                                           ; $73f9: $8d
	adc  [hl]                                        ; $73fa: $8e
	adc  a                                           ; $73fb: $8f
	sub  b                                           ; $73fc: $90
	nop                                              ; $73fd: $00
	ld   h, h                                        ; $73fe: $64
	dec  bc                                          ; $73ff: $0b
	sub  c                                           ; $7400: $91
	sub  d                                           ; $7401: $92
	sub  e                                           ; $7402: $93
	sub  h                                           ; $7403: $94
	sub  l                                           ; $7404: $95
	sub  [hl]                                        ; $7405: $96
	sub  a                                           ; $7406: $97
	sbc  b                                           ; $7407: $98
	sbc  c                                           ; $7408: $99
	sbc  d                                           ; $7409: $9a
	sbc  e                                           ; $740a: $9b
	nop                                              ; $740b: $00
	add  a                                           ; $740c: $87
	ld   b, $9c                                      ; $740d: $06 $9c
	sbc  l                                           ; $740f: $9d
	sbc  [hl]                                        ; $7410: $9e
	sbc  a                                           ; $7411: $9f
	and  b                                           ; $7412: $a0
	and  c                                           ; $7413: $a1
	nop                                              ; $7414: $00
	and  a                                           ; $7415: $a7
	ld   b, $a2                                      ; $7416: $06 $a2
	and  e                                           ; $7418: $a3
	and  h                                           ; $7419: $a4
	and  l                                           ; $741a: $a5
	and  [hl]                                        ; $741b: $a6
	and  a                                           ; $741c: $a7
	nop                                              ; $741d: $00
	add  $08                                         ; $741e: $c6 $08
	xor  b                                           ; $7420: $a8
	xor  c                                           ; $7421: $a9
	xor  d                                           ; $7422: $aa
	xor  e                                           ; $7423: $ab
	xor  h                                           ; $7424: $ac
	xor  l                                           ; $7425: $ad
	xor  [hl]                                        ; $7426: $ae
	xor  a                                           ; $7427: $af
	nop                                              ; $7428: $00
	and  $08                                         ; $7429: $e6 $08
	or   b                                           ; $742b: $b0
	or   c                                           ; $742c: $b1
	or   d                                           ; $742d: $b2
	or   e                                           ; $742e: $b3
	or   h                                           ; $742f: $b4
	or   l                                           ; $7430: $b5
	or   [hl]                                        ; $7431: $b6
	or   a                                           ; $7432: $b7

jr_0a3_7433:
	ld   bc, $0207                                   ; $7433: $01 $07 $02
	cp   b                                           ; $7436: $b8
	cp   c                                           ; $7437: $b9
	ld   bc, $020b                                   ; $7438: $01 $0b $02
	cp   d                                           ; $743b: $ba
	cp   e                                           ; $743c: $bb
	ld   bc, $0227                                   ; $743d: $01 $27 $02
	cp   h                                           ; $7440: $bc
	cp   l                                           ; $7441: $bd
	ld   bc, $022b                                   ; $7442: $01 $2b $02
	cp   [hl]                                        ; $7445: $be

jr_0a3_7446:
	cp   a                                           ; $7446: $bf
	rst  $38                                         ; $7447: $ff
	nop                                              ; $7448: $00
	add  hl, bc                                      ; $7449: $09
	inc  b                                           ; $744a: $04
	add  b                                           ; $744b: $80
	add  c                                           ; $744c: $81
	add  d                                           ; $744d: $82
	add  e                                           ; $744e: $83
	nop                                              ; $744f: $00
	jr   z, jr_0a3_7457                              ; $7450: $28 $05

	add  h                                           ; $7452: $84
	add  l                                           ; $7453: $85
	add  [hl]                                        ; $7454: $86
	add  a                                           ; $7455: $87
	adc  b                                           ; $7456: $88

jr_0a3_7457:
	nop                                              ; $7457: $00
	ld   c, c                                        ; $7458: $49

jr_0a3_7459:
	dec  b                                           ; $7459: $05
	adc  c                                           ; $745a: $89
	adc  d                                           ; $745b: $8a
	adc  e                                           ; $745c: $8b
	adc  h                                           ; $745d: $8c
	adc  l                                           ; $745e: $8d
	nop                                              ; $745f: $00
	ld   l, c                                        ; $7460: $69
	dec  b                                           ; $7461: $05
	adc  [hl]                                        ; $7462: $8e
	adc  a                                           ; $7463: $8f
	sub  b                                           ; $7464: $90
	sub  c                                           ; $7465: $91
	sub  d                                           ; $7466: $92

jr_0a3_7467:
	nop                                              ; $7467: $00
	adc  c                                           ; $7468: $89
	dec  b                                           ; $7469: $05
	sub  e                                           ; $746a: $93
	sub  h                                           ; $746b: $94
	sub  l                                           ; $746c: $95
	sub  [hl]                                        ; $746d: $96
	sub  a                                           ; $746e: $97
	nop                                              ; $746f: $00
	xor  c                                           ; $7470: $a9
	dec  b                                           ; $7471: $05
	sbc  b                                           ; $7472: $98
	sbc  c                                           ; $7473: $99
	ld   a, [de]                                     ; $7474: $1a
	dec  de                                          ; $7475: $1b
	sbc  h                                           ; $7476: $9c
	nop                                              ; $7477: $00
	rst  ToBoot                                         ; $7478: $c7
	rlca                                             ; $7479: $07
	sbc  l                                           ; $747a: $9d
	sbc  [hl]                                        ; $747b: $9e
	sbc  a                                           ; $747c: $9f
	jr   nz, jr_0a3_74a0                             ; $747d: $20 $21

	ld   [hl+], a                                    ; $747f: $22
	and  e                                           ; $7480: $a3
	nop                                              ; $7481: $00
	rst  $20                                         ; $7482: $e7
	rlca                                             ; $7483: $07
	inc  h                                           ; $7484: $24
	dec  h                                           ; $7485: $25
	ld   h, $27                                      ; $7486: $26 $27
	jr   z, jr_0a3_7433                              ; $7488: $28 $a9

	xor  d                                           ; $748a: $aa
	ld   bc, $0806                                   ; $748b: $01 $06 $08
	xor  e                                           ; $748e: $ab
	inc  l                                           ; $748f: $2c
	dec  l                                           ; $7490: $2d
	ld   l, $2f                                      ; $7491: $2e $2f
	jr   nc, jr_0a3_7446                             ; $7493: $30 $b1

	or   d                                           ; $7495: $b2
	ld   bc, $0826                                   ; $7496: $01 $26 $08

jr_0a3_7499:
	inc  sp                                          ; $7499: $33
	inc  [hl]                                        ; $749a: $34
	dec  [hl]                                        ; $749b: $35
	ld   [hl], $37                                   ; $749c: $36 $37
	jr   c, jr_0a3_7459                              ; $749e: $38 $b9

jr_0a3_74a0:
	cp   d                                           ; $74a0: $ba
	rst  $38                                         ; $74a1: $ff
	nop                                              ; $74a2: $00

jr_0a3_74a3:
	add  hl, bc                                      ; $74a3: $09
	inc  bc                                          ; $74a4: $03
	nop                                              ; $74a5: $00
	ld   bc, $0002                                   ; $74a6: $01 $02 $00
	jr   z, @+$06                                    ; $74a9: $28 $04

	inc  bc                                          ; $74ab: $03
	inc  b                                           ; $74ac: $04
	dec  b                                           ; $74ad: $05
	ld   b, $00                                      ; $74ae: $06 $00
	ld   c, b                                        ; $74b0: $48
	dec  b                                           ; $74b1: $05
	rlca                                             ; $74b2: $07
	ld   [$0a09], sp                                 ; $74b3: $08 $09 $0a
	dec  bc                                          ; $74b6: $0b
	nop                                              ; $74b7: $00
	ld   h, a                                        ; $74b8: $67
	ld   b, $0c                                      ; $74b9: $06 $0c
	dec  c                                           ; $74bb: $0d
	ld   c, $0f                                      ; $74bc: $0e $0f
	db   $10                                         ; $74be: $10
	ld   de, $8700                                   ; $74bf: $11 $00 $87
	dec  b                                           ; $74c2: $05
	ld   [de], a                                     ; $74c3: $12
	inc  de                                          ; $74c4: $13
	inc  d                                           ; $74c5: $14
	dec  d                                           ; $74c6: $15
	ld   d, $00                                      ; $74c7: $16 $00
	and  a                                           ; $74c9: $a7
	dec  b                                           ; $74ca: $05
	rla                                              ; $74cb: $17
	jr   jr_0a3_7467                                 ; $74cc: $18 $99

	ld   a, [de]                                     ; $74ce: $1a
	sbc  e                                           ; $74cf: $9b
	nop                                              ; $74d0: $00
	rst  ToBoot                                         ; $74d1: $c7
	ld   b, $1c                                      ; $74d2: $06 $1c
	sbc  l                                           ; $74d4: $9d
	sbc  [hl]                                        ; $74d5: $9e
	sbc  a                                           ; $74d6: $9f
	and  b                                           ; $74d7: $a0
	and  c                                           ; $74d8: $a1
	nop                                              ; $74d9: $00
	and  $07                                         ; $74da: $e6 $07
	ld   [hl+], a                                    ; $74dc: $22
	and  e                                           ; $74dd: $a3
	and  h                                           ; $74de: $a4
	and  l                                           ; $74df: $a5
	and  [hl]                                        ; $74e0: $a6
	and  a                                           ; $74e1: $a7
	xor  b                                           ; $74e2: $a8
	ld   bc, $0806                                   ; $74e3: $01 $06 $08
	xor  c                                           ; $74e6: $a9
	xor  d                                           ; $74e7: $aa
	xor  e                                           ; $74e8: $ab
	xor  h                                           ; $74e9: $ac
	xor  l                                           ; $74ea: $ad
	xor  [hl]                                        ; $74eb: $ae
	xor  a                                           ; $74ec: $af
	or   b                                           ; $74ed: $b0
	ld   bc, $0826                                   ; $74ee: $01 $26 $08
	or   c                                           ; $74f1: $b1
	or   d                                           ; $74f2: $b2
	or   e                                           ; $74f3: $b3
	or   h                                           ; $74f4: $b4
	or   l                                           ; $74f5: $b5
	or   [hl]                                        ; $74f6: $b6
	or   a                                           ; $74f7: $b7
	cp   b                                           ; $74f8: $b8
	rst  $38                                         ; $74f9: $ff
	nop                                              ; $74fa: $00
	ld   [$8004], sp                                 ; $74fb: $08 $04 $80
	add  c                                           ; $74fe: $81
	add  d                                           ; $74ff: $82
	add  e                                           ; $7500: $83
	nop                                              ; $7501: $00
	jr   z, jr_0a3_7508                              ; $7502: $28 $04

	add  h                                           ; $7504: $84
	add  l                                           ; $7505: $85
	add  [hl]                                        ; $7506: $86
	add  a                                           ; $7507: $87

jr_0a3_7508:
	nop                                              ; $7508: $00
	ld   c, b                                        ; $7509: $48
	dec  b                                           ; $750a: $05
	adc  b                                           ; $750b: $88
	jr   z, jr_0a3_7536                              ; $750c: $28 $28

	jr   z, jr_0a3_7499                              ; $750e: $28 $89

	nop                                              ; $7510: $00
	ld   l, b                                        ; $7511: $68
	dec  b                                           ; $7512: $05
	adc  d                                           ; $7513: $8a
	jr   z, @+$2a                                    ; $7514: $28 $28

	jr   z, jr_0a3_74a3                              ; $7516: $28 $8b

	nop                                              ; $7518: $00
	adc  b                                           ; $7519: $88
	inc  b                                           ; $751a: $04
	adc  h                                           ; $751b: $8c
	jr   z, jr_0a3_7546                              ; $751c: $28 $28

	jr   z, jr_0a3_7520                              ; $751e: $28 $00

jr_0a3_7520:
	adc  l                                           ; $7520: $8d
	ld   bc, $0028                                   ; $7521: $01 $28 $00
	and  a                                           ; $7524: $a7
	dec  b                                           ; $7525: $05
	adc  l                                           ; $7526: $8d
	adc  [hl]                                        ; $7527: $8e
	rrca                                             ; $7528: $0f
	sub  b                                           ; $7529: $90
	sub  c                                           ; $752a: $91
	nop                                              ; $752b: $00
	rst  ToBoot                                         ; $752c: $c7
	ld   b, $92                                      ; $752d: $06 $92
	sub  e                                           ; $752f: $93
	sub  h                                           ; $7530: $94
	dec  d                                           ; $7531: $15
	sub  [hl]                                        ; $7532: $96
	jr   z, jr_0a3_7535                              ; $7533: $28 $00

jr_0a3_7535:
	rst  $20                                         ; $7535: $e7

jr_0a3_7536:
	ld   b, $97                                      ; $7536: $06 $97
	sbc  b                                           ; $7538: $98
	sbc  c                                           ; $7539: $99
	ld   a, [de]                                     ; $753a: $1a
	dec  de                                          ; $753b: $1b
	add  hl, hl                                      ; $753c: $29
	ld   bc, $0607                                   ; $753d: $01 $07 $06
	sbc  h                                           ; $7540: $9c
	dec  e                                           ; $7541: $1d
	ld   e, $1f                                      ; $7542: $1e $1f
	jr   nz, jr_0a3_7570                             ; $7544: $20 $2a

jr_0a3_7546:
	ld   bc, $0727                                   ; $7546: $01 $27 $07
	and  c                                           ; $7549: $a1
	ld   [hl+], a                                    ; $754a: $22
	inc  hl                                          ; $754b: $23
	inc  h                                           ; $754c: $24
	dec  h                                           ; $754d: $25
	ld   h, $27                                      ; $754e: $26 $27
	rst  $38                                         ; $7550: $ff
	rra                                              ; $7551: $1f
	nop                                              ; $7552: $00
	add  l                                           ; $7553: $85
	nop                                              ; $7554: $00
	add  b                                           ; $7555: $80
	ld   bc, $0080                                   ; $7556: $01 $80 $00
	add  b                                           ; $7559: $80
	ld   bc, $0382                                   ; $755a: $01 $82 $03
	ld   [bc], a                                     ; $755d: $02
	dec  bc                                          ; $755e: $0b
	ld   a, [bc]                                     ; $755f: $0a
	ld   e, $80                                      ; $7560: $1e $80
	dec  d                                           ; $7562: $15
	ld   bc, $0eee                                   ; $7563: $01 $ee $0e
	add  b                                           ; $7566: $80
	jr   z, jr_0a3_756d                              ; $7567: $28 $04

	call nz, $3204                                   ; $7569: $c4 $04 $32
	nop                                              ; $756c: $00

jr_0a3_756d:
	dec  c                                           ; $756d: $0d
	adc  b                                           ; $756e: $88
	nop                                              ; $756f: $00

jr_0a3_7570:
	add  c                                           ; $7570: $81
	add  b                                           ; $7571: $80
	ld   b, $c0                                      ; $7572: $06 $c0
	ret  nc                                          ; $7574: $d0

	sub  b                                           ; $7575: $90
	ret  nc                                          ; $7576: $d0

	ret  c                                           ; $7577: $d8

	ld   hl, sp-$10                                  ; $7578: $f8 $f0
	add  c                                           ; $757a: $81
	ld   hl, sp+$08                                  ; $757b: $f8 $08
	ld   l, a                                        ; $757d: $6f
	ld   l, d                                        ; $757e: $6a
	and  e                                           ; $757f: $a3
	and  b                                           ; $7580: $a0
	ld   [bc], a                                     ; $7581: $02
	nop                                              ; $7582: $00
	inc  c                                           ; $7583: $0c
	nop                                              ; $7584: $00
	ldh  a, [rIE]                                    ; $7585: $f0 $ff
	nop                                              ; $7587: $00
	rst  $38                                         ; $7588: $ff
	nop                                              ; $7589: $00
	rst  $38                                         ; $758a: $ff
	nop                                              ; $758b: $00
	rst  $38                                         ; $758c: $ff
	nop                                              ; $758d: $00
	rst  $38                                         ; $758e: $ff
	nop                                              ; $758f: $00
	rst  $38                                         ; $7590: $ff
	nop                                              ; $7591: $00
	rst  $38                                         ; $7592: $ff
	nop                                              ; $7593: $00
	rst  $38                                         ; $7594: $ff
	nop                                              ; $7595: $00
	rst  $38                                         ; $7596: $ff
	nop                                              ; $7597: $00
	rst  $38                                         ; $7598: $ff
	nop                                              ; $7599: $00
	rst  $38                                         ; $759a: $ff
	nop                                              ; $759b: $00
	rst  $38                                         ; $759c: $ff
	nop                                              ; $759d: $00
	rst  $38                                         ; $759e: $ff
	nop                                              ; $759f: $00
	rst  $38                                         ; $75a0: $ff
	nop                                              ; $75a1: $00
	rst  $38                                         ; $75a2: $ff
	nop                                              ; $75a3: $00
	or   b                                           ; $75a4: $b0
	nop                                              ; $75a5: $00
	nop                                              ; $75a6: $00
	add  hl, bc                                      ; $75a7: $09
	ld   [bc], a                                     ; $75a8: $02
	nop                                              ; $75a9: $00
	ld   bc, $2900                                   ; $75aa: $01 $00 $29
	inc  bc                                          ; $75ad: $03
	ld   [bc], a                                     ; $75ae: $02
	inc  bc                                          ; $75af: $03
	inc  b                                           ; $75b0: $04
	nop                                              ; $75b1: $00
	ld   c, c                                        ; $75b2: $49
	inc  bc                                          ; $75b3: $03
	dec  b                                           ; $75b4: $05
	ld   b, $07                                      ; $75b5: $06 $07
	nop                                              ; $75b7: $00
	ld   l, c                                        ; $75b8: $69
	ld   [bc], a                                     ; $75b9: $02
	ld   [$0009], sp                                 ; $75ba: $08 $09 $00
	adc  c                                           ; $75bd: $89
	ld   [bc], a                                     ; $75be: $02
	ld   a, [bc]                                     ; $75bf: $0a
	dec  bc                                          ; $75c0: $0b
	nop                                              ; $75c1: $00
	and  [hl]                                        ; $75c2: $a6
	dec  b                                           ; $75c3: $05
	inc  c                                           ; $75c4: $0c
	dec  c                                           ; $75c5: $0d
	and  d                                           ; $75c6: $a2
	ld   c, $0f                                      ; $75c7: $0e $0f
	nop                                              ; $75c9: $00
	add  $07                                         ; $75ca: $c6 $07
	db   $10                                         ; $75cc: $10
	ld   de, $a2a2                                   ; $75cd: $11 $a2 $a2
	ld   [de], a                                     ; $75d0: $12
	sub  e                                           ; $75d1: $93
	sub  h                                           ; $75d2: $94
	nop                                              ; $75d3: $00
	and  $01                                         ; $75d4: $e6 $01
	sub  l                                           ; $75d6: $95
	nop                                              ; $75d7: $00
	add  sp, $04                                     ; $75d8: $e8 $04
	sub  [hl]                                        ; $75da: $96
	and  d                                           ; $75db: $a2
	rla                                              ; $75dc: $17
	jr   jr_0a3_75df                                 ; $75dd: $18 $00

jr_0a3_75df:
	db   $ed                                         ; $75df: $ed
	ld   bc, $0199                                   ; $75e0: $01 $99 $01
	ld   [$9a04], sp                                 ; $75e3: $08 $04 $9a
	sbc  e                                           ; $75e6: $9b
	and  d                                           ; $75e7: $a2
	and  d                                           ; $75e8: $a2
	ld   bc, $010e                                   ; $75e9: $01 $0e $01
	sbc  h                                           ; $75ec: $9c
	ld   bc, $0428                                   ; $75ed: $01 $28 $04
	sbc  l                                           ; $75f0: $9d
	sbc  [hl]                                        ; $75f1: $9e
	sbc  a                                           ; $75f2: $9f
	and  b                                           ; $75f3: $a0
	ld   bc, $012e                                   ; $75f4: $01 $2e $01
	and  c                                           ; $75f7: $a1
	rst  $38                                         ; $75f8: $ff
	rst  $38                                         ; $75f9: $ff
	ld   a, a                                        ; $75fa: $7f
	ld   e, a                                        ; $75fb: $5f
	ld   c, $ed                                      ; $75fc: $0e $ed
	db   $10                                         ; $75fe: $10
	ld   b, l                                        ; $75ff: $45
	db   $10                                         ; $7600: $10
	rst  $38                                         ; $7601: $ff
	ld   a, a                                        ; $7602: $7f
	db   $fc                                         ; $7603: $fc
	ccf                                              ; $7604: $3f
	ld   a, e                                        ; $7605: $7b
	nop                                              ; $7606: $00
	ld   b, l                                        ; $7607: $45
	db   $10                                         ; $7608: $10
	rst  $38                                         ; $7609: $ff
	ld   a, a                                        ; $760a: $7f
	ld   e, a                                        ; $760b: $5f
	ld   c, $fc                                      ; $760c: $0e $fc
	ccf                                              ; $760e: $3f
	ld   b, l                                        ; $760f: $45
	db   $10                                         ; $7610: $10
	rst  $38                                         ; $7611: $ff
	ld   a, a                                        ; $7612: $7f
	ld   e, a                                        ; $7613: $5f
	ld   c, $0b                                      ; $7614: $0e $0b
	ld   c, h                                        ; $7616: $4c
	ld   b, l                                        ; $7617: $45
	db   $10                                         ; $7618: $10
	db   $fc                                         ; $7619: $fc
	ccf                                              ; $761a: $3f
	ld   a, e                                        ; $761b: $7b
	nop                                              ; $761c: $00
	db   $ed                                         ; $761d: $ed
	db   $10                                         ; $761e: $10
	ld   b, l                                        ; $761f: $45
	db   $10                                         ; $7620: $10
	rst  $38                                         ; $7621: $ff
	ld   a, a                                        ; $7622: $7f
	ld   l, a                                        ; $7623: $6f
	halt                                             ; $7624: $76
	db   $ec                                         ; $7625: $ec
	ld   h, l                                        ; $7626: $65
	ld   b, l                                        ; $7627: $45
	db   $10                                         ; $7628: $10
	rst  $38                                         ; $7629: $ff
	ld   a, a                                        ; $762a: $7f
	ld   l, e                                        ; $762b: $6b
	add  hl, hl                                      ; $762c: $29
	add  sp, $1c                                     ; $762d: $e8 $1c
	ld   b, l                                        ; $762f: $45
	db   $10                                         ; $7630: $10
	rst  $38                                         ; $7631: $ff
	ld   a, a                                        ; $7632: $7f
	rst  $38                                         ; $7633: $ff
	ld   a, a                                        ; $7634: $7f
	inc  d                                           ; $7635: $14
	nop                                              ; $7636: $00
	ld   b, l                                        ; $7637: $45
	stop                                             ; $7638: $10 $00
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
	rst  $38                                         ; $7649: $ff
	ld   a, a                                        ; $764a: $7f
	ld   e, c                                        ; $764b: $59
	ld   c, e                                        ; $764c: $4b
	call nc, $0b39                                   ; $764d: $d4 $39 $0b
	add  hl, hl                                      ; $7650: $29
	rst  $38                                         ; $7651: $ff
	ld   a, a                                        ; $7652: $7f
	call nc, $7b39                                   ; $7653: $d4 $39 $7b

jr_0a3_7656:
	ld   hl, $20f0                                   ; $7656: $21 $f0 $20
	rst  $38                                         ; $7659: $ff
	ld   a, a                                        ; $765a: $7f
	ld   e, l                                        ; $765b: $5d
	ccf                                              ; $765c: $3f
	ld   l, a                                        ; $765d: $6f

jr_0a3_765e:
	ld   e, [hl]                                     ; $765e: $5e
	dec  bc                                          ; $765f: $0b
	add  hl, hl                                      ; $7660: $29
	rst  $38                                         ; $7661: $ff
	ld   a, a                                        ; $7662: $7f
	sbc  d                                           ; $7663: $9a
	add  hl, de                                      ; $7664: $19
	ld   c, l                                        ; $7665: $4d
	ld   hl, $0c86                                   ; $7666: $21 $86 $0c
	rst  $38                                         ; $7669: $ff
	ld   a, a                                        ; $766a: $7f
	ld   c, l                                        ; $766b: $4d
	ld   hl, $7e8a                                   ; $766c: $21 $8a $7e
	add  [hl]                                        ; $766f: $86
	inc  c                                           ; $7670: $0c
	rst  $38                                         ; $7671: $ff
	ld   a, a                                        ; $7672: $7f
	rst  $38                                         ; $7673: $ff
	inc  sp                                          ; $7674: $33
	rst  $30                                         ; $7675: $f7
	ld   a, [de]                                     ; $7676: $1a
	and  [hl]                                        ; $7677: $a6
	ld   [$7fff], sp                                 ; $7678: $08 $ff $7f
	rst  $38                                         ; $767b: $ff
	ld   a, a                                        ; $767c: $7f
	ld   [$a627], a                                  ; $767d: $ea $27 $a6
	ld   [$7fff], sp                                 ; $7680: $08 $ff $7f
	dec  hl                                          ; $7683: $2b
	dec  e                                           ; $7684: $1d
	sbc  d                                           ; $7685: $9a
	add  hl, de                                      ; $7686: $19
	and  [hl]                                        ; $7687: $a6
	ld   [$7fff], sp                                 ; $7688: $08 $ff $7f
	rst  $38                                         ; $768b: $ff
	ld   a, a                                        ; $768c: $7f
	adc  d                                           ; $768d: $8a
	ld   a, [hl]                                     ; $768e: $7e
	and  [hl]                                        ; $768f: $a6
	ld   [$7fff], sp                                 ; $7690: $08 $ff $7f
	rst  $38                                         ; $7693: $ff
	ld   d, c                                        ; $7694: $51
	ld   e, l                                        ; $7695: $5d
	ld   c, c                                        ; $7696: $49
	nop                                              ; $7697: $00
	nop                                              ; $7698: $00
	rst  $38                                         ; $7699: $ff
	ld   a, a                                        ; $769a: $7f
	ld   e, a                                        ; $769b: $5f
	ld   c, $79                                      ; $769c: $0e $79
	inc  b                                           ; $769e: $04
	and  [hl]                                        ; $769f: $a6
	ld   [$7fff], sp                                 ; $76a0: $08 $ff $7f
	ld   e, a                                        ; $76a3: $5f
	ld   c, $ff                                      ; $76a4: $0e $ff
	ccf                                              ; $76a6: $3f
	ret  z                                           ; $76a7: $c8

	jr   @+$01                                       ; $76a8: $18 $ff

	ld   a, a                                        ; $76aa: $7f
	rst  $38                                         ; $76ab: $ff
	ccf                                              ; $76ac: $3f
	jp   hl                                          ; $76ad: $e9


	jr   z, jr_0a3_7656                              ; $76ae: $28 $a6

	ld   [$26f7], sp                                 ; $76b0: $08 $f7 $26
	rst  $38                                         ; $76b3: $ff
	ccf                                              ; $76b4: $3f
	jp   hl                                          ; $76b5: $e9


	jr   z, jr_0a3_765e                              ; $76b6: $28 $a6

	ld   [$7fff], sp                                 ; $76b8: $08 $ff $7f
	ld   e, a                                        ; $76bb: $5f
	ld   c, $f7                                      ; $76bc: $0e $f7
	ld   h, $a6                                      ; $76be: $26 $a6
	ld   [$7fff], sp                                 ; $76c0: $08 $ff $7f
	ld   e, a                                        ; $76c3: $5f
	ld   c, $79                                      ; $76c4: $0e $79
	inc  b                                           ; $76c6: $04
	and  [hl]                                        ; $76c7: $a6
	ld   [$7fff], sp                                 ; $76c8: $08 $ff $7f
	ld   [hl], d                                     ; $76cb: $72
	ld   [bc], a                                     ; $76cc: $02
	adc  e                                           ; $76cd: $8b
	ld   bc, $7fff                                   ; $76ce: $01 $ff $7f
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
	rst  $38                                         ; $76e9: $ff
	ld   a, a                                        ; $76ea: $7f
	ld   b, [hl]                                     ; $76eb: $46
	ld   [$46b6], sp                                 ; $76ec: $08 $b6 $46
	inc  c                                           ; $76ef: $0c
	ld   hl, $7fff                                   ; $76f0: $21 $ff $7f
	ld   a, a                                        ; $76f3: $7f
	ld   c, e                                        ; $76f4: $4b
	ld   e, a                                        ; $76f5: $5f
	ld   c, $46                                      ; $76f6: $0e $46
	ld   [$7fff], sp                                 ; $76f8: $08 $ff $7f
	rst  JumpTable                                         ; $76fb: $df
	inc  c                                           ; $76fc: $0c
	ld   a, c                                        ; $76fd: $79
	inc  b                                           ; $76fe: $04
	ld   b, [hl]                                     ; $76ff: $46
	ld   [$46b6], sp                                 ; $7700: $08 $b6 $46
	rst  JumpTable                                         ; $7703: $df
	inc  c                                           ; $7704: $0c
	ld   e, a                                        ; $7705: $5f
	ld   c, $46                                      ; $7706: $0e $46
	ld   [$7fff], sp                                 ; $7708: $08 $ff $7f
	db   $ed                                         ; $770b: $ed
	ld   a, $09                                      ; $770c: $3e $09
	ld   a, $e3                                      ; $770e: $3e $e3
	nop                                              ; $7710: $00
	nop                                              ; $7711: $00
	nop                                              ; $7712: $00
	rst  JumpTable                                         ; $7713: $df
	inc  c                                           ; $7714: $0c
	ld   b, c                                        ; $7715: $41
	ld   [bc], a                                     ; $7716: $02
	ld   d, b                                        ; $7717: $50
	daa                                              ; $7718: $27
	nop                                              ; $7719: $00
	nop                                              ; $771a: $00
	sbc  b                                           ; $771b: $98
	ld   a, a                                        ; $771c: $7f
	rst  JumpTable                                         ; $771d: $df
	inc  c                                           ; $771e: $0c
	ld   e, a                                        ; $771f: $5f
	ld   c, $00                                      ; $7720: $0e $00
	nop                                              ; $7722: $00
	rst  $38                                         ; $7723: $ff
	ld   a, a                                        ; $7724: $7f
	or   [hl]                                        ; $7725: $b6
	ld   b, [hl]                                     ; $7726: $46
	inc  c                                           ; $7727: $0c
	ld   hl, $0000                                   ; $7728: $21 $00 $00
	rra                                              ; $772b: $1f
	dec  de                                          ; $772c: $1b
	add  hl, bc                                      ; $772d: $09
	ld   a, $e3                                      ; $772e: $3e $e3
	nop                                              ; $7730: $00
	nop                                              ; $7731: $00
	nop                                              ; $7732: $00
	nop                                              ; $7733: $00
	nop                                              ; $7734: $00
	nop                                              ; $7735: $00
	nop                                              ; $7736: $00
	nop                                              ; $7737: $00
	nop                                              ; $7738: $00
	rst  $38                                         ; $7739: $ff
	ld   a, a                                        ; $773a: $7f
	call $d400                                       ; $773b: $cd $00 $d4
	dec  e                                           ; $773e: $1d
	ld   h, [hl]                                     ; $773f: $66
	inc  b                                           ; $7740: $04
	rra                                              ; $7741: $1f
	inc  bc                                          ; $7742: $03
	ld   h, [hl]                                     ; $7743: $66
	inc  b                                           ; $7744: $04
	or   a                                           ; $7745: $b7
	dec  e                                           ; $7746: $1d
	rra                                              ; $7747: $1f
	dec  sp                                          ; $7748: $3b
	rst  $38                                         ; $7749: $ff
	ld   a, a                                        ; $774a: $7f
	adc  a                                           ; $774b: $8f
	jr   jr_0a3_77a3                                 ; $774c: $18 $55

	add  hl, sp                                      ; $774e: $39
	ld   h, [hl]                                     ; $774f: $66
	inc  b                                           ; $7750: $04
	rra                                              ; $7751: $1f
	inc  bc                                          ; $7752: $03
	ld   h, [hl]                                     ; $7753: $66
	inc  b                                           ; $7754: $04
	or   a                                           ; $7755: $b7
	dec  e                                           ; $7756: $1d
	rst  $38                                         ; $7757: $ff
	ld   a, a                                        ; $7758: $7f
	rst  $38                                         ; $7759: $ff
	ld   l, l                                        ; $775a: $6d
	adc  b                                           ; $775b: $88
	inc  b                                           ; $775c: $04
	rst  $38                                         ; $775d: $ff
	ld   a, a                                        ; $775e: $7f
	add  hl, de                                      ; $775f: $19
	ld   b, l                                        ; $7760: $45
	rst  $38                                         ; $7761: $ff
	ld   a, a                                        ; $7762: $7f
	jp   $a304                                       ; $7763: $c3 $04 $a3


	dec  b                                           ; $7766: $05
	inc  hl                                          ; $7767: $23
	nop                                              ; $7768: $00
	rst  $38                                         ; $7769: $ff
	ld   a, a                                        ; $776a: $7f
	adc  a                                           ; $776b: $8f
	jr   @+$01                                       ; $776c: $18 $ff

	inc  bc                                          ; $776e: $03
	inc  hl                                          ; $776f: $23
	nop                                              ; $7770: $00
	rst  $38                                         ; $7771: $ff
	ld   a, a                                        ; $7772: $7f
	ret  nc                                          ; $7773: $d0

	halt                                             ; $7774: $76
	rla                                              ; $7775: $17
	ld   h, $86                                      ; $7776: $26 $86
	ld   d, c                                        ; $7778: $51
	rst  $38                                         ; $7779: $ff
	ld   a, a                                        ; $777a: $7f
	rst  $38                                         ; $777b: $ff
	ld   l, l                                        ; $777c: $6d
	add  hl, de                                      ; $777d: $19
	ld   b, l                                        ; $777e: $45
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
	rst  $38                                         ; $7789: $ff
	ld   a, a                                        ; $778a: $7f
	dec  l                                           ; $778b: $2d
	ld   hl, $14c8                                   ; $778c: $21 $c8 $14
	ld   b, h                                        ; $778f: $44
	inc  b                                           ; $7790: $04
	ld   [hl-], a                                    ; $7791: $32
	dec  d                                           ; $7792: $15
	rra                                              ; $7793: $1f
	ld   c, d                                        ; $7794: $4a
	dec  e                                           ; $7795: $1d
	dec  l                                           ; $7796: $2d
	nop                                              ; $7797: $00
	ld   [$4a1f], sp                                 ; $7798: $08 $1f $4a
	ld   e, l                                        ; $779b: $5d
	ld   b, d                                        ; $779c: $42
	ld   [hl-], a                                    ; $779d: $32
	dec  d                                           ; $779e: $15
	nop                                              ; $779f: $00
	ld   [$425d], sp                                 ; $77a0: $08 $5d $42

jr_0a3_77a3:
	ld   l, a                                        ; $77a3: $6f
	db   $10                                         ; $77a4: $10
	rlca                                             ; $77a5: $07
	nop                                              ; $77a6: $00
	nop                                              ; $77a7: $00
	ld   [$6f59], sp                                 ; $77a8: $08 $59 $6f
	add  h                                           ; $77ab: $84
	jr   jr_0a3_77e0                                 ; $77ac: $18 $32

	dec  d                                           ; $77ae: $15
	nop                                              ; $77af: $00
	ld   [$7fe0], sp                                 ; $77b0: $08 $e0 $7f
	ld   l, a                                        ; $77b3: $6f
	db   $10                                         ; $77b4: $10
	rlca                                             ; $77b5: $07
	nop                                              ; $77b6: $00
	nop                                              ; $77b7: $00
	ld   [$7fe0], sp                                 ; $77b8: $08 $e0 $7f
	ld   e, c                                        ; $77bb: $59
	ld   l, a                                        ; $77bc: $6f
	add  h                                           ; $77bd: $84
	jr   jr_0a3_77c0                                 ; $77be: $18 $00

jr_0a3_77c0:
	ld   [$7fe0], sp                                 ; $77c0: $08 $e0 $7f
	rra                                              ; $77c3: $1f
	ld   c, d                                        ; $77c4: $4a
	dec  e                                           ; $77c5: $1d
	dec  l                                           ; $77c6: $2d
	nop                                              ; $77c7: $00
	ld   [$7fe0], sp                                 ; $77c8: $08 $e0 $7f
	ld   e, l                                        ; $77cb: $5d
	ld   b, d                                        ; $77cc: $42
	ld   [hl-], a                                    ; $77cd: $32
	dec  d                                           ; $77ce: $15
	nop                                              ; $77cf: $00
	ld   [$7fe0], sp                                 ; $77d0: $08 $e0 $7f
	ld   e, c                                        ; $77d3: $59
	ld   l, a                                        ; $77d4: $6f
	ld   [hl-], a                                    ; $77d5: $32
	dec  d                                           ; $77d6: $15
	nop                                              ; $77d7: $00
	ld   [$7fff], sp                                 ; $77d8: $08 $ff $7f
	db   $ed                                         ; $77db: $ed
	db   $10                                         ; $77dc: $10
	jp   c, Jump_0a3_4629                            ; $77dd: $da $29 $46

jr_0a3_77e0:
	ld   [$7fff], sp                                 ; $77e0: $08 $ff $7f
	sbc  a                                           ; $77e3: $9f
	ld   d, a                                        ; $77e4: $57
	ld   e, a                                        ; $77e5: $5f
	ld   c, $46                                      ; $77e6: $0e $46
	ld   [$7fff], sp                                 ; $77e8: $08 $ff $7f
	ld   h, a                                        ; $77eb: $67
	ld   b, d                                        ; $77ec: $42
	ld   c, c                                        ; $77ed: $49
	add  hl, hl                                      ; $77ee: $29
	ld   b, [hl]                                     ; $77ef: $46
	ld   [$7fff], sp                                 ; $77f0: $08 $ff $7f
	inc  h                                           ; $77f3: $24
	ld   e, [hl]                                     ; $77f4: $5e
	add  l                                           ; $77f5: $85
	dec  a                                           ; $77f6: $3d
	jr   nz, jr_0a3_7801                             ; $77f7: $20 $08

	nop                                              ; $77f9: $00
	nop                                              ; $77fa: $00
	nop                                              ; $77fb: $00
	nop                                              ; $77fc: $00
	nop                                              ; $77fd: $00
	nop                                              ; $77fe: $00
	nop                                              ; $77ff: $00
	nop                                              ; $7800: $00

jr_0a3_7801:
	nop                                              ; $7801: $00
	nop                                              ; $7802: $00
	ld   h, a                                        ; $7803: $67
	ld   b, d                                        ; $7804: $42
	ld   c, c                                        ; $7805: $49
	add  hl, hl                                      ; $7806: $29
	ld   e, a                                        ; $7807: $5f
	ld   c, $00                                      ; $7808: $0e $00
	nop                                              ; $780a: $00
	ld   h, a                                        ; $780b: $67
	ld   b, d                                        ; $780c: $42
	ld   c, c                                        ; $780d: $49
	add  hl, hl                                      ; $780e: $29
	db   $ed                                         ; $780f: $ed
	stop                                             ; $7810: $10 $00
	nop                                              ; $7812: $00
	ld   e, c                                        ; $7813: $59
	dec  h                                           ; $7814: $25
	sbc  a                                           ; $7815: $9f
	ld   d, a                                        ; $7816: $57
	db   $ed                                         ; $7817: $ed
	stop                                             ; $7818: $10 $00
	nop                                              ; $781a: $00
	inc  h                                           ; $781b: $24
	ld   e, [hl]                                     ; $781c: $5e
	add  l                                           ; $781d: $85
	dec  a                                           ; $781e: $3d
	jr   nz, jr_0a3_7829                             ; $781f: $20 $08

	nop                                              ; $7821: $00
	nop                                              ; $7822: $00
	nop                                              ; $7823: $00
	nop                                              ; $7824: $00
	nop                                              ; $7825: $00

jr_0a3_7826:
	nop                                              ; $7826: $00
	nop                                              ; $7827: $00
	nop                                              ; $7828: $00

jr_0a3_7829:
	rst  $38                                         ; $7829: $ff
	ld   a, a                                        ; $782a: $7f
	db   $fc                                         ; $782b: $fc
	ld   a, $b5                                      ; $782c: $3e $b5
	ld   hl, $190a                                   ; $782e: $21 $0a $19
	rst  $38                                         ; $7831: $ff
	ld   a, a                                        ; $7832: $7f
	push de                                          ; $7833: $d5
	ld   c, [hl]                                     ; $7834: $4e
	add  sp, $29                                     ; $7835: $e8 $29
	ld   a, [bc]                                     ; $7837: $0a
	add  hl, de                                      ; $7838: $19
	push de                                          ; $7839: $d5
	ld   c, [hl]                                     ; $783a: $4e
	db   $fc                                         ; $783b: $fc
	ld   a, $b5                                      ; $783c: $3e $b5

jr_0a3_783e:
	ld   hl, $190a                                   ; $783e: $21 $0a $19
	rst  $38                                         ; $7841: $ff
	ld   a, a                                        ; $7842: $7f
	ret  nc                                          ; $7843: $d0

	inc  d                                           ; $7844: $14
	xor  c                                           ; $7845: $a9
	inc  d                                           ; $7846: $14
	ld   h, [hl]                                     ; $7847: $66
	db   $10                                         ; $7848: $10
	dec  hl                                          ; $7849: $2b
	dec  e                                           ; $784a: $1d
	rst  $30                                         ; $784b: $f7
	ld   a, [de]                                     ; $784c: $1a
	rst  $38                                         ; $784d: $ff
	inc  sp                                          ; $784e: $33
	and  [hl]                                        ; $784f: $a6
	ld   [$7372], sp                                 ; $7850: $08 $72 $73
	ld   e, a                                        ; $7853: $5f
	ld   c, $ff                                      ; $7854: $0e $ff
	ld   a, a                                        ; $7856: $7f
	and  [hl]                                        ; $7857: $a6
	ld   [$7372], sp                                 ; $7858: $08 $72 $73
	rst  $30                                         ; $785b: $f7
	ld   a, [de]                                     ; $785c: $1a
	rst  $38                                         ; $785d: $ff
	inc  sp                                          ; $785e: $33
	and  [hl]                                        ; $785f: $a6
	ld   [$7372], sp                                 ; $7860: $08 $72 $73
	ret  nc                                          ; $7863: $d0

	ld   sp, $1d2b                                   ; $7864: $31 $2b $1d
	and  [hl]                                        ; $7867: $a6
	ld   [rRAMG], sp                                 ; $7868: $08 $00 $00
	nop                                              ; $786b: $00
	nop                                              ; $786c: $00
	nop                                              ; $786d: $00

jr_0a3_786e:
	nop                                              ; $786e: $00
	nop                                              ; $786f: $00
	nop                                              ; $7870: $00
	nop                                              ; $7871: $00
	nop                                              ; $7872: $00
	nop                                              ; $7873: $00
	nop                                              ; $7874: $00

jr_0a3_7875:
	nop                                              ; $7875: $00
	nop                                              ; $7876: $00
	nop                                              ; $7877: $00
	nop                                              ; $7878: $00
	rst  $38                                         ; $7879: $ff
	ld   a, a                                        ; $787a: $7f
	nop                                              ; $787b: $00
	ld   h, h                                        ; $787c: $64
	ld   h, c                                        ; $787d: $61
	jr   nz, jr_0a3_7826                             ; $787e: $20 $a6

	ld   [$7fff], sp                                 ; $7880: $08 $ff $7f
	nop                                              ; $7883: $00
	ld   h, h                                        ; $7884: $64
	ld   e, a                                        ; $7885: $5f
	ld   c, $a6                                      ; $7886: $0e $a6
	ld   [$7fff], sp                                 ; $7888: $08 $ff $7f
	nop                                              ; $788b: $00
	ld   h, h                                        ; $788c: $64
	ld   a, c                                        ; $788d: $79
	inc  b                                           ; $788e: $04
	and  [hl]                                        ; $788f: $a6
	ld   [$7fff], sp                                 ; $7890: $08 $ff $7f
	ld   e, a                                        ; $7893: $5f
	ld   c, $61                                      ; $7894: $0e $61
	jr   nz, jr_0a3_783e                             ; $7896: $20 $a6

	ld   [$7fff], sp                                 ; $7898: $08 $ff $7f
	rst  $38                                         ; $789b: $ff
	ccf                                              ; $789c: $3f
	rst  $30                                         ; $789d: $f7
	ld   h, $a6                                      ; $789e: $26 $a6
	ld   [$7ea4], sp                                 ; $78a0: $08 $a4 $7e
	ld   a, c                                        ; $78a3: $79
	inc  b                                           ; $78a4: $04
	ld   e, a                                        ; $78a5: $5f
	ld   c, $a6                                      ; $78a6: $0e $a6
	ld   [$7ea4], sp                                 ; $78a8: $08 $a4 $7e
	nop                                              ; $78ab: $00
	ld   h, h                                        ; $78ac: $64
	rst  $38                                         ; $78ad: $ff
	ccf                                              ; $78ae: $3f
	and  [hl]                                        ; $78af: $a6
	ld   [$7ea4], sp                                 ; $78b0: $08 $a4 $7e
	nop                                              ; $78b3: $00
	ld   h, h                                        ; $78b4: $64
	ld   a, c                                        ; $78b5: $79
	inc  b                                           ; $78b6: $04
	and  [hl]                                        ; $78b7: $a6
	ld   [$7ea4], sp                                 ; $78b8: $08 $a4 $7e
	nop                                              ; $78bb: $00
	ld   h, h                                        ; $78bc: $64
	ld   e, a                                        ; $78bd: $5f
	ld   c, $a6                                      ; $78be: $0e $a6
	ld   [$7ea4], sp                                 ; $78c0: $08 $a4 $7e
	nop                                              ; $78c3: $00
	ld   h, h                                        ; $78c4: $64
	ld   h, c                                        ; $78c5: $61
	jr   nz, jr_0a3_786e                             ; $78c6: $20 $a6

	ld   [$7fff], sp                                 ; $78c8: $08 $ff $7f
	ld   e, a                                        ; $78cb: $5f
	ld   c, $8b                                      ; $78cc: $0e $8b
	ld   bc, $0485                                   ; $78ce: $01 $85 $04
	rst  $38                                         ; $78d1: $ff
	ld   a, a                                        ; $78d2: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78d3: $cf
	inc  sp                                          ; $78d4: $33
	ld   e, d                                        ; $78d5: $5a
	nop                                              ; $78d6: $00
	add  l                                           ; $78d7: $85
	inc  b                                           ; $78d8: $04
	rst  $38                                         ; $78d9: $ff
	ld   a, a                                        ; $78da: $7f
	ld   e, a                                        ; $78db: $5f
	ld   c, $ab                                      ; $78dc: $0e $ab
	nop                                              ; $78de: $00
	add  l                                           ; $78df: $85
	inc  b                                           ; $78e0: $04
	rst  $38                                         ; $78e1: $ff
	ld   a, a                                        ; $78e2: $7f
	ld   [hl], a                                     ; $78e3: $77
	ld   c, a                                        ; $78e4: $4f
	ld   [hl-], a                                    ; $78e5: $32
	cpl                                              ; $78e6: $2f
	add  l                                           ; $78e7: $85
	inc  b                                           ; $78e8: $04
	rst  $38                                         ; $78e9: $ff
	ld   a, a                                        ; $78ea: $7f
	sub  [hl]                                        ; $78eb: $96
	ld   l, c                                        ; $78ec: $69
	or   e                                           ; $78ed: $b3
	jr   c, jr_0a3_7875                              ; $78ee: $38 $85

	inc  b                                           ; $78f0: $04
	rst  $38                                         ; $78f1: $ff
	ld   a, a                                        ; $78f2: $7f
	xor  e                                           ; $78f3: $ab
	nop                                              ; $78f4: $00
	adc  e                                           ; $78f5: $8b
	ld   bc, $0485                                   ; $78f6: $01 $85 $04
	rst  $38                                         ; $78f9: $ff
	ld   a, a                                        ; $78fa: $7f
	rst  $38                                         ; $78fb: $ff
	inc  bc                                          ; $78fc: $03
	sbc  b                                           ; $78fd: $98
	dec  b                                           ; $78fe: $05
	ld   e, a                                        ; $78ff: $5f
	ld   c, $ff                                      ; $7900: $0e $ff
	ld   a, a                                        ; $7902: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7903: $cf
	inc  sp                                          ; $7904: $33
	di                                               ; $7905: $f3
	ld   b, b                                        ; $7906: $40
	add  l                                           ; $7907: $85
	inc  b                                           ; $7908: $04
	rst  $38                                         ; $7909: $ff
	ld   a, a                                        ; $790a: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $790b: $cf
	inc  sp                                          ; $790c: $33
	ld   e, d                                        ; $790d: $5a
	nop                                              ; $790e: $00
	add  l                                           ; $790f: $85
	inc  b                                           ; $7910: $04
	rst  $38                                         ; $7911: $ff
	ld   a, a                                        ; $7912: $7f
	ld   e, a                                        ; $7913: $5f
	ld   c, $4f                                      ; $7914: $0e $4f
	dec  c                                           ; $7916: $0d
	add  l                                           ; $7917: $85
	inc  b                                           ; $7918: $04
	nop                                              ; $7919: $00
	add  hl, bc                                      ; $791a: $09
	inc  bc                                          ; $791b: $03
	add  b                                           ; $791c: $80
	xor  b                                           ; $791d: $a8
	add  c                                           ; $791e: $81
	nop                                              ; $791f: $00
	jr   z, jr_0a3_7926                              ; $7920: $28 $04

	add  d                                           ; $7922: $82
	add  e                                           ; $7923: $83
	add  h                                           ; $7924: $84
	xor  b                                           ; $7925: $a8

jr_0a3_7926:
	nop                                              ; $7926: $00
	ld   c, b                                        ; $7927: $48
	inc  b                                           ; $7928: $04
	add  l                                           ; $7929: $85
	add  [hl]                                        ; $792a: $86
	add  a                                           ; $792b: $87
	xor  b                                           ; $792c: $a8
	nop                                              ; $792d: $00
	ld   l, b                                        ; $792e: $68
	inc  b                                           ; $792f: $04
	xor  b                                           ; $7930: $a8
	xor  b                                           ; $7931: $a8
	adc  b                                           ; $7932: $88
	xor  b                                           ; $7933: $a8
	nop                                              ; $7934: $00
	adc  b                                           ; $7935: $88
	inc  b                                           ; $7936: $04
	adc  c                                           ; $7937: $89
	xor  b                                           ; $7938: $a8
	adc  d                                           ; $7939: $8a
	xor  b                                           ; $793a: $a8
	nop                                              ; $793b: $00
	xor  b                                           ; $793c: $a8
	inc  b                                           ; $793d: $04
	adc  e                                           ; $793e: $8b
	inc  c                                           ; $793f: $0c
	dec  c                                           ; $7940: $0d
	adc  [hl]                                        ; $7941: $8e
	nop                                              ; $7942: $00
	ret  z                                           ; $7943: $c8

	dec  b                                           ; $7944: $05
	adc  a                                           ; $7945: $8f
	sub  b                                           ; $7946: $90
	sub  c                                           ; $7947: $91
	sub  d                                           ; $7948: $92
	sub  e                                           ; $7949: $93
	nop                                              ; $794a: $00
	and  $07                                         ; $794b: $e6 $07
	sub  h                                           ; $794d: $94
	add  hl, hl                                      ; $794e: $29
	sub  l                                           ; $794f: $95
	sub  [hl]                                        ; $7950: $96
	sub  a                                           ; $7951: $97
	sbc  b                                           ; $7952: $98
	add  hl, de                                      ; $7953: $19
	ld   bc, $0706                                   ; $7954: $01 $06 $07
	sbc  d                                           ; $7957: $9a
	dec  de                                          ; $7958: $1b
	inc  e                                           ; $7959: $1c
	dec  e                                           ; $795a: $1d
	ld   e, $9f                                      ; $795b: $1e $9f
	jr   nz, @+$03                                   ; $795d: $20 $01

	ld   h, $07                                      ; $795f: $26 $07
	ld   hl, $2322                                   ; $7961: $21 $22 $23
	inc  h                                           ; $7964: $24
	dec  h                                           ; $7965: $25
	ld   h, $27                                      ; $7966: $26 $27
	rst  $38                                         ; $7968: $ff
	nop                                              ; $7969: $00
	add  hl, bc                                      ; $796a: $09
	inc  bc                                          ; $796b: $03
	nop                                              ; $796c: $00
	ld   bc, $0002                                   ; $796d: $01 $02 $00
	jr   z, @+$06                                    ; $7970: $28 $04

	inc  bc                                          ; $7972: $03
	inc  b                                           ; $7973: $04
	dec  b                                           ; $7974: $05
	ld   b, $00                                      ; $7975: $06 $00
	ld   c, b                                        ; $7977: $48
	dec  b                                           ; $7978: $05
	rlca                                             ; $7979: $07
	ld   [$0a09], sp                                 ; $797a: $08 $09 $0a
	dec  bc                                          ; $797d: $0b
	nop                                              ; $797e: $00
	ld   l, b                                        ; $797f: $68
	dec  b                                           ; $7980: $05
	inc  c                                           ; $7981: $0c
	ld   l, $0d                                      ; $7982: $2e $0d
	ld   c, $0f                                      ; $7984: $0e $0f
	nop                                              ; $7986: $00
	adc  c                                           ; $7987: $89
	inc  bc                                          ; $7988: $03
	ld   l, $10                                      ; $7989: $2e $10
	ld   de, $a900                                   ; $798b: $11 $00 $a9
	inc  bc                                          ; $798e: $03
	sub  d                                           ; $798f: $92
	ld   l, $93                                      ; $7990: $2e $93
	nop                                              ; $7992: $00
	ret                                              ; $7993: $c9


	inc  bc                                          ; $7994: $03
	sub  h                                           ; $7995: $94
	sub  l                                           ; $7996: $95
	sub  [hl]                                        ; $7997: $96
	nop                                              ; $7998: $00
	rst  $20                                         ; $7999: $e7
	ld   b, $97                                      ; $799a: $06 $97
	sbc  b                                           ; $799c: $98
	sbc  c                                           ; $799d: $99
	sbc  d                                           ; $799e: $9a
	sbc  e                                           ; $799f: $9b
	sbc  h                                           ; $79a0: $9c
	ld   bc, $0806                                   ; $79a1: $01 $06 $08
	sbc  l                                           ; $79a4: $9d
	sbc  [hl]                                        ; $79a5: $9e
	sbc  a                                           ; $79a6: $9f
	and  b                                           ; $79a7: $a0
	and  c                                           ; $79a8: $a1
	and  d                                           ; $79a9: $a2
	and  e                                           ; $79aa: $a3
	and  h                                           ; $79ab: $a4
	ld   bc, $0926                                   ; $79ac: $01 $26 $09
	and  l                                           ; $79af: $a5
	and  [hl]                                        ; $79b0: $a6
	and  a                                           ; $79b1: $a7
	xor  b                                           ; $79b2: $a8
	xor  c                                           ; $79b3: $a9
	xor  d                                           ; $79b4: $aa
	xor  e                                           ; $79b5: $ab
	xor  h                                           ; $79b6: $ac
	xor  l                                           ; $79b7: $ad
	rst  $38                                         ; $79b8: $ff
	nop                                              ; $79b9: $00
	jr   z, @+$03                                    ; $79ba: $28 $01

	ld   d, $00                                      ; $79bc: $16 $00
	dec  hl                                          ; $79be: $2b
	ld   bc, $0016                                   ; $79bf: $01 $16 $00
	ld   b, a                                        ; $79c2: $47
	ld   b, $16                                      ; $79c3: $06 $16
	ld   d, $16                                      ; $79c5: $16 $16
	ld   d, $16                                      ; $79c7: $16 $16
	ld   d, $00                                      ; $79c9: $16 $00
	ld   h, a                                        ; $79cb: $67
	ld   b, $16                                      ; $79cc: $06 $16
	ld   d, $16                                      ; $79ce: $16 $16
	ld   d, $16                                      ; $79d0: $16 $16
	ld   d, $00                                      ; $79d2: $16 $00
	adc  b                                           ; $79d4: $88
	inc  b                                           ; $79d5: $04
	ld   d, $16                                      ; $79d6: $16 $16
	ld   d, $16                                      ; $79d8: $16 $16
	nop                                              ; $79da: $00
	xor  b                                           ; $79db: $a8
	inc  b                                           ; $79dc: $04
	ld   d, $16                                      ; $79dd: $16 $16
	ld   d, $16                                      ; $79df: $16 $16
	nop                                              ; $79e1: $00
	rst  ToBoot                                         ; $79e2: $c7
	ld   b, $16                                      ; $79e3: $06 $16
	ld   d, $92                                      ; $79e5: $16 $92
	sub  e                                           ; $79e7: $93
	ld   d, $16                                      ; $79e8: $16 $16
	nop                                              ; $79ea: $00
	add  sp, $05                                     ; $79eb: $e8 $05
	nop                                              ; $79ed: $00
	sub  h                                           ; $79ee: $94
	sub  l                                           ; $79ef: $95
	add  c                                           ; $79f0: $81
	ld   [bc], a                                     ; $79f1: $02
	ld   bc, $0706                                   ; $79f2: $01 $06 $07
	inc  bc                                          ; $79f5: $03
	inc  b                                           ; $79f6: $04
	dec  b                                           ; $79f7: $05
	ld   b, $07                                      ; $79f8: $06 $07
	adc  b                                           ; $79fa: $88
	add  hl, bc                                      ; $79fb: $09
	ld   bc, $0826                                   ; $79fc: $01 $26 $08
	ld   a, [bc]                                     ; $79ff: $0a
	dec  bc                                          ; $7a00: $0b
	inc  c                                           ; $7a01: $0c
	dec  c                                           ; $7a02: $0d
	ld   c, $8f                                      ; $7a03: $0e $8f
	db   $10                                         ; $7a05: $10
	ld   de, $00ff                                   ; $7a06: $11 $ff $00
	rlca                                             ; $7a09: $07
	dec  b                                           ; $7a0a: $05
	add  b                                           ; $7a0b: $80
	add  c                                           ; $7a0c: $81
	add  d                                           ; $7a0d: $82
	add  e                                           ; $7a0e: $83
	add  h                                           ; $7a0f: $84
	nop                                              ; $7a10: $00
	daa                                              ; $7a11: $27
	dec  b                                           ; $7a12: $05
	add  l                                           ; $7a13: $85
	add  [hl]                                        ; $7a14: $86
	add  a                                           ; $7a15: $87
	adc  b                                           ; $7a16: $88
	adc  c                                           ; $7a17: $89
	nop                                              ; $7a18: $00
	ld   b, a                                        ; $7a19: $47
	dec  b                                           ; $7a1a: $05
	adc  d                                           ; $7a1b: $8a
	add  hl, hl                                      ; $7a1c: $29
	add  hl, hl                                      ; $7a1d: $29
	add  hl, hl                                      ; $7a1e: $29
	adc  e                                           ; $7a1f: $8b
	nop                                              ; $7a20: $00
	ld   h, a                                        ; $7a21: $67
	dec  b                                           ; $7a22: $05
	adc  h                                           ; $7a23: $8c
	adc  l                                           ; $7a24: $8d
	adc  [hl]                                        ; $7a25: $8e
	add  hl, hl                                      ; $7a26: $29
	adc  a                                           ; $7a27: $8f
	nop                                              ; $7a28: $00
	adc  b                                           ; $7a29: $88
	inc  b                                           ; $7a2a: $04
	db   $10                                         ; $7a2b: $10
	sub  c                                           ; $7a2c: $91
	sub  d                                           ; $7a2d: $92
	inc  de                                          ; $7a2e: $13
	nop                                              ; $7a2f: $00
	xor  b                                           ; $7a30: $a8
	inc  b                                           ; $7a31: $04
	inc  d                                           ; $7a32: $14
	dec  d                                           ; $7a33: $15
	ld   d, $17                                      ; $7a34: $16 $17
	nop                                              ; $7a36: $00
	ret  z                                           ; $7a37: $c8

	inc  b                                           ; $7a38: $04
	jr   @+$1b                                       ; $7a39: $18 $19

	ld   a, [de]                                     ; $7a3b: $1a
	dec  de                                          ; $7a3c: $1b
	nop                                              ; $7a3d: $00
	add  sp, $04                                     ; $7a3e: $e8 $04
	inc  e                                           ; $7a40: $1c
	dec  e                                           ; $7a41: $1d
	ld   e, $1f                                      ; $7a42: $1e $1f
	ld   bc, $0407                                   ; $7a44: $01 $07 $04
	jr   nz, jr_0a3_7a6a                             ; $7a47: $20 $21

	ld   [hl+], a                                    ; $7a49: $22
	inc  hl                                          ; $7a4a: $23
	ld   bc, $0427                                   ; $7a4b: $01 $27 $04
	inc  h                                           ; $7a4e: $24
	dec  h                                           ; $7a4f: $25
	ld   h, $27                                      ; $7a50: $26 $27
	ld   bc, $012e                                   ; $7a52: $01 $2e $01
	xor  b                                           ; $7a55: $a8
	rst  $38                                         ; $7a56: $ff
	nop                                              ; $7a57: $00
	rlca                                             ; $7a58: $07
	inc  b                                           ; $7a59: $04
	nop                                              ; $7a5a: $00
	jr   nz, jr_0a3_7a7d                             ; $7a5b: $20 $20

	jr   nz, jr_0a3_7a5f                             ; $7a5d: $20 $00

jr_0a3_7a5f:
	daa                                              ; $7a5f: $27
	inc  b                                           ; $7a60: $04
	ld   bc, $2020                                   ; $7a61: $01 $20 $20
	jr   nz, jr_0a3_7a66                             ; $7a64: $20 $00

jr_0a3_7a66:
	ld   c, b                                        ; $7a66: $48
	ld   bc, $0002                                   ; $7a67: $01 $02 $00

jr_0a3_7a6a:
	ld   l, b                                        ; $7a6a: $68
	ld   bc, $0003                                   ; $7a6b: $01 $03 $00
	add  [hl]                                        ; $7a6e: $86
	ld   b, $04                                      ; $7a6f: $06 $04
	dec  b                                           ; $7a71: $05
	ld   b, $07                                      ; $7a72: $06 $07
	ld   [$0089], sp                                 ; $7a74: $08 $89 $00
	and  l                                           ; $7a77: $a5
	rlca                                             ; $7a78: $07
	jr   nz, jr_0a3_7a85                             ; $7a79: $20 $0a

	dec  bc                                          ; $7a7b: $0b
	inc  c                                           ; $7a7c: $0c

jr_0a3_7a7d:
	dec  c                                           ; $7a7d: $0d
	ld   c, $8f                                      ; $7a7e: $0e $8f
	nop                                              ; $7a80: $00
	add  $05                                         ; $7a81: $c6 $05
	sub  b                                           ; $7a83: $90
	sub  c                                           ; $7a84: $91

jr_0a3_7a85:
	ld   [de], a                                     ; $7a85: $12
	inc  de                                          ; $7a86: $13
	inc  d                                           ; $7a87: $14
	nop                                              ; $7a88: $00
	rst  $20                                         ; $7a89: $e7
	inc  b                                           ; $7a8a: $04
	sub  l                                           ; $7a8b: $95
	ld   d, $97                                      ; $7a8c: $16 $97
	jr   jr_0a3_7a90                                 ; $7a8e: $18 $00

jr_0a3_7a90:
	db   $ed                                         ; $7a90: $ed
	ld   bc, $019d                                   ; $7a91: $01 $9d $01
	ld   [$9902], sp                                 ; $7a94: $08 $02 $99
	sbc  d                                           ; $7a97: $9a
	ld   bc, $010d                                   ; $7a98: $01 $0d $01
	ld   e, $01                                      ; $7a9b: $1e $01
	jr   z, jr_0a3_7aa1                              ; $7a9d: $28 $02

	sbc  e                                           ; $7a9f: $9b
	sbc  h                                           ; $7aa0: $9c

jr_0a3_7aa1:
	ld   bc, $012d                                   ; $7aa1: $01 $2d $01
	rra                                              ; $7aa4: $1f
	rst  $38                                         ; $7aa5: $ff
	nop                                              ; $7aa6: $00
	rlca                                             ; $7aa7: $07
	ld   b, $1a                                      ; $7aa8: $06 $1a
	ld   a, [de]                                     ; $7aaa: $1a
	ld   a, [de]                                     ; $7aab: $1a
	ld   a, [de]                                     ; $7aac: $1a
	ld   a, [de]                                     ; $7aad: $1a
	ld   a, [de]                                     ; $7aae: $1a
	nop                                              ; $7aaf: $00
	daa                                              ; $7ab0: $27
	ld   b, $1a                                      ; $7ab1: $06 $1a
	ld   a, [de]                                     ; $7ab3: $1a
	ld   a, [de]                                     ; $7ab4: $1a
	ld   a, [de]                                     ; $7ab5: $1a
	ld   a, [de]                                     ; $7ab6: $1a
	ld   a, [de]                                     ; $7ab7: $1a
	nop                                              ; $7ab8: $00
	ld   c, b                                        ; $7ab9: $48
	inc  b                                           ; $7aba: $04
	ld   a, [de]                                     ; $7abb: $1a
	ld   a, [de]                                     ; $7abc: $1a
	ld   a, [de]                                     ; $7abd: $1a
	ld   a, [de]                                     ; $7abe: $1a
	nop                                              ; $7abf: $00
	ld   l, b                                        ; $7ac0: $68
	inc  b                                           ; $7ac1: $04
	ld   a, [de]                                     ; $7ac2: $1a
	ld   a, [de]                                     ; $7ac3: $1a
	ld   a, [de]                                     ; $7ac4: $1a
	ld   a, [de]                                     ; $7ac5: $1a
	nop                                              ; $7ac6: $00
	add  a                                           ; $7ac7: $87
	dec  b                                           ; $7ac8: $05
	nop                                              ; $7ac9: $00
	ld   bc, $8382                                   ; $7aca: $01 $82 $83
	add  h                                           ; $7acd: $84
	nop                                              ; $7ace: $00
	and  a                                           ; $7acf: $a7
	dec  b                                           ; $7ad0: $05
	dec  b                                           ; $7ad1: $05
	ld   b, $87                                      ; $7ad2: $06 $87
	adc  b                                           ; $7ad4: $88
	adc  c                                           ; $7ad5: $89
	nop                                              ; $7ad6: $00
	rst  ToBoot                                         ; $7ad7: $c7
	ld   b, $1a                                      ; $7ad8: $06 $1a
	adc  d                                           ; $7ada: $8a
	adc  e                                           ; $7adb: $8b
	inc  c                                           ; $7adc: $0c
	dec  c                                           ; $7add: $0d
	ld   a, [de]                                     ; $7ade: $1a
	nop                                              ; $7adf: $00
	add  sp, $04                                     ; $7ae0: $e8 $04
	adc  [hl]                                        ; $7ae2: $8e
	adc  a                                           ; $7ae3: $8f
	db   $10                                         ; $7ae4: $10
	ld   de, $0801                                   ; $7ae5: $11 $01 $08
	inc  b                                           ; $7ae8: $04
	sub  d                                           ; $7ae9: $92
	sub  e                                           ; $7aea: $93
	inc  d                                           ; $7aeb: $14
	sub  l                                           ; $7aec: $95
	ld   bc, $0428                                   ; $7aed: $01 $28 $04
	sub  [hl]                                        ; $7af0: $96
	sub  a                                           ; $7af1: $97
	sbc  b                                           ; $7af2: $98
	sbc  c                                           ; $7af3: $99
	rst  $38                                         ; $7af4: $ff
	nop                                              ; $7af5: $00
	ld   [$8003], sp                                 ; $7af6: $08 $03 $80
	add  c                                           ; $7af9: $81
	add  d                                           ; $7afa: $82
	nop                                              ; $7afb: $00
	jr   z, jr_0a3_7b01                              ; $7afc: $28 $03

	add  e                                           ; $7afe: $83
	add  h                                           ; $7aff: $84
	add  l                                           ; $7b00: $85

jr_0a3_7b01:
	nop                                              ; $7b01: $00
	ld   c, b                                        ; $7b02: $48
	inc  b                                           ; $7b03: $04
	dec  de                                          ; $7b04: $1b
	dec  de                                          ; $7b05: $1b
	dec  de                                          ; $7b06: $1b
	dec  de                                          ; $7b07: $1b
	nop                                              ; $7b08: $00
	ld   l, b                                        ; $7b09: $68
	inc  b                                           ; $7b0a: $04
	dec  de                                          ; $7b0b: $1b
	dec  de                                          ; $7b0c: $1b
	dec  de                                          ; $7b0d: $1b
	dec  de                                          ; $7b0e: $1b
	nop                                              ; $7b0f: $00
	add  a                                           ; $7b10: $87
	ld   bc, $0086                                   ; $7b11: $01 $86 $00
	adc  d                                           ; $7b14: $8a
	ld   bc, $0087                                   ; $7b15: $01 $87 $00
	and  [hl]                                        ; $7b18: $a6
	ld   [bc], a                                     ; $7b19: $02
	adc  b                                           ; $7b1a: $88
	add  hl, bc                                      ; $7b1b: $09
	nop                                              ; $7b1c: $00
	xor  d                                           ; $7b1d: $aa
	ld   bc, $008a                                   ; $7b1e: $01 $8a $00
	add  $06                                         ; $7b21: $c6 $06
	adc  e                                           ; $7b23: $8b
	inc  c                                           ; $7b24: $0c
	dec  c                                           ; $7b25: $0d
	ld   c, $0f                                      ; $7b26: $0e $0f
	stop                                             ; $7b28: $10 $00
	add  sp, $04                                     ; $7b2a: $e8 $04
	ld   de, $1312                                   ; $7b2c: $11 $12 $13
	inc  d                                           ; $7b2f: $14
	ld   bc, $0105                                   ; $7b30: $01 $05 $01
	dec  de                                          ; $7b33: $1b
	ld   bc, $0309                                   ; $7b34: $01 $09 $03
	dec  d                                           ; $7b37: $15
	ld   d, $17                                      ; $7b38: $16 $17
	ld   bc, $0329                                   ; $7b3a: $01 $29 $03
	jr   jr_0a3_7b58                                 ; $7b3d: $18 $19

	ld   a, [de]                                     ; $7b3f: $1a
	rst  $38                                         ; $7b40: $ff
	nop                                              ; $7b41: $00
	dec  bc                                          ; $7b42: $0b
	ld   bc, $0080                                   ; $7b43: $01 $80 $00
	add  hl, hl                                      ; $7b46: $29
	inc  b                                           ; $7b47: $04
	add  c                                           ; $7b48: $81
	add  d                                           ; $7b49: $82
	add  e                                           ; $7b4a: $83
	add  h                                           ; $7b4b: $84
	nop                                              ; $7b4c: $00
	ld   c, c                                        ; $7b4d: $49
	inc  b                                           ; $7b4e: $04
	add  l                                           ; $7b4f: $85
	add  [hl]                                        ; $7b50: $86
	add  a                                           ; $7b51: $87
	adc  b                                           ; $7b52: $88
	nop                                              ; $7b53: $00
	ld   l, c                                        ; $7b54: $69
	inc  b                                           ; $7b55: $04
	xor  c                                           ; $7b56: $a9
	xor  b                                           ; $7b57: $a8

jr_0a3_7b58:
	adc  c                                           ; $7b58: $89
	adc  d                                           ; $7b59: $8a
	nop                                              ; $7b5a: $00
	adc  d                                           ; $7b5b: $8a
	ld   [bc], a                                     ; $7b5c: $02
	xor  b                                           ; $7b5d: $a8
	adc  e                                           ; $7b5e: $8b
	nop                                              ; $7b5f: $00
	xor  c                                           ; $7b60: $a9
	inc  bc                                          ; $7b61: $03
	inc  c                                           ; $7b62: $0c
	dec  c                                           ; $7b63: $0d
	xor  b                                           ; $7b64: $a8
	nop                                              ; $7b65: $00
	ret                                              ; $7b66: $c9


	inc  bc                                          ; $7b67: $03
	ld   c, $0f                                      ; $7b68: $0e $0f
	stop                                             ; $7b6a: $10 $00
	and  $07                                         ; $7b6c: $e6 $07
	ld   de, $1312                                   ; $7b6e: $11 $12 $13
	inc  d                                           ; $7b71: $14
	dec  d                                           ; $7b72: $15
	ld   d, $17                                      ; $7b73: $16 $17
	ld   bc, $0806                                   ; $7b75: $01 $06 $08
	jr   jr_0a3_7b93                                 ; $7b78: $18 $19

	ld   a, [de]                                     ; $7b7a: $1a
	dec  de                                          ; $7b7b: $1b
	inc  e                                           ; $7b7c: $1c
	dec  e                                           ; $7b7d: $1d
	ld   e, $1f                                      ; $7b7e: $1e $1f
	ld   bc, $0826                                   ; $7b80: $01 $26 $08
	jr   nz, jr_0a3_7ba6                             ; $7b83: $20 $21

	ld   [hl+], a                                    ; $7b85: $22
	inc  hl                                          ; $7b86: $23
	inc  h                                           ; $7b87: $24
	dec  h                                           ; $7b88: $25
	ld   h, $27                                      ; $7b89: $26 $27
	rst  $38                                         ; $7b8b: $ff
	nop                                              ; $7b8c: $00
	ld   [$0003], sp                                 ; $7b8d: $08 $03 $00
	ld   bc, $0002                                   ; $7b90: $01 $02 $00

jr_0a3_7b93:
	daa                                              ; $7b93: $27
	inc  b                                           ; $7b94: $04
	rla                                              ; $7b95: $17
	inc  bc                                          ; $7b96: $03
	inc  b                                           ; $7b97: $04
	dec  b                                           ; $7b98: $05
	nop                                              ; $7b99: $00
	ld   b, a                                        ; $7b9a: $47
	inc  b                                           ; $7b9b: $04
	rla                                              ; $7b9c: $17
	rla                                              ; $7b9d: $17
	rla                                              ; $7b9e: $17
	rla                                              ; $7b9f: $17
	nop                                              ; $7ba0: $00
	ld   h, a                                        ; $7ba1: $67
	inc  b                                           ; $7ba2: $04
	rla                                              ; $7ba3: $17
	rla                                              ; $7ba4: $17
	rla                                              ; $7ba5: $17

jr_0a3_7ba6:
	rla                                              ; $7ba6: $17
	nop                                              ; $7ba7: $00
	adc  c                                           ; $7ba8: $89
	ld   bc, $0086                                   ; $7ba9: $01 $86 $00
	and  [hl]                                        ; $7bac: $a6
	ld   bc, $0087                                   ; $7bad: $01 $87 $00
	xor  b                                           ; $7bb0: $a8
	ld   [bc], a                                     ; $7bb1: $02
	adc  b                                           ; $7bb2: $88
	adc  c                                           ; $7bb3: $89
	nop                                              ; $7bb4: $00
	xor  e                                           ; $7bb5: $ab
	ld   bc, $0017                                   ; $7bb6: $01 $17 $00
	add  $05                                         ; $7bb9: $c6 $05
	adc  d                                           ; $7bbb: $8a
	adc  e                                           ; $7bbc: $8b
	adc  h                                           ; $7bbd: $8c
	adc  l                                           ; $7bbe: $8d
	adc  [hl]                                        ; $7bbf: $8e
	nop                                              ; $7bc0: $00
	rst  $20                                         ; $7bc1: $e7
	dec  b                                           ; $7bc2: $05
	adc  a                                           ; $7bc3: $8f
	sub  b                                           ; $7bc4: $90
	sub  c                                           ; $7bc5: $91
	sub  d                                           ; $7bc6: $92
	rla                                              ; $7bc7: $17
	ld   bc, $0208                                   ; $7bc8: $01 $08 $02
	sub  e                                           ; $7bcb: $93
	sub  h                                           ; $7bcc: $94
	ld   bc, $010b                                   ; $7bcd: $01 $0b $01
	rla                                              ; $7bd0: $17
	ld   bc, $0228                                   ; $7bd1: $01 $28 $02
	sub  l                                           ; $7bd4: $95
	sub  [hl]                                        ; $7bd5: $96
	rst  $38                                         ; $7bd6: $ff
	nop                                              ; $7bd7: $00
	ld   h, $03                                      ; $7bd8: $26 $03
	rra                                              ; $7bda: $1f
	rra                                              ; $7bdb: $1f
	rra                                              ; $7bdc: $1f
	nop                                              ; $7bdd: $00
	ld   b, l                                        ; $7bde: $45
	dec  b                                           ; $7bdf: $05
	rra                                              ; $7be0: $1f
	add  b                                           ; $7be1: $80
	add  c                                           ; $7be2: $81
	add  d                                           ; $7be3: $82
	rra                                              ; $7be4: $1f
	nop                                              ; $7be5: $00
	ld   h, l                                        ; $7be6: $65
	dec  b                                           ; $7be7: $05
	add  e                                           ; $7be8: $83
	add  h                                           ; $7be9: $84
	add  l                                           ; $7bea: $85
	add  [hl]                                        ; $7beb: $86
	add  a                                           ; $7bec: $87
	nop                                              ; $7bed: $00
	add  [hl]                                        ; $7bee: $86
	inc  bc                                          ; $7bef: $03
	rra                                              ; $7bf0: $1f
	rra                                              ; $7bf1: $1f
	rra                                              ; $7bf2: $1f
	nop                                              ; $7bf3: $00
	and  [hl]                                        ; $7bf4: $a6
	inc  b                                           ; $7bf5: $04
	rra                                              ; $7bf6: $1f
	rra                                              ; $7bf7: $1f
	rra                                              ; $7bf8: $1f
	rra                                              ; $7bf9: $1f
	nop                                              ; $7bfa: $00
	add  $02                                         ; $7bfb: $c6 $02
	adc  b                                           ; $7bfd: $88
	adc  c                                           ; $7bfe: $89
	nop                                              ; $7bff: $00
	jp   z, $8a01                                    ; $7c00: $ca $01 $8a

	nop                                              ; $7c03: $00
	and  $06                                         ; $7c04: $e6 $06
	dec  bc                                          ; $7c06: $0b
	inc  c                                           ; $7c07: $0c
	dec  c                                           ; $7c08: $0d
	ld   c, $0f                                      ; $7c09: $0e $0f
	db   $10                                         ; $7c0b: $10
	ld   bc, $0705                                   ; $7c0c: $01 $05 $07
	ld   de, $1312                                   ; $7c0f: $11 $12 $13
	inc  d                                           ; $7c12: $14
	dec  d                                           ; $7c13: $15
	ld   d, $17                                      ; $7c14: $16 $17
	ld   bc, $0725                                   ; $7c16: $01 $25 $07
	jr   jr_0a3_7c34                                 ; $7c19: $18 $19

	ld   a, [de]                                     ; $7c1b: $1a
	dec  de                                          ; $7c1c: $1b
	inc  e                                           ; $7c1d: $1c
	dec  e                                           ; $7c1e: $1d
	ld   e, $ff                                      ; $7c1f: $1e $ff
	nop                                              ; $7c21: $00
	ld   a, [hl+]                                    ; $7c22: $2a
	ld   bc, $002a                                   ; $7c23: $01 $2a $00
	ld   c, d                                        ; $7c26: $4a
	ld   bc, $002a                                   ; $7c27: $01 $2a $00
	ld   l, d                                        ; $7c2a: $6a
	ld   bc, $002a                                   ; $7c2b: $01 $2a $00
	adc  d                                           ; $7c2e: $8a
	ld   [bc], a                                     ; $7c2f: $02
	nop                                              ; $7c30: $00
	ld   bc, $a900                                   ; $7c31: $01 $00 $a9

jr_0a3_7c34:
	inc  b                                           ; $7c34: $04
	ld   a, [hl+]                                    ; $7c35: $2a
	ld   [bc], a                                     ; $7c36: $02
	inc  bc                                          ; $7c37: $03
	add  h                                           ; $7c38: $84
	nop                                              ; $7c39: $00
	rst  ToBoot                                         ; $7c3a: $c7
	ld   [$8685], sp                                 ; $7c3b: $08 $85 $86
	add  a                                           ; $7c3e: $87
	ld   [$8a89], sp                                 ; $7c3f: $08 $89 $8a
	adc  e                                           ; $7c42: $8b
	adc  h                                           ; $7c43: $8c
	nop                                              ; $7c44: $00
	and  $09                                         ; $7c45: $e6 $09
	adc  l                                           ; $7c47: $8d
	adc  [hl]                                        ; $7c48: $8e
	adc  a                                           ; $7c49: $8f
	sub  b                                           ; $7c4a: $90
	sub  c                                           ; $7c4b: $91
	sub  d                                           ; $7c4c: $92
	sub  e                                           ; $7c4d: $93
	sub  h                                           ; $7c4e: $94
	sub  l                                           ; $7c4f: $95
	ld   bc, $0a05                                   ; $7c50: $01 $05 $0a
	ld   d, $17                                      ; $7c53: $16 $17
	sbc  b                                           ; $7c55: $98
	sbc  c                                           ; $7c56: $99
	sbc  d                                           ; $7c57: $9a
	sbc  e                                           ; $7c58: $9b
	sbc  h                                           ; $7c59: $9c
	sbc  l                                           ; $7c5a: $9d
	ld   e, $1f                                      ; $7c5b: $1e $1f
	ld   bc, $0a25                                   ; $7c5d: $01 $25 $0a
	jr   nz, jr_0a3_7c83                             ; $7c60: $20 $21

	and  d                                           ; $7c62: $a2
	and  e                                           ; $7c63: $a3
	and  h                                           ; $7c64: $a4
	and  l                                           ; $7c65: $a5
	and  [hl]                                        ; $7c66: $a6
	and  a                                           ; $7c67: $a7
	jr   z, jr_0a3_7c93                              ; $7c68: $28 $29

	rst  $38                                         ; $7c6a: $ff
	nop                                              ; $7c6b: $00
	ld   [$1704], sp                                 ; $7c6c: $08 $04 $17
	rla                                              ; $7c6f: $17
	rla                                              ; $7c70: $17
	rla                                              ; $7c71: $17
	nop                                              ; $7c72: $00
	jr   z, jr_0a3_7c79                              ; $7c73: $28 $04

	rla                                              ; $7c75: $17
	rla                                              ; $7c76: $17
	rla                                              ; $7c77: $17
	rla                                              ; $7c78: $17

jr_0a3_7c79:
	nop                                              ; $7c79: $00
	ld   c, b                                        ; $7c7a: $48
	inc  b                                           ; $7c7b: $04
	rla                                              ; $7c7c: $17
	rla                                              ; $7c7d: $17
	rla                                              ; $7c7e: $17
	rla                                              ; $7c7f: $17
	nop                                              ; $7c80: $00
	ld   l, b                                        ; $7c81: $68
	inc  b                                           ; $7c82: $04

jr_0a3_7c83:
	rla                                              ; $7c83: $17
	rla                                              ; $7c84: $17
	rla                                              ; $7c85: $17
	rla                                              ; $7c86: $17
	nop                                              ; $7c87: $00
	adc  b                                           ; $7c88: $88
	inc  b                                           ; $7c89: $04
	nop                                              ; $7c8a: $00
	ld   bc, $1702                                   ; $7c8b: $01 $02 $17
	nop                                              ; $7c8e: $00
	xor  b                                           ; $7c8f: $a8
	inc  b                                           ; $7c90: $04
	inc  bc                                          ; $7c91: $03
	inc  b                                           ; $7c92: $04

jr_0a3_7c93:
	dec  b                                           ; $7c93: $05
	ld   b, $00                                      ; $7c94: $06 $00
	rst  ToBoot                                         ; $7c96: $c7
	dec  b                                           ; $7c97: $05
	rlca                                             ; $7c98: $07
	ld   [$0a09], sp                                 ; $7c99: $08 $09 $0a
	dec  bc                                          ; $7c9c: $0b
	nop                                              ; $7c9d: $00
	rst  $20                                         ; $7c9e: $e7
	dec  b                                           ; $7c9f: $05
	inc  c                                           ; $7ca0: $0c
	dec  c                                           ; $7ca1: $0d
	dec  c                                           ; $7ca2: $0d
	dec  c                                           ; $7ca3: $0d
	ld   c, $01                                      ; $7ca4: $0e $01
	ld   [$0f04], sp                                 ; $7ca6: $08 $04 $0f
	sub  b                                           ; $7ca9: $90
	sub  c                                           ; $7caa: $91
	ld   [de], a                                     ; $7cab: $12
	ld   bc, $0527                                   ; $7cac: $01 $27 $05
	rla                                              ; $7caf: $17
	inc  de                                          ; $7cb0: $13
	sub  h                                           ; $7cb1: $94
	sub  l                                           ; $7cb2: $95
	ld   d, $ff                                      ; $7cb3: $16 $ff
	nop                                              ; $7cb5: $00
	jr   z, jr_0a3_7cbb                              ; $7cb6: $28 $03

	dec  d                                           ; $7cb8: $15
	dec  d                                           ; $7cb9: $15
	dec  d                                           ; $7cba: $15

jr_0a3_7cbb:
	nop                                              ; $7cbb: $00
	ld   b, a                                        ; $7cbc: $47
	dec  b                                           ; $7cbd: $05
	add  b                                           ; $7cbe: $80
	add  c                                           ; $7cbf: $81
	dec  d                                           ; $7cc0: $15
	dec  d                                           ; $7cc1: $15
	add  d                                           ; $7cc2: $82
	nop                                              ; $7cc3: $00
	ld   h, a                                        ; $7cc4: $67
	dec  b                                           ; $7cc5: $05
	add  e                                           ; $7cc6: $83
	add  h                                           ; $7cc7: $84
	dec  d                                           ; $7cc8: $15
	dec  d                                           ; $7cc9: $15
	add  l                                           ; $7cca: $85
	nop                                              ; $7ccb: $00
	add  [hl]                                        ; $7ccc: $86
	ld   b, $06                                      ; $7ccd: $06 $06
	add  a                                           ; $7ccf: $87
	dec  d                                           ; $7cd0: $15
	dec  d                                           ; $7cd1: $15
	dec  d                                           ; $7cd2: $15
	dec  d                                           ; $7cd3: $15
	nop                                              ; $7cd4: $00
	and  [hl]                                        ; $7cd5: $a6
	ld   b, $08                                      ; $7cd6: $06 $08
	adc  c                                           ; $7cd8: $89
	dec  d                                           ; $7cd9: $15
	dec  d                                           ; $7cda: $15
	dec  d                                           ; $7cdb: $15
	dec  d                                           ; $7cdc: $15
	nop                                              ; $7cdd: $00
	rst  ToBoot                                         ; $7cde: $c7
	ld   b, $15                                      ; $7cdf: $06 $15
	dec  d                                           ; $7ce1: $15
	dec  d                                           ; $7ce2: $15
	dec  d                                           ; $7ce3: $15
	dec  d                                           ; $7ce4: $15
	dec  d                                           ; $7ce5: $15
	nop                                              ; $7ce6: $00
	jp   hl                                          ; $7ce7: $e9


	ld   [bc], a                                     ; $7ce8: $02
	dec  d                                           ; $7ce9: $15
	ld   a, [bc]                                     ; $7cea: $0a
	ld   bc, $0408                                   ; $7ceb: $01 $08 $04
	dec  bc                                          ; $7cee: $0b
	inc  c                                           ; $7cef: $0c
	dec  c                                           ; $7cf0: $0d
	ld   c, $01                                      ; $7cf1: $0e $01
	daa                                              ; $7cf3: $27
	ld   [$0f15], sp                                 ; $7cf4: $08 $15 $0f
	db   $10                                         ; $7cf7: $10
	ld   de, $1512                                   ; $7cf8: $11 $12 $15
	inc  de                                          ; $7cfb: $13
	inc  d                                           ; $7cfc: $14
	rst  $38                                         ; $7cfd: $ff
	nop                                              ; $7cfe: $00
	add  hl, bc                                      ; $7cff: $09
	ld   [bc], a                                     ; $7d00: $02
	add  b                                           ; $7d01: $80
	add  c                                           ; $7d02: $81
	nop                                              ; $7d03: $00
	add  hl, hl                                      ; $7d04: $29
	ld   [bc], a                                     ; $7d05: $02
	add  d                                           ; $7d06: $82
	add  e                                           ; $7d07: $83
	nop                                              ; $7d08: $00
	ld   c, b                                        ; $7d09: $48
	inc  b                                           ; $7d0a: $04
	add  h                                           ; $7d0b: $84
	inc  h                                           ; $7d0c: $24
	inc  h                                           ; $7d0d: $24
	inc  h                                           ; $7d0e: $24
	nop                                              ; $7d0f: $00
	ld   l, b                                        ; $7d10: $68
	inc  b                                           ; $7d11: $04
	add  l                                           ; $7d12: $85
	inc  h                                           ; $7d13: $24
	inc  h                                           ; $7d14: $24
	inc  h                                           ; $7d15: $24
	nop                                              ; $7d16: $00
	adc  c                                           ; $7d17: $89
	inc  bc                                          ; $7d18: $03
	add  [hl]                                        ; $7d19: $86
	add  a                                           ; $7d1a: $87
	adc  b                                           ; $7d1b: $88
	nop                                              ; $7d1c: $00
	xor  c                                           ; $7d1d: $a9
	inc  bc                                          ; $7d1e: $03
	adc  c                                           ; $7d1f: $89
	adc  d                                           ; $7d20: $8a
	adc  e                                           ; $7d21: $8b
	nop                                              ; $7d22: $00
	rst  ToBoot                                         ; $7d23: $c7
	ld   b, $0c                                      ; $7d24: $06 $0c
	dec  c                                           ; $7d26: $0d
	ld   c, $0f                                      ; $7d27: $0e $0f
	db   $10                                         ; $7d29: $10
	ld   de, $e700                                   ; $7d2a: $11 $00 $e7
	ld   b, $12                                      ; $7d2d: $06 $12
	inc  de                                          ; $7d2f: $13
	inc  d                                           ; $7d30: $14
	dec  d                                           ; $7d31: $15
	ld   d, $17                                      ; $7d32: $16 $17
	ld   bc, $0607                                   ; $7d34: $01 $07 $06
	jr   jr_0a3_7d52                                 ; $7d37: $18 $19

	ld   a, [de]                                     ; $7d39: $1a
	dec  de                                          ; $7d3a: $1b
	inc  e                                           ; $7d3b: $1c
	dec  e                                           ; $7d3c: $1d
	ld   bc, $0627                                   ; $7d3d: $01 $27 $06
	ld   e, $1f                                      ; $7d40: $1e $1f
	jr   nz, jr_0a3_7d65                             ; $7d42: $20 $21

	ld   [hl+], a                                    ; $7d44: $22
	inc  hl                                          ; $7d45: $23
	rst  $38                                         ; $7d46: $ff
	nop                                              ; $7d47: $00
	ld   [$8004], sp                                 ; $7d48: $08 $04 $80
	add  c                                           ; $7d4b: $81
	add  d                                           ; $7d4c: $82
	add  e                                           ; $7d4d: $83
	nop                                              ; $7d4e: $00
	jr   z, jr_0a3_7d55                              ; $7d4f: $28 $04

	add  h                                           ; $7d51: $84

jr_0a3_7d52:
	add  l                                           ; $7d52: $85
	add  [hl]                                        ; $7d53: $86
	add  a                                           ; $7d54: $87

jr_0a3_7d55:
	nop                                              ; $7d55: $00
	ld   c, b                                        ; $7d56: $48
	inc  b                                           ; $7d57: $04
	adc  b                                           ; $7d58: $88
	adc  c                                           ; $7d59: $89
	adc  d                                           ; $7d5a: $8a
	adc  e                                           ; $7d5b: $8b
	nop                                              ; $7d5c: $00
	ld   l, b                                        ; $7d5d: $68
	inc  b                                           ; $7d5e: $04
	adc  h                                           ; $7d5f: $8c
	adc  l                                           ; $7d60: $8d
	adc  [hl]                                        ; $7d61: $8e
	adc  a                                           ; $7d62: $8f
	nop                                              ; $7d63: $00
	adc  d                                           ; $7d64: $8a

jr_0a3_7d65:
	inc  bc                                          ; $7d65: $03
	db   $10                                         ; $7d66: $10
	ld   de, $0012                                   ; $7d67: $11 $12 $00
	xor  d                                           ; $7d6a: $aa
	inc  b                                           ; $7d6b: $04
	inc  de                                          ; $7d6c: $13
	inc  d                                           ; $7d6d: $14
	dec  d                                           ; $7d6e: $15
	xor  c                                           ; $7d6f: $a9
	nop                                              ; $7d70: $00
	call z, $1604                                    ; $7d71: $cc $04 $16
	rla                                              ; $7d74: $17
	jr   jr_0a3_7d90                                 ; $7d75: $18 $19

	nop                                              ; $7d77: $00
	db   $ec                                         ; $7d78: $ec
	dec  b                                           ; $7d79: $05
	ld   a, [de]                                     ; $7d7a: $1a
	dec  de                                          ; $7d7b: $1b
	sbc  h                                           ; $7d7c: $9c
	dec  e                                           ; $7d7d: $1d
	ld   e, $01                                      ; $7d7e: $1e $01
	inc  c                                           ; $7d80: $0c
	dec  b                                           ; $7d81: $05
	rra                                              ; $7d82: $1f
	jr   nz, jr_0a3_7da6                             ; $7d83: $20 $21

	ld   [hl+], a                                    ; $7d85: $22
	inc  hl                                          ; $7d86: $23
	ld   bc, $052c                                   ; $7d87: $01 $2c $05
	inc  h                                           ; $7d8a: $24
	dec  h                                           ; $7d8b: $25
	ld   h, $27                                      ; $7d8c: $26 $27
	jr   z, @+$01                                    ; $7d8e: $28 $ff

jr_0a3_7d90:
	nop                                              ; $7d90: $00
	jr   z, jr_0a3_7d97                              ; $7d91: $28 $04

	nop                                              ; $7d93: $00
	ld   bc, $0302                                   ; $7d94: $01 $02 $03

jr_0a3_7d97:
	nop                                              ; $7d97: $00
	ld   c, b                                        ; $7d98: $48
	inc  b                                           ; $7d99: $04
	add  h                                           ; $7d9a: $84
	add  l                                           ; $7d9b: $85
	add  [hl]                                        ; $7d9c: $86
	add  a                                           ; $7d9d: $87
	nop                                              ; $7d9e: $00
	ld   l, b                                        ; $7d9f: $68
	inc  b                                           ; $7da0: $04
	sbc  l                                           ; $7da1: $9d
	sbc  l                                           ; $7da2: $9d
	sbc  l                                           ; $7da3: $9d
	sbc  l                                           ; $7da4: $9d
	nop                                              ; $7da5: $00

jr_0a3_7da6:
	adc  c                                           ; $7da6: $89
	ld   [bc], a                                     ; $7da7: $02
	sbc  l                                           ; $7da8: $9d
	sbc  l                                           ; $7da9: $9d
	nop                                              ; $7daa: $00
	xor  c                                           ; $7dab: $a9
	ld   [bc], a                                     ; $7dac: $02
	sbc  l                                           ; $7dad: $9d
	sbc  l                                           ; $7dae: $9d
	nop                                              ; $7daf: $00
	ret                                              ; $7db0: $c9


	ld   [bc], a                                     ; $7db1: $02
	sbc  l                                           ; $7db2: $9d
	sbc  l                                           ; $7db3: $9d
	nop                                              ; $7db4: $00
	rst  $20                                         ; $7db5: $e7
	ld   b, $08                                      ; $7db6: $06 $08
	add  hl, bc                                      ; $7db8: $09
	ld   a, [bc]                                     ; $7db9: $0a
	dec  bc                                          ; $7dba: $0b
	inc  c                                           ; $7dbb: $0c
	dec  c                                           ; $7dbc: $0d
	ld   bc, $0a05                                   ; $7dbd: $01 $05 $0a
	ld   c, $0f                                      ; $7dc0: $0e $0f
	db   $10                                         ; $7dc2: $10
	ld   de, $1312                                   ; $7dc3: $11 $12 $13
	db   $10                                         ; $7dc6: $10
	db   $10                                         ; $7dc7: $10
	inc  d                                           ; $7dc8: $14
	dec  d                                           ; $7dc9: $15
	ld   bc, $0a25                                   ; $7dca: $01 $25 $0a
	ld   d, $10                                      ; $7dcd: $16 $10
	rla                                              ; $7dcf: $17
	jr   jr_0a3_7deb                                 ; $7dd0: $18 $19

	ld   a, [de]                                     ; $7dd2: $1a
	db   $10                                         ; $7dd3: $10
	db   $10                                         ; $7dd4: $10
	dec  de                                          ; $7dd5: $1b
	inc  e                                           ; $7dd6: $1c
	rst  $38                                         ; $7dd7: $ff
	nop                                              ; $7dd8: $00
	ld   [$1a03], sp                                 ; $7dd9: $08 $03 $1a
	ld   a, [de]                                     ; $7ddc: $1a
	ld   a, [de]                                     ; $7ddd: $1a
	nop                                              ; $7dde: $00
	jr   z, jr_0a3_7de4                              ; $7ddf: $28 $03

	ld   a, [de]                                     ; $7de1: $1a
	ld   a, [de]                                     ; $7de2: $1a
	ld   a, [de]                                     ; $7de3: $1a

jr_0a3_7de4:
	nop                                              ; $7de4: $00
	ld   c, b                                        ; $7de5: $48
	inc  b                                           ; $7de6: $04
	ld   a, [de]                                     ; $7de7: $1a
	ld   a, [de]                                     ; $7de8: $1a
	ld   a, [de]                                     ; $7de9: $1a
	ld   a, [de]                                     ; $7dea: $1a

jr_0a3_7deb:
	nop                                              ; $7deb: $00
	ld   l, b                                        ; $7dec: $68
	inc  b                                           ; $7ded: $04
	ld   a, [de]                                     ; $7dee: $1a
	ld   a, [de]                                     ; $7def: $1a
	ld   a, [de]                                     ; $7df0: $1a
	ld   a, [de]                                     ; $7df1: $1a
	nop                                              ; $7df2: $00
	adc  d                                           ; $7df3: $8a
	ld   [bc], a                                     ; $7df4: $02
	ld   a, [de]                                     ; $7df5: $1a
	add  b                                           ; $7df6: $80
	nop                                              ; $7df7: $00
	xor  c                                           ; $7df8: $a9
	inc  bc                                          ; $7df9: $03
	ld   bc, $8302                                   ; $7dfa: $01 $02 $83
	nop                                              ; $7dfd: $00
	ret  z                                           ; $7dfe: $c8

	dec  b                                           ; $7dff: $05
	inc  b                                           ; $7e00: $04
	dec  b                                           ; $7e01: $05
	add  [hl]                                        ; $7e02: $86
	add  a                                           ; $7e03: $87
	adc  b                                           ; $7e04: $88
	nop                                              ; $7e05: $00
	add  sp, $05                                     ; $7e06: $e8 $05
	add  hl, bc                                      ; $7e08: $09
	ld   a, [bc]                                     ; $7e09: $0a
	adc  e                                           ; $7e0a: $8b
	adc  h                                           ; $7e0b: $8c
	adc  l                                           ; $7e0c: $8d
	ld   bc, $0607                                   ; $7e0d: $01 $07 $06
	ld   c, $0f                                      ; $7e10: $0e $0f
	db   $10                                         ; $7e12: $10
	sub  c                                           ; $7e13: $91
	sub  d                                           ; $7e14: $92
	sub  e                                           ; $7e15: $93
	ld   bc, $0627                                   ; $7e16: $01 $27 $06
	inc  d                                           ; $7e19: $14
	dec  d                                           ; $7e1a: $15
	ld   d, $17                                      ; $7e1b: $16 $17
	sbc  b                                           ; $7e1d: $98
	sbc  c                                           ; $7e1e: $99
	rst  $38                                         ; $7e1f: $ff
	nop                                              ; $7e20: $00
	jr   z, jr_0a3_7e27                              ; $7e21: $28 $04

	add  b                                           ; $7e23: $80
	add  c                                           ; $7e24: $81
	add  d                                           ; $7e25: $82
	add  e                                           ; $7e26: $83

jr_0a3_7e27:
	nop                                              ; $7e27: $00
	ld   b, a                                        ; $7e28: $47
	dec  b                                           ; $7e29: $05
	add  h                                           ; $7e2a: $84
	add  l                                           ; $7e2b: $85
	add  [hl]                                        ; $7e2c: $86
	add  a                                           ; $7e2d: $87
	adc  b                                           ; $7e2e: $88
	nop                                              ; $7e2f: $00
	ld   h, a                                        ; $7e30: $67
	ld   b, $89                                      ; $7e31: $06 $89
	adc  d                                           ; $7e33: $8a
	dec  bc                                          ; $7e34: $0b
	inc  c                                           ; $7e35: $0c
	adc  l                                           ; $7e36: $8d
	adc  [hl]                                        ; $7e37: $8e
	nop                                              ; $7e38: $00
	add  a                                           ; $7e39: $87
	ld   b, $8f                                      ; $7e3a: $06 $8f
	sub  b                                           ; $7e3c: $90
	sub  c                                           ; $7e3d: $91
	sub  d                                           ; $7e3e: $92
	sub  e                                           ; $7e3f: $93
	sub  h                                           ; $7e40: $94
	nop                                              ; $7e41: $00
	and  a                                           ; $7e42: $a7
	dec  b                                           ; $7e43: $05
	ld   e, $15                                      ; $7e44: $1e $15
	ld   d, $17                                      ; $7e46: $16 $17
	jr   jr_0a3_7e4a                                 ; $7e48: $18 $00

jr_0a3_7e4a:
	rst  ToBoot                                         ; $7e4a: $c7
	dec  b                                           ; $7e4b: $05
	add  hl, de                                      ; $7e4c: $19
	ld   a, [de]                                     ; $7e4d: $1a
	dec  de                                          ; $7e4e: $1b
	inc  e                                           ; $7e4f: $1c
	dec  e                                           ; $7e50: $1d
	nop                                              ; $7e51: $00
	add  sp, $05                                     ; $7e52: $e8 $05
	rra                                              ; $7e54: $1f
	jr   nz, jr_0a3_7e78                             ; $7e55: $20 $21

	ld   [hl+], a                                    ; $7e57: $22
	inc  hl                                          ; $7e58: $23
	ld   bc, $0408                                   ; $7e59: $01 $08 $04
	inc  h                                           ; $7e5c: $24
	dec  h                                           ; $7e5d: $25
	ld   h, $27                                      ; $7e5e: $26 $27
	ld   bc, $0428                                   ; $7e60: $01 $28 $04
	jr   z, jr_0a3_7e8e                              ; $7e63: $28 $29

	ld   a, [hl+]                                    ; $7e65: $2a
	dec  hl                                          ; $7e66: $2b
	rst  $38                                         ; $7e67: $ff
	nop                                              ; $7e68: $00
	ld   c, b                                        ; $7e69: $48
	dec  b                                           ; $7e6a: $05
	add  b                                           ; $7e6b: $80
	add  c                                           ; $7e6c: $81
	add  d                                           ; $7e6d: $82
	add  e                                           ; $7e6e: $83
	and  b                                           ; $7e6f: $a0
	nop                                              ; $7e70: $00
	ld   h, a                                        ; $7e71: $67
	ld   b, $84                                      ; $7e72: $06 $84
	add  l                                           ; $7e74: $85
	add  [hl]                                        ; $7e75: $86
	add  a                                           ; $7e76: $87
	adc  b                                           ; $7e77: $88

jr_0a3_7e78:
	and  b                                           ; $7e78: $a0
	nop                                              ; $7e79: $00
	add  a                                           ; $7e7a: $87
	dec  b                                           ; $7e7b: $05
	adc  c                                           ; $7e7c: $89
	and  b                                           ; $7e7d: $a0
	and  b                                           ; $7e7e: $a0
	and  b                                           ; $7e7f: $a0
	and  b                                           ; $7e80: $a0
	nop                                              ; $7e81: $00
	and  a                                           ; $7e82: $a7
	dec  b                                           ; $7e83: $05
	adc  d                                           ; $7e84: $8a
	and  b                                           ; $7e85: $a0
	and  b                                           ; $7e86: $a0
	and  b                                           ; $7e87: $a0
	and  b                                           ; $7e88: $a0
	nop                                              ; $7e89: $00
	ret  z                                           ; $7e8a: $c8

	dec  b                                           ; $7e8b: $05
	adc  e                                           ; $7e8c: $8b
	adc  h                                           ; $7e8d: $8c

jr_0a3_7e8e:
	adc  l                                           ; $7e8e: $8d
	adc  [hl]                                        ; $7e8f: $8e
	adc  a                                           ; $7e90: $8f
	nop                                              ; $7e91: $00
	push hl                                          ; $7e92: $e5
	ld   bc, $0090                                   ; $7e93: $01 $90 $00
	add  sp, $04                                     ; $7e96: $e8 $04
	sub  c                                           ; $7e98: $91
	ld   [de], a                                     ; $7e99: $12
	inc  de                                          ; $7e9a: $13
	sub  h                                           ; $7e9b: $94
	ld   bc, $0606                                   ; $7e9c: $01 $06 $06
	and  b                                           ; $7e9f: $a0
	sub  l                                           ; $7ea0: $95
	ld   d, $17                                      ; $7ea1: $16 $17
	jr   jr_0a3_7ebe                                 ; $7ea3: $18 $19

	ld   bc, $0627                                   ; $7ea5: $01 $27 $06
	sbc  d                                           ; $7ea8: $9a
	dec  de                                          ; $7ea9: $1b
	inc  e                                           ; $7eaa: $1c
	dec  e                                           ; $7eab: $1d
	sbc  [hl]                                        ; $7eac: $9e
	sbc  a                                           ; $7ead: $9f
	rst  $38                                         ; $7eae: $ff
	nop                                              ; $7eaf: $00
	add  hl, bc                                      ; $7eb0: $09
	ld   [bc], a                                     ; $7eb1: $02
	ld   e, $1e                                      ; $7eb2: $1e $1e
	nop                                              ; $7eb4: $00
	add  hl, hl                                      ; $7eb5: $29
	ld   [bc], a                                     ; $7eb6: $02
	ld   e, $1e                                      ; $7eb7: $1e $1e
	nop                                              ; $7eb9: $00
	ld   c, b                                        ; $7eba: $48
	inc  b                                           ; $7ebb: $04
	ld   e, $1e                                      ; $7ebc: $1e $1e

jr_0a3_7ebe:
	ld   e, $80                                      ; $7ebe: $1e $80
	nop                                              ; $7ec0: $00
	ld   l, b                                        ; $7ec1: $68
	inc  b                                           ; $7ec2: $04
	ld   e, $1e                                      ; $7ec3: $1e $1e
	ld   e, $81                                      ; $7ec5: $1e $81
	nop                                              ; $7ec7: $00
	adc  b                                           ; $7ec8: $88
	inc  bc                                          ; $7ec9: $03
	add  d                                           ; $7eca: $82
	add  e                                           ; $7ecb: $83
	add  h                                           ; $7ecc: $84
	nop                                              ; $7ecd: $00
	xor  b                                           ; $7ece: $a8
	inc  bc                                          ; $7ecf: $03
	add  l                                           ; $7ed0: $85
	add  [hl]                                        ; $7ed1: $86
	add  a                                           ; $7ed2: $87
	nop                                              ; $7ed3: $00
	rst  ToBoot                                         ; $7ed4: $c7
	ld   b, $08                                      ; $7ed5: $06 $08
	add  hl, bc                                      ; $7ed7: $09
	ld   a, [bc]                                     ; $7ed8: $0a
	dec  bc                                          ; $7ed9: $0b
	inc  c                                           ; $7eda: $0c
	dec  c                                           ; $7edb: $0d
	nop                                              ; $7edc: $00
	rst  $20                                         ; $7edd: $e7
	ld   b, $0e                                      ; $7ede: $06 $0e
	rrca                                             ; $7ee0: $0f
	db   $10                                         ; $7ee1: $10
	ld   de, $1312                                   ; $7ee2: $11 $12 $13
	ld   bc, $0508                                   ; $7ee5: $01 $08 $05
	inc  d                                           ; $7ee8: $14
	dec  d                                           ; $7ee9: $15
	ld   d, $17                                      ; $7eea: $16 $17
	jr   @+$03                                       ; $7eec: $18 $01

	jr   z, jr_0a3_7ef5                              ; $7eee: $28 $05

	add  hl, de                                      ; $7ef0: $19
	ld   a, [de]                                     ; $7ef1: $1a
	dec  de                                          ; $7ef2: $1b
	inc  e                                           ; $7ef3: $1c
	dec  e                                           ; $7ef4: $1d

jr_0a3_7ef5:
	rst  $38                                         ; $7ef5: $ff
	nop                                              ; $7ef6: $00
	add  hl, bc                                      ; $7ef7: $09
	ld   [bc], a                                     ; $7ef8: $02
	add  b                                           ; $7ef9: $80
	add  c                                           ; $7efa: $81
	nop                                              ; $7efb: $00
	jr   z, jr_0a3_7f02                              ; $7efc: $28 $04

	add  d                                           ; $7efe: $82
	add  e                                           ; $7eff: $83
	add  h                                           ; $7f00: $84
	add  l                                           ; $7f01: $85

jr_0a3_7f02:
	nop                                              ; $7f02: $00
	ld   c, b                                        ; $7f03: $48
	inc  b                                           ; $7f04: $04
	add  [hl]                                        ; $7f05: $86
	add  a                                           ; $7f06: $87
	adc  b                                           ; $7f07: $88
	adc  c                                           ; $7f08: $89
	nop                                              ; $7f09: $00
	ld   l, d                                        ; $7f0a: $6a
	ld   bc, $008a                                   ; $7f0b: $01 $8a $00
	adc  d                                           ; $7f0e: $8a
	ld   [bc], a                                     ; $7f0f: $02
	dec  bc                                          ; $7f10: $0b
	inc  c                                           ; $7f11: $0c
	nop                                              ; $7f12: $00
	xor  b                                           ; $7f13: $a8
	ld   b, $0d                                      ; $7f14: $06 $0d
	ld   c, $0f                                      ; $7f16: $0e $0f
	db   $10                                         ; $7f18: $10
	ld   de, $0012                                   ; $7f19: $11 $12 $00
	ret  z                                           ; $7f1c: $c8

	dec  b                                           ; $7f1d: $05
	inc  de                                          ; $7f1e: $13
	inc  d                                           ; $7f1f: $14
	dec  d                                           ; $7f20: $15
	ld   d, $17                                      ; $7f21: $16 $17
	nop                                              ; $7f23: $00
	rst  $20                                         ; $7f24: $e7
	dec  b                                           ; $7f25: $05
	jr   jr_0a3_7f41                                 ; $7f26: $18 $19

	ld   a, [de]                                     ; $7f28: $1a
	dec  de                                          ; $7f29: $1b
	inc  e                                           ; $7f2a: $1c
	ld   bc, $0106                                   ; $7f2b: $01 $06 $01
	dec  e                                           ; $7f2e: $1d
	ld   bc, $0309                                   ; $7f2f: $01 $09 $03
	ld   e, $1f                                      ; $7f32: $1e $1f
	jr   nz, jr_0a3_7f37                             ; $7f34: $20 $01

	daa                                              ; $7f36: $27

jr_0a3_7f37:
	inc  b                                           ; $7f37: $04
	ld   hl, $2322                                   ; $7f38: $21 $22 $23
	inc  h                                           ; $7f3b: $24
	rst  $38                                         ; $7f3c: $ff
	ld   a, [bc]                                     ; $7f3d: $0a
	nop                                              ; $7f3e: $00
	add  b                                           ; $7f3f: $80
	nop                                              ; $7f40: $00

jr_0a3_7f41:
	inc  c                                           ; $7f41: $0c
	inc  bc                                          ; $7f42: $03
	nop                                              ; $7f43: $00
	inc  b                                           ; $7f44: $04
	ld   [bc], a                                     ; $7f45: $02
	ld   a, [bc]                                     ; $7f46: $0a
	ld   b, $16                                      ; $7f47: $06 $16
	ld   c, $2e                                      ; $7f49: $0e $2e
	ld   e, $5e                                      ; $7f4b: $1e $5e
	ld   a, $be                                      ; $7f4d: $3e $be
	add  c                                           ; $7f4f: $81
	ld   a, [hl]                                     ; $7f50: $7e
	inc  c                                           ; $7f51: $0c
	cp   $3e                                         ; $7f52: $fe $3e
	ld   a, [hl]                                     ; $7f54: $7e
	ld   e, $3e                                      ; $7f55: $1e $3e
	ld   c, $1e                                      ; $7f57: $0e $1e
	ld   b, $0e                                      ; $7f59: $06 $0e
	ld   [bc], a                                     ; $7f5b: $02
	ld   b, $00                                      ; $7f5c: $06 $00
	inc  bc                                          ; $7f5e: $03
	add  c                                           ; $7f5f: $81
	nop                                              ; $7f60: $00
	inc  c                                           ; $7f61: $0c
	ret  nz                                          ; $7f62: $c0

	nop                                              ; $7f63: $00
	jr   nz, jr_0a3_7fa6                             ; $7f64: $20 $40

	ld   d, b                                        ; $7f66: $50
	ld   h, b                                        ; $7f67: $60
	ld   l, b                                        ; $7f68: $68
	ld   [hl], b                                     ; $7f69: $70
	ld   [hl], h                                     ; $7f6a: $74
	ld   a, b                                        ; $7f6b: $78
	ld   a, d                                        ; $7f6c: $7a
	ld   a, h                                        ; $7f6d: $7c
	ld   a, l                                        ; $7f6e: $7d
	add  c                                           ; $7f6f: $81
	ld   a, [hl]                                     ; $7f70: $7e
	inc  c                                           ; $7f71: $0c
	ld   a, a                                        ; $7f72: $7f
	ld   a, h                                        ; $7f73: $7c
	ld   a, [hl]                                     ; $7f74: $7e
	ld   a, b                                        ; $7f75: $78
	ld   a, h                                        ; $7f76: $7c
	ld   [hl], b                                     ; $7f77: $70
	ld   a, b                                        ; $7f78: $78
	ld   h, b                                        ; $7f79: $60
	ld   [hl], b                                     ; $7f7a: $70
	ld   b, b                                        ; $7f7b: $40
	ld   h, b                                        ; $7f7c: $60
	nop                                              ; $7f7d: $00
	ret  nz                                          ; $7f7e: $c0

	rst  $38                                         ; $7f7f: $ff
	nop                                              ; $7f80: $00
	cp   [hl]                                        ; $7f81: $be
	nop                                              ; $7f82: $00
	nop                                              ; $7f83: $00
	ld   c, b                                        ; $7f84: $48
	inc  b                                           ; $7f85: $04
	inc  d                                           ; $7f86: $14
	inc  d                                           ; $7f87: $14
	inc  d                                           ; $7f88: $14
	inc  d                                           ; $7f89: $14
	nop                                              ; $7f8a: $00
	ld   l, b                                        ; $7f8b: $68
	dec  b                                           ; $7f8c: $05
	inc  d                                           ; $7f8d: $14
	inc  d                                           ; $7f8e: $14
	inc  d                                           ; $7f8f: $14
	add  b                                           ; $7f90: $80
	add  c                                           ; $7f91: $81
	nop                                              ; $7f92: $00
	adc  b                                           ; $7f93: $88
	ld   b, $14                                      ; $7f94: $06 $14
	inc  d                                           ; $7f96: $14
	inc  d                                           ; $7f97: $14
	inc  d                                           ; $7f98: $14
	add  d                                           ; $7f99: $82
	add  e                                           ; $7f9a: $83
	nop                                              ; $7f9b: $00
	xor  b                                           ; $7f9c: $a8
	inc  bc                                          ; $7f9d: $03
	inc  d                                           ; $7f9e: $14
	inc  d                                           ; $7f9f: $14
	inc  d                                           ; $7fa0: $14
	nop                                              ; $7fa1: $00
	xor  h                                           ; $7fa2: $ac
	ld   [bc], a                                     ; $7fa3: $02
	add  h                                           ; $7fa4: $84
	add  l                                           ; $7fa5: $85

jr_0a3_7fa6:
	nop                                              ; $7fa6: $00
	jp   z, $1401                                    ; $7fa7: $ca $01 $14

	nop                                              ; $7faa: $00
	call z, $8602                                    ; $7fab: $cc $02 $86
	add  a                                           ; $7fae: $87
	nop                                              ; $7faf: $00
	ld   [$0804], a                                  ; $7fb0: $ea $04 $08
	inc  d                                           ; $7fb3: $14
	adc  c                                           ; $7fb4: $89
	adc  d                                           ; $7fb5: $8a
	ld   bc, $0509                                   ; $7fb6: $01 $09 $05
	inc  d                                           ; $7fb9: $14
	dec  bc                                          ; $7fba: $0b
	inc  c                                           ; $7fbb: $0c
	dec  c                                           ; $7fbc: $0d
	adc  [hl]                                        ; $7fbd: $8e
	ld   bc, $0628                                   ; $7fbe: $01 $28 $06
	inc  d                                           ; $7fc1: $14
	rrca                                             ; $7fc2: $0f
	db   $10                                         ; $7fc3: $10
	ld   de, $9312                                   ; $7fc4: $11 $12 $93
	rst  $38                                         ; $7fc7: $ff
	rst  $38                                         ; $7fc8: $ff
	ld   a, a                                        ; $7fc9: $7f
	rst  JumpTable                                         ; $7fca: $df
	ld   e, l                                        ; $7fcb: $5d
	dec  de                                          ; $7fcc: $1b
	ld   b, c                                        ; $7fcd: $41
	ld   b, e                                        ; $7fce: $43
	db   $10                                         ; $7fcf: $10
	rst  $38                                         ; $7fd0: $ff
	ld   a, a                                        ; $7fd1: $7f
	rst  JumpTable                                         ; $7fd2: $df
	ld   e, l                                        ; $7fd3: $5d
	dec  b                                           ; $7fd4: $05
	add  hl, hl                                      ; $7fd5: $29
	ld   b, e                                        ; $7fd6: $43
	db   $10                                         ; $7fd7: $10
	rst  $38                                         ; $7fd8: $ff
	ld   a, a                                        ; $7fd9: $7f
	ld   e, a                                        ; $7fda: $5f
	ld   c, $05                                      ; $7fdb: $0e $05
	add  hl, hl                                      ; $7fdd: $29
	ld   b, e                                        ; $7fde: $43
	db   $10                                         ; $7fdf: $10
	rst  $38                                         ; $7fe0: $ff
	ld   a, a                                        ; $7fe1: $7f
	ld   e, a                                        ; $7fe2: $5f
	nop                                              ; $7fe3: $00
	dec  b                                           ; $7fe4: $05
	add  hl, hl                                      ; $7fe5: $29
	ld   b, e                                        ; $7fe6: $43
	db   $10                                         ; $7fe7: $10
	rst  $38                                         ; $7fe8: $ff
	ld   a, a                                        ; $7fe9: $7f
	rst  $38                                         ; $7fea: $ff
	ld   a, a                                        ; $7feb: $7f
	dec  b                                           ; $7fec: $05
	add  hl, hl                                      ; $7fed: $29
	ld   b, e                                        ; $7fee: $43
	db   $10                                         ; $7fef: $10
	rst  $38                                         ; $7ff0: $ff
	ld   a, a                                        ; $7ff1: $7f
	ld   e, a                                        ; $7ff2: $5f
	nop                                              ; $7ff3: $00
	rst  $38                                         ; $7ff4: $ff
	ld   a, a                                        ; $7ff5: $7f
	ld   b, e                                        ; $7ff6: $43
	db   $10                                         ; $7ff7: $10
	rst  $38                                         ; $7ff8: $ff
	ld   a, a                                        ; $7ff9: $7f
	ld   e, a                                        ; $7ffa: $5f
	ld   c, $df                                      ; $7ffb: $0e $df
	ld   e, l                                        ; $7ffd: $5d
	ld   b, e                                        ; $7ffe: $43
	db   $10                                         ; $7fff: $10
