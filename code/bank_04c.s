; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $04c", ROMX[$4000], BANK[$4c]

	ld   e, b                                        ; $4000: $58
	ld   e, b                                        ; $4001: $58
	ld   [hl], c                                     ; $4002: $71
	ld   a, [$6b10]                                  ; $4003: $fa $10 $6b
	ld   d, h                                        ; $4006: $54
	ld   e, c                                        ; $4007: $59
	ld   a, [$0df9]                                  ; $4008: $fa $f9 $0d
	xor  h                                           ; $400b: $ac
	call nz, $a9b4                                   ; $400c: $c4 $b4 $a9
	xor  c                                           ; $400f: $a9
	ld   e, c                                        ; $4010: $59
	ld   sp, hl                                      ; $4011: $f9
	and  a                                           ; $4012: $a7
	jp   nz, $8c90                                   ; $4013: $c2 $90 $8c

	ld   l, [hl]                                     ; $4016: $6e
	adc  h                                           ; $4017: $8c
	ld   l, [hl]                                     ; $4018: $6e
	dec  c                                           ; $4019: $0d
	inc  bc                                          ; $401a: $03
	ld   a, [hl-]                                    ; $401b: $3a
	ld   [hl], h                                     ; $401c: $74
	ld   l, l                                        ; $401d: $6d
	sub  b                                           ; $401e: $90
	and  c                                           ; $401f: $a1
	sub  d                                           ; $4020: $92
	ld   a, b                                        ; $4021: $78
	ld   d, d                                        ; $4022: $52
	ld   a, b                                        ; $4023: $78
	db   $fc                                         ; $4024: $fc
	sbc  a                                           ; $4025: $9f
	dec  c                                           ; $4026: $0d
	nop                                              ; $4027: $00
	ld   a, [bc]                                     ; $4028: $0a
	dec  e                                           ; $4029: $1d
	ld   b, b                                        ; $402a: $40
	dec  d                                           ; $402b: $15
	inc  bc                                          ; $402c: $03
	dec  d                                           ; $402d: $15
	ld   bc, $2801                                   ; $402e: $01 $01 $28
	nop                                              ; $4031: $00
	ld   bc, $ffff                                   ; $4032: $01 $ff $ff
	ld   [hl], c                                     ; $4035: $71
	ld   [hl], h                                     ; $4036: $74
	sbc  [hl]                                        ; $4037: $9e
	ld   a, b                                        ; $4038: $78
	and  c                                           ; $4039: $a1
	ld   [hl], l                                     ; $403a: $75
	sub  d                                           ; $403b: $92
	ld   a, e                                        ; $403c: $7b
	and  c                                           ; $403d: $a1
	ld   a, [$000d]                                  ; $403e: $fa $0d $00
	ld   a, [bc]                                     ; $4041: $0a
	ld   b, $e0                                      ; $4042: $06 $e0
	ld   bc, $000f                                   ; $4044: $01 $0f $00
	ld   bc, $6101                                   ; $4047: $01 $01 $61
	and  c                                           ; $404a: $a1
	ld   e, d                                        ; $404b: $5a
	sbc  b                                           ; $404c: $98
	inc  bc                                          ; $404d: $03
	ld   c, $5f                                      ; $404e: $0e $5f
	ld   [hl], h                                     ; $4050: $74
	adc  h                                           ; $4051: $8c
	ld   h, a                                        ; $4052: $67
	ld   a, e                                        ; $4053: $7b
	sbc  a                                           ; $4054: $9f
	dec  c                                           ; $4055: $0d
	nop                                              ; $4056: $00
	ld   a, [bc]                                     ; $4057: $0a
	rrca                                             ; $4058: $0f
	dec  b                                           ; $4059: $05
	ld   [$7801], sp                                 ; $405a: $08 $01 $78
	and  c                                           ; $405d: $a1
	sub  d                                           ; $405e: $92
	ld   l, e                                        ; $405f: $6b
	sbc  d                                           ; $4060: $9a
	sbc  a                                           ; $4061: $9f
	dec  c                                           ; $4062: $0d
	ld   [bc], a                                     ; $4063: $02
	sub  l                                           ; $4064: $95
	ld   l, l                                        ; $4065: $6d
	adc  h                                           ; $4066: $8c
	and  c                                           ; $4067: $a1
	adc  h                                           ; $4068: $8c
	sub  d                                           ; $4069: $92
	and  c                                           ; $406a: $a1
	rst  $38                                         ; $406b: $ff
	rst  $38                                         ; $406c: $ff
	sbc  a                                           ; $406d: $9f
	dec  c                                           ; $406e: $0d
	nop                                              ; $406f: $00
	ld   a, [bc]                                     ; $4070: $0a
	ld   b, $e0                                      ; $4071: $06 $e0
	ld   bc, $000f                                   ; $4073: $01 $0f $00
	ld   bc, $5001                                   ; $4076: $01 $01 $50
	sbc  [hl]                                        ; $4079: $9e
	ld   d, b                                        ; $407a: $50
	ld   a, h                                        ; $407b: $7c
	rst  $38                                         ; $407c: $ff
	rst  $38                                         ; $407d: $ff
	dec  c                                           ; $407e: $0d
	ld   e, d                                        ; $407f: $5a
	and  c                                           ; $4080: $a1
	ld   a, [hl]                                     ; $4081: $7e
	ld   [hl], c                                     ; $4082: $71
	ld   [hl], h                                     ; $4083: $74
	ld   e, l                                        ; $4084: $5d
	ld   l, [hl]                                     ; $4085: $6e
	ld   h, e                                        ; $4086: $63
	ld   d, d                                        ; $4087: $52
	ld   a, e                                        ; $4088: $7b
	sbc  a                                           ; $4089: $9f
	dec  c                                           ; $408a: $0d
	nop                                              ; $408b: $00
	ld   a, [bc]                                     ; $408c: $0a
	rrca                                             ; $408d: $0f
	dec  b                                           ; $408e: $05
	ld   [$5001], sp                                 ; $408f: $08 $01 $50
	ld   d, b                                        ; $4092: $50
	rst  $38                                         ; $4093: $ff
	rst  $38                                         ; $4094: $ff
	dec  c                                           ; $4095: $0d
	ld   e, b                                        ; $4096: $58
	ld   e, b                                        ; $4097: $58
	ld   e, e                                        ; $4098: $5b
	ld   a, c                                        ; $4099: $79
	rst  $38                                         ; $409a: $ff
	rst  $38                                         ; $409b: $ff
	rst  $38                                         ; $409c: $ff
	rst  $38                                         ; $409d: $ff
	dec  c                                           ; $409e: $0d
	nop                                              ; $409f: $00
	ld   a, [bc]                                     ; $40a0: $0a
	nop                                              ; $40a1: $00
	rrca                                             ; $40a2: $0f
	nop                                              ; $40a3: $00
	ld   bc, $8c01                                   ; $40a4: $01 $01 $8c
	ld   d, b                                        ; $40a7: $50
	adc  h                                           ; $40a8: $8c
	ld   d, b                                        ; $40a9: $50
	sbc  [hl]                                        ; $40aa: $9e
	ld   [bc], a                                     ; $40ab: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40ac: $cf
	dec  b                                           ; $40ad: $05
	ld   a, [de]                                     ; $40ae: $1a
	ld   h, e                                        ; $40af: $63
	and  c                                           ; $40b0: $a1
	sbc  a                                           ; $40b1: $9f
	dec  c                                           ; $40b2: $0d
	ld   h, c                                        ; $40b3: $61
	and  c                                           ; $40b4: $a1
	ld   a, b                                        ; $40b5: $78
	ld   h, c                                        ; $40b6: $61
	halt                                             ; $40b7: $76
	sbc  l                                           ; $40b8: $9d
	ld   h, h                                        ; $40b9: $64
	sub  b                                           ; $40ba: $90
	dec  c                                           ; $40bb: $0d
	ld   d, b                                        ; $40bc: $50
	sbc  c                                           ; $40bd: $99
	ld   h, [hl]                                     ; $40be: $66
	sub  c                                           ; $40bf: $91
	ld   a, b                                        ; $40c0: $78
	ld   d, d                                        ; $40c1: $52
	ld   [hl], l                                     ; $40c2: $75
	ld   h, a                                        ; $40c3: $67
	ld   e, c                                        ; $40c4: $59
	sbc  a                                           ; $40c5: $9f
	dec  c                                           ; $40c6: $0d
	nop                                              ; $40c7: $00
	ld   a, [bc]                                     ; $40c8: $0a
	ld   bc, $8303                                   ; $40c9: $01 $03 $83
	inc  b                                           ; $40cc: $04
	sbc  b                                           ; $40cd: $98
	ld   a, l                                        ; $40ce: $7d
	inc  bc                                          ; $40cf: $03
	ld   [de], a                                     ; $40d0: $12
	ld   [bc], a                                     ; $40d1: $02
	ld   c, h                                        ; $40d2: $4c
	ld   a, h                                        ; $40d3: $7c
	rst  $38                                         ; $40d4: $ff
	rst  $38                                         ; $40d5: $ff
	dec  c                                           ; $40d6: $0d
	nop                                              ; $40d7: $00
	ld   a, [bc]                                     ; $40d8: $0a
	add  hl, de                                      ; $40d9: $19
	dec  b                                           ; $40da: $05
	inc  bc                                          ; $40db: $03
	inc  b                                           ; $40dc: $04
	ld   e, h                                        ; $40dd: $5c
	inc  b                                           ; $40de: $04
	dec  b                                           ; $40df: $05
	nop                                              ; $40e0: $00
	nop                                              ; $40e1: $00
	rst  JumpTable                                         ; $40e2: $df
	rst  JumpTable                                         ; $40e3: $df
	nop                                              ; $40e4: $00
	ld   bc, $8104                                   ; $40e5: $01 $04 $81
	nop                                              ; $40e8: $00
	ld   [bc], a                                     ; $40e9: $02
	rlca                                             ; $40ea: $07
	ld   b, [hl]                                     ; $40eb: $46
	ld   [bc], a                                     ; $40ec: $02
	ld   [bc], a                                     ; $40ed: $02
	inc  bc                                          ; $40ee: $03
	ld   bc, $2000                                   ; $40ef: $01 $00 $20
	nop                                              ; $40f2: $00
	rlca                                             ; $40f3: $07
	db   $ec                                         ; $40f4: $ec
	ld   [bc], a                                     ; $40f5: $02
	ld   [bc], a                                     ; $40f6: $02
	inc  bc                                          ; $40f7: $03
	ld   bc, $2001                                   ; $40f8: $01 $01 $20
	nop                                              ; $40fb: $00
	rlca                                             ; $40fc: $07
	add  d                                           ; $40fd: $82
	inc  bc                                          ; $40fe: $03
	ld   [bc], a                                     ; $40ff: $02
	inc  bc                                          ; $4100: $03
	ld   bc, $2002                                   ; $4101: $01 $02 $20
	nop                                              ; $4104: $00
	ld   b, $e0                                      ; $4105: $06 $e0
	inc  bc                                          ; $4107: $03
	rrca                                             ; $4108: $0f
	nop                                              ; $4109: $00
	ld   bc, $0101                                   ; $410a: $01 $01 $01
	rlca                                             ; $410d: $07
	inc  bc                                          ; $410e: $03
	add  e                                           ; $410f: $83
	inc  b                                           ; $4110: $04
	sbc  b                                           ; $4111: $98
	ld   a, l                                        ; $4112: $7d
	inc  bc                                          ; $4113: $03
	ld   [de], a                                     ; $4114: $12
	ld   [bc], a                                     ; $4115: $02
	ld   c, h                                        ; $4116: $4c
	ld   a, h                                        ; $4117: $7c
	inc  b                                           ; $4118: $04
	ld   e, h                                        ; $4119: $5c
	inc  b                                           ; $411a: $04
	dec  b                                           ; $411b: $05
	ld   l, [hl]                                     ; $411c: $6e
	ld   bc, $0d08                                   ; $411d: $01 $08 $0d
	ld   [hl], c                                     ; $4120: $71
	ld   [hl], h                                     ; $4121: $74
	ld   a, e                                        ; $4122: $7b
	sbc  a                                           ; $4123: $9f
	dec  c                                           ; $4124: $0d
	nop                                              ; $4125: $00
	ld   a, [bc]                                     ; $4126: $0a
	rrca                                             ; $4127: $0f
	dec  b                                           ; $4128: $05
	ld   [$a101], sp                                 ; $4129: $08 $01 $a1
	ld   sp, hl                                      ; $412c: $f9
	db   $10                                         ; $412d: $10
	ld   a, b                                        ; $412e: $78
	and  c                                           ; $412f: $a1
	sub  d                                           ; $4130: $92
	ld   l, e                                        ; $4131: $6b
	sbc  d                                           ; $4132: $9a
	ld   sp, hl                                      ; $4133: $f9
	dec  c                                           ; $4134: $0d
	ret  nc                                          ; $4135: $d0

	ret  nc                                          ; $4136: $d0

	ret  nc                                          ; $4137: $d0

	ret  nc                                          ; $4138: $d0

	ret  nc                                          ; $4139: $d0

	ret  nc                                          ; $413a: $d0

	ret  nc                                          ; $413b: $d0

	sbc  a                                           ; $413c: $9f
	dec  c                                           ; $413d: $0d
	ld   l, e                                        ; $413e: $6b
	sbc  d                                           ; $413f: $9a
	and  b                                           ; $4140: $a0
	ld   [bc], a                                     ; $4141: $02
	sbc  l                                           ; $4142: $9d
	ld   d, h                                        ; $4143: $54
	ld   a, b                                        ; $4144: $78
	sub  a                                           ; $4145: $97
	sbc  [hl]                                        ; $4146: $9e
	dec  c                                           ; $4147: $0d
	nop                                              ; $4148: $00
	ld   a, [bc]                                     ; $4149: $0a
	ld   bc, $0701                                   ; $414a: $01 $01 $07
	inc  bc                                          ; $414d: $03
	add  e                                           ; $414e: $83
	inc  b                                           ; $414f: $04
	sbc  b                                           ; $4150: $98
	ld   a, l                                        ; $4151: $7d
	inc  bc                                          ; $4152: $03
	ld   [de], a                                     ; $4153: $12
	ld   [bc], a                                     ; $4154: $02
	ld   c, h                                        ; $4155: $4c
	ld   a, h                                        ; $4156: $7c
	inc  b                                           ; $4157: $04
	add  c                                           ; $4158: $81
	ld   bc, $9208                                   ; $4159: $01 $08 $92
	sbc  e                                           ; $415c: $9b
	sbc  a                                           ; $415d: $9f
	dec  c                                           ; $415e: $0d
	adc  h                                           ; $415f: $8c
	ld   [hl], c                                     ; $4160: $71
	ld   l, l                                        ; $4161: $6d
	ld   e, l                                        ; $4162: $5d
	sbc  [hl]                                        ; $4163: $9e
	ld   [$7d00], sp                                 ; $4164: $08 $00 $7d
	and  c                                           ; $4167: $a1
	ld   a, l                                        ; $4168: $7d
	dec  c                                           ; $4169: $0d
	ld   e, b                                        ; $416a: $58
	sub  b                                           ; $416b: $90
	sbc  e                                           ; $416c: $9b
	ld   d, d                                        ; $416d: $52
	sub  d                                           ; $416e: $92
	ld   [hl], c                                     ; $416f: $71
	ld   l, a                                        ; $4170: $6f
	sub  c                                           ; $4171: $91
	ld   a, b                                        ; $4172: $78
	db   $fc                                         ; $4173: $fc
	rst  $38                                         ; $4174: $ff
	rst  $38                                         ; $4175: $ff
	rst  $38                                         ; $4176: $ff
	rst  $38                                         ; $4177: $ff
	dec  c                                           ; $4178: $0d
	nop                                              ; $4179: $00
	ld   a, [bc]                                     ; $417a: $0a
	inc  e                                           ; $417b: $1c
	dec  b                                           ; $417c: $05
	inc  bc                                          ; $417d: $03
	inc  bc                                          ; $417e: $03
	dec  e                                           ; $417f: $1d
	ld   b, b                                        ; $4180: $40
	dec  d                                           ; $4181: $15
	inc  bc                                          ; $4182: $03
	dec  d                                           ; $4183: $15
	ld   bc, $2803                                   ; $4184: $01 $03 $28
	nop                                              ; $4187: $00
	ld   bc, $7150                                   ; $4188: $01 $50 $71
	ld   a, [$6b10]                                  ; $418b: $fa $10 $6b
	ld   d, h                                        ; $418e: $54
	sub  d                                           ; $418f: $92
	and  c                                           ; $4190: $a1
	ld   e, c                                        ; $4191: $59
	ld   a, [$010d]                                  ; $4192: $fa $0d $01
	rlca                                             ; $4195: $07
	inc  bc                                          ; $4196: $03
	add  e                                           ; $4197: $83
	inc  b                                           ; $4198: $04
	sbc  b                                           ; $4199: $98
	ld   a, l                                        ; $419a: $7d
	inc  bc                                          ; $419b: $03
	ld   [de], a                                     ; $419c: $12
	ld   [bc], a                                     ; $419d: $02
	ld   c, h                                        ; $419e: $4c
	ld   a, h                                        ; $419f: $7c
	inc  b                                           ; $41a0: $04
	add  c                                           ; $41a1: $81
	ld   bc, $7808                                   ; $41a2: $01 $08 $78
	and  c                                           ; $41a5: $a1
	sub  d                                           ; $41a6: $92
	ld   a, [$000d]                                  ; $41a7: $fa $0d $00
	ld   a, [bc]                                     ; $41aa: $0a
	ld   b, $21                                      ; $41ab: $06 $21
	inc  b                                           ; $41ad: $04
	rrca                                             ; $41ae: $0f
	nop                                              ; $41af: $00
	ld   bc, $0101                                   ; $41b0: $01 $01 $01
	rlca                                             ; $41b3: $07
	inc  bc                                          ; $41b4: $03
	add  e                                           ; $41b5: $83
	inc  b                                           ; $41b6: $04
	sbc  b                                           ; $41b7: $98
	ld   a, l                                        ; $41b8: $7d
	inc  bc                                          ; $41b9: $03
	ld   [de], a                                     ; $41ba: $12
	ld   [bc], a                                     ; $41bb: $02
	ld   c, h                                        ; $41bc: $4c
	ld   a, h                                        ; $41bd: $7c
	rst  JumpTable                                         ; $41be: $df
	rst  JumpTable                                         ; $41bf: $df
	ld   bc, $0d08                                   ; $41c0: $01 $08 $0d
	ld   [hl], c                                     ; $41c3: $71
	ld   [hl], h                                     ; $41c4: $74
	ld   a, e                                        ; $41c5: $7b
	sbc  a                                           ; $41c6: $9f
	dec  c                                           ; $41c7: $0d
	nop                                              ; $41c8: $00
	ld   a, [bc]                                     ; $41c9: $0a
	rrca                                             ; $41ca: $0f
	dec  b                                           ; $41cb: $05
	ld   [$0101], sp                                 ; $41cc: $08 $01 $01
	rlca                                             ; $41cf: $07
	rst  JumpTable                                         ; $41d0: $df
	rst  JumpTable                                         ; $41d1: $df
	ld   bc, $7108                                   ; $41d2: $01 $08 $71
	ld   [hl], h                                     ; $41d5: $74
	ld   d, b                                        ; $41d6: $50
	and  c                                           ; $41d7: $a1
	ld   l, l                                        ; $41d8: $6d
	ld   a, l                                        ; $41d9: $7d
	dec  c                                           ; $41da: $0d
	inc  bc                                          ; $41db: $03
	ld   bc, $916f                                   ; $41dc: $01 $6f $91
	and  c                                           ; $41df: $a1
	ld   e, c                                        ; $41e0: $59
	ld   a, [$0df9]                                  ; $41e1: $fa $f9 $0d
	nop                                              ; $41e4: $00
	ld   a, [bc]                                     ; $41e5: $0a
	ld   bc, $9a6b                                   ; $41e6: $01 $6b $9a
	and  b                                           ; $41e9: $a0
	ld   [bc], a                                     ; $41ea: $02
	sbc  l                                           ; $41eb: $9d
	ld   d, h                                        ; $41ec: $54
	ld   a, b                                        ; $41ed: $78
	sub  a                                           ; $41ee: $97
	dec  c                                           ; $41ef: $0d
	ld   bc, $0307                                   ; $41f0: $01 $07 $03
	add  e                                           ; $41f3: $83
	inc  b                                           ; $41f4: $04
	sbc  b                                           ; $41f5: $98
	ld   a, l                                        ; $41f6: $7d
	inc  bc                                          ; $41f7: $03
	ld   [de], a                                     ; $41f8: $12
	ld   [bc], a                                     ; $41f9: $02
	ld   c, h                                        ; $41fa: $4c
	ld   a, h                                        ; $41fb: $7c
	inc  b                                           ; $41fc: $04
	add  c                                           ; $41fd: $81
	ld   bc, $9208                                   ; $41fe: $01 $08 $92
	sbc  e                                           ; $4201: $9b
	ld   sp, hl                                      ; $4202: $f9
	dec  c                                           ; $4203: $0d
	and  c                                           ; $4204: $a1
	ld   sp, hl                                      ; $4205: $f9
	db   $10                                         ; $4206: $10
	ld   l, e                                        ; $4207: $6b
	ld   d, h                                        ; $4208: $54
	ld   e, c                                        ; $4209: $59
	rst  $38                                         ; $420a: $ff
	rst  $38                                         ; $420b: $ff
	dec  c                                           ; $420c: $0d
	nop                                              ; $420d: $00
	ld   a, [bc]                                     ; $420e: $0a
	dec  e                                           ; $420f: $1d
	ld   b, b                                        ; $4210: $40
	dec  d                                           ; $4211: $15
	inc  bc                                          ; $4212: $03
	dec  d                                           ; $4213: $15
	ld   bc, $2801                                   ; $4214: $01 $01 $28
	nop                                              ; $4217: $00
	ld   bc, $0701                                   ; $4218: $01 $01 $07
	inc  bc                                          ; $421b: $03
	add  e                                           ; $421c: $83
	inc  b                                           ; $421d: $04
	sbc  b                                           ; $421e: $98
	ld   a, l                                        ; $421f: $7d
	inc  bc                                          ; $4220: $03
	ld   [de], a                                     ; $4221: $12
	ld   [bc], a                                     ; $4222: $02
	ld   c, h                                        ; $4223: $4c
	ld   a, h                                        ; $4224: $7c
	inc  b                                           ; $4225: $04
	add  c                                           ; $4226: $81
	ld   bc, $ff08                                   ; $4227: $01 $08 $ff
	rst  $38                                         ; $422a: $ff
	dec  c                                           ; $422b: $0d
	ld   l, e                                        ; $422c: $6b
	sub  d                                           ; $422d: $92
	ld   a, b                                        ; $422e: $78
	rst  $38                                         ; $422f: $ff
	rst  $38                                         ; $4230: $ff
	dec  c                                           ; $4231: $0d
	rst  $38                                         ; $4232: $ff
	rst  $38                                         ; $4233: $ff
	ld   d, h                                        ; $4234: $54
	and  c                                           ; $4235: $a1
	sbc  a                                           ; $4236: $9f
	ld   l, e                                        ; $4237: $6b
	ld   a, h                                        ; $4238: $7c
	halt                                             ; $4239: $76
	ld   e, b                                        ; $423a: $58
	sbc  b                                           ; $423b: $98
	sub  d                                           ; $423c: $92
	sbc  a                                           ; $423d: $9f
	dec  c                                           ; $423e: $0d
	nop                                              ; $423f: $00
	ld   a, [bc]                                     ; $4240: $0a
	ld   b, $21                                      ; $4241: $06 $21
	inc  b                                           ; $4243: $04
	rrca                                             ; $4244: $0f
	nop                                              ; $4245: $00
	ld   bc, $0101                                   ; $4246: $01 $01 $01
	rlca                                             ; $4249: $07
	inc  bc                                          ; $424a: $03
	add  e                                           ; $424b: $83
	inc  b                                           ; $424c: $04
	sbc  b                                           ; $424d: $98
	ld   a, l                                        ; $424e: $7d
	inc  bc                                          ; $424f: $03
	ld   [de], a                                     ; $4250: $12
	ld   [bc], a                                     ; $4251: $02
	ld   c, h                                        ; $4252: $4c
	ld   a, h                                        ; $4253: $7c
	inc  b                                           ; $4254: $04
	add  c                                           ; $4255: $81
	ld   bc, $0d08                                   ; $4256: $01 $08 $0d
	ld   [hl], c                                     ; $4259: $71
	ld   [hl], h                                     ; $425a: $74
	ld   a, e                                        ; $425b: $7b
	sbc  a                                           ; $425c: $9f
	dec  c                                           ; $425d: $0d
	nop                                              ; $425e: $00
	ld   a, [bc]                                     ; $425f: $0a
	rrca                                             ; $4260: $0f
	dec  b                                           ; $4261: $05
	ld   [$ff01], sp                                 ; $4262: $08 $01 $ff
	rst  $38                                         ; $4265: $ff
	rst  $38                                         ; $4266: $ff
	rst  $38                                         ; $4267: $ff
	rst  $38                                         ; $4268: $ff
	rst  $38                                         ; $4269: $ff
	dec  c                                           ; $426a: $0d
	ld   bc, $0307                                   ; $426b: $01 $07 $03
	add  e                                           ; $426e: $83
	inc  b                                           ; $426f: $04
	sbc  b                                           ; $4270: $98
	ld   a, l                                        ; $4271: $7d
	inc  bc                                          ; $4272: $03
	ld   [de], a                                     ; $4273: $12
	ld   [bc], a                                     ; $4274: $02
	ld   c, h                                        ; $4275: $4c
	ld   a, h                                        ; $4276: $7c
	inc  b                                           ; $4277: $04
	add  c                                           ; $4278: $81
	ld   bc, $5908                                   ; $4279: $01 $08 $59
	rst  $38                                         ; $427c: $ff
	dec  c                                           ; $427d: $0d
	nop                                              ; $427e: $00
	ld   a, [bc]                                     ; $427f: $0a
	dec  e                                           ; $4280: $1d
	ld   b, b                                        ; $4281: $40
	dec  d                                           ; $4282: $15
	inc  bc                                          ; $4283: $03
	dec  d                                           ; $4284: $15
	ld   bc, $2802                                   ; $4285: $01 $02 $28
	nop                                              ; $4288: $00
	ld   bc, $926b                                   ; $4289: $01 $6b $92
	ld   a, b                                        ; $428c: $78
	rst  $38                                         ; $428d: $ff
	rst  $38                                         ; $428e: $ff
	dec  c                                           ; $428f: $0d
	rst  $38                                         ; $4290: $ff
	rst  $38                                         ; $4291: $ff
	ld   d, h                                        ; $4292: $54
	and  c                                           ; $4293: $a1
	sbc  a                                           ; $4294: $9f
	ld   l, e                                        ; $4295: $6b
	ld   a, h                                        ; $4296: $7c
	halt                                             ; $4297: $76
	ld   e, b                                        ; $4298: $58
	sbc  b                                           ; $4299: $98
	sub  d                                           ; $429a: $92
	sbc  a                                           ; $429b: $9f
	dec  c                                           ; $429c: $0d
	nop                                              ; $429d: $00
	ld   a, [bc]                                     ; $429e: $0a
	ld   b, $21                                      ; $429f: $06 $21
	inc  b                                           ; $42a1: $04
	rrca                                             ; $42a2: $0f
	nop                                              ; $42a3: $00
	ld   bc, $0101                                   ; $42a4: $01 $01 $01
	inc  bc                                          ; $42a7: $03
	ld   d, b                                        ; $42a8: $50
	sbc  d                                           ; $42a9: $9a
	ld   sp, hl                                      ; $42aa: $f9
	db   $10                                         ; $42ab: $10
	ld   a, b                                        ; $42ac: $78
	and  c                                           ; $42ad: $a1
	ld   l, [hl]                                     ; $42ae: $6e
	ld   [hl], c                                     ; $42af: $71
	ld   e, a                                        ; $42b0: $5f
	ld   sp, hl                                      ; $42b1: $f9
	ld   bc, $0d04                                   ; $42b2: $01 $04 $0d
	rst  $38                                         ; $42b5: $ff
	rst  $38                                         ; $42b6: $ff
	sbc  [hl]                                        ; $42b7: $9e
	adc  h                                           ; $42b8: $8c
	ld   d, b                                        ; $42b9: $50
	sbc  [hl]                                        ; $42ba: $9e
	halt                                             ; $42bb: $76
	sub  b                                           ; $42bc: $90
	ld   e, c                                        ; $42bd: $59
	ld   e, l                                        ; $42be: $5d
	dec  c                                           ; $42bf: $0d
	ld   e, d                                        ; $42c0: $5a
	and  c                                           ; $42c1: $a1
	ld   a, [hl]                                     ; $42c2: $7e
	ld   [hl], c                                     ; $42c3: $71
	ld   [hl], h                                     ; $42c4: $74
	ld   e, l                                        ; $42c5: $5d
	ld   l, [hl]                                     ; $42c6: $6e
	ld   h, e                                        ; $42c7: $63
	ld   d, d                                        ; $42c8: $52
	ld   a, e                                        ; $42c9: $7b
	sbc  a                                           ; $42ca: $9f
	dec  c                                           ; $42cb: $0d
	nop                                              ; $42cc: $00
	ld   a, [bc]                                     ; $42cd: $0a
	rrca                                             ; $42ce: $0f
	dec  b                                           ; $42cf: $05
	ld   [$5001], sp                                 ; $42d0: $08 $01 $50
	ld   d, b                                        ; $42d3: $50
	rst  $38                                         ; $42d4: $ff
	rst  $38                                         ; $42d5: $ff
	dec  c                                           ; $42d6: $0d
	ld   e, b                                        ; $42d7: $58
	ld   e, b                                        ; $42d8: $58
	ld   e, e                                        ; $42d9: $5b
	ld   a, c                                        ; $42da: $79
	rst  $38                                         ; $42db: $ff
	rst  $38                                         ; $42dc: $ff
	rst  $38                                         ; $42dd: $ff
	rst  $38                                         ; $42de: $ff
	dec  c                                           ; $42df: $0d
	nop                                              ; $42e0: $00
	ld   a, [bc]                                     ; $42e1: $0a
	nop                                              ; $42e2: $00
	rrca                                             ; $42e3: $0f
	nop                                              ; $42e4: $00
	ld   bc, $0101                                   ; $42e5: $01 $01 $01
	inc  bc                                          ; $42e8: $03
	ld   e, b                                        ; $42e9: $58
	ld   [hl], c                                     ; $42ea: $71
	ld   a, [$1605]                                  ; $42eb: $fa $05 $16
	ld   l, a                                        ; $42ee: $6f
	inc  bc                                          ; $42ef: $03
	jp   c, $7471                                    ; $42f0: $da $71 $74

	ld   e, e                                        ; $42f3: $5b
	ld   l, l                                        ; $42f4: $6d
	ld   e, c                                        ; $42f5: $59
	ld   a, b                                        ; $42f6: $78
	ld   bc, $0d04                                   ; $42f7: $01 $04 $0d
	nop                                              ; $42fa: $00
	ld   a, [bc]                                     ; $42fb: $0a
	ld   bc, $cf02                                   ; $42fc: $01 $02 $cf
	dec  b                                           ; $42ff: $05
	ld   a, [de]                                     ; $4300: $1a
	ld   h, e                                        ; $4301: $63
	and  c                                           ; $4302: $a1
	ld   a, b                                        ; $4303: $78
	sub  a                                           ; $4304: $97
	sub  d                                           ; $4305: $92
	sbc  d                                           ; $4306: $9a
	adc  h                                           ; $4307: $8c
	ld   h, a                                        ; $4308: $67
	sub  [hl]                                        ; $4309: $96
	sbc  a                                           ; $430a: $9f
	dec  c                                           ; $430b: $0d
	ld   l, [hl]                                     ; $430c: $6e
	ld   [hl], c                                     ; $430d: $71
	ld   [hl], h                                     ; $430e: $74
	ld   [bc], a                                     ; $430f: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4310: $cf
	dec  b                                           ; $4311: $05
	ld   a, [de]                                     ; $4312: $1a
	ld   h, e                                        ; $4313: $63
	and  c                                           ; $4314: $a1
	ld   [hl], c                                     ; $4315: $71
	ld   [hl], h                                     ; $4316: $74
	rst  $38                                         ; $4317: $ff
	rst  $38                                         ; $4318: $ff
	dec  c                                           ; $4319: $0d
	nop                                              ; $431a: $00
	ld   a, [bc]                                     ; $431b: $0a
	add  hl, de                                      ; $431c: $19
	dec  b                                           ; $431d: $05
	inc  bc                                          ; $431e: $03
	ld   e, c                                        ; $431f: $59
	sbc  l                                           ; $4320: $9d
	ld   d, d                                        ; $4321: $52
	ld   d, d                                        ; $4322: $52
	and  c                                           ; $4323: $a1
	ld   [hl], l                                     ; $4324: $75
	ld   h, a                                        ; $4325: $67
	ld   e, c                                        ; $4326: $59
	sub  a                                           ; $4327: $97
	nop                                              ; $4328: $00
	nop                                              ; $4329: $00
	inc  b                                           ; $432a: $04
	inc  de                                          ; $432b: $13
	inc  bc                                          ; $432c: $03
	ld   b, $78                                      ; $432d: $06 $78
	and  c                                           ; $432f: $a1
	ld   [hl], l                                     ; $4330: $75
	ld   h, a                                        ; $4331: $67
	ld   e, c                                        ; $4332: $59
	sub  a                                           ; $4333: $97
	nop                                              ; $4334: $00
	ld   bc, $0358                                   ; $4335: $01 $58 $03
	rlca                                             ; $4338: $07
	ld   d, d                                        ; $4339: $52
	ld   a, b                                        ; $433a: $78
	and  c                                           ; $433b: $a1
	ld   [hl], l                                     ; $433c: $75
	ld   h, a                                        ; $433d: $67
	ld   e, c                                        ; $433e: $59
	sub  a                                           ; $433f: $97
	nop                                              ; $4340: $00
	ld   [bc], a                                     ; $4341: $02
	rlca                                             ; $4342: $07
	sbc  [hl]                                        ; $4343: $9e
	inc  b                                           ; $4344: $04
	ld   [bc], a                                     ; $4345: $02
	inc  bc                                          ; $4346: $03
	ld   bc, $2000                                   ; $4347: $01 $00 $20
	nop                                              ; $434a: $00
	rlca                                             ; $434b: $07
	inc  [hl]                                        ; $434c: $34
	dec  b                                           ; $434d: $05
	ld   [bc], a                                     ; $434e: $02
	inc  bc                                          ; $434f: $03
	ld   bc, $2001                                   ; $4350: $01 $01 $20
	nop                                              ; $4353: $00
	rlca                                             ; $4354: $07
	cp   b                                           ; $4355: $b8
	dec  b                                           ; $4356: $05
	ld   [bc], a                                     ; $4357: $02
	inc  bc                                          ; $4358: $03
	ld   bc, $2002                                   ; $4359: $01 $02 $20
	nop                                              ; $435c: $00
	ld   b, $4e                                      ; $435d: $06 $4e
	ld   b, $0f                                      ; $435f: $06 $0f
	nop                                              ; $4361: $00
	ld   bc, $6e01                                   ; $4362: $01 $01 $6e
	ld   [hl], c                                     ; $4365: $71
	ld   [hl], h                                     ; $4366: $74
	ld   [bc], a                                     ; $4367: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4368: $cf
	dec  b                                           ; $4369: $05
	ld   a, [de]                                     ; $436a: $1a
	ld   h, e                                        ; $436b: $63
	and  c                                           ; $436c: $a1
	ld   [hl], c                                     ; $436d: $71
	ld   [hl], h                                     ; $436e: $74
	dec  c                                           ; $436f: $0d
	inc  bc                                          ; $4370: $03
	ld   l, c                                        ; $4371: $69
	ld   [bc], a                                     ; $4372: $02
	cp   [hl]                                        ; $4373: $be
	ld   a, c                                        ; $4374: $79
	ld   e, c                                        ; $4375: $59
	sbc  l                                           ; $4376: $9d
	ld   d, d                                        ; $4377: $52
	ld   d, d                                        ; $4378: $52
	and  c                                           ; $4379: $a1
	ld   [hl], l                                     ; $437a: $75
	ld   h, a                                        ; $437b: $67
	ld   e, c                                        ; $437c: $59
	sub  a                                           ; $437d: $97
	sbc  a                                           ; $437e: $9f
	dec  c                                           ; $437f: $0d
	nop                                              ; $4380: $00
	ld   a, [bc]                                     ; $4381: $0a
	inc  e                                           ; $4382: $1c
	dec  b                                           ; $4383: $05
	inc  b                                           ; $4384: $04
	inc  b                                           ; $4385: $04
	dec  e                                           ; $4386: $1d
	ld   b, b                                        ; $4387: $40
	dec  d                                           ; $4388: $15
	inc  bc                                          ; $4389: $03
	dec  d                                           ; $438a: $15
	ld   bc, $2802                                   ; $438b: $01 $02 $28
	nop                                              ; $438e: $00
	ld   bc, $f9a1                                   ; $438f: $01 $a1 $f9
	db   $10                                         ; $4392: $10
	ld   l, e                                        ; $4393: $6b
	ld   d, h                                        ; $4394: $54
	ld   e, c                                        ; $4395: $59
	db   $fc                                         ; $4396: $fc
	sbc  a                                           ; $4397: $9f
	dec  c                                           ; $4398: $0d
	nop                                              ; $4399: $00
	ld   a, [bc]                                     ; $439a: $0a
	inc  e                                           ; $439b: $1c
	dec  b                                           ; $439c: $05
	ld   [bc], a                                     ; $439d: $02
	ld   [bc], a                                     ; $439e: $02
	ld   bc, $a189                                   ; $439f: $01 $89 $a1
	ld   [hl], l                                     ; $43a2: $75
	sub  b                                           ; $43a3: $90
	sbc  [hl]                                        ; $43a4: $9e
	ld   e, c                                        ; $43a5: $59
	sbc  l                                           ; $43a6: $9d
	ld   d, d                                        ; $43a7: $52
	ld   d, d                                        ; $43a8: $52
	ld   a, h                                        ; $43a9: $7c
	halt                                             ; $43aa: $76
	dec  c                                           ; $43ab: $0d
	inc  b                                           ; $43ac: $04
	ld   e, [hl]                                     ; $43ad: $5e
	inc  b                                           ; $43ae: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43af: $cf
	halt                                             ; $43b0: $76
	ld   a, l                                        ; $43b1: $7d
	sbc  [hl]                                        ; $43b2: $9e
	ld   [bc], a                                     ; $43b3: $02
	ld   c, d                                        ; $43b4: $4a
	ld   [bc], a                                     ; $43b5: $02
	ld   c, e                                        ; $43b6: $4b
	ld   d, b                                        ; $43b7: $50
	sub  a                                           ; $43b8: $97
	add  [hl]                                        ; $43b9: $86
	and  c                                           ; $43ba: $a1
	sub  d                                           ; $43bb: $92
	and  c                                           ; $43bc: $a1
	sbc  a                                           ; $43bd: $9f
	dec  c                                           ; $43be: $0d
	nop                                              ; $43bf: $00
	ld   a, [bc]                                     ; $43c0: $0a
	inc  e                                           ; $43c1: $1c
	dec  b                                           ; $43c2: $05
	ld   bc, $0101                                   ; $43c3: $01 $01 $01
	ld   [hl], l                                     ; $43c6: $75
	sub  b                                           ; $43c7: $90
	sbc  [hl]                                        ; $43c8: $9e
	ld   e, b                                        ; $43c9: $58
	ld   e, b                                        ; $43ca: $58
	ld   e, e                                        ; $43cb: $5b
	ld   a, c                                        ; $43cc: $79
	ld   a, b                                        ; $43cd: $78
	sbc  a                                           ; $43ce: $9f
	dec  c                                           ; $43cf: $0d
	and  a                                           ; $43d0: $a7
	jp   nz, Jump_04c_7da0                           ; $43d1: $c2 $a0 $7d

	ld   h, b                                        ; $43d4: $60
	adc  h                                           ; $43d5: $8c
	ld   h, l                                        ; $43d6: $65
	ld   [hl], h                                     ; $43d7: $74
	ld   e, l                                        ; $43d8: $5d
	sbc  d                                           ; $43d9: $9a
	ld   [hl], h                                     ; $43da: $74
	sbc  a                                           ; $43db: $9f
	dec  c                                           ; $43dc: $0d
	adc  c                                           ; $43dd: $89
	ld   a, b                                        ; $43de: $78
	sbc  [hl]                                        ; $43df: $9e
	ld   [bc], a                                     ; $43e0: $02
	ld   l, d                                        ; $43e1: $6a
	ld   b, $44                                      ; $43e2: $06 $44
	ld   a, c                                        ; $43e4: $79
	sub  b                                           ; $43e5: $90
	ld   [hl], a                                     ; $43e6: $77
	sbc  c                                           ; $43e7: $99
	sbc  l                                           ; $43e8: $9d
	sbc  a                                           ; $43e9: $9f
	dec  c                                           ; $43ea: $0d
	nop                                              ; $43eb: $00
	ld   a, [bc]                                     ; $43ec: $0a
	dec  c                                           ; $43ed: $0d
	nop                                              ; $43ee: $00
	nop                                              ; $43ef: $00
	rrca                                             ; $43f0: $0f
	nop                                              ; $43f1: $00
	ld   bc, $1e09                                   ; $43f2: $01 $09 $1e
	nop                                              ; $43f5: $00
	rrca                                             ; $43f6: $0f
	nop                                              ; $43f7: $00
	ld   bc, $6e01                                   ; $43f8: $01 $01 $6e
	ld   [hl], c                                     ; $43fb: $71
	ld   [hl], h                                     ; $43fc: $74
	ld   [bc], a                                     ; $43fd: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43fe: $cf
	dec  b                                           ; $43ff: $05
	ld   a, [de]                                     ; $4400: $1a
	ld   h, e                                        ; $4401: $63
	and  c                                           ; $4402: $a1
	ld   [hl], c                                     ; $4403: $71
	ld   [hl], h                                     ; $4404: $74
	dec  c                                           ; $4405: $0d
	inc  b                                           ; $4406: $04
	ld   e, [hl]                                     ; $4407: $5e
	inc  b                                           ; $4408: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4409: $cf
	ld   a, h                                        ; $440a: $7c
	inc  b                                           ; $440b: $04
	inc  de                                          ; $440c: $13
	inc  bc                                          ; $440d: $03
	ld   b, $78                                      ; $440e: $06 $78
	and  c                                           ; $4410: $a1
	ld   [hl], l                                     ; $4411: $75
	ld   h, a                                        ; $4412: $67
	ld   e, c                                        ; $4413: $59
	sub  a                                           ; $4414: $97
	sbc  a                                           ; $4415: $9f
	dec  c                                           ; $4416: $0d
	nop                                              ; $4417: $00
	ld   a, [bc]                                     ; $4418: $0a
	inc  e                                           ; $4419: $1c
	dec  b                                           ; $441a: $05
	inc  b                                           ; $441b: $04
	inc  b                                           ; $441c: $04
	dec  e                                           ; $441d: $1d
	ld   b, b                                        ; $441e: $40
	dec  d                                           ; $441f: $15
	inc  bc                                          ; $4420: $03
	dec  d                                           ; $4421: $15
	ld   bc, $2803                                   ; $4422: $01 $03 $28
	nop                                              ; $4425: $00
	ld   bc, $d0d0                                   ; $4426: $01 $d0 $d0
	ret  nc                                          ; $4429: $d0

	sbc  a                                           ; $442a: $9f
	dec  c                                           ; $442b: $0d
	ld   l, e                                        ; $442c: $6b
	and  c                                           ; $442d: $a1
	ld   a, b                                        ; $442e: $78
	ld   a, c                                        ; $442f: $79
	cp   e                                           ; $4430: $bb
	pop  de                                          ; $4431: $d1
	db   $ec                                         ; $4432: $ec
	ld   [bc], a                                     ; $4433: $02
	sbc  l                                           ; $4434: $9d
	sbc  l                                           ; $4435: $9d
	sbc  d                                           ; $4436: $9a
	ld   l, l                                        ; $4437: $6d
	sub  a                                           ; $4438: $97
	dec  c                                           ; $4439: $0d
	inc  bc                                          ; $443a: $03
	ld   h, [hl]                                     ; $443b: $66
	sbc  d                                           ; $443c: $9a
	sbc  c                                           ; $443d: $99
	sub  d                                           ; $443e: $92
	and  c                                           ; $443f: $a1
	sbc  a                                           ; $4440: $9f
	dec  c                                           ; $4441: $0d
	nop                                              ; $4442: $00
	ld   a, [bc]                                     ; $4443: $0a
	inc  e                                           ; $4444: $1c
	dec  b                                           ; $4445: $05
	ld   bc, $0101                                   ; $4446: $01 $01 $01
	ld   e, b                                        ; $4449: $58
	ld   e, b                                        ; $444a: $58
	ld   e, e                                        ; $444b: $5b
	ld   a, c                                        ; $444c: $79
	ld   d, b                                        ; $444d: $50
	sbc  b                                           ; $444e: $98
	ld   e, d                                        ; $444f: $5a
	halt                                             ; $4450: $76
	ld   d, h                                        ; $4451: $54
	sbc  a                                           ; $4452: $9f
	dec  c                                           ; $4453: $0d
	and  a                                           ; $4454: $a7
	jp   nz, Jump_04c_7da0                           ; $4455: $c2 $a0 $7d

	ld   h, b                                        ; $4458: $60
	adc  h                                           ; $4459: $8c
	ld   h, l                                        ; $445a: $65
	ld   [hl], h                                     ; $445b: $74
	ld   e, l                                        ; $445c: $5d
	sbc  d                                           ; $445d: $9a
	ld   [hl], h                                     ; $445e: $74
	sbc  a                                           ; $445f: $9f
	dec  c                                           ; $4460: $0d
	adc  c                                           ; $4461: $89
	ld   a, b                                        ; $4462: $78
	sbc  [hl]                                        ; $4463: $9e
	ld   [bc], a                                     ; $4464: $02
	ld   l, d                                        ; $4465: $6a
	ld   b, $44                                      ; $4466: $06 $44
	ld   a, c                                        ; $4468: $79
	sub  b                                           ; $4469: $90
	ld   [hl], a                                     ; $446a: $77
	sbc  c                                           ; $446b: $99
	sbc  l                                           ; $446c: $9d
	sbc  a                                           ; $446d: $9f
	dec  c                                           ; $446e: $0d
	nop                                              ; $446f: $00
	ld   a, [bc]                                     ; $4470: $0a
	dec  c                                           ; $4471: $0d
	nop                                              ; $4472: $00
	nop                                              ; $4473: $00
	rrca                                             ; $4474: $0f
	nop                                              ; $4475: $00
	ld   bc, $1e09                                   ; $4476: $01 $09 $1e
	nop                                              ; $4479: $00
	rrca                                             ; $447a: $0f
	nop                                              ; $447b: $00
	ld   bc, $6e01                                   ; $447c: $01 $01 $6e
	ld   [hl], c                                     ; $447f: $71
	ld   [hl], h                                     ; $4480: $74
	ld   [bc], a                                     ; $4481: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4482: $cf
	dec  b                                           ; $4483: $05
	ld   a, [de]                                     ; $4484: $1a
	ld   h, e                                        ; $4485: $63
	and  c                                           ; $4486: $a1
	ld   [hl], c                                     ; $4487: $71
	ld   [hl], h                                     ; $4488: $74
	dec  c                                           ; $4489: $0d
	inc  b                                           ; $448a: $04
	inc  de                                          ; $448b: $13
	inc  bc                                          ; $448c: $03
	ld   b, $04                                      ; $448d: $06 $04
	jr   nz, jr_04c_4509                             ; $448f: $20 $78

	ld   e, b                                        ; $4491: $58
	inc  bc                                          ; $4492: $03
	rlca                                             ; $4493: $07
	ld   d, d                                        ; $4494: $52
	ld   a, h                                        ; $4495: $7c
	cp   h                                           ; $4496: $bc
	push af                                          ; $4497: $f5
	cp   d                                           ; $4498: $ba
	and  b                                           ; $4499: $a0
	dec  c                                           ; $449a: $0d
	inc  bc                                          ; $449b: $03
	and  b                                           ; $449c: $a0
	ld   [hl], c                                     ; $449d: $71
	ld   [hl], h                                     ; $449e: $74
	sbc  c                                           ; $449f: $99
	and  c                                           ; $44a0: $a1
	ld   [hl], l                                     ; $44a1: $75
	ld   h, a                                        ; $44a2: $67
	ld   e, c                                        ; $44a3: $59
	sub  a                                           ; $44a4: $97
	sbc  a                                           ; $44a5: $9f
	dec  c                                           ; $44a6: $0d
	nop                                              ; $44a7: $00
	ld   a, [bc]                                     ; $44a8: $0a
	inc  e                                           ; $44a9: $1c
	dec  b                                           ; $44aa: $05
	inc  bc                                          ; $44ab: $03
	inc  bc                                          ; $44ac: $03
	dec  e                                           ; $44ad: $1d
	ld   b, b                                        ; $44ae: $40
	dec  d                                           ; $44af: $15
	inc  bc                                          ; $44b0: $03
	dec  d                                           ; $44b1: $15
	ld   bc, $2801                                   ; $44b2: $01 $01 $28
	nop                                              ; $44b5: $00
	ld   bc, $0358                                   ; $44b6: $01 $58 $03
	rlca                                             ; $44b9: $07
	ld   d, d                                        ; $44ba: $52
	ld   a, h                                        ; $44bb: $7c
	cp   h                                           ; $44bc: $bc
	push af                                          ; $44bd: $f5
	cp   d                                           ; $44be: $ba
	ld   a, l                                        ; $44bf: $7d
	dec  c                                           ; $44c0: $0d
	ld   [bc], a                                     ; $44c1: $02
	ld   c, d                                        ; $44c2: $4a
	ld   [bc], a                                     ; $44c3: $02
	ld   c, e                                        ; $44c4: $4b
	ld   a, b                                        ; $44c5: $78
	ld   d, d                                        ; $44c6: $52
	sub  d                                           ; $44c7: $92
	sbc  e                                           ; $44c8: $9b
	sbc  a                                           ; $44c9: $9f
	dec  c                                           ; $44ca: $0d
	inc  b                                           ; $44cb: $04
	inc  de                                          ; $44cc: $13
	inc  bc                                          ; $44cd: $03
	ld   b, $6f                                      ; $44ce: $06 $6f
	sub  e                                           ; $44d0: $93
	ei                                               ; $44d1: $fb
	ld   a, h                                        ; $44d2: $7c
	ld   a, l                                        ; $44d3: $7d
	ld   d, h                                        ; $44d4: $54
	sbc  d                                           ; $44d5: $9a
	ld   h, l                                        ; $44d6: $65
	ld   d, d                                        ; $44d7: $52
	ld   e, a                                        ; $44d8: $5f
	ld   [hl], a                                     ; $44d9: $77
	sbc  a                                           ; $44da: $9f
	dec  c                                           ; $44db: $0d
	nop                                              ; $44dc: $00
	ld   a, [bc]                                     ; $44dd: $0a
	inc  e                                           ; $44de: $1c
	dec  b                                           ; $44df: $05
	ld   bc, $0101                                   ; $44e0: $01 $01 $01
	ld   e, b                                        ; $44e3: $58
	ld   e, b                                        ; $44e4: $58
	ld   e, e                                        ; $44e5: $5b
	ld   a, c                                        ; $44e6: $79
	ld   a, b                                        ; $44e7: $78
	sbc  a                                           ; $44e8: $9f
	dec  c                                           ; $44e9: $0d
	and  a                                           ; $44ea: $a7
	jp   nz, Jump_04c_7da0                           ; $44eb: $c2 $a0 $7d

	ld   h, b                                        ; $44ee: $60
	adc  h                                           ; $44ef: $8c
	ld   h, l                                        ; $44f0: $65
	ld   [hl], h                                     ; $44f1: $74
	ld   e, l                                        ; $44f2: $5d
	sbc  d                                           ; $44f3: $9a
	ld   [hl], h                                     ; $44f4: $74
	sbc  a                                           ; $44f5: $9f
	dec  c                                           ; $44f6: $0d
	adc  c                                           ; $44f7: $89
	ld   a, b                                        ; $44f8: $78
	sbc  [hl]                                        ; $44f9: $9e
	ld   [bc], a                                     ; $44fa: $02
	ld   l, d                                        ; $44fb: $6a
	ld   b, $44                                      ; $44fc: $06 $44
	ld   a, c                                        ; $44fe: $79
	sub  b                                           ; $44ff: $90
	ld   [hl], a                                     ; $4500: $77
	sbc  c                                           ; $4501: $99
	sbc  l                                           ; $4502: $9d
	sbc  a                                           ; $4503: $9f
	dec  c                                           ; $4504: $0d
	nop                                              ; $4505: $00
	ld   a, [bc]                                     ; $4506: $0a
	dec  c                                           ; $4507: $0d
	nop                                              ; $4508: $00

jr_04c_4509:
	nop                                              ; $4509: $00
	rrca                                             ; $450a: $0f
	nop                                              ; $450b: $00
	ld   bc, $1e09                                   ; $450c: $01 $09 $1e
	nop                                              ; $450f: $00
	rrca                                             ; $4510: $0f
	nop                                              ; $4511: $00
	ld   bc, $0101                                   ; $4512: $01 $01 $01
	inc  bc                                          ; $4515: $03
	ld   d, b                                        ; $4516: $50
	sbc  d                                           ; $4517: $9a
	ld   sp, hl                                      ; $4518: $f9
	db   $10                                         ; $4519: $10
	ld   a, b                                        ; $451a: $78
	and  c                                           ; $451b: $a1
	ld   l, [hl]                                     ; $451c: $6e
	ld   [hl], c                                     ; $451d: $71
	ld   e, a                                        ; $451e: $5f
	ld   sp, hl                                      ; $451f: $f9
	ld   bc, $0d04                                   ; $4520: $01 $04 $0d
	rst  $38                                         ; $4523: $ff
	rst  $38                                         ; $4524: $ff
	sbc  [hl]                                        ; $4525: $9e
	adc  h                                           ; $4526: $8c
	ld   d, b                                        ; $4527: $50
	sbc  [hl]                                        ; $4528: $9e
	halt                                             ; $4529: $76
	sub  b                                           ; $452a: $90
	ld   e, c                                        ; $452b: $59
	ld   e, l                                        ; $452c: $5d
	dec  c                                           ; $452d: $0d
	ld   e, d                                        ; $452e: $5a
	and  c                                           ; $452f: $a1
	ld   a, [hl]                                     ; $4530: $7e
	ld   [hl], c                                     ; $4531: $71
	ld   [hl], h                                     ; $4532: $74
	ld   e, l                                        ; $4533: $5d
	ld   l, [hl]                                     ; $4534: $6e
	ld   h, e                                        ; $4535: $63
	ld   d, d                                        ; $4536: $52
	ld   a, e                                        ; $4537: $7b
	sbc  a                                           ; $4538: $9f
	dec  c                                           ; $4539: $0d
	nop                                              ; $453a: $00
	ld   a, [bc]                                     ; $453b: $0a
	inc  e                                           ; $453c: $1c
	dec  b                                           ; $453d: $05
	nop                                              ; $453e: $00
	nop                                              ; $453f: $00
	ld   bc, $5050                                   ; $4540: $01 $50 $50
	rst  $38                                         ; $4543: $ff
	rst  $38                                         ; $4544: $ff
	dec  c                                           ; $4545: $0d
	ld   e, b                                        ; $4546: $58
	ld   e, b                                        ; $4547: $58
	ld   e, e                                        ; $4548: $5b
	ld   a, c                                        ; $4549: $79
	rst  $38                                         ; $454a: $ff
	rst  $38                                         ; $454b: $ff
	rst  $38                                         ; $454c: $ff
	rst  $38                                         ; $454d: $ff
	dec  c                                           ; $454e: $0d
	nop                                              ; $454f: $00
	ld   a, [bc]                                     ; $4550: $0a
	nop                                              ; $4551: $00
	nop                                              ; $4552: $00
	rrca                                             ; $4553: $0f
	nop                                              ; $4554: $00
	ld   bc, $3f0e                                   ; $4555: $01 $0e $3f
	dec  c                                           ; $4558: $0d
	ld   [bc], a                                     ; $4559: $02
	nop                                              ; $455a: $00
	ld   [bc], a                                     ; $455b: $02
	dec  b                                           ; $455c: $05
	add  b                                           ; $455d: $80
	sub  d                                           ; $455e: $92
	ld   bc, $0001                                   ; $455f: $01 $01 $00
	ld   bc, $8d67                                   ; $4562: $01 $67 $8d
	sbc  d                                           ; $4565: $9a
	ld   h, e                                        ; $4566: $63
	and  c                                           ; $4567: $a1
	sbc  a                                           ; $4568: $9f
	dec  c                                           ; $4569: $0d
	ld   e, b                                        ; $456a: $58
	ld   a, l                                        ; $456b: $7d
	sub  [hl]                                        ; $456c: $96
	ld   d, h                                        ; $456d: $54
	ld   h, d                                        ; $456e: $62
	ld   h, h                                        ; $456f: $64
	ld   d, d                                        ; $4570: $52
	adc  h                                           ; $4571: $8c
	ld   h, a                                        ; $4572: $67
	sbc  a                                           ; $4573: $9f
	dec  c                                           ; $4574: $0d
	nop                                              ; $4575: $00
	ld   a, [bc]                                     ; $4576: $0a
	inc  e                                           ; $4577: $1c
	ld   [bc], a                                     ; $4578: $02
	ld   bc, $0101                                   ; $4579: $01 $01 $01
	ld   d, b                                        ; $457c: $50
	sub  a                                           ; $457d: $97
	sbc  [hl]                                        ; $457e: $9e
	ld   [$6300], sp                                 ; $457f: $08 $00 $63
	and  c                                           ; $4582: $a1
	sbc  a                                           ; $4583: $9f
	dec  c                                           ; $4584: $0d
	ld   e, b                                        ; $4585: $58
	ld   a, l                                        ; $4586: $7d
	sub  [hl]                                        ; $4587: $96
	ld   d, h                                        ; $4588: $54
	sbc  a                                           ; $4589: $9f
	dec  c                                           ; $458a: $0d
	nop                                              ; $458b: $00
	ld   a, [bc]                                     ; $458c: $0a
	rrca                                             ; $458d: $0f
	nop                                              ; $458e: $00
	ld   bc, $5801                                   ; $458f: $01 $01 $58
	ld   d, d                                        ; $4592: $52
	ld   h, l                                        ; $4593: $65
	ld   l, e                                        ; $4594: $6b
	ld   d, h                                        ; $4595: $54
	ld   a, b                                        ; $4596: $78
	ld   [bc], a                                     ; $4597: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4598: $cf
	inc  bc                                          ; $4599: $03
	jp   $6775                                       ; $459a: $c3 $75 $67


	ld   a, e                                        ; $459d: $7b
	sbc  a                                           ; $459e: $9f
	dec  c                                           ; $459f: $0d
	ld   h, a                                        ; $45a0: $67
	adc  l                                           ; $45a1: $8d
	sbc  d                                           ; $45a2: $9a
	ld   h, e                                        ; $45a3: $63
	and  c                                           ; $45a4: $a1
	sbc  a                                           ; $45a5: $9f
	dec  c                                           ; $45a6: $0d
	nop                                              ; $45a7: $00
	ld   a, [bc]                                     ; $45a8: $0a
	rrca                                             ; $45a9: $0f
	ld   [bc], a                                     ; $45aa: $02
	ld   bc, $5001                                   ; $45ab: $01 $01 $50
	sub  a                                           ; $45ae: $97
	sbc  [hl]                                        ; $45af: $9e
	ld   [$6300], sp                                 ; $45b0: $08 $00 $63
	and  c                                           ; $45b3: $a1
	sbc  a                                           ; $45b4: $9f
	dec  c                                           ; $45b5: $0d
	sub  [hl]                                        ; $45b6: $96
	ld   e, c                                        ; $45b7: $59
	ld   [hl], c                                     ; $45b8: $71
	ld   l, l                                        ; $45b9: $6d
	sub  a                                           ; $45ba: $97
	sbc  [hl]                                        ; $45bb: $9e
	ld   e, b                                        ; $45bc: $58
	ld   d, d                                        ; $45bd: $52
	ld   h, l                                        ; $45be: $65
	ld   d, d                                        ; $45bf: $52
	ld   [bc], a                                     ; $45c0: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45c1: $cf
	inc  bc                                          ; $45c2: $03
	jp   $0d7c                                       ; $45c3: $c3 $7c $0d


	inc  b                                           ; $45c6: $04
	ld   b, l                                        ; $45c7: $45
	sbc  d                                           ; $45c8: $9a
	inc  b                                           ; $45c9: $04
	ld   a, b                                        ; $45ca: $78
	and  b                                           ; $45cb: $a0
	ld   e, b                                        ; $45cc: $58
	ld   [bc], a                                     ; $45cd: $02
	ret  nc                                          ; $45ce: $d0

	ld   d, [hl]                                     ; $45cf: $56
	ld   h, l                                        ; $45d0: $65
	adc  h                                           ; $45d1: $8c
	ld   h, a                                        ; $45d2: $67
	sbc  l                                           ; $45d3: $9d
	sub  [hl]                                        ; $45d4: $96
	sbc  a                                           ; $45d5: $9f
	dec  c                                           ; $45d6: $0d
	nop                                              ; $45d7: $00
	ld   a, [bc]                                     ; $45d8: $0a
	jr   jr_04c_45dd                                 ; $45d9: $18 $02

	nop                                              ; $45db: $00
	ld   d, [hl]                                     ; $45dc: $56

jr_04c_45dd:
	and  c                                           ; $45dd: $a1
	sbc  b                                           ; $45de: $98
	sub  l                                           ; $45df: $95
	ld   h, a                                        ; $45e0: $67
	sbc  c                                           ; $45e1: $99
	nop                                              ; $45e2: $00
	nop                                              ; $45e3: $00
	ld   e, b                                        ; $45e4: $58
	ld   [bc], a                                     ; $45e5: $02
	add  b                                           ; $45e6: $80
	ld   d, d                                        ; $45e7: $52
	ld   h, l                                        ; $45e8: $65
	adc  h                                           ; $45e9: $8c
	ld   h, a                                        ; $45ea: $67
	nop                                              ; $45eb: $00
	ld   bc, $ac07                                   ; $45ec: $01 $07 $ac
	nop                                              ; $45ef: $00
	ld   [bc], a                                     ; $45f0: $02
	ld   [bc], a                                     ; $45f1: $02
	ld   bc, $2000                                   ; $45f2: $01 $00 $20
	nop                                              ; $45f5: $00
	rlca                                             ; $45f6: $07
	ldh  a, [rP1]                                    ; $45f7: $f0 $00
	ld   [bc], a                                     ; $45f9: $02
	ld   [bc], a                                     ; $45fa: $02
	ld   bc, $2001                                   ; $45fb: $01 $01 $20
	nop                                              ; $45fe: $00
	rrca                                             ; $45ff: $0f
	nop                                              ; $4600: $00
	ld   bc, $6701                                   ; $4601: $01 $01 $67
	adc  l                                           ; $4604: $8d
	adc  h                                           ; $4605: $8c
	ld   l, c                                        ; $4606: $69
	and  c                                           ; $4607: $a1
	sbc  a                                           ; $4608: $9f
	dec  c                                           ; $4609: $0d
	ld   l, a                                        ; $460a: $6f
	sub  l                                           ; $460b: $95
	ld   [hl], c                                     ; $460c: $71
	halt                                             ; $460d: $76
	inc  b                                           ; $460e: $04
	di                                               ; $460f: $f3
	ld   [bc], a                                     ; $4610: $02
	jp   Jump_04c_505a                               ; $4611: $c3 $5a $50


	sbc  b                                           ; $4614: $98
	adc  h                                           ; $4615: $8c
	ld   h, l                                        ; $4616: $65
	ld   [hl], h                                     ; $4617: $74
	rst  $38                                         ; $4618: $ff
	rst  $38                                         ; $4619: $ff
	dec  c                                           ; $461a: $0d
	nop                                              ; $461b: $00
	ld   a, [bc]                                     ; $461c: $0a
	inc  e                                           ; $461d: $1c
	ld   [bc], a                                     ; $461e: $02
	dec  b                                           ; $461f: $05
	dec  b                                           ; $4620: $05
	dec  e                                           ; $4621: $1d
	ld   b, b                                        ; $4622: $40
	ld   [de], a                                     ; $4623: $12
	inc  bc                                          ; $4624: $03
	ld   [de], a                                     ; $4625: $12
	ld   bc, $2901                                   ; $4626: $01 $01 $29
	nop                                              ; $4629: $00
	ld   bc, $546b                                   ; $462a: $01 $6b $54
	ld   [hl], l                                     ; $462d: $75
	ld   h, a                                        ; $462e: $67
	ld   a, h                                        ; $462f: $7c
	sbc  a                                           ; $4630: $9f
	dec  c                                           ; $4631: $0d
	ld   a, b                                        ; $4632: $78
	sub  a                                           ; $4633: $97
	inc  b                                           ; $4634: $04
	ld   d, h                                        ; $4635: $54
	ld   a, c                                        ; $4636: $79
	ld   d, d                                        ; $4637: $52
	ld   d, d                                        ; $4638: $52
	ld   [hl], l                                     ; $4639: $75
	ld   h, a                                        ; $463a: $67
	ld   e, a                                        ; $463b: $5f
	ld   [hl], a                                     ; $463c: $77
	rst  $38                                         ; $463d: $ff
	rst  $38                                         ; $463e: $ff
	dec  c                                           ; $463f: $0d
	nop                                              ; $4640: $00
	ld   a, [bc]                                     ; $4641: $0a
	nop                                              ; $4642: $00
	rrca                                             ; $4643: $0f
	nop                                              ; $4644: $00
	ld   bc, $6a01                                   ; $4645: $01 $01 $6a
	add  b                                           ; $4648: $80
	sbc  [hl]                                        ; $4649: $9e
	ld   e, b                                        ; $464a: $58
	ld   [bc], a                                     ; $464b: $02
	add  b                                           ; $464c: $80
	ld   d, d                                        ; $464d: $52
	ld   h, l                                        ; $464e: $65
	adc  h                                           ; $464f: $8c
	ld   h, a                                        ; $4650: $67
	sbc  a                                           ; $4651: $9f
	dec  c                                           ; $4652: $0d
	nop                                              ; $4653: $00
	dec  b                                           ; $4654: $05
	add  b                                           ; $4655: $80
	dec  de                                          ; $4656: $1b
	ld   bc, $0001                                   ; $4657: $01 $01 $00
	ld   bc, $8d67                                   ; $465a: $01 $67 $8d
	sbc  d                                           ; $465d: $9a
	ld   h, e                                        ; $465e: $63
	and  c                                           ; $465f: $a1
	sbc  a                                           ; $4660: $9f
	dec  c                                           ; $4661: $0d
	nop                                              ; $4662: $00
	ld   a, [bc]                                     ; $4663: $0a
	inc  e                                           ; $4664: $1c
	ld   [bc], a                                     ; $4665: $02
	nop                                              ; $4666: $00
	nop                                              ; $4667: $00
	ld   bc, $599d                                   ; $4668: $01 $9d $59
	sbc  b                                           ; $466b: $98
	adc  h                                           ; $466c: $8c
	ld   h, l                                        ; $466d: $65
	ld   l, l                                        ; $466e: $6d
	sbc  a                                           ; $466f: $9f
	dec  c                                           ; $4670: $0d
	ld   h, l                                        ; $4671: $65
	ld   [hl], c                                     ; $4672: $71
	ld   e, c                                        ; $4673: $59
	sbc  b                                           ; $4674: $98
	ld   [bc], a                                     ; $4675: $02
	ld   a, d                                        ; $4676: $7a
	ld   d, [hl]                                     ; $4677: $56
	ld   [hl], h                                     ; $4678: $74
	ld   l, a                                        ; $4679: $6f
	sub  l                                           ; $467a: $95
	ld   d, h                                        ; $467b: $54
	ld   l, [hl]                                     ; $467c: $6e
	ld   d, d                                        ; $467d: $52
	ld   a, e                                        ; $467e: $7b
	sbc  a                                           ; $467f: $9f
	dec  c                                           ; $4680: $0d
	nop                                              ; $4681: $00
	ld   a, [bc]                                     ; $4682: $0a
	ld   bc, $688c                                   ; $4683: $01 $8c $68
	sbc  [hl]                                        ; $4686: $9e
	ld   e, b                                        ; $4687: $58
	inc  bc                                          ; $4688: $03
	ld   e, c                                        ; $4689: $59
	ld   [hl], l                                     ; $468a: $75
	ld   h, a                                        ; $468b: $67
	ld   e, d                                        ; $468c: $5a
	sbc  [hl]                                        ; $468d: $9e
	dec  c                                           ; $468e: $0d
	adc  h                                           ; $468f: $8c
	ld   l, a                                        ; $4690: $6f
	ld   e, d                                        ; $4691: $5a
	ld   [hl], c                                     ; $4692: $71
	ld   [hl], h                                     ; $4693: $74
	sub  b                                           ; $4694: $90
	ldh  [$ce], a                                    ; $4695: $e0 $ce
	db   $eb                                         ; $4697: $eb
	db   $ed                                         ; $4698: $ed
	inc  bc                                          ; $4699: $03
	ld   e, c                                        ; $469a: $59
	ld   a, l                                        ; $469b: $7d
	dec  c                                           ; $469c: $0d
	pop  bc                                          ; $469d: $c1
	db   $e3                                         ; $469e: $e3
	ld   [hl], l                                     ; $469f: $75
	ld   h, a                                        ; $46a0: $67
	sbc  l                                           ; $46a1: $9d
	sub  [hl]                                        ; $46a2: $96
	sbc  a                                           ; $46a3: $9f
	dec  c                                           ; $46a4: $0d
	nop                                              ; $46a5: $00
	ld   a, [bc]                                     ; $46a6: $0a
	ld   bc, $5205                                   ; $46a7: $01 $05 $52
	inc  bc                                          ; $46aa: $03
	ld   e, c                                        ; $46ab: $59
	ld   [hl], l                                     ; $46ac: $75
	ld   d, b                                        ; $46ad: $50
	sbc  c                                           ; $46ae: $99
	ld   a, [bc]                                     ; $46af: $0a
	ld   [bc], a                                     ; $46b0: $02
	inc  bc                                          ; $46b1: $03
	ld   e, c                                        ; $46b2: $59
	inc  b                                           ; $46b3: $04
	ld   d, $03                                      ; $46b4: $16 $03
	ld   e, c                                        ; $46b6: $59
	ld   a, [bc]                                     ; $46b7: $0a
	inc  bc                                          ; $46b8: $03
	ld   a, h                                        ; $46b9: $7c
	inc  b                                           ; $46ba: $04
	ld   a, b                                        ; $46bb: $78
	ld   e, d                                        ; $46bc: $5a
	dec  c                                           ; $46bd: $0d
	ld   e, b                                        ; $46be: $58
	inc  bc                                          ; $46bf: $03
	jp   Jump_04c_7d79                               ; $46c0: $c3 $79 $7d


	ld   [bc], a                                     ; $46c3: $02
	ld   a, e                                        ; $46c4: $7b
	ld   [hl], c                                     ; $46c5: $71
	ld   [hl], h                                     ; $46c6: $74
	ld   d, d                                        ; $46c7: $52
	sbc  c                                           ; $46c8: $99
	ld   a, h                                        ; $46c9: $7c
	ld   [hl], l                                     ; $46ca: $75
	ld   h, a                                        ; $46cb: $67
	sbc  a                                           ; $46cc: $9f
	dec  c                                           ; $46cd: $0d
	ld   [hl], l                                     ; $46ce: $75
	ld   h, a                                        ; $46cf: $67
	ld   e, c                                        ; $46d0: $59
	sub  a                                           ; $46d1: $97
	inc  bc                                          ; $46d2: $03
	ld   e, c                                        ; $46d3: $59
	inc  b                                           ; $46d4: $04
	ld   d, $03                                      ; $46d5: $16 $03
	ld   e, c                                        ; $46d7: $59
	and  b                                           ; $46d8: $a0
	sbc  l                                           ; $46d9: $9d
	ld   e, c                                        ; $46da: $59
	ld   h, l                                        ; $46db: $65
	adc  h                                           ; $46dc: $8c
	ld   h, a                                        ; $46dd: $67
	sbc  a                                           ; $46de: $9f
	dec  c                                           ; $46df: $0d
	nop                                              ; $46e0: $00
	ld   a, [bc]                                     ; $46e1: $0a
	ld   bc, $6803                                   ; $46e2: $01 $03 $68
	ld   a, c                                        ; $46e5: $79
	sbc  [hl]                                        ; $46e6: $9e
	ld   e, b                                        ; $46e7: $58
	inc  bc                                          ; $46e8: $03
	jp   $047c                                       ; $46e9: $c3 $7c $04


	sub  c                                           ; $46ec: $91
	and  b                                           ; $46ed: $a0
	inc  b                                           ; $46ee: $04
	ld   b, l                                        ; $46ef: $45
	sbc  d                                           ; $46f0: $9a
	sbc  c                                           ; $46f1: $99
	dec  c                                           ; $46f2: $0d
	inc  b                                           ; $46f3: $04
	db   $e4                                         ; $46f4: $e4
	ld   [bc], a                                     ; $46f5: $02
	ld   d, a                                        ; $46f6: $57
	ld   a, c                                        ; $46f7: $79
	ld   a, [bc]                                     ; $46f8: $0a
	ld   [bc], a                                     ; $46f9: $02
	ld   e, b                                        ; $46fa: $58
	inc  b                                           ; $46fb: $04
	db   $ed                                         ; $46fc: $ed
	and  b                                           ; $46fd: $a0
	ld   l, e                                        ; $46fe: $6b
	ld   l, e                                        ; $46ff: $6b
	ld   e, h                                        ; $4700: $5c
	dec  c                                           ; $4701: $0d
	ld   d, b                                        ; $4702: $50
	ld   l, l                                        ; $4703: $6d
	ld   l, l                                        ; $4704: $6d
	adc  a                                           ; $4705: $8f
	adc  h                                           ; $4706: $8c
	ld   h, a                                        ; $4707: $67
	ld   a, [bc]                                     ; $4708: $0a
	inc  bc                                          ; $4709: $03
	ld   a, h                                        ; $470a: $7c
	sbc  a                                           ; $470b: $9f
	dec  c                                           ; $470c: $0d
	nop                                              ; $470d: $00
	ld   a, [bc]                                     ; $470e: $0a
	ld   bc, $656b                                   ; $470f: $01 $6b $65
	ld   [hl], h                                     ; $4712: $74
	sbc  [hl]                                        ; $4713: $9e
	inc  b                                           ; $4714: $04
	db   $e4                                         ; $4715: $e4
	ld   [bc], a                                     ; $4716: $02
	ld   d, a                                        ; $4717: $57
	ld   a, h                                        ; $4718: $7c
	ld   e, b                                        ; $4719: $58
	inc  b                                           ; $471a: $04
	db   $ed                                         ; $471b: $ed
	and  b                                           ; $471c: $a0
	ld   h, a                                        ; $471d: $67
	ld   [hl], h                                     ; $471e: $74
	dec  c                                           ; $471f: $0d
	ld   e, b                                        ; $4720: $58
	inc  bc                                          ; $4721: $03
	jp   $047c                                       ; $4722: $c3 $7c $04


	sub  c                                           ; $4725: $91
	and  b                                           ; $4726: $a0
	inc  b                                           ; $4727: $04
	ld   b, l                                        ; $4728: $45
	sbc  d                                           ; $4729: $9a
	adc  h                                           ; $472a: $8c
	ld   h, a                                        ; $472b: $67
	ld   a, h                                        ; $472c: $7c
	sbc  a                                           ; $472d: $9f
	dec  c                                           ; $472e: $0d
	ld   a, [bc]                                     ; $472f: $0a
	ld   [bc], a                                     ; $4730: $02
	inc  b                                           ; $4731: $04
	ld   b, l                                        ; $4732: $45
	sbc  d                                           ; $4733: $9a
	sbc  c                                           ; $4734: $99
	dec  b                                           ; $4735: $05
	ld   h, [hl]                                     ; $4736: $66
	ld   a, l                                        ; $4737: $7d
	inc  bc                                          ; $4738: $03
	add  d                                           ; $4739: $82
	inc  bc                                          ; $473a: $03
	pop  bc                                          ; $473b: $c1
	inc  b                                           ; $473c: $04
	sbc  [hl]                                        ; $473d: $9e
	ld   a, [bc]                                     ; $473e: $0a
	inc  bc                                          ; $473f: $03
	ld   [hl], l                                     ; $4740: $75
	ld   h, a                                        ; $4741: $67
	sbc  l                                           ; $4742: $9d
	sbc  a                                           ; $4743: $9f
	dec  c                                           ; $4744: $0d
	nop                                              ; $4745: $00
	ld   a, [bc]                                     ; $4746: $0a
	ld   bc, $5063                                   ; $4747: $01 $63 $50
	sbc  [hl]                                        ; $474a: $9e
	adc  h                                           ; $474b: $8c
	ld   l, b                                        ; $474c: $68
	ld   h, c                                        ; $474d: $61
	ld   h, c                                        ; $474e: $61
	adc  h                                           ; $474f: $8c
	ld   [hl], l                                     ; $4750: $75
	and  b                                           ; $4751: $a0
	dec  c                                           ; $4752: $0d
	ld   e, b                                        ; $4753: $58
	ld   h, e                                        ; $4754: $63
	sub  a                                           ; $4755: $97
	ld   d, d                                        ; $4756: $52
	ld   h, l                                        ; $4757: $65
	adc  h                                           ; $4758: $8c
	ld   h, a                                        ; $4759: $67
	sbc  l                                           ; $475a: $9d
	sub  [hl]                                        ; $475b: $96
	sbc  a                                           ; $475c: $9f
	dec  c                                           ; $475d: $0d
	nop                                              ; $475e: $00
	ld   a, [bc]                                     ; $475f: $0a
	dec  c                                           ; $4760: $0d
	nop                                              ; $4761: $00
	nop                                              ; $4762: $00
	rrca                                             ; $4763: $0f
	nop                                              ; $4764: $00
	ld   bc, $021c                                   ; $4765: $01 $1c $02
	nop                                              ; $4768: $00
	nop                                              ; $4769: $00
	ld   bc, $5992                                   ; $476a: $01 $92 $59
	and  c                                           ; $476d: $a1
	ld   a, c                                        ; $476e: $79
	inc  b                                           ; $476f: $04
	ld   b, l                                        ; $4770: $45
	sbc  d                                           ; $4771: $9a
	ld   [hl], h                                     ; $4772: $74
	sbc  l                                           ; $4773: $9d
	ld   e, c                                        ; $4774: $59
	ld   h, a                                        ; $4775: $67
	ld   a, h                                        ; $4776: $7c
	ld   a, l                                        ; $4777: $7d
	dec  c                                           ; $4778: $0d
	inc  b                                           ; $4779: $04
	ld   c, c                                        ; $477a: $49
	ld   [hl], l                                     ; $477b: $75
	ld   h, l                                        ; $477c: $65
	sub  l                                           ; $477d: $95
	ld   d, h                                        ; $477e: $54
	ld   e, c                                        ; $477f: $59
	ld   sp, hl                                      ; $4780: $f9
	dec  c                                           ; $4781: $0d
	nop                                              ; $4782: $00
	ld   a, [bc]                                     ; $4783: $0a
	add  hl, de                                      ; $4784: $19
	dec  b                                           ; $4785: $05
	inc  bc                                          ; $4786: $03
	inc  bc                                          ; $4787: $03
	ld   e, c                                        ; $4788: $59
	inc  b                                           ; $4789: $04
	ld   d, $03                                      ; $478a: $16 $03
	ld   e, c                                        ; $478c: $59
	nop                                              ; $478d: $00
	nop                                              ; $478e: $00
	ldh  [$ce], a                                    ; $478f: $e0 $ce
	db   $eb                                         ; $4791: $eb
	db   $ed                                         ; $4792: $ed
	inc  bc                                          ; $4793: $03
	ld   e, c                                        ; $4794: $59
	nop                                              ; $4795: $00
	ld   bc, $9566                                   ; $4796: $01 $66 $95
	ld   d, h                                        ; $4799: $54
	sbc  b                                           ; $479a: $98
	sub  e                                           ; $479b: $93
	ld   d, h                                        ; $479c: $54
	inc  bc                                          ; $479d: $03
	ld   e, c                                        ; $479e: $59
	nop                                              ; $479f: $00
	ld   [bc], a                                     ; $47a0: $02
	rlca                                             ; $47a1: $07
	ld   l, h                                        ; $47a2: $6c
	ld   [bc], a                                     ; $47a3: $02
	ld   [bc], a                                     ; $47a4: $02
	inc  bc                                          ; $47a5: $03
	ld   bc, $2000                                   ; $47a6: $01 $00 $20
	nop                                              ; $47a9: $00
	rlca                                             ; $47aa: $07
	or   d                                           ; $47ab: $b2
	ld   [bc], a                                     ; $47ac: $02
	ld   [bc], a                                     ; $47ad: $02
	inc  bc                                          ; $47ae: $03
	ld   bc, $2001                                   ; $47af: $01 $01 $20
	nop                                              ; $47b2: $00
	rlca                                             ; $47b3: $07
	ld   [$0203], sp                                 ; $47b4: $08 $03 $02
	inc  bc                                          ; $47b7: $03
	ld   bc, $2002                                   ; $47b8: $01 $02 $20
	nop                                              ; $47bb: $00
	ld   b, $61                                      ; $47bc: $06 $61
	inc  bc                                          ; $47be: $03
	rrca                                             ; $47bf: $0f
	nop                                              ; $47c0: $00
	ld   bc, $0301                                   ; $47c1: $01 $01 $03
	ld   e, c                                        ; $47c4: $59
	inc  b                                           ; $47c5: $04
	ld   d, $03                                      ; $47c6: $16 $03
	ld   e, c                                        ; $47c8: $59
	ld   [hl], l                                     ; $47c9: $75
	ld   h, a                                        ; $47ca: $67
	sbc  a                                           ; $47cb: $9f
	dec  c                                           ; $47cc: $0d
	dec  b                                           ; $47cd: $05
	ld   d, d                                        ; $47ce: $52
	inc  bc                                          ; $47cf: $03
	ld   e, c                                        ; $47d0: $59
	ld   a, h                                        ; $47d1: $7c
	inc  b                                           ; $47d2: $04
	ld   a, b                                        ; $47d3: $78
	ld   e, d                                        ; $47d4: $5a
	ld   e, b                                        ; $47d5: $58
	inc  bc                                          ; $47d6: $03
	jp   Jump_04c_7d79                               ; $47d7: $c3 $79 $7d


	ld   [bc], a                                     ; $47da: $02
	ld   a, e                                        ; $47db: $7b
	ld   [hl], c                                     ; $47dc: $71
	ld   [hl], h                                     ; $47dd: $74
	dec  c                                           ; $47de: $0d
	ld   d, d                                        ; $47df: $52
	adc  h                                           ; $47e0: $8c
	ld   h, a                                        ; $47e1: $67
	ld   e, c                                        ; $47e2: $59
	sub  a                                           ; $47e3: $97
	sbc  a                                           ; $47e4: $9f
	dec  c                                           ; $47e5: $0d
	nop                                              ; $47e6: $00
	ld   a, [bc]                                     ; $47e7: $0a
	inc  e                                           ; $47e8: $1c
	ld   [bc], a                                     ; $47e9: $02
	ld   bc, $0101                                   ; $47ea: $01 $01 $01
	ld   l, e                                        ; $47ed: $6b
	ld   a, h                                        ; $47ee: $7c
	halt                                             ; $47ef: $76
	ld   e, b                                        ; $47f0: $58
	sbc  b                                           ; $47f1: $98
	ld   [hl], l                                     ; $47f2: $75
	ld   h, a                                        ; $47f3: $67
	sbc  l                                           ; $47f4: $9d
	sbc  a                                           ; $47f5: $9f
	dec  c                                           ; $47f6: $0d
	nop                                              ; $47f7: $00
	ld   a, [bc]                                     ; $47f8: $0a
	dec  b                                           ; $47f9: $05
	ld   b, b                                        ; $47fa: $40
	rst  $38                                         ; $47fb: $ff
	inc  bc                                          ; $47fc: $03
	rst  $38                                         ; $47fd: $ff
	ld   bc, $2801                                   ; $47fe: $01 $01 $28
	nop                                              ; $4801: $00
	ld   b, $93                                      ; $4802: $06 $93
	inc  bc                                          ; $4804: $03
	rrca                                             ; $4805: $0f
	nop                                              ; $4806: $00
	ld   bc, $e001                                   ; $4807: $01 $01 $e0
	adc  $eb                                         ; $480a: $ce $eb
	db   $ed                                         ; $480c: $ed
	inc  bc                                          ; $480d: $03
	ld   e, c                                        ; $480e: $59
	ld   [hl], l                                     ; $480f: $75
	ld   h, a                                        ; $4810: $67
	sbc  a                                           ; $4811: $9f
	dec  c                                           ; $4812: $0d
	ld   a, b                                        ; $4813: $78
	and  c                                           ; $4814: $a1
	ld   [hl], h                                     ; $4815: $74
	ld   [hl], c                                     ; $4816: $71
	ld   l, l                                        ; $4817: $6d
	ld   [hl], c                                     ; $4818: $71
	ld   [hl], h                                     ; $4819: $74
	ldh  [$ce], a                                    ; $481a: $e0 $ce
	db   $eb                                         ; $481c: $eb
	db   $ed                                         ; $481d: $ed
	dec  c                                           ; $481e: $0d
	ld   [hl], l                                     ; $481f: $75
	ld   h, a                                        ; $4820: $67
	ld   e, c                                        ; $4821: $59
	sub  a                                           ; $4822: $97
	sbc  a                                           ; $4823: $9f
	dec  c                                           ; $4824: $0d
	nop                                              ; $4825: $00
	ld   a, [bc]                                     ; $4826: $0a
	inc  e                                           ; $4827: $1c
	ld   [bc], a                                     ; $4828: $02
	rlca                                             ; $4829: $07
	rlca                                             ; $482a: $07
	ld   bc, $5a6f                                   ; $482b: $01 $6f $5a
	ld   d, d                                        ; $482e: $52
	adc  h                                           ; $482f: $8c
	ld   h, a                                        ; $4830: $67
	sbc  l                                           ; $4831: $9d
	sbc  a                                           ; $4832: $9f
	inc  bc                                          ; $4833: $03
	ld   e, c                                        ; $4834: $59
	inc  b                                           ; $4835: $04
	ld   d, $03                                      ; $4836: $16 $03
	ld   e, c                                        ; $4838: $59
	ld   [hl], l                                     ; $4839: $75
	ld   h, a                                        ; $483a: $67
	sbc  a                                           ; $483b: $9f
	dec  c                                           ; $483c: $0d
	dec  b                                           ; $483d: $05
	ld   d, d                                        ; $483e: $52
	inc  bc                                          ; $483f: $03
	ld   e, c                                        ; $4840: $59
	ld   a, h                                        ; $4841: $7c
	inc  b                                           ; $4842: $04
	ld   a, b                                        ; $4843: $78
	ld   e, d                                        ; $4844: $5a
	ld   e, b                                        ; $4845: $58
	inc  bc                                          ; $4846: $03
	jp   Jump_04c_7d79                               ; $4847: $c3 $79 $7d


	ld   [bc], a                                     ; $484a: $02
	ld   a, e                                        ; $484b: $7b
	ld   [hl], c                                     ; $484c: $71
	ld   [hl], h                                     ; $484d: $74
	dec  c                                           ; $484e: $0d
	ld   d, d                                        ; $484f: $52
	adc  h                                           ; $4850: $8c
	ld   h, a                                        ; $4851: $67
	ld   e, c                                        ; $4852: $59
	sub  a                                           ; $4853: $97
	sbc  a                                           ; $4854: $9f
	dec  c                                           ; $4855: $0d
	nop                                              ; $4856: $00
	ld   a, [bc]                                     ; $4857: $0a
	ld   b, $93                                      ; $4858: $06 $93
	inc  bc                                          ; $485a: $03
	rrca                                             ; $485b: $0f
	nop                                              ; $485c: $00
	ld   bc, $6601                                   ; $485d: $01 $01 $66
	sub  l                                           ; $4860: $95
	ld   d, h                                        ; $4861: $54
	sbc  b                                           ; $4862: $98
	sub  e                                           ; $4863: $93
	ld   d, h                                        ; $4864: $54
	inc  bc                                          ; $4865: $03
	ld   e, c                                        ; $4866: $59
	ld   [hl], l                                     ; $4867: $75
	ld   h, a                                        ; $4868: $67
	sbc  a                                           ; $4869: $9f
	dec  c                                           ; $486a: $0d
	inc  b                                           ; $486b: $04
	and  b                                           ; $486c: $a0
	dec  b                                           ; $486d: $05
	ccf                                              ; $486e: $3f
	inc  b                                           ; $486f: $04
	sub  d                                           ; $4870: $92
	ld   e, d                                        ; $4871: $5a
	ld   a, b                                        ; $4872: $78
	ld   d, d                                        ; $4873: $52
	ld   e, e                                        ; $4874: $5b
	sbc  d                                           ; $4875: $9a
	ld   d, d                                        ; $4876: $52
	ld   a, b                                        ; $4877: $78
	inc  bc                                          ; $4878: $03
	ld   e, c                                        ; $4879: $59
	ld   [hl], l                                     ; $487a: $75
	ld   h, a                                        ; $487b: $67
	sbc  a                                           ; $487c: $9f
	dec  c                                           ; $487d: $0d
	nop                                              ; $487e: $00
	ld   a, [bc]                                     ; $487f: $0a
	inc  e                                           ; $4880: $1c
	ld   [bc], a                                     ; $4881: $02
	rlca                                             ; $4882: $07
	rlca                                             ; $4883: $07
	ld   bc, $5a6f                                   ; $4884: $01 $6f $5a
	ld   d, d                                        ; $4887: $52
	adc  h                                           ; $4888: $8c
	ld   h, a                                        ; $4889: $67
	sbc  l                                           ; $488a: $9d
	sbc  a                                           ; $488b: $9f
	inc  bc                                          ; $488c: $03
	ld   e, c                                        ; $488d: $59
	inc  b                                           ; $488e: $04
	ld   d, $03                                      ; $488f: $16 $03
	ld   e, c                                        ; $4891: $59
	ld   [hl], l                                     ; $4892: $75
	ld   h, a                                        ; $4893: $67
	sbc  a                                           ; $4894: $9f
	dec  c                                           ; $4895: $0d
	dec  b                                           ; $4896: $05
	ld   d, d                                        ; $4897: $52
	inc  bc                                          ; $4898: $03
	ld   e, c                                        ; $4899: $59
	ld   a, h                                        ; $489a: $7c
	inc  b                                           ; $489b: $04
	ld   a, b                                        ; $489c: $78
	ld   e, d                                        ; $489d: $5a
	ld   e, b                                        ; $489e: $58
	inc  bc                                          ; $489f: $03
	jp   Jump_04c_7d79                               ; $48a0: $c3 $79 $7d


	ld   [bc], a                                     ; $48a3: $02
	ld   a, e                                        ; $48a4: $7b
	ld   [hl], c                                     ; $48a5: $71
	ld   [hl], h                                     ; $48a6: $74
	dec  c                                           ; $48a7: $0d
	ld   d, d                                        ; $48a8: $52
	adc  h                                           ; $48a9: $8c
	ld   h, a                                        ; $48aa: $67
	ld   e, c                                        ; $48ab: $59
	sub  a                                           ; $48ac: $97
	sbc  a                                           ; $48ad: $9f
	dec  c                                           ; $48ae: $0d
	nop                                              ; $48af: $00
	ld   a, [bc]                                     ; $48b0: $0a
	ld   b, $93                                      ; $48b1: $06 $93
	inc  bc                                          ; $48b3: $03
	inc  e                                           ; $48b4: $1c
	ld   [bc], a                                     ; $48b5: $02
	nop                                              ; $48b6: $00
	nop                                              ; $48b7: $00
	ld   bc, $4a03                                   ; $48b8: $01 $03 $4a
	ld   [bc], a                                     ; $48bb: $02
	or   h                                           ; $48bc: $b4
	ld   a, l                                        ; $48bd: $7d
	sbc  [hl]                                        ; $48be: $9e
	inc  bc                                          ; $48bf: $03
	ld   e, c                                        ; $48c0: $59
	inc  b                                           ; $48c1: $04
	ld   d, $03                                      ; $48c2: $16 $03
	ld   e, c                                        ; $48c4: $59
	ld   [hl], l                                     ; $48c5: $75
	ld   h, a                                        ; $48c6: $67
	sbc  l                                           ; $48c7: $9d
	sbc  a                                           ; $48c8: $9f
	dec  c                                           ; $48c9: $0d
	ld   e, b                                        ; $48ca: $58
	inc  bc                                          ; $48cb: $03
	jp   Jump_04c_7d79                               ; $48cc: $c3 $79 $7d


	ld   [bc], a                                     ; $48cf: $02
	ld   a, e                                        ; $48d0: $7b
	ld   [hl], c                                     ; $48d1: $71
	ld   [hl], h                                     ; $48d2: $74
	ld   d, d                                        ; $48d3: $52
	sbc  c                                           ; $48d4: $99
	ld   a, h                                        ; $48d5: $7c
	ld   a, l                                        ; $48d6: $7d
	dec  b                                           ; $48d7: $05
	ld   d, d                                        ; $48d8: $52
	inc  bc                                          ; $48d9: $03
	ld   e, c                                        ; $48da: $59
	dec  c                                           ; $48db: $0d
	ld   a, b                                        ; $48dc: $78
	ld   a, h                                        ; $48dd: $7c
	ld   [hl], l                                     ; $48de: $75
	ld   h, a                                        ; $48df: $67
	sbc  l                                           ; $48e0: $9d
	sub  [hl]                                        ; $48e1: $96
	sbc  a                                           ; $48e2: $9f
	dec  c                                           ; $48e3: $0d
	nop                                              ; $48e4: $00
	ld   a, [bc]                                     ; $48e5: $0a
	inc  e                                           ; $48e6: $1c
	ld   [bc], a                                     ; $48e7: $02
	nop                                              ; $48e8: $00
	nop                                              ; $48e9: $00
	ld   bc, $6803                                   ; $48ea: $01 $03 $68
	ld   a, c                                        ; $48ed: $79
	sbc  [hl]                                        ; $48ee: $9e
	ld   e, b                                        ; $48ef: $58
	inc  bc                                          ; $48f0: $03
	jp   $047c                                       ; $48f1: $c3 $7c $04


	sub  c                                           ; $48f4: $91
	and  b                                           ; $48f5: $a0
	inc  b                                           ; $48f6: $04
	ld   b, l                                        ; $48f7: $45
	sbc  d                                           ; $48f8: $9a
	sbc  c                                           ; $48f9: $99
	dec  c                                           ; $48fa: $0d
	inc  b                                           ; $48fb: $04
	db   $e4                                         ; $48fc: $e4
	ld   [bc], a                                     ; $48fd: $02
	ld   d, a                                        ; $48fe: $57
	ld   a, l                                        ; $48ff: $7d
	ld   [hl], a                                     ; $4900: $77
	ld   a, h                                        ; $4901: $7c
	sub  [hl]                                        ; $4902: $96
	ld   d, h                                        ; $4903: $54
	ld   a, c                                        ; $4904: $79
	ld   h, l                                        ; $4905: $65
	adc  h                                           ; $4906: $8c
	ld   h, a                                        ; $4907: $67
	ld   e, c                                        ; $4908: $59
	ld   sp, hl                                      ; $4909: $f9
	dec  c                                           ; $490a: $0d
	nop                                              ; $490b: $00
	ld   a, [bc]                                     ; $490c: $0a
	add  hl, de                                      ; $490d: $19
	dec  b                                           ; $490e: $05
	inc  bc                                          ; $490f: $03
	ld   e, b                                        ; $4910: $58
	inc  b                                           ; $4911: $04
	db   $ed                                         ; $4912: $ed
	ld   [hl], l                                     ; $4913: $75
	ld   d, b                                        ; $4914: $50
	ld   l, l                                        ; $4915: $6d
	ld   l, l                                        ; $4916: $6d
	adc  a                                           ; $4917: $8f
	sbc  c                                           ; $4918: $99
	nop                                              ; $4919: $00
	nop                                              ; $491a: $00
	inc  b                                           ; $491b: $04
	db   $fc                                         ; $491c: $fc
	ld   l, l                                        ; $491d: $6d
	ld   e, l                                        ; $491e: $5d
	add  b                                           ; $491f: $80
	sub  d                                           ; $4920: $92
	ld   h, l                                        ; $4921: $65
	ld   [hl], h                                     ; $4922: $74
	ld   e, b                                        ; $4923: $58
	ld   e, l                                        ; $4924: $5d
	nop                                              ; $4925: $00
	ld   bc, $eeae                                   ; $4926: $01 $ae $ee
	and  l                                           ; $4929: $a5
	ld   a, c                                        ; $492a: $79
	inc  bc                                          ; $492b: $03
	ld   [hl], e                                     ; $492c: $73
	ld   [hl], c                                     ; $492d: $71
	ld   [hl], h                                     ; $492e: $74
	ld   e, b                                        ; $492f: $58
	ld   e, l                                        ; $4930: $5d
	nop                                              ; $4931: $00
	ld   [bc], a                                     ; $4932: $02
	rlca                                             ; $4933: $07
	cp   $03                                         ; $4934: $fe $03
	ld   [bc], a                                     ; $4936: $02
	inc  bc                                          ; $4937: $03
	ld   bc, $2000                                   ; $4938: $01 $00 $20
	nop                                              ; $493b: $00
	rlca                                             ; $493c: $07
	dec  l                                           ; $493d: $2d
	inc  b                                           ; $493e: $04
	ld   [bc], a                                     ; $493f: $02
	inc  bc                                          ; $4940: $03
	ld   bc, $2001                                   ; $4941: $01 $01 $20
	nop                                              ; $4944: $00
	rlca                                             ; $4945: $07
	ld   [hl], a                                     ; $4946: $77
	inc  b                                           ; $4947: $04
	ld   [bc], a                                     ; $4948: $02
	inc  bc                                          ; $4949: $03
	ld   bc, $2002                                   ; $494a: $01 $02 $20
	nop                                              ; $494d: $00
	ld   b, $c2                                      ; $494e: $06 $c2
	inc  b                                           ; $4950: $04
	rrca                                             ; $4951: $0f
	nop                                              ; $4952: $00
	ld   bc, $5801                                   ; $4953: $01 $01 $58
	inc  b                                           ; $4956: $04
	db   $ed                                         ; $4957: $ed
	ld   [hl], l                                     ; $4958: $75
	ld   d, b                                        ; $4959: $50
	ld   l, l                                        ; $495a: $6d
	ld   l, l                                        ; $495b: $6d
	adc  a                                           ; $495c: $8f
	ld   [hl], h                                     ; $495d: $74
	ld   e, b                                        ; $495e: $58
	ld   e, e                                        ; $495f: $5b
	adc  h                                           ; $4960: $8c
	ld   h, a                                        ; $4961: $67
	sbc  a                                           ; $4962: $9f
	dec  c                                           ; $4963: $0d
	nop                                              ; $4964: $00
	ld   a, [bc]                                     ; $4965: $0a
	inc  e                                           ; $4966: $1c
	ld   [bc], a                                     ; $4967: $02
	ld   bc, $0101                                   ; $4968: $01 $01 $01
	ld   l, e                                        ; $496b: $6b
	ld   d, h                                        ; $496c: $54
	ld   [hl], l                                     ; $496d: $75
	ld   h, a                                        ; $496e: $67
	sbc  l                                           ; $496f: $9d
	sbc  a                                           ; $4970: $9f
	dec  c                                           ; $4971: $0d
	nop                                              ; $4972: $00
	ld   a, [bc]                                     ; $4973: $0a
	dec  b                                           ; $4974: $05
	ld   b, b                                        ; $4975: $40
	rst  $38                                         ; $4976: $ff
	inc  bc                                          ; $4977: $03
	rst  $38                                         ; $4978: $ff
	ld   bc, $2801                                   ; $4979: $01 $01 $28
	nop                                              ; $497c: $00
	ld   b, $ee                                      ; $497d: $06 $ee
	inc  b                                           ; $497f: $04
	rrca                                             ; $4980: $0f
	nop                                              ; $4981: $00
	ld   bc, $ae01                                   ; $4982: $01 $01 $ae
	push af                                          ; $4985: $f5
	xor  [hl]                                        ; $4986: $ae
	push af                                          ; $4987: $f5
	ld   a, c                                        ; $4988: $79
	inc  b                                           ; $4989: $04
	db   $fc                                         ; $498a: $fc
	sub  d                                           ; $498b: $92
	ld   h, l                                        ; $498c: $65
	ld   [hl], h                                     ; $498d: $74
	dec  c                                           ; $498e: $0d
	ld   e, b                                        ; $498f: $58
	ld   e, e                                        ; $4990: $5b
	adc  h                                           ; $4991: $8c
	ld   h, a                                        ; $4992: $67
	sbc  a                                           ; $4993: $9f
	dec  c                                           ; $4994: $0d
	nop                                              ; $4995: $00
	ld   a, [bc]                                     ; $4996: $0a
	inc  e                                           ; $4997: $1c
	ld   [bc], a                                     ; $4998: $02
	rlca                                             ; $4999: $07
	rlca                                             ; $499a: $07
	ld   bc, $a16b                                   ; $499b: $01 $6b $a1
	ld   a, b                                        ; $499e: $78
	ld   h, c                                        ; $499f: $61
	halt                                             ; $49a0: $76
	ld   h, l                                        ; $49a1: $65
	ld   l, l                                        ; $49a2: $6d
	sub  a                                           ; $49a3: $97
	sbc  [hl]                                        ; $49a4: $9e
	ld   e, b                                        ; $49a5: $58
	inc  bc                                          ; $49a6: $03
	jp   $047c                                       ; $49a7: $c3 $7c $04


	sub  c                                           ; $49aa: $91
	ld   e, d                                        ; $49ab: $5a
	dec  c                                           ; $49ac: $0d
	ld   [bc], a                                     ; $49ad: $02
	adc  b                                           ; $49ae: $88
	ld   e, c                                        ; $49af: $59
	ld   a, b                                        ; $49b0: $78
	ld   e, l                                        ; $49b1: $5d
	ld   a, b                                        ; $49b2: $78
	sbc  b                                           ; $49b3: $98
	adc  h                                           ; $49b4: $8c
	ld   h, a                                        ; $49b5: $67
	sbc  l                                           ; $49b6: $9d
	sbc  a                                           ; $49b7: $9f
	dec  c                                           ; $49b8: $0d
	ld   d, b                                        ; $49b9: $50
	ld   l, l                                        ; $49ba: $6d
	ld   l, l                                        ; $49bb: $6d
	adc  a                                           ; $49bc: $8f
	sbc  c                                           ; $49bd: $99
	ld   a, h                                        ; $49be: $7c
	ld   [hl], l                                     ; $49bf: $75
	ld   h, a                                        ; $49c0: $67
	sbc  l                                           ; $49c1: $9d
	sub  [hl]                                        ; $49c2: $96
	sbc  a                                           ; $49c3: $9f
	dec  c                                           ; $49c4: $0d
	nop                                              ; $49c5: $00
	ld   a, [bc]                                     ; $49c6: $0a
	ld   b, $ee                                      ; $49c7: $06 $ee
	inc  b                                           ; $49c9: $04
	rrca                                             ; $49ca: $0f
	nop                                              ; $49cb: $00
	ld   bc, $5b01                                   ; $49cc: $01 $01 $5b
	sbc  d                                           ; $49cf: $9a
	ld   d, d                                        ; $49d0: $52
	ld   a, c                                        ; $49d1: $79
	inc  bc                                          ; $49d2: $03
	ld   [hl], e                                     ; $49d3: $73
	ld   [hl], c                                     ; $49d4: $71
	ld   [hl], h                                     ; $49d5: $74
	ld   e, b                                        ; $49d6: $58
	ld   e, e                                        ; $49d7: $5b
	adc  h                                           ; $49d8: $8c
	ld   h, a                                        ; $49d9: $67
	sbc  a                                           ; $49da: $9f
	dec  c                                           ; $49db: $0d
	nop                                              ; $49dc: $00
	ld   a, [bc]                                     ; $49dd: $0a
	inc  e                                           ; $49de: $1c
	ld   [bc], a                                     ; $49df: $02
	nop                                              ; $49e0: $00
	nop                                              ; $49e1: $00
	ld   bc, $9a6b                                   ; $49e2: $01 $6b $9a
	ld   a, l                                        ; $49e5: $7d
	dec  b                                           ; $49e6: $05
	xor  c                                           ; $49e7: $a9
	inc  b                                           ; $49e8: $04
	adc  a                                           ; $49e9: $8f
	inc  b                                           ; $49ea: $04
	jr   nz, jr_04c_4a65                             ; $49eb: $20 $78

	ld   h, c                                        ; $49ed: $61
	halt                                             ; $49ee: $76
	ld   [hl], l                                     ; $49ef: $75
	ld   h, a                                        ; $49f0: $67
	sbc  l                                           ; $49f1: $9d
	sbc  a                                           ; $49f2: $9f
	dec  c                                           ; $49f3: $0d
	ld   [hl], l                                     ; $49f4: $75
	sub  b                                           ; $49f5: $90
	sbc  [hl]                                        ; $49f6: $9e
	ld   [bc], a                                     ; $49f7: $02
	and  l                                           ; $49f8: $a5
	ld   a, h                                        ; $49f9: $7c
	inc  b                                           ; $49fa: $04
	ld   a, d                                        ; $49fb: $7a
	ld   [bc], a                                     ; $49fc: $02
	ld   a, e                                        ; $49fd: $7b
	ld   a, h                                        ; $49fe: $7c
	inc  bc                                          ; $49ff: $03
	ld   c, d                                        ; $4a00: $4a
	ld   [bc], a                                     ; $4a01: $02
	or   h                                           ; $4a02: $b4
	ld   a, l                                        ; $4a03: $7d
	dec  c                                           ; $4a04: $0d
	ld   d, b                                        ; $4a05: $50
	ld   l, l                                        ; $4a06: $6d
	ld   l, l                                        ; $4a07: $6d
	adc  a                                           ; $4a08: $8f
	sbc  c                                           ; $4a09: $99
	sbc  [hl]                                        ; $4a0a: $9e
	ld   [hl], l                                     ; $4a0b: $75
	ld   h, a                                        ; $4a0c: $67
	sbc  l                                           ; $4a0d: $9d
	sbc  a                                           ; $4a0e: $9f
	dec  c                                           ; $4a0f: $0d
	nop                                              ; $4a10: $00
	ld   a, [bc]                                     ; $4a11: $0a
	ld   b, $ee                                      ; $4a12: $06 $ee
	inc  b                                           ; $4a14: $04
	inc  e                                           ; $4a15: $1c
	ld   [bc], a                                     ; $4a16: $02
	nop                                              ; $4a17: $00
	nop                                              ; $4a18: $00
	ld   bc, $4a03                                   ; $4a19: $01 $03 $4a
	ld   [bc], a                                     ; $4a1c: $02
	or   h                                           ; $4a1d: $b4
	ld   a, l                                        ; $4a1e: $7d
	sbc  [hl]                                        ; $4a1f: $9e
	ld   d, b                                        ; $4a20: $50
	ld   l, l                                        ; $4a21: $6d
	ld   l, l                                        ; $4a22: $6d
	adc  a                                           ; $4a23: $8f
	sbc  c                                           ; $4a24: $99
	ld   [hl], l                                     ; $4a25: $75
	ld   h, a                                        ; $4a26: $67
	sbc  l                                           ; $4a27: $9d
	sbc  a                                           ; $4a28: $9f
	dec  c                                           ; $4a29: $0d
	ld   [bc], a                                     ; $4a2a: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a2b: $cf
	inc  bc                                          ; $4a2c: $03
	jp   Jump_04c_637d                               ; $4a2d: $c3 $7d $63


	adc  a                                           ; $4a30: $8f
	sbc  c                                           ; $4a31: $99
	halt                                             ; $4a32: $76
	ld   [bc], a                                     ; $4a33: $02
	sub  h                                           ; $4a34: $94
	ld   e, l                                        ; $4a35: $5d
	ld   a, b                                        ; $4a36: $78
	sbc  b                                           ; $4a37: $98
	adc  h                                           ; $4a38: $8c
	ld   h, a                                        ; $4a39: $67
	dec  c                                           ; $4a3a: $0d
	ld   e, c                                        ; $4a3b: $59
	sub  a                                           ; $4a3c: $97
	sbc  a                                           ; $4a3d: $9f
	dec  c                                           ; $4a3e: $0d
	nop                                              ; $4a3f: $00
	ld   a, [bc]                                     ; $4a40: $0a
	inc  e                                           ; $4a41: $1c
	ld   [bc], a                                     ; $4a42: $02
	nop                                              ; $4a43: $00
	nop                                              ; $4a44: $00
	ld   bc, $7d75                                   ; $4a45: $01 $75 $7d
	inc  bc                                          ; $4a48: $03
	ld   l, b                                        ; $4a49: $68
	ld   a, c                                        ; $4a4a: $79
	sbc  [hl]                                        ; $4a4b: $9e
	inc  b                                           ; $4a4c: $04
	db   $e4                                         ; $4a4d: $e4
	ld   [bc], a                                     ; $4a4e: $02
	ld   d, a                                        ; $4a4f: $57
	ld   a, c                                        ; $4a50: $79
	ld   e, b                                        ; $4a51: $58
	inc  bc                                          ; $4a52: $03
	jp   $047c                                       ; $4a53: $c3 $7c $04


	sub  c                                           ; $4a56: $91
	and  b                                           ; $4a57: $a0
	dec  c                                           ; $4a58: $0d
	inc  b                                           ; $4a59: $04
	ld   b, l                                        ; $4a5a: $45
	sbc  d                                           ; $4a5b: $9a
	adc  h                                           ; $4a5c: $8c
	ld   h, a                                        ; $4a5d: $67
	sbc  a                                           ; $4a5e: $9f
	dec  c                                           ; $4a5f: $0d
	inc  bc                                          ; $4a60: $03
	ld   l, $03                                      ; $4a61: $2e $03
	pop  hl                                          ; $4a63: $e1
	ld   a, l                                        ; $4a64: $7d

jr_04c_4a65:
	ld   [hl], a                                     ; $4a65: $77
	sbc  d                                           ; $4a66: $9a
	ld   e, l                                        ; $4a67: $5d
	sub  a                                           ; $4a68: $97
	ld   d, d                                        ; $4a69: $52
	inc  b                                           ; $4a6a: $04
	ld   b, l                                        ; $4a6b: $45
	sbc  d                                           ; $4a6c: $9a
	adc  h                                           ; $4a6d: $8c
	ld   h, a                                        ; $4a6e: $67
	ld   e, c                                        ; $4a6f: $59
	ld   sp, hl                                      ; $4a70: $f9
	dec  c                                           ; $4a71: $0d
	nop                                              ; $4a72: $00
	ld   a, [bc]                                     ; $4a73: $0a
	add  hl, de                                      ; $4a74: $19
	dec  b                                           ; $4a75: $05
	inc  bc                                          ; $4a76: $03
	inc  bc                                          ; $4a77: $03
	add  d                                           ; $4a78: $82
	inc  bc                                          ; $4a79: $03
	pop  bc                                          ; $4a7a: $c1
	inc  b                                           ; $4a7b: $04
	sbc  [hl]                                        ; $4a7c: $9e
	nop                                              ; $4a7d: $00
	nop                                              ; $4a7e: $00
	inc  bc                                          ; $4a7f: $03
	add  d                                           ; $4a80: $82
	inc  bc                                          ; $4a81: $03
	pop  bc                                          ; $4a82: $c1
	inc  b                                           ; $4a83: $04
	sbc  [hl]                                        ; $4a84: $9e
	ld   bc, $1209                                   ; $4a85: $01 $09 $12
	dec  b                                           ; $4a88: $05
	ld   d, [hl]                                     ; $4a89: $56
	nop                                              ; $4a8a: $00
	ld   bc, $5d6d                                   ; $4a8b: $01 $6d $5d
	ld   h, e                                        ; $4a8e: $63
	and  c                                           ; $4a8f: $a1
	nop                                              ; $4a90: $00
	ld   [bc], a                                     ; $4a91: $02
	rlca                                             ; $4a92: $07
	ld   e, l                                        ; $4a93: $5d
	dec  b                                           ; $4a94: $05
	ld   [bc], a                                     ; $4a95: $02
	inc  bc                                          ; $4a96: $03
	ld   bc, $2000                                   ; $4a97: $01 $00 $20
	nop                                              ; $4a9a: $00
	rlca                                             ; $4a9b: $07
	adc  a                                           ; $4a9c: $8f
	dec  b                                           ; $4a9d: $05
	ld   [bc], a                                     ; $4a9e: $02
	inc  bc                                          ; $4a9f: $03
	ld   bc, $2001                                   ; $4aa0: $01 $01 $20
	nop                                              ; $4aa3: $00
	rlca                                             ; $4aa4: $07
	and  $05                                         ; $4aa5: $e6 $05
	ld   [bc], a                                     ; $4aa7: $02
	inc  bc                                          ; $4aa8: $03
	ld   bc, $2002                                   ; $4aa9: $01 $02 $20
	nop                                              ; $4aac: $00
	ld   b, $2d                                      ; $4aad: $06 $2d
	ld   b, $0f                                      ; $4aaf: $06 $0f
	nop                                              ; $4ab1: $00
	ld   bc, $0301                                   ; $4ab2: $01 $01 $03
	add  d                                           ; $4ab5: $82
	inc  bc                                          ; $4ab6: $03
	pop  bc                                          ; $4ab7: $c1
	inc  b                                           ; $4ab8: $04
	sbc  [hl]                                        ; $4ab9: $9e
	ld   [hl], l                                     ; $4aba: $75
	ld   h, a                                        ; $4abb: $67
	sbc  a                                           ; $4abc: $9f
	dec  c                                           ; $4abd: $0d
	nop                                              ; $4abe: $00
	ld   a, [bc]                                     ; $4abf: $0a
	inc  e                                           ; $4ac0: $1c
	ld   [bc], a                                     ; $4ac1: $02
	ld   bc, $0101                                   ; $4ac2: $01 $01 $01
	ld   l, e                                        ; $4ac5: $6b
	ld   d, h                                        ; $4ac6: $54
	ld   [hl], l                                     ; $4ac7: $75
	ld   h, a                                        ; $4ac8: $67
	sbc  l                                           ; $4ac9: $9d
	sbc  a                                           ; $4aca: $9f
	dec  c                                           ; $4acb: $0d
	nop                                              ; $4acc: $00
	ld   a, [bc]                                     ; $4acd: $0a
	dec  b                                           ; $4ace: $05
	ld   b, b                                        ; $4acf: $40
	rst  $38                                         ; $4ad0: $ff
	inc  bc                                          ; $4ad1: $03
	rst  $38                                         ; $4ad2: $ff
	ld   bc, $2801                                   ; $4ad3: $01 $01 $28
	nop                                              ; $4ad6: $00
	dec  c                                           ; $4ad7: $0d
	nop                                              ; $4ad8: $00
	nop                                              ; $4ad9: $00
	rrca                                             ; $4ada: $0f
	nop                                              ; $4adb: $00
	ld   bc, $0b0c                                   ; $4adc: $01 $0c $0b
	ld   b, $50                                      ; $4adf: $06 $50
	ld   b, $0f                                      ; $4ae1: $06 $0f
	nop                                              ; $4ae3: $00
	ld   bc, $0301                                   ; $4ae4: $01 $01 $03
	add  d                                           ; $4ae7: $82
	inc  bc                                          ; $4ae8: $03
	pop  bc                                          ; $4ae9: $c1
	inc  b                                           ; $4aea: $04
	sbc  [hl]                                        ; $4aeb: $9e
	ld   bc, $1209                                   ; $4aec: $01 $09 $12
	dec  b                                           ; $4aef: $05
	ld   d, [hl]                                     ; $4af0: $56
	ld   [hl], l                                     ; $4af1: $75
	ld   h, a                                        ; $4af2: $67
	sbc  a                                           ; $4af3: $9f
	dec  c                                           ; $4af4: $0d
	nop                                              ; $4af5: $00
	ld   a, [bc]                                     ; $4af6: $0a
	inc  e                                           ; $4af7: $1c
	ld   [bc], a                                     ; $4af8: $02
	nop                                              ; $4af9: $00
	nop                                              ; $4afa: $00
	ld   bc, $9a6b                                   ; $4afb: $01 $6b $9a
	ld   a, l                                        ; $4afe: $7d
	sbc  [hl]                                        ; $4aff: $9e
	inc  b                                           ; $4b00: $04
	ld   c, $5b                                      ; $4b01: $0e $5b
	ld   d, d                                        ; $4b03: $52
	inc  b                                           ; $4b04: $04
	db   $e4                                         ; $4b05: $e4
	ld   [bc], a                                     ; $4b06: $02
	ld   d, a                                        ; $4b07: $57
	sub  d                                           ; $4b08: $92
	dec  c                                           ; $4b09: $0d
	inc  b                                           ; $4b0a: $04
	ld   c, $5b                                      ; $4b0b: $0e $5b
	ld   d, d                                        ; $4b0d: $52
	db   $ec                                         ; $4b0e: $ec
	ei                                               ; $4b0f: $fb
	sub  $7c                                         ; $4b10: $d6 $7c
	inc  bc                                          ; $4b12: $03
	ld   l, a                                        ; $4b13: $6f
	ld   [hl], l                                     ; $4b14: $75
	ld   h, a                                        ; $4b15: $67
	sbc  l                                           ; $4b16: $9d
	sbc  a                                           ; $4b17: $9f
	dec  c                                           ; $4b18: $0d
	inc  bc                                          ; $4b19: $03
	ld   l, $03                                      ; $4b1a: $2e $03
	pop  hl                                          ; $4b1c: $e1
	ld   a, l                                        ; $4b1d: $7d
	inc  bc                                          ; $4b1e: $03
	add  d                                           ; $4b1f: $82
	inc  bc                                          ; $4b20: $03
	pop  bc                                          ; $4b21: $c1
	inc  b                                           ; $4b22: $04
	sbc  [hl]                                        ; $4b23: $9e
	ld   [hl], l                                     ; $4b24: $75
	ld   d, d                                        ; $4b25: $52
	ld   d, d                                        ; $4b26: $52
	ld   a, h                                        ; $4b27: $7c
	ld   [hl], l                                     ; $4b28: $75
	ld   h, a                                        ; $4b29: $67
	sbc  a                                           ; $4b2a: $9f
	dec  c                                           ; $4b2b: $0d
	nop                                              ; $4b2c: $00
	ld   a, [bc]                                     ; $4b2d: $0a
	dec  c                                           ; $4b2e: $0d
	nop                                              ; $4b2f: $00
	nop                                              ; $4b30: $00
	rrca                                             ; $4b31: $0f
	nop                                              ; $4b32: $00
	ld   bc, $0b0c                                   ; $4b33: $01 $0c $0b
	ld   b, $50                                      ; $4b36: $06 $50
	ld   b, $0f                                      ; $4b38: $06 $0f
	nop                                              ; $4b3a: $00
	ld   bc, $6d01                                   ; $4b3b: $01 $01 $6d
	ld   e, l                                        ; $4b3e: $5d
	ld   h, e                                        ; $4b3f: $63
	and  c                                           ; $4b40: $a1
	ld   [hl], l                                     ; $4b41: $75
	ld   h, a                                        ; $4b42: $67
	sbc  a                                           ; $4b43: $9f
	dec  c                                           ; $4b44: $0d
	nop                                              ; $4b45: $00
	ld   a, [bc]                                     ; $4b46: $0a
	inc  e                                           ; $4b47: $1c
	ld   [bc], a                                     ; $4b48: $02
	rlca                                             ; $4b49: $07
	rlca                                             ; $4b4a: $07
	ld   bc, $5a6f                                   ; $4b4b: $01 $6f $5a
	ld   d, d                                        ; $4b4e: $52
	adc  h                                           ; $4b4f: $8c
	ld   h, a                                        ; $4b50: $67
	sbc  l                                           ; $4b51: $9d
	sbc  a                                           ; $4b52: $9f
	dec  c                                           ; $4b53: $0d
	inc  bc                                          ; $4b54: $03
	add  d                                           ; $4b55: $82
	inc  bc                                          ; $4b56: $03
	pop  bc                                          ; $4b57: $c1
	inc  b                                           ; $4b58: $04
	sbc  [hl]                                        ; $4b59: $9e
	ld   [hl], l                                     ; $4b5a: $75
	ld   h, a                                        ; $4b5b: $67
	sbc  a                                           ; $4b5c: $9f
	inc  b                                           ; $4b5d: $04
	ld   b, l                                        ; $4b5e: $45
	sbc  d                                           ; $4b5f: $9a
	ld   h, a                                        ; $4b60: $67
	ld   e, h                                        ; $4b61: $5c
	sbc  c                                           ; $4b62: $99
	halt                                             ; $4b63: $76
	dec  c                                           ; $4b64: $0d
	ld   [bc], a                                     ; $4b65: $02
	sub  h                                           ; $4b66: $94
	ld   e, l                                        ; $4b67: $5d
	ld   [hl], h                                     ; $4b68: $74
	ld   a, h                                        ; $4b69: $7c
	adc  a                                           ; $4b6a: $8f
	adc  h                                           ; $4b6b: $8c
	ld   l, c                                        ; $4b6c: $69
	and  c                                           ; $4b6d: $a1
	ld   h, c                                        ; $4b6e: $61
	halt                                             ; $4b6f: $76
	sub  [hl]                                        ; $4b70: $96
	sbc  a                                           ; $4b71: $9f
	dec  c                                           ; $4b72: $0d
	nop                                              ; $4b73: $00
	ld   a, [bc]                                     ; $4b74: $0a
	dec  c                                           ; $4b75: $0d
	nop                                              ; $4b76: $00
	nop                                              ; $4b77: $00
	rrca                                             ; $4b78: $0f
	nop                                              ; $4b79: $00
	ld   bc, $0b0c                                   ; $4b7a: $01 $0c $0b
	ld   b, $50                                      ; $4b7d: $06 $50
	ld   b, $1c                                      ; $4b7f: $06 $1c
	ld   [bc], a                                     ; $4b81: $02
	nop                                              ; $4b82: $00
	nop                                              ; $4b83: $00
	ld   bc, $4a03                                   ; $4b84: $01 $03 $4a
	ld   [bc], a                                     ; $4b87: $02
	or   h                                           ; $4b88: $b4
	ld   a, l                                        ; $4b89: $7d
	sbc  [hl]                                        ; $4b8a: $9e
	inc  bc                                          ; $4b8b: $03
	add  d                                           ; $4b8c: $82
	inc  bc                                          ; $4b8d: $03
	pop  bc                                          ; $4b8e: $c1
	inc  b                                           ; $4b8f: $04
	sbc  [hl]                                        ; $4b90: $9e
	ld   [hl], l                                     ; $4b91: $75
	ld   h, a                                        ; $4b92: $67
	sbc  l                                           ; $4b93: $9d
	sbc  a                                           ; $4b94: $9f
	dec  c                                           ; $4b95: $0d
	nop                                              ; $4b96: $00
	ld   a, [bc]                                     ; $4b97: $0a
	dec  c                                           ; $4b98: $0d
	nop                                              ; $4b99: $00
	nop                                              ; $4b9a: $00
	rrca                                             ; $4b9b: $0f
	nop                                              ; $4b9c: $00
	ld   bc, $0b0c                                   ; $4b9d: $01 $0c $0b
	ld   b, $50                                      ; $4ba0: $06 $50
	ld   b, $07                                      ; $4ba2: $06 $07
	ld   l, e                                        ; $4ba4: $6b
	ld   b, $03                                      ; $4ba5: $06 $03
	rst  $38                                         ; $4ba7: $ff
	ld   bc, $2003                                   ; $4ba8: $01 $03 $20
	nop                                              ; $4bab: $00
	rlca                                             ; $4bac: $07
	adc  [hl]                                        ; $4bad: $8e
	ld   b, $03                                      ; $4bae: $06 $03
	rst  $38                                         ; $4bb0: $ff
	ld   bc, $2002                                   ; $4bb1: $01 $02 $20
	nop                                              ; $4bb4: $00
	rlca                                             ; $4bb5: $07
	xor  h                                           ; $4bb6: $ac
	ld   b, $03                                      ; $4bb7: $06 $03
	rst  $38                                         ; $4bb9: $ff
	ld   bc, $2301                                   ; $4bba: $01 $01 $23
	nop                                              ; $4bbd: $00
	inc  e                                           ; $4bbe: $1c
	ld   [bc], a                                     ; $4bbf: $02
	ld   bc, $1d01                                   ; $4bc0: $01 $01 $1d
	ld   b, b                                        ; $4bc3: $40
	ld   [de], a                                     ; $4bc4: $12
	inc  bc                                          ; $4bc5: $03
	ld   [de], a                                     ; $4bc6: $12
	ld   bc, $2803                                   ; $4bc7: $01 $03 $28
	nop                                              ; $4bca: $00
	ld   bc, $7e67                                   ; $4bcb: $01 $67 $7e
	sub  a                                           ; $4bce: $97
	ld   h, l                                        ; $4bcf: $65
	ld   d, d                                        ; $4bd0: $52
	ld   [hl], l                                     ; $4bd1: $75
	ld   h, a                                        ; $4bd2: $67
	sbc  l                                           ; $4bd3: $9d
	sbc  a                                           ; $4bd4: $9f
	dec  c                                           ; $4bd5: $0d
	ld   [$6300], sp                                 ; $4bd6: $08 $00 $63
	and  c                                           ; $4bd9: $a1
	sbc  a                                           ; $4bda: $9f
	dec  c                                           ; $4bdb: $0d
	nop                                              ; $4bdc: $00
	ld   a, [bc]                                     ; $4bdd: $0a
	ld   b, $77                                      ; $4bde: $06 $77
	rlca                                             ; $4be0: $07
	inc  e                                           ; $4be1: $1c
	ld   [bc], a                                     ; $4be2: $02
	nop                                              ; $4be3: $00
	nop                                              ; $4be4: $00
	dec  e                                           ; $4be5: $1d
	ld   b, b                                        ; $4be6: $40
	ld   [de], a                                     ; $4be7: $12
	inc  bc                                          ; $4be8: $03
	ld   [de], a                                     ; $4be9: $12
	ld   bc, $2802                                   ; $4bea: $01 $02 $28
	nop                                              ; $4bed: $00
	ld   bc, $508c                                   ; $4bee: $01 $8c $50
	adc  h                                           ; $4bf1: $8c
	ld   d, b                                        ; $4bf2: $50
	ld   [hl], l                                     ; $4bf3: $75
	ld   h, l                                        ; $4bf4: $65
	ld   l, l                                        ; $4bf5: $6d
	sbc  l                                           ; $4bf6: $9d
	ld   a, e                                        ; $4bf7: $7b
	sbc  a                                           ; $4bf8: $9f
	dec  c                                           ; $4bf9: $0d
	nop                                              ; $4bfa: $00
	ld   a, [bc]                                     ; $4bfb: $0a
	ld   b, $77                                      ; $4bfc: $06 $77
	rlca                                             ; $4bfe: $07
	inc  e                                           ; $4bff: $1c
	ld   [bc], a                                     ; $4c00: $02
	ld   [bc], a                                     ; $4c01: $02
	ld   [bc], a                                     ; $4c02: $02
	dec  e                                           ; $4c03: $1d
	ld   b, b                                        ; $4c04: $40
	ld   [de], a                                     ; $4c05: $12
	inc  bc                                          ; $4c06: $03
	ld   [de], a                                     ; $4c07: $12
	ld   bc, $2902                                   ; $4c08: $01 $02 $29
	nop                                              ; $4c0b: $00
	ld   bc, $7a02                                   ; $4c0c: $01 $02 $7a
	ld   d, [hl]                                     ; $4c0f: $56
	sbc  c                                           ; $4c10: $99
	ld   [bc], a                                     ; $4c11: $02
	and  c                                           ; $4c12: $a1
	sbc  [hl]                                        ; $4c13: $9e
	ld   h, d                                        ; $4c14: $62
	ld   h, h                                        ; $4c15: $64
	ld   d, d                                        ; $4c16: $52
	adc  h                                           ; $4c17: $8c
	ld   h, a                                        ; $4c18: $67
	ld   a, h                                        ; $4c19: $7c
	ld   sp, hl                                      ; $4c1a: $f9
	dec  c                                           ; $4c1b: $0d
	nop                                              ; $4c1c: $00
	ld   a, [bc]                                     ; $4c1d: $0a
	dec  b                                           ; $4c1e: $05
	ld   b, b                                        ; $4c1f: $40
	ld   c, c                                        ; $4c20: $49
	ld   [bc], a                                     ; $4c21: $02
	nop                                              ; $4c22: $00
	nop                                              ; $4c23: $00
	dec  b                                           ; $4c24: $05
	ld   b, b                                        ; $4c25: $40
	ld   c, a                                        ; $4c26: $4f
	ld   bc, $0001                                   ; $4c27: $01 $01 $00
	inc  e                                           ; $4c2a: $1c
	ld   [bc], a                                     ; $4c2b: $02
	rlca                                             ; $4c2c: $07
	rlca                                             ; $4c2d: $07
	ld   bc, $508c                                   ; $4c2e: $01 $8c $50
	sbc  [hl]                                        ; $4c31: $9e
	ld   d, d                                        ; $4c32: $52
	ld   d, d                                        ; $4c33: $52
	ld   [hl], l                                     ; $4c34: $75
	ld   h, a                                        ; $4c35: $67
	sbc  l                                           ; $4c36: $9d
	sbc  a                                           ; $4c37: $9f
	dec  c                                           ; $4c38: $0d
	nop                                              ; $4c39: $00
	ld   a, [bc]                                     ; $4c3a: $0a
	ld   bc, $9876                                   ; $4c3b: $01 $76 $98
	ld   d, b                                        ; $4c3e: $50
	ld   d, [hl]                                     ; $4c3f: $56
	ld   l, b                                        ; $4c40: $68
	inc  bc                                          ; $4c41: $03
	ld   l, c                                        ; $4c42: $69
	ld   [bc], a                                     ; $4c43: $02
	xor  d                                           ; $4c44: $aa
	ld   a, c                                        ; $4c45: $79
	sbc  [hl]                                        ; $4c46: $9e
	ld   [bc], a                                     ; $4c47: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c48: $cf
	inc  bc                                          ; $4c49: $03
	jp   $0d7c                                       ; $4c4a: $c3 $7c $0d


	or   l                                           ; $4c4d: $b5
	ei                                               ; $4c4e: $fb
	db   $ed                                         ; $4c4f: $ed
	ret  z                                           ; $4c50: $c8

	push af                                          ; $4c51: $f5
	db   $ed                                         ; $4c52: $ed
	ei                                               ; $4c53: $fb
	db   $ed                                         ; $4c54: $ed
	ld   a, h                                        ; $4c55: $7c
	dec  b                                           ; $4c56: $05
	xor  c                                           ; $4c57: $a9
	inc  b                                           ; $4c58: $04
	adc  a                                           ; $4c59: $8f
	dec  c                                           ; $4c5a: $0d
	and  b                                           ; $4c5b: $a0
	ld   [bc], a                                     ; $4c5c: $02
	ret  nc                                          ; $4c5d: $d0

	ld   d, [hl]                                     ; $4c5e: $56
	ld   [hl], h                                     ; $4c5f: $74
	ld   e, b                                        ; $4c60: $58
	ld   e, e                                        ; $4c61: $5b
	adc  h                                           ; $4c62: $8c
	ld   h, a                                        ; $4c63: $67
	sbc  l                                           ; $4c64: $9d
	ld   a, e                                        ; $4c65: $7b
	sbc  a                                           ; $4c66: $9f
	dec  c                                           ; $4c67: $0d
	nop                                              ; $4c68: $00
	ld   a, [bc]                                     ; $4c69: $0a
	ld   bc, $cf02                                   ; $4c6a: $01 $02 $cf
	inc  bc                                          ; $4c6d: $03
	jp   $b57c                                       ; $4c6e: $c3 $7c $b5


	ei                                               ; $4c71: $fb
	db   $ed                                         ; $4c72: $ed
	ret  z                                           ; $4c73: $c8

	push af                                          ; $4c74: $f5
	db   $ed                                         ; $4c75: $ed
	ei                                               ; $4c76: $fb
	db   $ed                                         ; $4c77: $ed
	halt                                             ; $4c78: $76
	ld   a, l                                        ; $4c79: $7d
	dec  c                                           ; $4c7a: $0d
	ld   [de], a                                     ; $4c7b: $12
	xor  h                                           ; $4c7c: $ac
	call nz, $12d8                                   ; $4c7d: $c4 $d8 $12
	rst  ToBoot                                         ; $4c80: $c7
	and  h                                           ; $4c81: $a4
	ei                                               ; $4c82: $fb
	cp   d                                           ; $4c83: $ba
	ret  c                                           ; $4c84: $d8

	ei                                               ; $4c85: $fb
	push af                                          ; $4c86: $f5
	dec  c                                           ; $4c87: $0d
	inc  b                                           ; $4c88: $04
	ldh  [rAUD1HIGH], a                              ; $4c89: $e0 $14
	dec  sp                                          ; $4c8b: $3b
	and  b                                           ; $4c8c: $a0
	dec  b                                           ; $4c8d: $05
	xor  c                                           ; $4c8e: $a9
	inc  bc                                          ; $4c8f: $03
	inc  e                                           ; $4c90: $1c
	halt                                             ; $4c91: $76
	ld   h, a                                        ; $4c92: $67
	sbc  c                                           ; $4c93: $99
	ld   [bc], a                                     ; $4c94: $02
	jp   $6775                                       ; $4c95: $c3 $75 $67


	ld   a, h                                        ; $4c98: $7c
	sbc  a                                           ; $4c99: $9f
	dec  c                                           ; $4c9a: $0d
	nop                                              ; $4c9b: $00
	ld   a, [bc]                                     ; $4c9c: $0a
	inc  e                                           ; $4c9d: $1c
	ld   [bc], a                                     ; $4c9e: $02
	ld   [bc], a                                     ; $4c9f: $02
	ld   [bc], a                                     ; $4ca0: $02
	ld   bc, $9a61                                   ; $4ca1: $01 $61 $9a
	ld   e, l                                        ; $4ca4: $5d
	sub  a                                           ; $4ca5: $97
	ld   d, d                                        ; $4ca6: $52
	ld   a, l                                        ; $4ca7: $7d
	sbc  [hl]                                        ; $4ca8: $9e
	ld   e, b                                        ; $4ca9: $58
	adc  d                                           ; $4caa: $8a
	ld   d, [hl]                                     ; $4cab: $56
	ld   [hl], h                                     ; $4cac: $74
	dec  c                                           ; $4cad: $0d
	ld   e, b                                        ; $4cae: $58
	ld   e, e                                        ; $4caf: $5b
	ld   a, b                                        ; $4cb0: $78
	ld   h, e                                        ; $4cb1: $63
	ld   d, d                                        ; $4cb2: $52
	ld   a, e                                        ; $4cb3: $7b
	sbc  a                                           ; $4cb4: $9f
	dec  c                                           ; $4cb5: $0d
	ld   [hl], l                                     ; $4cb6: $75
	ld   a, l                                        ; $4cb7: $7d
	sbc  [hl]                                        ; $4cb8: $9e
	inc  bc                                          ; $4cb9: $03
	add  e                                           ; $4cba: $83
	dec  b                                           ; $4cbb: $05
	dec  c                                           ; $4cbc: $0d
	sbc  a                                           ; $4cbd: $9f
	dec  c                                           ; $4cbe: $0d
	nop                                              ; $4cbf: $00
	ld   a, [bc]                                     ; $4cc0: $0a
	dec  c                                           ; $4cc1: $0d
	nop                                              ; $4cc2: $00
	nop                                              ; $4cc3: $00
	rrca                                             ; $4cc4: $0f
	nop                                              ; $4cc5: $00
	ld   bc, $1e09                                   ; $4cc6: $01 $09 $1e
	nop                                              ; $4cc9: $00
	inc  e                                           ; $4cca: $1c
	ld   [bc], a                                     ; $4ccb: $02
	nop                                              ; $4ccc: $00
	nop                                              ; $4ccd: $00
	ld   bc, $9750                                   ; $4cce: $01 $50 $97
	sbc  [hl]                                        ; $4cd1: $9e
	sub  b                                           ; $4cd2: $90
	ld   d, h                                        ; $4cd3: $54
	ld   h, c                                        ; $4cd4: $61
	and  c                                           ; $4cd5: $a1
	ld   a, b                                        ; $4cd6: $78
	inc  bc                                          ; $4cd7: $03
	ld   l, a                                        ; $4cd8: $6f
	ld   [bc], a                                     ; $4cd9: $02
	xor  c                                           ; $4cda: $a9
	sbc  a                                           ; $4cdb: $9f
	dec  c                                           ; $4cdc: $0d
	nop                                              ; $4cdd: $00
	ld   a, [bc]                                     ; $4cde: $0a
	ld   bc, $6903                                   ; $4cdf: $01 $03 $69
	ld   [bc], a                                     ; $4ce2: $02
	xor  d                                           ; $4ce3: $aa
	ld   a, c                                        ; $4ce4: $79
	ld   [bc], a                                     ; $4ce5: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ce6: $cf
	inc  bc                                          ; $4ce7: $03
	jp   $b57c                                       ; $4ce8: $c3 $7c $b5


	ei                                               ; $4ceb: $fb
	db   $ed                                         ; $4cec: $ed
	ret  z                                           ; $4ced: $c8

	push af                                          ; $4cee: $f5
	db   $ed                                         ; $4cef: $ed
	ei                                               ; $4cf0: $fb
	db   $ed                                         ; $4cf1: $ed
	dec  c                                           ; $4cf2: $0d
	ld   a, h                                        ; $4cf3: $7c
	dec  b                                           ; $4cf4: $05
	xor  c                                           ; $4cf5: $a9
	inc  b                                           ; $4cf6: $04
	adc  a                                           ; $4cf7: $8f
	and  b                                           ; $4cf8: $a0
	ld   [bc], a                                     ; $4cf9: $02
	ret  nc                                          ; $4cfa: $d0

	ld   d, [hl]                                     ; $4cfb: $56
	ld   [hl], h                                     ; $4cfc: $74
	ld   e, b                                        ; $4cfd: $58
	ld   e, e                                        ; $4cfe: $5b
	adc  h                                           ; $4cff: $8c
	ld   h, a                                        ; $4d00: $67
	sbc  l                                           ; $4d01: $9d
	ld   a, e                                        ; $4d02: $7b
	sbc  a                                           ; $4d03: $9f
	dec  c                                           ; $4d04: $0d
	inc  b                                           ; $4d05: $04
	ld   c, $03                                      ; $4d06: $0e $03
	dec  de                                          ; $4d08: $1b
	ld   a, b                                        ; $4d09: $78
	dec  b                                           ; $4d0a: $05
	xor  c                                           ; $4d0b: $a9
	inc  b                                           ; $4d0c: $04
	adc  a                                           ; $4d0d: $8f
	ld   [hl], l                                     ; $4d0e: $75
	ld   h, a                                        ; $4d0f: $67
	sbc  l                                           ; $4d10: $9d
	sub  [hl]                                        ; $4d11: $96
	sbc  a                                           ; $4d12: $9f
	dec  c                                           ; $4d13: $0d
	nop                                              ; $4d14: $00
	ld   a, [bc]                                     ; $4d15: $0a
	ld   bc, $cf02                                   ; $4d16: $01 $02 $cf
	inc  bc                                          ; $4d19: $03
	jp   $b57c                                       ; $4d1a: $c3 $7c $b5


	ei                                               ; $4d1d: $fb
	db   $ed                                         ; $4d1e: $ed
	ret  z                                           ; $4d1f: $c8

	push af                                          ; $4d20: $f5
	db   $ed                                         ; $4d21: $ed
	ei                                               ; $4d22: $fb
	db   $ed                                         ; $4d23: $ed
	halt                                             ; $4d24: $76
	ld   a, l                                        ; $4d25: $7d
	dec  c                                           ; $4d26: $0d
	ld   [de], a                                     ; $4d27: $12
	xor  h                                           ; $4d28: $ac
	call nz, $12d8                                   ; $4d29: $c4 $d8 $12
	rst  ToBoot                                         ; $4d2c: $c7
	and  h                                           ; $4d2d: $a4
	ei                                               ; $4d2e: $fb
	cp   d                                           ; $4d2f: $ba
	ret  c                                           ; $4d30: $d8

	ei                                               ; $4d31: $fb
	push af                                          ; $4d32: $f5
	dec  c                                           ; $4d33: $0d
	inc  b                                           ; $4d34: $04
	ldh  [rAUD1HIGH], a                              ; $4d35: $e0 $14
	dec  sp                                          ; $4d37: $3b
	and  b                                           ; $4d38: $a0
	dec  b                                           ; $4d39: $05
	xor  c                                           ; $4d3a: $a9
	inc  bc                                          ; $4d3b: $03
	inc  e                                           ; $4d3c: $1c
	halt                                             ; $4d3d: $76
	ld   h, a                                        ; $4d3e: $67
	sbc  c                                           ; $4d3f: $99
	ld   [bc], a                                     ; $4d40: $02
	jp   $6775                                       ; $4d41: $c3 $75 $67


	ld   a, h                                        ; $4d44: $7c
	sbc  a                                           ; $4d45: $9f
	dec  c                                           ; $4d46: $0d
	nop                                              ; $4d47: $00
	ld   a, [bc]                                     ; $4d48: $0a
	inc  e                                           ; $4d49: $1c
	ld   [bc], a                                     ; $4d4a: $02
	ld   bc, $0101                                   ; $4d4b: $01 $01 $01
	ld   [bc], a                                     ; $4d4e: $02
	ei                                               ; $4d4f: $fb
	ld   e, e                                        ; $4d50: $5b
	ld   a, l                                        ; $4d51: $7d
	adc  h                                           ; $4d52: $8c
	ld   l, l                                        ; $4d53: $6d
	ld   [bc], a                                     ; $4d54: $02
	and  l                                           ; $4d55: $a5
	inc  b                                           ; $4d56: $04
	add  hl, hl                                      ; $4d57: $29
	sbc  [hl]                                        ; $4d58: $9e
	dec  c                                           ; $4d59: $0d
	inc  bc                                          ; $4d5a: $03
	ld   l, a                                        ; $4d5b: $6f
	ld   [bc], a                                     ; $4d5c: $02
	xor  c                                           ; $4d5d: $a9
	ld   e, d                                        ; $4d5e: $5a
	ld   d, b                                        ; $4d5f: $50
	sbc  b                                           ; $4d60: $98
	adc  h                                           ; $4d61: $8c
	ld   h, l                                        ; $4d62: $65
	ld   l, l                                        ; $4d63: $6d
	sub  a                                           ; $4d64: $97
	ld   a, e                                        ; $4d65: $7b
	sbc  a                                           ; $4d66: $9f
	dec  c                                           ; $4d67: $0d
	ld   [hl], l                                     ; $4d68: $75
	ld   a, l                                        ; $4d69: $7d
	sbc  [hl]                                        ; $4d6a: $9e
	inc  bc                                          ; $4d6b: $03
	add  e                                           ; $4d6c: $83
	dec  b                                           ; $4d6d: $05
	dec  c                                           ; $4d6e: $0d
	sbc  a                                           ; $4d6f: $9f
	dec  c                                           ; $4d70: $0d
	nop                                              ; $4d71: $00
	ld   a, [bc]                                     ; $4d72: $0a
	dec  c                                           ; $4d73: $0d
	nop                                              ; $4d74: $00
	nop                                              ; $4d75: $00
	rrca                                             ; $4d76: $0f
	nop                                              ; $4d77: $00
	ld   bc, $1e09                                   ; $4d78: $01 $09 $1e
	nop                                              ; $4d7b: $00
	nop                                              ; $4d7c: $00
	rrca                                             ; $4d7d: $0f
	nop                                              ; $4d7e: $00
	ld   bc, $1216                                   ; $4d7f: $01 $16 $12
	ld   [bc], a                                     ; $4d82: $02
	dec  b                                           ; $4d83: $05
	add  b                                           ; $4d84: $80
	adc  l                                           ; $4d85: $8d
	ld   bc, $0001                                   ; $4d86: $01 $01 $00
	ld   bc, $f5ac                                   ; $4d89: $01 $ac $f5
	bit  4, e                                        ; $4d8c: $cb $63
	and  c                                           ; $4d8e: $a1
	sbc  a                                           ; $4d8f: $9f
	dec  c                                           ; $4d90: $0d
	inc  bc                                          ; $4d91: $03
	adc  e                                           ; $4d92: $8b
	ld   a, l                                        ; $4d93: $7d
	sbc  [hl]                                        ; $4d94: $9e
	ld   [bc], a                                     ; $4d95: $02
	jp   nz, Jump_04c_6d5b                           ; $4d96: $c2 $5b $6d

	ld   d, d                                        ; $4d99: $52
	ld   h, c                                        ; $4d9a: $61
	halt                                             ; $4d9b: $76
	ld   e, d                                        ; $4d9c: $5a
	dec  c                                           ; $4d9d: $0d
	ld   d, b                                        ; $4d9e: $50
	sbc  c                                           ; $4d9f: $99
	and  c                                           ; $4da0: $a1
	ld   [hl], l                                     ; $4da1: $75
	ld   h, a                                        ; $4da2: $67
	ld   e, a                                        ; $4da3: $5f
	ld   [hl], a                                     ; $4da4: $77
	rst  $38                                         ; $4da5: $ff
	rst  $38                                         ; $4da6: $ff
	dec  c                                           ; $4da7: $0d
	nop                                              ; $4da8: $00
	ld   a, [bc]                                     ; $4da9: $0a
	inc  c                                           ; $4daa: $0c
	ld   [bc], a                                     ; $4dab: $02
	ld   c, $26                                      ; $4dac: $0e $26
	inc  e                                           ; $4dae: $1c
	ld   b, $00                                      ; $4daf: $06 $00
	nop                                              ; $4db1: $00
	ld   bc, $a178                                   ; $4db2: $01 $78 $a1
	ld   l, [hl]                                     ; $4db5: $6e
	ld   sp, hl                                      ; $4db6: $f9
	db   $10                                         ; $4db7: $10
	ld   [$9f00], sp                                 ; $4db8: $08 $00 $9f
	dec  c                                           ; $4dbb: $0d
	nop                                              ; $4dbc: $00
	ld   a, [bc]                                     ; $4dbd: $0a
	rrca                                             ; $4dbe: $0f
	nop                                              ; $4dbf: $00
	ld   bc, $ac01                                   ; $4dc0: $01 $01 $ac
	push af                                          ; $4dc3: $f5
	bit  4, e                                        ; $4dc4: $cb $63
	and  c                                           ; $4dc6: $a1
	ld   a, h                                        ; $4dc7: $7c
	ld   h, c                                        ; $4dc8: $61
	halt                                             ; $4dc9: $76
	and  b                                           ; $4dca: $a0
	sbc  [hl]                                        ; $4dcb: $9e
	dec  c                                           ; $4dcc: $0d
	sub  b                                           ; $4dcd: $90
	ld   [hl], c                                     ; $4dce: $71
	halt                                             ; $4dcf: $76
	sub  [hl]                                        ; $4dd0: $96
	ld   e, l                                        ; $4dd1: $5d
	inc  b                                           ; $4dd2: $04
	dec  hl                                          ; $4dd3: $2b
	sbc  b                                           ; $4dd4: $98
	ld   l, l                                        ; $4dd5: $6d
	ld   d, d                                        ; $4dd6: $52
	ld   a, b                                        ; $4dd7: $78
	halt                                             ; $4dd8: $76
	dec  c                                           ; $4dd9: $0d
	dec  b                                           ; $4dda: $05
	pop  de                                          ; $4ddb: $d1
	ld   d, d                                        ; $4ddc: $52
	adc  h                                           ; $4ddd: $8c
	ld   h, l                                        ; $4dde: $65
	ld   [hl], h                                     ; $4ddf: $74
	rst  $38                                         ; $4de0: $ff
	rst  $38                                         ; $4de1: $ff
	dec  c                                           ; $4de2: $0d
	nop                                              ; $4de3: $00
	ld   a, [bc]                                     ; $4de4: $0a
	inc  e                                           ; $4de5: $1c
	ld   b, $03                                      ; $4de6: $06 $03
	inc  bc                                          ; $4de8: $03
	ld   bc, $f950                                   ; $4de9: $01 $50 $f9
	db   $10                                         ; $4dec: $10
	ld   d, b                                        ; $4ded: $50
	ld   l, l                                        ; $4dee: $6d
	ld   d, d                                        ; $4def: $52
	ld   a, h                                        ; $4df0: $7c
	ld   h, c                                        ; $4df1: $61
	halt                                             ; $4df2: $76
	ld   sp, hl                                      ; $4df3: $f9
	dec  c                                           ; $4df4: $0d
	ld   h, [hl]                                     ; $4df5: $66
	sub  c                                           ; $4df6: $91
	ld   d, b                                        ; $4df7: $50
	sbc  [hl]                                        ; $4df8: $9e
	adc  h                                           ; $4df9: $8c
	ld   d, b                                        ; $4dfa: $50
	sbc  [hl]                                        ; $4dfb: $9e
	halt                                             ; $4dfc: $76
	sub  b                                           ; $4dfd: $90
	ld   e, c                                        ; $4dfe: $59
	ld   e, l                                        ; $4dff: $5d
	dec  c                                           ; $4e00: $0d
	db   $e3                                         ; $4e01: $e3
	cp   b                                           ; $4e02: $b8
	and  b                                           ; $4e03: $a0
	inc  bc                                          ; $4e04: $03
	ld   l, d                                        ; $4e05: $6a
	ld   e, b                                        ; $4e06: $58
	ld   d, h                                        ; $4e07: $54
	ld   l, d                                        ; $4e08: $6a
	sbc  a                                           ; $4e09: $9f
	dec  c                                           ; $4e0a: $0d
	nop                                              ; $4e0b: $00
	ld   a, [bc]                                     ; $4e0c: $0a
	add  hl, de                                      ; $4e0d: $19
	dec  b                                           ; $4e0e: $05
	ld   [bc], a                                     ; $4e0f: $02
	sub  [hl]                                        ; $4e10: $96
	sbc  e                                           ; $4e11: $9b
	ld   h, c                                        ; $4e12: $61
	and  c                                           ; $4e13: $a1
	ld   [hl], l                                     ; $4e14: $75
	nop                                              ; $4e15: $00
	nop                                              ; $4e16: $00
	ld   d, [hl]                                     ; $4e17: $56
	and  c                                           ; $4e18: $a1
	sbc  b                                           ; $4e19: $98
	sub  l                                           ; $4e1a: $95
	ld   h, l                                        ; $4e1b: $65
	adc  h                                           ; $4e1c: $8c
	ld   h, a                                        ; $4e1d: $67
	nop                                              ; $4e1e: $00
	ld   bc, $4407                                   ; $4e1f: $01 $07 $44
	ld   bc, $0302                                   ; $4e22: $01 $02 $03
	ld   bc, $2000                                   ; $4e25: $01 $00 $20
	nop                                              ; $4e28: $00
	rlca                                             ; $4e29: $07
	cp   b                                           ; $4e2a: $b8
	nop                                              ; $4e2b: $00
	ld   [bc], a                                     ; $4e2c: $02
	inc  bc                                          ; $4e2d: $03
	ld   bc, $2001                                   ; $4e2e: $01 $01 $20
	nop                                              ; $4e31: $00
	ld   b, $0c                                      ; $4e32: $06 $0c
	ld   bc, $000f                                   ; $4e34: $01 $0f $00
	ld   bc, $5201                                   ; $4e37: $01 $01 $52
	ld   d, [hl]                                     ; $4e3a: $56
	sbc  [hl]                                        ; $4e3b: $9e
	ld   h, d                                        ; $4e3c: $62
	inc  b                                           ; $4e3d: $04
	sbc  h                                           ; $4e3e: $9c
	ld   a, l                                        ; $4e3f: $7d
	ld   h, e                                        ; $4e40: $63
	ld   [hl], c                                     ; $4e41: $71
	ld   e, e                                        ; $4e42: $5b
	inc  bc                                          ; $4e43: $03
	ld   l, d                                        ; $4e44: $6a
	add  a                                           ; $4e45: $87
	adc  h                                           ; $4e46: $8c
	ld   h, l                                        ; $4e47: $65
	ld   l, l                                        ; $4e48: $6d
	dec  c                                           ; $4e49: $0d
	ld   a, h                                        ; $4e4a: $7c
	ld   [hl], l                                     ; $4e4b: $75
	sbc  [hl]                                        ; $4e4c: $9e
	inc  b                                           ; $4e4d: $04
	ld   l, l                                        ; $4e4e: $6d
	ld   a, l                                        ; $4e4f: $7d
	ld   d, d                                        ; $4e50: $52
	ld   d, d                                        ; $4e51: $52
	ld   [hl], l                                     ; $4e52: $75
	ld   h, a                                        ; $4e53: $67
	sbc  a                                           ; $4e54: $9f
	dec  c                                           ; $4e55: $0d
	nop                                              ; $4e56: $00
	ld   a, [bc]                                     ; $4e57: $0a
	inc  e                                           ; $4e58: $1c
	ld   b, $02                                      ; $4e59: $06 $02
	ld   [bc], a                                     ; $4e5b: $02
	ld   bc, $a178                                   ; $4e5c: $01 $78 $a1
	ld   l, [hl]                                     ; $4e5f: $6e
	sub  [hl]                                        ; $4e60: $96
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e61: $cf
	db   $ec                                         ; $4e62: $ec
	ld   a, h                                        ; $4e63: $7c
	ld   [bc], a                                     ; $4e64: $02
	jr   z, jr_04c_4eb9                              ; $4e65: $28 $52

	sub  d                                           ; $4e67: $92
	ld   [hl], d                                     ; $4e68: $72
	ld   l, [hl]                                     ; $4e69: $6e
	ld   a, b                                        ; $4e6a: $78
	sbc  a                                           ; $4e6b: $9f
	dec  c                                           ; $4e6c: $0d
	ld   l, e                                        ; $4e6d: $6b
	and  c                                           ; $4e6e: $a1
	ld   a, b                                        ; $4e6f: $78
	sub  d                                           ; $4e70: $92
	ld   [hl], d                                     ; $4e71: $72
	ld   a, c                                        ; $4e72: $79
	ld   a, l                                        ; $4e73: $7d
	sbc  [hl]                                        ; $4e74: $9e
	ld   d, b                                        ; $4e75: $50
	ld   l, l                                        ; $4e76: $6d
	ld   d, d                                        ; $4e77: $52
	ld   a, h                                        ; $4e78: $7c
	ld   h, c                                        ; $4e79: $61
	halt                                             ; $4e7a: $76
	dec  c                                           ; $4e7b: $0d
	ld   [bc], a                                     ; $4e7c: $02
	ret  nc                                          ; $4e7d: $d0

	ld   d, [hl]                                     ; $4e7e: $56
	ld   a, b                                        ; $4e7f: $78
	ld   d, d                                        ; $4e80: $52
	sub  [hl]                                        ; $4e81: $96
	db   $fc                                         ; $4e82: $fc
	ld   l, [hl]                                     ; $4e83: $6e
	sbc  a                                           ; $4e84: $9f
	dec  c                                           ; $4e85: $0d
	nop                                              ; $4e86: $00
	ld   a, [bc]                                     ; $4e87: $0a
	nop                                              ; $4e88: $00
	inc  e                                           ; $4e89: $1c
	ld   b, $02                                      ; $4e8a: $06 $02
	ld   [bc], a                                     ; $4e8c: $02
	dec  e                                           ; $4e8d: $1d
	ld   b, b                                        ; $4e8e: $40
	ld   d, $03                                      ; $4e8f: $16 $03
	ld   d, $01                                      ; $4e91: $16 $01
	ld   [bc], a                                     ; $4e93: $02
	add  hl, hl                                      ; $4e94: $29
	nop                                              ; $4e95: $00
	ld   bc, $a178                                   ; $4e96: $01 $78 $a1
	ld   l, [hl]                                     ; $4e99: $6e
	sub  [hl]                                        ; $4e9a: $96
	rst  $38                                         ; $4e9b: $ff
	rst  $38                                         ; $4e9c: $ff
	inc  bc                                          ; $4e9d: $03
	add  d                                           ; $4e9e: $82
	ld   e, d                                        ; $4e9f: $5a
	ld   l, c                                        ; $4ea0: $69
	ld   [hl], c                                     ; $4ea1: $71
	ld   e, c                                        ; $4ea2: $59
	ld   e, l                                        ; $4ea3: $5d
	dec  c                                           ; $4ea4: $0d
	ld   h, e                                        ; $4ea5: $63
	ld   l, e                                        ; $4ea6: $6b
	ld   [hl], c                                     ; $4ea7: $71
	ld   [hl], h                                     ; $4ea8: $74
	sbc  c                                           ; $4ea9: $99
	ld   [hl], c                                     ; $4eaa: $71
	ld   [hl], h                                     ; $4eab: $74
	ld   a, h                                        ; $4eac: $7c
	ld   a, c                                        ; $4ead: $79
	sub  [hl]                                        ; $4eae: $96
	rst  $38                                         ; $4eaf: $ff
	rst  $38                                         ; $4eb0: $ff
	dec  c                                           ; $4eb1: $0d
	sub  b                                           ; $4eb2: $90
	ld   d, h                                        ; $4eb3: $54
	ld   d, d                                        ; $4eb4: $52
	ld   d, d                                        ; $4eb5: $52
	sub  [hl]                                        ; $4eb6: $96
	sbc  [hl]                                        ; $4eb7: $9e
	ld   h, [hl]                                     ; $4eb8: $66

jr_04c_4eb9:
	sub  c                                           ; $4eb9: $91
	ld   d, b                                        ; $4eba: $50
	ld   a, b                                        ; $4ebb: $78
	sbc  a                                           ; $4ebc: $9f
	dec  c                                           ; $4ebd: $0d
	nop                                              ; $4ebe: $00
	ld   a, [bc]                                     ; $4ebf: $0a
	nop                                              ; $4ec0: $00
	rrca                                             ; $4ec1: $0f
	nop                                              ; $4ec2: $00
	ld   bc, $7d01                                   ; $4ec3: $01 $01 $7d
	ld   d, d                                        ; $4ec6: $52
	sbc  [hl]                                        ; $4ec7: $9e
	sub  [hl]                                        ; $4ec8: $96
	sbc  e                                           ; $4ec9: $9b
	ld   h, c                                        ; $4eca: $61
	and  c                                           ; $4ecb: $a1
	ld   [hl], l                                     ; $4ecc: $75
	sbc  a                                           ; $4ecd: $9f
	dec  c                                           ; $4ece: $0d
	nop                                              ; $4ecf: $00
	ld   a, [bc]                                     ; $4ed0: $0a
	inc  e                                           ; $4ed1: $1c
	ld   b, $01                                      ; $4ed2: $06 $01
	ld   bc, $9601                                   ; $4ed4: $01 $01 $96
	ld   h, l                                        ; $4ed7: $65
	sbc  [hl]                                        ; $4ed8: $9e
	inc  bc                                          ; $4ed9: $03
	ld   l, d                                        ; $4eda: $6a
	ld   d, h                                        ; $4edb: $54
	ld   l, h                                        ; $4edc: $6c
	ld   a, [$000d]                                  ; $4edd: $fa $0d $00
	ld   a, [bc]                                     ; $4ee0: $0a
	rrca                                             ; $4ee1: $0f
	nop                                              ; $4ee2: $00
	ld   bc, $e401                                   ; $4ee3: $01 $01 $e4
	or   c                                           ; $4ee6: $b1
	db   $e4                                         ; $4ee7: $e4
	or   c                                           ; $4ee8: $b1
	db   $e4                                         ; $4ee9: $e4
	or   c                                           ; $4eea: $b1
	rst  $38                                         ; $4eeb: $ff
	rst  $38                                         ; $4eec: $ff
	dec  c                                           ; $4eed: $0d
	nop                                              ; $4eee: $00
	ld   a, [bc]                                     ; $4eef: $0a
	inc  e                                           ; $4ef0: $1c
	ld   b, $00                                      ; $4ef1: $06 $00
	nop                                              ; $4ef3: $00
	ld   bc, $5078                                   ; $4ef4: $01 $78 $50
	sbc  [hl]                                        ; $4ef7: $9e
	ld   [$ff00], sp                                 ; $4ef8: $08 $00 $ff
	rst  $38                                         ; $4efb: $ff
	dec  c                                           ; $4efc: $0d
	ld   l, c                                        ; $4efd: $69
	ld   [hl], c                                     ; $4efe: $71
	ld   e, c                                        ; $4eff: $59
	ld   e, l                                        ; $4f00: $5d
	ld   l, [hl]                                     ; $4f01: $6e
	ld   e, c                                        ; $4f02: $59
	sub  a                                           ; $4f03: $97
	inc  b                                           ; $4f04: $04
	ld   c, $03                                      ; $4f05: $0e $03
	ld   l, d                                        ; $4f07: $6a
	ld   d, d                                        ; $4f08: $52
	inc  bc                                          ; $4f09: $03
	ld   c, [hl]                                     ; $4f0a: $4e
	inc  b                                           ; $4f0b: $04
	ld   a, l                                        ; $4f0c: $7d
	and  b                                           ; $4f0d: $a0
	dec  c                                           ; $4f0e: $0d
	ld   h, l                                        ; $4f0f: $65
	ld   a, b                                        ; $4f10: $78
	ld   d, d                                        ; $4f11: $52
	ld   e, c                                        ; $4f12: $59
	ld   sp, hl                                      ; $4f13: $f9
	dec  c                                           ; $4f14: $0d
	nop                                              ; $4f15: $00
	ld   a, [bc]                                     ; $4f16: $0a
	add  hl, de                                      ; $4f17: $19
	dec  b                                           ; $4f18: $05
	ld   [bc], a                                     ; $4f19: $02
	ld   [bc], a                                     ; $4f1a: $02
	rst  $38                                         ; $4f1b: $ff
	ld   e, a                                        ; $4f1c: $5f
	ld   [hl], h                                     ; $4f1d: $74
	dec  b                                           ; $4f1e: $05
	ld   d, $6f                                      ; $4f1f: $16 $6f
	adc  h                                           ; $4f21: $8c
	ld   h, a                                        ; $4f22: $67
	nop                                              ; $4f23: $00
	nop                                              ; $4f24: $00
	ld   d, [hl]                                     ; $4f25: $56
	and  c                                           ; $4f26: $a1
	sbc  b                                           ; $4f27: $98
	sub  l                                           ; $4f28: $95
	ld   h, l                                        ; $4f29: $65
	adc  h                                           ; $4f2a: $8c
	ld   h, a                                        ; $4f2b: $67
	nop                                              ; $4f2c: $00
	ld   bc, $6c07                                   ; $4f2d: $01 $07 $6c
	ld   [bc], a                                     ; $4f30: $02
	ld   [bc], a                                     ; $4f31: $02
	inc  bc                                          ; $4f32: $03
	ld   bc, $2000                                   ; $4f33: $01 $00 $20
	nop                                              ; $4f36: $00
	rlca                                             ; $4f37: $07
	add  $01                                         ; $4f38: $c6 $01
	ld   [bc], a                                     ; $4f3a: $02
	inc  bc                                          ; $4f3b: $03
	ld   bc, $2001                                   ; $4f3c: $01 $01 $20
	nop                                              ; $4f3f: $00
	ld   b, $41                                      ; $4f40: $06 $41
	ld   [bc], a                                     ; $4f42: $02
	rrca                                             ; $4f43: $0f
	nop                                              ; $4f44: $00
	ld   bc, $5601                                   ; $4f45: $01 $01 $56
	and  c                                           ; $4f48: $a1
	sbc  b                                           ; $4f49: $98
	sub  l                                           ; $4f4a: $95
	ld   h, l                                        ; $4f4b: $65
	adc  h                                           ; $4f4c: $8c
	ld   h, a                                        ; $4f4d: $67
	sbc  a                                           ; $4f4e: $9f
	dec  c                                           ; $4f4f: $0d
	ld   h, d                                        ; $4f50: $62
	ld   a, l                                        ; $4f51: $7d
	and  c                                           ; $4f52: $a1
	ld   a, l                                        ; $4f53: $7d
	inc  b                                           ; $4f54: $04
	jp   nc, Jump_04c_719d                           ; $4f55: $d2 $9d $71

	ld   [hl], h                                     ; $4f58: $74
	inc  bc                                          ; $4f59: $03
	ld   l, d                                        ; $4f5a: $6a
	add  a                                           ; $4f5b: $87
	sbc  c                                           ; $4f5c: $99
	adc  c                                           ; $4f5d: $89
	ld   d, h                                        ; $4f5e: $54
	ld   e, d                                        ; $4f5f: $5a
	dec  c                                           ; $4f60: $0d
	ld   d, d                                        ; $4f61: $52
	ld   d, d                                        ; $4f62: $52
	halt                                             ; $4f63: $76
	ld   e, b                                        ; $4f64: $58
	sub  b                                           ; $4f65: $90
	ld   d, d                                        ; $4f66: $52
	adc  h                                           ; $4f67: $8c
	ld   h, a                                        ; $4f68: $67
	ld   a, h                                        ; $4f69: $7c
	ld   [hl], l                                     ; $4f6a: $75
	sbc  a                                           ; $4f6b: $9f
	dec  c                                           ; $4f6c: $0d
	nop                                              ; $4f6d: $00
	ld   a, [bc]                                     ; $4f6e: $0a
	inc  e                                           ; $4f6f: $1c
	ld   b, $05                                      ; $4f70: $06 $05
	dec  b                                           ; $4f72: $05
	dec  e                                           ; $4f73: $1d
	ld   b, b                                        ; $4f74: $40
	ld   d, $03                                      ; $4f75: $16 $03
	ld   d, $01                                      ; $4f77: $16 $01
	ld   bc, $0029                                   ; $4f79: $01 $29 $00
	ld   bc, $508c                                   ; $4f7c: $01 $8c $50
	sbc  [hl]                                        ; $4f7f: $9e
	ld   l, e                                        ; $4f80: $6b
	sbc  b                                           ; $4f81: $98
	sub  c                                           ; $4f82: $91
	ld   l, e                                        ; $4f83: $6b
	ld   d, h                                        ; $4f84: $54
	ld   l, [hl]                                     ; $4f85: $6e
	ld   e, a                                        ; $4f86: $5f
	ld   [hl], a                                     ; $4f87: $77
	sbc  a                                           ; $4f88: $9f
	dec  c                                           ; $4f89: $0d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f8a: $cf
	db   $ec                                         ; $4f8b: $ec
	ld   e, d                                        ; $4f8c: $5a
	sbc  l                                           ; $4f8d: $9d
	sbc  c                                           ; $4f8e: $99
	ld   d, d                                        ; $4f8f: $52
	ld   l, h                                        ; $4f90: $6c
	ld   [$9f00], sp                                 ; $4f91: $08 $00 $9f
	dec  c                                           ; $4f94: $0d
	nop                                              ; $4f95: $00
	ld   a, [bc]                                     ; $4f96: $0a
	inc  e                                           ; $4f97: $1c
	ld   b, $02                                      ; $4f98: $06 $02
	ld   [bc], a                                     ; $4f9a: $02
	ld   bc, $a16b                                   ; $4f9b: $01 $6b $a1
	ld   a, b                                        ; $4f9e: $78
	sub  d                                           ; $4f9f: $92
	ld   [hl], d                                     ; $4fa0: $72
	ld   a, c                                        ; $4fa1: $79
	sbc  [hl]                                        ; $4fa2: $9e
	ld   d, b                                        ; $4fa3: $50
	ld   l, l                                        ; $4fa4: $6d
	ld   d, d                                        ; $4fa5: $52
	ld   a, h                                        ; $4fa6: $7c
	ld   [bc], a                                     ; $4fa7: $02
	jp   ConvertAintoBCD                                       ; $4fa8: $c3 $7d $0d


	ld   [bc], a                                     ; $4fab: $02
	ret  nc                                          ; $4fac: $d0

	ld   d, [hl]                                     ; $4fad: $56
	sub  a                                           ; $4fae: $97
	sbc  d                                           ; $4faf: $9a
	ld   a, b                                        ; $4fb0: $78
	ld   d, d                                        ; $4fb1: $52
	ld   a, b                                        ; $4fb2: $78
	sbc  a                                           ; $4fb3: $9f
	dec  c                                           ; $4fb4: $0d
	ld   h, [hl]                                     ; $4fb5: $66
	sub  c                                           ; $4fb6: $91
	ld   d, b                                        ; $4fb7: $50
	ld   a, b                                        ; $4fb8: $78
	sbc  a                                           ; $4fb9: $9f
	dec  c                                           ; $4fba: $0d
	nop                                              ; $4fbb: $00
	ld   a, [bc]                                     ; $4fbc: $0a
	nop                                              ; $4fbd: $00
	inc  e                                           ; $4fbe: $1c
	ld   b, $01                                      ; $4fbf: $06 $01
	ld   bc, $6e01                                   ; $4fc1: $01 $01 $6e
	adc  h                                           ; $4fc4: $8c
	ld   [hl], c                                     ; $4fc5: $71
	ld   [hl], h                                     ; $4fc6: $74
	sbc  c                                           ; $4fc7: $99
	ld   h, c                                        ; $4fc8: $61
	halt                                             ; $4fc9: $76
	ld   a, l                                        ; $4fca: $7d
	dec  c                                           ; $4fcb: $0d
	inc  bc                                          ; $4fcc: $03
	ld   c, [hl]                                     ; $4fcd: $4e
	inc  b                                           ; $4fce: $04
	ld   a, l                                        ; $4fcf: $7d
	ld   h, a                                        ; $4fd0: $67
	sbc  c                                           ; $4fd1: $99
	ld   [hl], c                                     ; $4fd2: $71
	ld   [hl], h                                     ; $4fd3: $74
	ld   h, c                                        ; $4fd4: $61
	halt                                             ; $4fd5: $76
	ld   l, [hl]                                     ; $4fd6: $6e
	ld   a, b                                        ; $4fd7: $78
	ld   sp, hl                                      ; $4fd8: $f9
	dec  c                                           ; $4fd9: $0d
	sub  [hl]                                        ; $4fda: $96
	ld   h, l                                        ; $4fdb: $65
	sbc  [hl]                                        ; $4fdc: $9e
	inc  bc                                          ; $4fdd: $03
	ld   c, [hl]                                     ; $4fde: $4e
	inc  b                                           ; $4fdf: $04
	ld   a, l                                        ; $4fe0: $7d
	ld   l, [hl]                                     ; $4fe1: $6e
	ld   a, [$000d]                                  ; $4fe2: $fa $0d $00
	ld   a, [bc]                                     ; $4fe5: $0a
	ld   b, $8f                                      ; $4fe6: $06 $8f
	ld   [bc], a                                     ; $4fe8: $02
	rrca                                             ; $4fe9: $0f
	nop                                              ; $4fea: $00
	ld   bc, $0201                                   ; $4feb: $01 $01 $02
	rst  $38                                         ; $4fee: $ff
	ld   e, a                                        ; $4fef: $5f
	ld   [hl], h                                     ; $4ff0: $74
	dec  b                                           ; $4ff1: $05
	ld   d, $6f                                      ; $4ff2: $16 $6f
	adc  h                                           ; $4ff4: $8c
	ld   h, a                                        ; $4ff5: $67
	sbc  a                                           ; $4ff6: $9f
	dec  c                                           ; $4ff7: $0d
	nop                                              ; $4ff8: $00
	ld   a, [bc]                                     ; $4ff9: $0a
	inc  e                                           ; $4ffa: $1c
	ld   b, $01                                      ; $4ffb: $06 $01
	ld   bc, $6b01                                   ; $4ffd: $01 $01 $6b
	ld   d, h                                        ; $5000: $54
	ld   h, c                                        ; $5001: $61
	ld   a, b                                        ; $5002: $78
	ld   e, l                                        ; $5003: $5d
	ld   [hl], c                                     ; $5004: $71
	ld   l, a                                        ; $5005: $6f
	sub  c                                           ; $5006: $91
	ld   a, b                                        ; $5007: $78
	sbc  a                                           ; $5008: $9f
	dec  c                                           ; $5009: $0d
	nop                                              ; $500a: $00
	ld   a, [bc]                                     ; $500b: $0a
	inc  e                                           ; $500c: $1c
	ld   b, $00                                      ; $500d: $06 $00
	nop                                              ; $500f: $00
	ld   bc, $fbc7                                   ; $5010: $01 $c7 $fb
	rst  $10                                         ; $5013: $d7
	db   $ed                                         ; $5014: $ed
	ld   a, c                                        ; $5015: $79
	ld   a, b                                        ; $5016: $78
	sub  a                                           ; $5017: $97
	and  c                                           ; $5018: $a1
	ld   [hl], l                                     ; $5019: $75
	sbc  c                                           ; $501a: $99
	dec  b                                           ; $501b: $05
	ld   [bc], a                                     ; $501c: $02
	dec  b                                           ; $501d: $05
	ld   de, $0d7c                                   ; $501e: $11 $7c $0d
	dec  b                                           ; $5021: $05
	ld   h, [hl]                                     ; $5022: $66
	ld   e, d                                        ; $5023: $5a
	inc  b                                           ; $5024: $04
	rrca                                             ; $5025: $0f
	ld   l, e                                        ; $5026: $6b
	ld   d, h                                        ; $5027: $54
	ld   a, b                                        ; $5028: $78
	sub  b                                           ; $5029: $90
	ld   a, h                                        ; $502a: $7c
	and  b                                           ; $502b: $a0
	dec  c                                           ; $502c: $0d
	ld   d, [hl]                                     ; $502d: $56
	sub  a                                           ; $502e: $97
	and  c                                           ; $502f: $a1
	ld   [hl], l                                     ; $5030: $75
	inc  bc                                          ; $5031: $03
	ld   l, d                                        ; $5032: $6a
	add  a                                           ; $5033: $87
	sbc  c                                           ; $5034: $99
	and  c                                           ; $5035: $a1
	ld   l, [hl]                                     ; $5036: $6e
	sbc  a                                           ; $5037: $9f
	dec  c                                           ; $5038: $0d
	nop                                              ; $5039: $00
	ld   a, [bc]                                     ; $503a: $0a
	inc  e                                           ; $503b: $1c
	ld   b, $02                                      ; $503c: $06 $02
	ld   [bc], a                                     ; $503e: $02
	ld   bc, $9166                                   ; $503f: $01 $66 $91
	sbc  [hl]                                        ; $5042: $9e
	dec  b                                           ; $5043: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5044: $cf
	adc  a                                           ; $5045: $8f
	sbc  c                                           ; $5046: $99
	ld   l, d                                        ; $5047: $6a
	sbc  a                                           ; $5048: $9f
	dec  c                                           ; $5049: $0d
	ld   d, b                                        ; $504a: $50
	ld   l, l                                        ; $504b: $6d
	ld   d, d                                        ; $504c: $52
	ld   a, l                                        ; $504d: $7d
	sbc  [hl]                                        ; $504e: $9e
	xor  h                                           ; $504f: $ac
	xor  $fb                                         ; $5050: $ee $fb
	ld   l, [hl]                                     ; $5052: $6e
	ld   a, [$000d]                                  ; $5053: $fa $0d $00
	ld   a, [bc]                                     ; $5056: $0a
	add  hl, de                                      ; $5057: $19
	dec  b                                           ; $5058: $05
	inc  bc                                          ; $5059: $03

Jump_04c_505a:
	sub  d                                           ; $505a: $92
	ld   e, e                                        ; $505b: $5b
	ld   l, e                                        ; $505c: $6b
	ld   a, [hl]                                     ; $505d: $7e
	nop                                              ; $505e: $00
	nop                                              ; $505f: $00
	ld   a, b                                        ; $5060: $78
	ld   [hl], c                                     ; $5061: $71
	halt                                             ; $5062: $76
	ld   d, h                                        ; $5063: $54
	nop                                              ; $5064: $00
	ld   bc, $a169                                   ; $5065: $01 $69 $a1
	add  a                                           ; $5068: $87
	ld   d, d                                        ; $5069: $52
	nop                                              ; $506a: $00
	ld   [bc], a                                     ; $506b: $02
	rlca                                             ; $506c: $07
	ld   [hl], $03                                   ; $506d: $36 $03
	ld   [bc], a                                     ; $506f: $02
	inc  bc                                          ; $5070: $03
	ld   bc, $2000                                   ; $5071: $01 $00 $20
	nop                                              ; $5074: $00
	rlca                                             ; $5075: $07
	ld   h, b                                        ; $5076: $60
	inc  bc                                          ; $5077: $03
	ld   [bc], a                                     ; $5078: $02
	inc  bc                                          ; $5079: $03
	ld   bc, $2001                                   ; $507a: $01 $01 $20
	nop                                              ; $507d: $00
	rlca                                             ; $507e: $07
	ld   h, b                                        ; $507f: $60
	inc  bc                                          ; $5080: $03
	ld   [bc], a                                     ; $5081: $02
	inc  bc                                          ; $5082: $03
	ld   bc, $2002                                   ; $5083: $01 $02 $20
	nop                                              ; $5086: $00
	ld   b, $0d                                      ; $5087: $06 $0d
	inc  bc                                          ; $5089: $03
	inc  e                                           ; $508a: $1c
	ld   b, $05                                      ; $508b: $06 $05
	dec  b                                           ; $508d: $05
	ld   bc, $a178                                   ; $508e: $01 $78 $a1
	ld   l, [hl]                                     ; $5091: $6e
	sbc  [hl]                                        ; $5092: $9e
	sub  b                                           ; $5093: $90
	ld   d, h                                        ; $5094: $54
	inc  bc                                          ; $5095: $03
	ld   a, [hl]                                     ; $5096: $7e
	sbc  l                                           ; $5097: $9d
	sbc  b                                           ; $5098: $98
	ld   e, c                                        ; $5099: $59
	sub  [hl]                                        ; $509a: $96
	rst  $38                                         ; $509b: $ff
	rst  $38                                         ; $509c: $ff
	dec  c                                           ; $509d: $0d
	ld   [hl], d                                     ; $509e: $72
	adc  h                                           ; $509f: $8c
	and  c                                           ; $50a0: $a1
	ld   a, e                                        ; $50a1: $7b
	ei                                               ; $50a2: $fb
	sub  d                                           ; $50a3: $92
	ld   [hl], d                                     ; $50a4: $72
	ld   l, [hl]                                     ; $50a5: $6e
	ld   a, b                                        ; $50a6: $78
	db   $fc                                         ; $50a7: $fc
	sbc  a                                           ; $50a8: $9f
	dec  c                                           ; $50a9: $0d
	ld   h, [hl]                                     ; $50aa: $66
	sub  c                                           ; $50ab: $91
	ld   d, b                                        ; $50ac: $50
	ld   a, b                                        ; $50ad: $78
	sbc  a                                           ; $50ae: $9f
	dec  c                                           ; $50af: $0d
	nop                                              ; $50b0: $00
	ld   a, [bc]                                     ; $50b1: $0a
	nop                                              ; $50b2: $00
	inc  e                                           ; $50b3: $1c
	ld   b, $01                                      ; $50b4: $06 $01
	ld   bc, $9201                                   ; $50b6: $01 $01 $92
	ld   e, e                                        ; $50b9: $5b
	ld   l, e                                        ; $50ba: $6b
	ld   a, [hl]                                     ; $50bb: $7e
	ld   e, c                                        ; $50bc: $59
	sub  [hl]                                        ; $50bd: $96
	rst  $38                                         ; $50be: $ff
	rst  $38                                         ; $50bf: $ff
	dec  c                                           ; $50c0: $0d
	nop                                              ; $50c1: $00
	dec  b                                           ; $50c2: $05
	ld   b, b                                        ; $50c3: $40
	rst  $38                                         ; $50c4: $ff
	inc  bc                                          ; $50c5: $03
	rst  $38                                         ; $50c6: $ff
	ld   bc, $2801                                   ; $50c7: $01 $01 $28
	nop                                              ; $50ca: $00
	ld   bc, $6d50                                   ; $50cb: $01 $50 $6d
	ld   d, d                                        ; $50ce: $52
	halt                                             ; $50cf: $76
	inc  b                                           ; $50d0: $04
	dec  e                                           ; $50d1: $1d
	ld   h, [hl]                                     ; $50d2: $66
	dec  b                                           ; $50d3: $05
	ld   h, [hl]                                     ; $50d4: $66
	ld   l, [hl]                                     ; $50d5: $6e
	sbc  a                                           ; $50d6: $9f
	dec  c                                           ; $50d7: $0d
	nop                                              ; $50d8: $00
	ld   a, [bc]                                     ; $50d9: $0a
	ld   b, $7a                                      ; $50da: $06 $7a
	inc  bc                                          ; $50dc: $03
	inc  e                                           ; $50dd: $1c
	ld   b, $05                                      ; $50de: $06 $05
	dec  b                                           ; $50e0: $05
	ld   bc, $a16b                                   ; $50e1: $01 $6b $a1
	ld   a, b                                        ; $50e4: $78
	and  c                                           ; $50e5: $a1
	ld   h, [hl]                                     ; $50e6: $66
	sub  c                                           ; $50e7: $91
	dec  c                                           ; $50e8: $0d
	dec  b                                           ; $50e9: $05
	ld   h, [hl]                                     ; $50ea: $66
	ld   e, d                                        ; $50eb: $5a
	inc  bc                                          ; $50ec: $03
	ld   l, h                                        ; $50ed: $6c
	ld   a, b                                        ; $50ee: $78
	ld   h, a                                        ; $50ef: $67
	ld   e, h                                        ; $50f0: $5c
	sbc  c                                           ; $50f1: $99
	ld   l, d                                        ; $50f2: $6a
	sbc  a                                           ; $50f3: $9f
	dec  c                                           ; $50f4: $0d
	nop                                              ; $50f5: $00
	ld   a, [bc]                                     ; $50f6: $0a
	inc  e                                           ; $50f7: $1c
	ld   b, $02                                      ; $50f8: $06 $02
	ld   [bc], a                                     ; $50fa: $02
	ld   bc, $9166                                   ; $50fb: $01 $66 $91
	sbc  [hl]                                        ; $50fe: $9e
	inc  bc                                          ; $50ff: $03
	ld   l, b                                        ; $5100: $68
	ld   a, l                                        ; $5101: $7d
	inc  b                                           ; $5102: $04
	ccf                                              ; $5103: $3f
	ld   d, h                                        ; $5104: $54
	ld   [hl], a                                     ; $5105: $77
	and  c                                           ; $5106: $a1
	ld   l, [hl]                                     ; $5107: $6e
	ld   a, [$000d]                                  ; $5108: $fa $0d $00
	ld   a, [bc]                                     ; $510b: $0a
	add  hl, de                                      ; $510c: $19
	dec  b                                           ; $510d: $05
	inc  bc                                          ; $510e: $03
	inc  b                                           ; $510f: $04
	inc  de                                          ; $5110: $13
	add  l                                           ; $5111: $85
	sub  a                                           ; $5112: $97
	ld   l, e                                        ; $5113: $6b
	ld   a, [hl]                                     ; $5114: $7e
	nop                                              ; $5115: $00
	nop                                              ; $5116: $00
	add  b                                           ; $5117: $80
	sub  d                                           ; $5118: $92
	sub  d                                           ; $5119: $92
	ld   [hl], c                                     ; $511a: $71
	ld   h, c                                        ; $511b: $61
	nop                                              ; $511c: $00
	ld   bc, $526e                                   ; $511d: $01 $6e $52
	add  e                                           ; $5120: $83
	ld   e, l                                        ; $5121: $5d
	nop                                              ; $5122: $00
	ld   [bc], a                                     ; $5123: $02
	rlca                                             ; $5124: $07
	xor  $03                                         ; $5125: $ee $03
	ld   [bc], a                                     ; $5127: $02
	inc  bc                                          ; $5128: $03
	ld   bc, $2000                                   ; $5129: $01 $00 $20
	nop                                              ; $512c: $00
	rlca                                             ; $512d: $07
	rla                                              ; $512e: $17
	inc  b                                           ; $512f: $04
	ld   [bc], a                                     ; $5130: $02
	inc  bc                                          ; $5131: $03
	ld   bc, $2001                                   ; $5132: $01 $01 $20
	nop                                              ; $5135: $00
	rlca                                             ; $5136: $07
	rla                                              ; $5137: $17
	inc  b                                           ; $5138: $04
	ld   [bc], a                                     ; $5139: $02
	inc  bc                                          ; $513a: $03
	ld   bc, $2002                                   ; $513b: $01 $02 $20
	nop                                              ; $513e: $00
	ld   b, $c5                                      ; $513f: $06 $c5
	inc  bc                                          ; $5141: $03
	inc  e                                           ; $5142: $1c
	ld   b, $05                                      ; $5143: $06 $05
	dec  b                                           ; $5145: $05
	ld   bc, $a178                                   ; $5146: $01 $78 $a1
	ld   l, [hl]                                     ; $5149: $6e
	sbc  [hl]                                        ; $514a: $9e
	sub  b                                           ; $514b: $90
	ld   d, h                                        ; $514c: $54
	inc  bc                                          ; $514d: $03
	ld   a, [hl]                                     ; $514e: $7e
	sbc  l                                           ; $514f: $9d
	sbc  b                                           ; $5150: $98
	ld   e, c                                        ; $5151: $59
	sub  [hl]                                        ; $5152: $96
	rst  $38                                         ; $5153: $ff
	rst  $38                                         ; $5154: $ff
	dec  c                                           ; $5155: $0d
	ld   [hl], d                                     ; $5156: $72
	adc  h                                           ; $5157: $8c
	and  c                                           ; $5158: $a1
	ld   a, e                                        ; $5159: $7b
	ei                                               ; $515a: $fb
	sub  d                                           ; $515b: $92
	ld   [hl], d                                     ; $515c: $72
	ld   l, [hl]                                     ; $515d: $6e
	ld   a, b                                        ; $515e: $78
	db   $fc                                         ; $515f: $fc
	sbc  a                                           ; $5160: $9f
	dec  c                                           ; $5161: $0d
	ld   h, [hl]                                     ; $5162: $66
	sub  c                                           ; $5163: $91
	ld   d, b                                        ; $5164: $50
	ld   a, b                                        ; $5165: $78
	sbc  a                                           ; $5166: $9f
	dec  c                                           ; $5167: $0d
	nop                                              ; $5168: $00
	ld   a, [bc]                                     ; $5169: $0a
	nop                                              ; $516a: $00
	inc  e                                           ; $516b: $1c
	ld   b, $01                                      ; $516c: $06 $01
	ld   bc, $0401                                   ; $516e: $01 $01 $04
	inc  de                                          ; $5171: $13
	add  l                                           ; $5172: $85
	sub  a                                           ; $5173: $97
	ld   l, e                                        ; $5174: $6b
	ld   a, [hl]                                     ; $5175: $7e
	ld   e, c                                        ; $5176: $59
	rst  $38                                         ; $5177: $ff
	rst  $38                                         ; $5178: $ff
	dec  c                                           ; $5179: $0d
	ld   d, b                                        ; $517a: $50
	ld   l, l                                        ; $517b: $6d
	ld   d, d                                        ; $517c: $52
	halt                                             ; $517d: $76
	inc  b                                           ; $517e: $04
	dec  e                                           ; $517f: $1d
	ld   h, [hl]                                     ; $5180: $66
	dec  b                                           ; $5181: $05
	ld   h, [hl]                                     ; $5182: $66
	ld   l, [hl]                                     ; $5183: $6e
	sbc  a                                           ; $5184: $9f
	dec  c                                           ; $5185: $0d
	nop                                              ; $5186: $00
	ld   a, [bc]                                     ; $5187: $0a
	dec  b                                           ; $5188: $05
	ld   b, b                                        ; $5189: $40
	rst  $38                                         ; $518a: $ff
	inc  bc                                          ; $518b: $03
	rst  $38                                         ; $518c: $ff
	ld   bc, $2801                                   ; $518d: $01 $01 $28
	nop                                              ; $5190: $00
	ld   b, $31                                      ; $5191: $06 $31
	inc  b                                           ; $5193: $04
	inc  e                                           ; $5194: $1c
	ld   b, $05                                      ; $5195: $06 $05
	dec  b                                           ; $5197: $05
	ld   bc, $a16b                                   ; $5198: $01 $6b $a1
	ld   a, b                                        ; $519b: $78
	and  c                                           ; $519c: $a1
	ld   h, [hl]                                     ; $519d: $66
	sub  c                                           ; $519e: $91
	dec  c                                           ; $519f: $0d
	dec  b                                           ; $51a0: $05
	ld   h, [hl]                                     ; $51a1: $66
	ld   e, d                                        ; $51a2: $5a
	inc  bc                                          ; $51a3: $03
	ld   l, h                                        ; $51a4: $6c
	ld   a, b                                        ; $51a5: $78
	ld   h, a                                        ; $51a6: $67
	ld   e, h                                        ; $51a7: $5c
	sbc  c                                           ; $51a8: $99
	ld   l, d                                        ; $51a9: $6a
	sbc  a                                           ; $51aa: $9f
	dec  c                                           ; $51ab: $0d
	nop                                              ; $51ac: $00
	ld   a, [bc]                                     ; $51ad: $0a
	inc  e                                           ; $51ae: $1c
	ld   b, $02                                      ; $51af: $06 $02
	ld   [bc], a                                     ; $51b1: $02
	ld   bc, $6803                                   ; $51b2: $01 $03 $68
	ld   a, l                                        ; $51b5: $7d
	sbc  [hl]                                        ; $51b6: $9e
	cp   d                                           ; $51b7: $ba
	rst  ToBoot                                         ; $51b8: $c7
	ei                                               ; $51b9: $fb
	xor  [hl]                                        ; $51ba: $ae
	ld   l, [hl]                                     ; $51bb: $6e
	ld   a, [$000d]                                  ; $51bc: $fa $0d $00
	ld   a, [bc]                                     ; $51bf: $0a
	add  hl, de                                      ; $51c0: $19
	dec  b                                           ; $51c1: $05
	inc  bc                                          ; $51c2: $03
	ret  nc                                          ; $51c3: $d0

	push af                                          ; $51c4: $f5
	pop  de                                          ; $51c5: $d1
	ei                                               ; $51c6: $fb
	or   c                                           ; $51c7: $b1
	nop                                              ; $51c8: $00
	nop                                              ; $51c9: $00
	inc  b                                           ; $51ca: $04
	ld   c, [hl]                                     ; $51cb: $4e
	inc  b                                           ; $51cc: $04
	ret  c                                           ; $51cd: $d8

	dec  b                                           ; $51ce: $05
	ld   sp, hl                                      ; $51cf: $f9
	ld   a, h                                        ; $51d0: $7c
	inc  b                                           ; $51d1: $04
	ret  z                                           ; $51d2: $c8

	sub  d                                           ; $51d3: $92
	ld   e, e                                        ; $51d4: $5b
	nop                                              ; $51d5: $00
	ld   bc, $fbbe                                   ; $51d6: $01 $be $fb
	cp   h                                           ; $51d9: $bc
	ei                                               ; $51da: $fb
	cp   c                                           ; $51db: $b9
	nop                                              ; $51dc: $00
	ld   [bc], a                                     ; $51dd: $02
	rlca                                             ; $51de: $07
	add  hl, sp                                      ; $51df: $39
	dec  b                                           ; $51e0: $05
	ld   [bc], a                                     ; $51e1: $02
	inc  bc                                          ; $51e2: $03
	ld   bc, $2000                                   ; $51e3: $01 $00 $20
	nop                                              ; $51e6: $00
	rlca                                             ; $51e7: $07
	ld   l, h                                        ; $51e8: $6c
	dec  b                                           ; $51e9: $05
	ld   [bc], a                                     ; $51ea: $02
	inc  bc                                          ; $51eb: $03
	ld   bc, $2001                                   ; $51ec: $01 $01 $20
	nop                                              ; $51ef: $00
	rlca                                             ; $51f0: $07
	sbc  [hl]                                        ; $51f1: $9e
	dec  b                                           ; $51f2: $05
	ld   [bc], a                                     ; $51f3: $02
	inc  bc                                          ; $51f4: $03
	ld   bc, $2002                                   ; $51f5: $01 $02 $20
	nop                                              ; $51f8: $00
	ld   b, $7f                                      ; $51f9: $06 $7f
	inc  b                                           ; $51fb: $04
	rrca                                             ; $51fc: $0f
	nop                                              ; $51fd: $00
	ld   bc, $5401                                   ; $51fe: $01 $01 $54
	db   $fc                                         ; $5201: $fc
	and  c                                           ; $5202: $a1
	rst  $38                                         ; $5203: $ff
	rst  $38                                         ; $5204: $ff
	dec  c                                           ; $5205: $0d
	inc  b                                           ; $5206: $04
	adc  c                                           ; $5207: $89
	inc  b                                           ; $5208: $04
	ld   a, [hl]                                     ; $5209: $7e
	inc  b                                           ; $520a: $04
	sbc  [hl]                                        ; $520b: $9e
	inc  b                                           ; $520c: $04
	call nc, $7471                                   ; $520d: $d4 $71 $74
	ld   d, d                                        ; $5210: $52
	ld   d, d                                        ; $5211: $52
	adc  h                                           ; $5212: $8c
	ld   h, a                                        ; $5213: $67
	ld   e, c                                        ; $5214: $59
	sub  a                                           ; $5215: $97
	dec  c                                           ; $5216: $0d
	ld   h, c                                        ; $5217: $61
	ld   a, h                                        ; $5218: $7c
	add  [hl]                                        ; $5219: $86
	and  c                                           ; $521a: $a1
	ld   [hl], l                                     ; $521b: $75
	and  $e3                                         ; $521c: $e6 $e3
	ld   [hl], h                                     ; $521e: $74
	ld   e, b                                        ; $521f: $58
	ld   e, e                                        ; $5220: $5b
	adc  h                                           ; $5221: $8c
	ld   h, a                                        ; $5222: $67
	sbc  a                                           ; $5223: $9f
	dec  c                                           ; $5224: $0d
	nop                                              ; $5225: $00
	ld   a, [bc]                                     ; $5226: $0a
	inc  e                                           ; $5227: $1c
	ld   b, $01                                      ; $5228: $06 $01
	ld   bc, $401d                                   ; $522a: $01 $1d $40
	ld   d, $03                                      ; $522d: $16 $03
	ld   d, $01                                      ; $522f: $16 $01
	ld   [bc], a                                     ; $5231: $02
	jr   z, jr_04c_5234                              ; $5232: $28 $00

jr_04c_5234:
	ld   bc, $5686                                   ; $5234: $01 $86 $56
	db   $fc                                         ; $5237: $fc
	ld   a, b                                        ; $5238: $78
	ld   e, c                                        ; $5239: $59
	ld   a, b                                        ; $523a: $78
	ld   e, c                                        ; $523b: $59
	ld   d, d                                        ; $523c: $52
	ld   d, d                                        ; $523d: $52
	inc  b                                           ; $523e: $04
	ld   h, e                                        ; $523f: $63
	inc  b                                           ; $5240: $04
	inc  h                                           ; $5241: $24
	ld   l, [hl]                                     ; $5242: $6e
	ld   a, b                                        ; $5243: $78
	sbc  a                                           ; $5244: $9f
	dec  c                                           ; $5245: $0d
	ld   d, d                                        ; $5246: $52
	ld   e, l                                        ; $5247: $5d
	sub  a                                           ; $5248: $97
	inc  b                                           ; $5249: $04
	ld   c, $03                                      ; $524a: $0e $03
	ld   l, d                                        ; $524c: $6a
	ld   d, d                                        ; $524d: $52
	ld   [hl], l                                     ; $524e: $75
	sub  b                                           ; $524f: $90
	sbc  [hl]                                        ; $5250: $9e
	inc  bc                                          ; $5251: $03
	ld   l, d                                        ; $5252: $6a
	add  a                                           ; $5253: $87
	ld   h, a                                        ; $5254: $67
	ld   e, h                                        ; $5255: $5c
	ld   a, l                                        ; $5256: $7d
	dec  c                                           ; $5257: $0d
	sub  [hl]                                        ; $5258: $96
	ld   e, l                                        ; $5259: $5d
	ld   a, b                                        ; $525a: $78
	ld   d, d                                        ; $525b: $52
	ld   e, c                                        ; $525c: $59
	sub  a                                           ; $525d: $97
	ld   a, b                                        ; $525e: $78
	sbc  a                                           ; $525f: $9f
	dec  c                                           ; $5260: $0d
	nop                                              ; $5261: $00
	ld   a, [bc]                                     ; $5262: $0a
	ld   bc, $9166                                   ; $5263: $01 $66 $91
	sbc  [hl]                                        ; $5266: $9e
	adc  h                                           ; $5267: $8c
	ei                                               ; $5268: $fb
	ld   h, c                                        ; $5269: $61
	ld   a, h                                        ; $526a: $7c
	ld   e, l                                        ; $526b: $5d
	sub  a                                           ; $526c: $97
	ld   d, d                                        ; $526d: $52
	ld   [hl], l                                     ; $526e: $75
	dec  c                                           ; $526f: $0d
	xor  h                                           ; $5270: $ac
	push af                                          ; $5271: $f5
	jp   c, Jump_04c_65f5                            ; $5272: $da $f5 $65

	ld   [hl], h                                     ; $5275: $74
	sub  d                                           ; $5276: $92
	sbc  c                                           ; $5277: $99
	sub  [hl]                                        ; $5278: $96
	sbc  a                                           ; $5279: $9f
	dec  c                                           ; $527a: $0d
	nop                                              ; $527b: $00
	ld   a, [bc]                                     ; $527c: $0a
	ld   bc, $5477                                   ; $527d: $01 $77 $54
	ld   l, [hl]                                     ; $5280: $6e
	ld   d, d                                        ; $5281: $52
	sbc  a                                           ; $5282: $9f
	dec  c                                           ; $5283: $0d
	xor  l                                           ; $5284: $ad
	push af                                          ; $5285: $f5
	xor  l                                           ; $5286: $ad
	push af                                          ; $5287: $f5
	inc  bc                                          ; $5288: $03
	ld   l, d                                        ; $5289: $6a
	ld   d, h                                        ; $528a: $54
	sbc  a                                           ; $528b: $9f
	dec  c                                           ; $528c: $0d
	ld   l, e                                        ; $528d: $6b
	ld   h, l                                        ; $528e: $65
	ld   [hl], h                                     ; $528f: $74
	inc  b                                           ; $5290: $04
	dec  c                                           ; $5291: $0d
	and  b                                           ; $5292: $a0
	ld   e, e                                        ; $5293: $5b
	ld   l, l                                        ; $5294: $6d
	ld   d, [hl]                                     ; $5295: $56
	sbc  c                                           ; $5296: $99
	sbc  a                                           ; $5297: $9f
	dec  c                                           ; $5298: $0d
	nop                                              ; $5299: $00
	ld   a, [bc]                                     ; $529a: $0a
	ld   bc, $9a6b                                   ; $529b: $01 $6b $9a
	ld   e, d                                        ; $529e: $5a
	ld   d, b                                        ; $529f: $50
	ld   l, l                                        ; $52a0: $6d
	ld   d, d                                        ; $52a1: $52
	sbc  [hl]                                        ; $52a2: $9e
	dec  b                                           ; $52a3: $05
	or   $03                                         ; $52a4: $f6 $03
	ld   e, d                                        ; $52a6: $5a
	xor  h                                           ; $52a7: $ac
	push af                                          ; $52a8: $f5
	bit  5, [hl]                                     ; $52a9: $cb $6e
	sbc  a                                           ; $52ab: $9f
	dec  c                                           ; $52ac: $0d
	ld   h, [hl]                                     ; $52ad: $66
	sub  c                                           ; $52ae: $91
	ld   d, b                                        ; $52af: $50
	ld   a, b                                        ; $52b0: $78
	sbc  a                                           ; $52b1: $9f
	dec  c                                           ; $52b2: $0d
	nop                                              ; $52b3: $00
	ld   a, [bc]                                     ; $52b4: $0a
	nop                                              ; $52b5: $00
	inc  e                                           ; $52b6: $1c
	ld   b, $01                                      ; $52b7: $06 $01
	ld   bc, $d001                                   ; $52b9: $01 $01 $d0
	push af                                          ; $52bc: $f5
	pop  de                                          ; $52bd: $d1
	ei                                               ; $52be: $fb
	or   c                                           ; $52bf: $b1
	ld   e, c                                        ; $52c0: $59
	sub  [hl]                                        ; $52c1: $96
	rst  $38                                         ; $52c2: $ff
	rst  $38                                         ; $52c3: $ff
	dec  c                                           ; $52c4: $0d
	nop                                              ; $52c5: $00
	dec  b                                           ; $52c6: $05
	ld   b, b                                        ; $52c7: $40
	rst  $38                                         ; $52c8: $ff
	inc  bc                                          ; $52c9: $03
	rst  $38                                         ; $52ca: $ff
	ld   bc, $2801                                   ; $52cb: $01 $01 $28
	nop                                              ; $52ce: $00
	ld   bc, $6d50                                   ; $52cf: $01 $50 $6d
	ld   d, d                                        ; $52d2: $52
	halt                                             ; $52d3: $76
	inc  b                                           ; $52d4: $04
	dec  e                                           ; $52d5: $1d
	ld   h, [hl]                                     ; $52d6: $66
	dec  b                                           ; $52d7: $05
	ld   h, [hl]                                     ; $52d8: $66
	ld   l, [hl]                                     ; $52d9: $6e
	sbc  a                                           ; $52da: $9f
	dec  c                                           ; $52db: $0d
	nop                                              ; $52dc: $00
	ld   a, [bc]                                     ; $52dd: $0a
	dec  c                                           ; $52de: $0d
	nop                                              ; $52df: $00
	nop                                              ; $52e0: $00
	rrca                                             ; $52e1: $0f
	nop                                              ; $52e2: $00
	ld   bc, $0b0c                                   ; $52e3: $01 $0c $0b
	ld   b, $c3                                      ; $52e6: $06 $c3
	dec  b                                           ; $52e8: $05
	inc  e                                           ; $52e9: $1c
	ld   b, $03                                      ; $52ea: $06 $03
	inc  bc                                          ; $52ec: $03
	ld   bc, $b3b3                                   ; $52ed: $01 $b3 $b3
	call nz, $ffff                                   ; $52f0: $c4 $ff $ff
	dec  c                                           ; $52f3: $0d
	nop                                              ; $52f4: $00
	dec  b                                           ; $52f5: $05
	ld   b, b                                        ; $52f6: $40
	rst  $38                                         ; $52f7: $ff
	inc  bc                                          ; $52f8: $03
	rst  $38                                         ; $52f9: $ff
	ld   bc, $2802                                   ; $52fa: $01 $02 $28
	nop                                              ; $52fd: $00
	ld   bc, $4e04                                   ; $52fe: $01 $04 $4e
	inc  b                                           ; $5301: $04
	ret  c                                           ; $5302: $d8

	dec  b                                           ; $5303: $05
	ld   sp, hl                                      ; $5304: $f9
	ld   a, h                                        ; $5305: $7c
	inc  b                                           ; $5306: $04
	ret  z                                           ; $5307: $c8

	sub  d                                           ; $5308: $92
	ld   e, e                                        ; $5309: $5b
	ld   l, [hl]                                     ; $530a: $6e
	halt                                             ; $530b: $76
	ld   sp, hl                                      ; $530c: $f9
	dec  c                                           ; $530d: $0d
	nop                                              ; $530e: $00
	ld   a, [bc]                                     ; $530f: $0a
	dec  c                                           ; $5310: $0d
	nop                                              ; $5311: $00
	nop                                              ; $5312: $00
	rrca                                             ; $5313: $0f
	nop                                              ; $5314: $00
	ld   bc, $0b0c                                   ; $5315: $01 $0c $0b
	ld   b, $c3                                      ; $5318: $06 $c3
	dec  b                                           ; $531a: $05
	inc  e                                           ; $531b: $1c
	ld   b, $05                                      ; $531c: $06 $05
	dec  b                                           ; $531e: $05
	ld   bc, $a16b                                   ; $531f: $01 $6b $a1
	ld   a, b                                        ; $5322: $78
	and  c                                           ; $5323: $a1
	ld   h, [hl]                                     ; $5324: $66
	sub  c                                           ; $5325: $91
	dec  c                                           ; $5326: $0d
	dec  b                                           ; $5327: $05
	ld   h, [hl]                                     ; $5328: $66
	ld   e, d                                        ; $5329: $5a
	inc  bc                                          ; $532a: $03
	ld   l, h                                        ; $532b: $6c
	ld   a, b                                        ; $532c: $78
	ld   h, a                                        ; $532d: $67
	ld   e, h                                        ; $532e: $5c
	sbc  c                                           ; $532f: $99
	ld   l, d                                        ; $5330: $6a
	sbc  a                                           ; $5331: $9f
	dec  c                                           ; $5332: $0d
	nop                                              ; $5333: $00
	ld   a, [bc]                                     ; $5334: $0a
	dec  c                                           ; $5335: $0d
	nop                                              ; $5336: $00
	nop                                              ; $5337: $00
	rrca                                             ; $5338: $0f
	nop                                              ; $5339: $00
	ld   bc, $0b0c                                   ; $533a: $01 $0c $0b
	ld   b, $c3                                      ; $533d: $06 $c3
	dec  b                                           ; $533f: $05
	rlca                                             ; $5340: $07
	ld   c, l                                        ; $5341: $4d
	ld   b, $03                                      ; $5342: $06 $03
	rst  $38                                         ; $5344: $ff
	ld   bc, $2003                                   ; $5345: $01 $03 $20
	nop                                              ; $5348: $00
	rlca                                             ; $5349: $07
	ld   a, [hl]                                     ; $534a: $7e
	ld   b, $03                                      ; $534b: $06 $03
	rst  $38                                         ; $534d: $ff
	ld   bc, $2302                                   ; $534e: $01 $02 $23
	nop                                              ; $5351: $00
	inc  e                                           ; $5352: $1c
	ld   b, $05                                      ; $5353: $06 $05
	dec  b                                           ; $5355: $05
	dec  e                                           ; $5356: $1d
	ld   b, b                                        ; $5357: $40
	ld   d, $03                                      ; $5358: $16 $03
	ld   d, $01                                      ; $535a: $16 $01
	inc  bc                                          ; $535c: $03
	jr   z, jr_04c_535f                              ; $535d: $28 $00

jr_04c_535f:
	ld   bc, $9e8c                                   ; $535f: $01 $8c $9e
	adc  h                                           ; $5362: $8c
	ld   d, d                                        ; $5363: $52
	ld   [hl], c                                     ; $5364: $71
	ld   l, l                                        ; $5365: $6d
	rst  $38                                         ; $5366: $ff
	rst  $38                                         ; $5367: $ff
	dec  c                                           ; $5368: $0d
	ld   d, b                                        ; $5369: $50
	ld   l, l                                        ; $536a: $6d
	ld   d, d                                        ; $536b: $52
	ld   a, h                                        ; $536c: $7c
	inc  b                                           ; $536d: $04
	ld   a, l                                        ; $536e: $7d
	ld   e, a                                        ; $536f: $5f
	ld   l, [hl]                                     ; $5370: $6e
	rst  $38                                         ; $5371: $ff
	rst  $38                                         ; $5372: $ff
	dec  c                                           ; $5373: $0d
	ld   h, a                                        ; $5374: $67
	ld   h, b                                        ; $5375: $60
	ld   d, [hl]                                     ; $5376: $56
	sub  [hl]                                        ; $5377: $96
	sbc  [hl]                                        ; $5378: $9e
	ld   e, b                                        ; $5379: $58
	inc  bc                                          ; $537a: $03
	ld   c, a                                        ; $537b: $4f
	ld   a, l                                        ; $537c: $7d
	rst  $38                                         ; $537d: $ff
	rst  $38                                         ; $537e: $ff
	dec  c                                           ; $537f: $0d
	nop                                              ; $5380: $00
	ld   a, [bc]                                     ; $5381: $0a
	inc  e                                           ; $5382: $1c
	ld   b, $00                                      ; $5383: $06 $00
	nop                                              ; $5385: $00
	ld   bc, $9166                                   ; $5386: $01 $66 $91
	ld   d, b                                        ; $5389: $50
	sbc  [hl]                                        ; $538a: $9e
	ld   d, b                                        ; $538b: $50
	ld   l, l                                        ; $538c: $6d
	ld   d, d                                        ; $538d: $52
	ld   a, l                                        ; $538e: $7d
	dec  c                                           ; $538f: $0d
	inc  b                                           ; $5390: $04
	sub  l                                           ; $5391: $95
	ld   [bc], a                                     ; $5392: $02
	ld   hl, $9079                                   ; $5393: $21 $79 $90
	ld   [hl], a                                     ; $5396: $77
	ld   [hl], c                                     ; $5397: $71
	ld   [hl], h                                     ; $5398: $74
	inc  b                                           ; $5399: $04
	xor  l                                           ; $539a: $ad
	inc  b                                           ; $539b: $04
	ld   b, d                                        ; $539c: $42
	halt                                             ; $539d: $76
	ld   d, d                                        ; $539e: $52
	ld   e, l                                        ; $539f: $5d
	ld   e, c                                        ; $53a0: $59
	sbc  a                                           ; $53a1: $9f
	dec  c                                           ; $53a2: $0d
	nop                                              ; $53a3: $00
	ld   a, [bc]                                     ; $53a4: $0a
	dec  c                                           ; $53a5: $0d
	nop                                              ; $53a6: $00
	nop                                              ; $53a7: $00
	rrca                                             ; $53a8: $0f
	nop                                              ; $53a9: $00
	ld   bc, $0101                                   ; $53aa: $01 $01 $01
	inc  bc                                          ; $53ad: $03
	ld   d, h                                        ; $53ae: $54
	rst  $38                                         ; $53af: $ff
	rst  $38                                         ; $53b0: $ff
	ld   e, e                                        ; $53b1: $5b
	sub  b                                           ; $53b2: $90
	ld   l, a                                        ; $53b3: $6f
	ld   [bc], a                                     ; $53b4: $02
	jr   z, jr_04c_5409                              ; $53b5: $28 $52

	rst  $38                                         ; $53b7: $ff
	rst  $38                                         ; $53b8: $ff
	ld   bc, $0d04                                   ; $53b9: $01 $04 $0d
	nop                                              ; $53bc: $00
	ld   a, [bc]                                     ; $53bd: $0a
	rlca                                             ; $53be: $07
	and  a                                           ; $53bf: $a7
	ld   b, $03                                      ; $53c0: $06 $03
	inc  de                                          ; $53c2: $13
	ld   bc, $256e                                   ; $53c3: $01 $6e $25
	nop                                              ; $53c6: $00
	ld   b, $b0                                      ; $53c7: $06 $b0
	rlca                                             ; $53c9: $07
	inc  e                                           ; $53ca: $1c
	ld   b, $01                                      ; $53cb: $06 $01
	ld   bc, $401d                                   ; $53cd: $01 $1d $40
	ld   d, $03                                      ; $53d0: $16 $03
	ld   d, $01                                      ; $53d2: $16 $01
	ld   [bc], a                                     ; $53d4: $02
	jr   z, jr_04c_53d7                              ; $53d5: $28 $00

jr_04c_53d7:
	ld   bc, $5477                                   ; $53d7: $01 $77 $54
	sub  d                                           ; $53da: $92
	sub  a                                           ; $53db: $97
	ld   [bc], a                                     ; $53dc: $02
	inc  l                                           ; $53dd: $2c
	ld   e, e                                        ; $53de: $5b
	inc  b                                           ; $53df: $04
	sbc  [hl]                                        ; $53e0: $9e
	ld   e, a                                        ; $53e1: $5f
	ld   l, [hl]                                     ; $53e2: $6e
	ld   a, b                                        ; $53e3: $78
	sbc  a                                           ; $53e4: $9f
	dec  c                                           ; $53e5: $0d
	ld   [hl], l                                     ; $53e6: $75
	sub  b                                           ; $53e7: $90
	sbc  [hl]                                        ; $53e8: $9e
	ld   [bc], a                                     ; $53e9: $02
	sub  l                                           ; $53ea: $95
	inc  bc                                          ; $53eb: $03
	jp   c, Jump_04c_6d65                            ; $53ec: $da $65 $6d

	ld   l, d                                        ; $53ef: $6a
	sbc  a                                           ; $53f0: $9f
	dec  c                                           ; $53f1: $0d
	ld   h, [hl]                                     ; $53f2: $66
	sub  c                                           ; $53f3: $91
	ld   d, b                                        ; $53f4: $50
	ld   a, b                                        ; $53f5: $78
	sbc  a                                           ; $53f6: $9f
	dec  c                                           ; $53f7: $0d
	nop                                              ; $53f8: $00
	ld   a, [bc]                                     ; $53f9: $0a
	nop                                              ; $53fa: $00
	inc  e                                           ; $53fb: $1c
	ld   b, $01                                      ; $53fc: $06 $01
	ld   bc, $8c01                                   ; $53fe: $01 $01 $8c
	ld   l, [hl]                                     ; $5401: $6e
	adc  h                                           ; $5402: $8c
	ld   l, [hl]                                     ; $5403: $6e
	sbc  [hl]                                        ; $5404: $9e
	ld   d, b                                        ; $5405: $50
	ld   l, l                                        ; $5406: $6d
	ld   d, d                                        ; $5407: $52
	ld   a, c                                        ; $5408: $79

jr_04c_5409:
	inc  bc                                          ; $5409: $03
	ld   c, [hl]                                     ; $540a: $4e
	ld   [hl], d                                     ; $540b: $72
	ld   a, c                                        ; $540c: $79
	ld   a, l                                        ; $540d: $7d
	dec  c                                           ; $540e: $0d
	dec  b                                           ; $540f: $05
	cp   h                                           ; $5410: $bc
	inc  b                                           ; $5411: $04
	ld   d, b                                        ; $5412: $50
	inc  bc                                          ; $5413: $03
	ld   [hl], b                                     ; $5414: $70
	ld   e, c                                        ; $5415: $59
	ld   [hl], c                                     ; $5416: $71
	ld   l, l                                        ; $5417: $6d
	ld   a, b                                        ; $5418: $78
	sbc  a                                           ; $5419: $9f
	dec  c                                           ; $541a: $0d
	ld   h, [hl]                                     ; $541b: $66
	sub  c                                           ; $541c: $91
	ld   d, b                                        ; $541d: $50
	ld   a, b                                        ; $541e: $78
	sbc  a                                           ; $541f: $9f
	dec  c                                           ; $5420: $0d
	nop                                              ; $5421: $00
	ld   a, [bc]                                     ; $5422: $0a
	nop                                              ; $5423: $00
	rrca                                             ; $5424: $0f
	nop                                              ; $5425: $00
	ld   bc, $0101                                   ; $5426: $01 $01 $01
	inc  bc                                          ; $5429: $03
	inc  b                                           ; $542a: $04
	ld   l, l                                        ; $542b: $6d
	sub  b                                           ; $542c: $90
	sbc  [hl]                                        ; $542d: $9e
	inc  b                                           ; $542e: $04
	sub  l                                           ; $542f: $95
	ld   [bc], a                                     ; $5430: $02
	ld   hl, $0486                                   ; $5431: $21 $86 $04
	jp   $7471                                       ; $5434: $c3 $71 $74


	dec  c                                           ; $5437: $0d
	db   $10                                         ; $5438: $10
	ld   [bc], a                                     ; $5439: $02
	jr   nz, jr_04c_543f                             ; $543a: $20 $03

	and  a                                           ; $543c: $a7
	adc  l                                           ; $543d: $8d
	ld   h, l                                        ; $543e: $65

jr_04c_543f:
	sub  [hl]                                        ; $543f: $96
	ld   d, h                                        ; $5440: $54
	rst  $38                                         ; $5441: $ff
	rst  $38                                         ; $5442: $ff
	ld   bc, $0d04                                   ; $5443: $01 $04 $0d
	nop                                              ; $5446: $00
	ld   a, [bc]                                     ; $5447: $0a
	inc  c                                           ; $5448: $0c
	ld   [bc], a                                     ; $5449: $02
	ld   c, $5a                                      ; $544a: $0e $5a
	inc  e                                           ; $544c: $1c
	inc  bc                                          ; $544d: $03
	rlca                                             ; $544e: $07
	rlca                                             ; $544f: $07
	ld   bc, $9750                                   ; $5450: $01 $50 $97
	sbc  [hl]                                        ; $5453: $9e
	ld   [$5d00], sp                                 ; $5454: $08 $00 $5d
	and  c                                           ; $5457: $a1
	sbc  a                                           ; $5458: $9f
	dec  c                                           ; $5459: $0d
	inc  b                                           ; $545a: $04
	ld   c, c                                        ; $545b: $49
	ld   a, [$10f9]                                  ; $545c: $fa $f9 $10
	ld   l, e                                        ; $545f: $6b
	ld   a, h                                        ; $5460: $7c

Jump_04c_5461:
	inc  b                                           ; $5461: $04
	dec  c                                           ; $5462: $0d
	ld   a, l                                        ; $5463: $7d
	ld   a, [$0dfa]                                  ; $5464: $fa $fa $0d
	rst  $10                                         ; $5467: $d7
	or   b                                           ; $5468: $b0
	rst  $10                                         ; $5469: $d7
	or   b                                           ; $546a: $b0
	ld   h, [hl]                                     ; $546b: $66
	sub  c                                           ; $546c: $91
	ld   a, b                                        ; $546d: $78
	ld   d, d                                        ; $546e: $52
	ld   a, h                                        ; $546f: $7c
	ld   a, [$fafa]                                  ; $5470: $fa $fa $fa
	dec  c                                           ; $5473: $0d
	nop                                              ; $5474: $00
	ld   a, [bc]                                     ; $5475: $0a
	rrca                                             ; $5476: $0f
	nop                                              ; $5477: $00
	ld   bc, $0301                                   ; $5478: $01 $01 $03
	adc  e                                           ; $547b: $8b
	ld   a, l                                        ; $547c: $7d
	rst  $38                                         ; $547d: $ff
	rst  $38                                         ; $547e: $ff
	dec  c                                           ; $547f: $0d
	ld   e, c                                        ; $5480: $59
	ld   e, l                                        ; $5481: $5d
	ld   e, c                                        ; $5482: $59
	ld   e, l                                        ; $5483: $5d
	ld   h, l                                        ; $5484: $65
	ld   e, c                                        ; $5485: $59
	ld   h, [hl]                                     ; $5486: $66
	ld   e, c                                        ; $5487: $59
	rst  $38                                         ; $5488: $ff
	rst  $38                                         ; $5489: $ff
	dec  c                                           ; $548a: $0d
	nop                                              ; $548b: $00
	ld   a, [bc]                                     ; $548c: $0a
	inc  e                                           ; $548d: $1c
	inc  bc                                          ; $548e: $03
	inc  b                                           ; $548f: $04
	inc  b                                           ; $5490: $04
	ld   bc, $5b50                                   ; $5491: $01 $50 $5b
	sbc  d                                           ; $5494: $9a
	ld   l, l                                        ; $5495: $6d
	rst  $38                                         ; $5496: $ff
	rst  $38                                         ; $5497: $ff
	dec  c                                           ; $5498: $0d
	ld   [hl], l                                     ; $5499: $75
	sub  b                                           ; $549a: $90
	sbc  [hl]                                        ; $549b: $9e
	ld   l, e                                        ; $549c: $6b
	ld   a, h                                        ; $549d: $7c
	adc  h                                           ; $549e: $8c
	adc  h                                           ; $549f: $8c
	ld   h, [hl]                                     ; $54a0: $66
	sub  c                                           ; $54a1: $91
	inc  bc                                          ; $54a2: $03
	ld   l, l                                        ; $54a3: $6d
	dec  b                                           ; $54a4: $05
	add  hl, de                                      ; $54a5: $19
	ld   a, c                                        ; $54a6: $79
	dec  c                                           ; $54a7: $0d
	ld   h, e                                        ; $54a8: $63
	ld   h, l                                        ; $54a9: $65
	ld   [hl], d                                     ; $54aa: $72
	ld   e, c                                        ; $54ab: $59
	ld   d, [hl]                                     ; $54ac: $56
	sbc  c                                           ; $54ad: $99
	sbc  l                                           ; $54ae: $9d
	ld   a, e                                        ; $54af: $7b
	rst  $38                                         ; $54b0: $ff
	rst  $38                                         ; $54b1: $ff
	dec  c                                           ; $54b2: $0d
	nop                                              ; $54b3: $00
	ld   a, [bc]                                     ; $54b4: $0a
	inc  e                                           ; $54b5: $1c
	inc  bc                                          ; $54b6: $03
	ld   [bc], a                                     ; $54b7: $02
	ld   [bc], a                                     ; $54b8: $02
	ld   bc, $5252                                   ; $54b9: $01 $52 $52
	sbc  l                                           ; $54bc: $9d
	sbc  a                                           ; $54bd: $9f
	dec  c                                           ; $54be: $0d
	ld   [bc], a                                     ; $54bf: $02
	and  l                                           ; $54c0: $a5
	ld   e, c                                        ; $54c1: $59
	sub  a                                           ; $54c2: $97
	inc  bc                                          ; $54c3: $03
	db   $fd                                         ; $54c4: $fd
	inc  bc                                          ; $54c5: $03
	ld   l, l                                        ; $54c6: $6d
	sub  [hl]                                        ; $54c7: $96
	sbc  a                                           ; $54c8: $9f
	dec  c                                           ; $54c9: $0d
	ld   d, d                                        ; $54ca: $52
	ld   d, d                                        ; $54cb: $52
	sbc  l                                           ; $54cc: $9d
	ld   a, e                                        ; $54cd: $7b
	sbc  a                                           ; $54ce: $9f
	dec  c                                           ; $54cf: $0d
	nop                                              ; $54d0: $00
	ld   a, [bc]                                     ; $54d1: $0a
	ld   a, [de]                                     ; $54d2: $1a
	inc  bc                                          ; $54d3: $03
	inc  e                                           ; $54d4: $1c
	inc  bc                                          ; $54d5: $03
	inc  bc                                          ; $54d6: $03
	inc  bc                                          ; $54d7: $03
	ld   bc, $5483                                   ; $54d8: $01 $83 $54
	sbc  [hl]                                        ; $54db: $9e
	sub  [hl]                                        ; $54dc: $96
	ld   e, l                                        ; $54dd: $5d
	ld   e, d                                        ; $54de: $5a
	and  c                                           ; $54df: $a1
	ld   a, [hl]                                     ; $54e0: $7e
	ld   [hl], c                                     ; $54e1: $71
	ld   l, l                                        ; $54e2: $6d
	sbc  l                                           ; $54e3: $9d
	ld   a, e                                        ; $54e4: $7b
	sbc  a                                           ; $54e5: $9f
	dec  c                                           ; $54e6: $0d
	ld   a, b                                        ; $54e7: $78
	and  c                                           ; $54e8: $a1
	halt                                             ; $54e9: $76
	ld   e, c                                        ; $54ea: $59
	cp   b                                           ; $54eb: $b8
	xor  b                                           ; $54ec: $a8
	and  l                                           ; $54ed: $a5
	ret  c                                           ; $54ee: $d8

	and  e                                           ; $54ef: $a3
	call nz, $0dd8                                   ; $54f0: $c4 $d8 $0d
	ld   [hl], l                                     ; $54f3: $75
	ld   e, e                                        ; $54f4: $5b
	ld   l, l                                        ; $54f5: $6d
	sbc  l                                           ; $54f6: $9d
	sbc  a                                           ; $54f7: $9f
	dec  c                                           ; $54f8: $0d
	nop                                              ; $54f9: $00
	ld   a, [bc]                                     ; $54fa: $0a
	inc  e                                           ; $54fb: $1c
	inc  bc                                          ; $54fc: $03
	inc  b                                           ; $54fd: $04
	inc  b                                           ; $54fe: $04
	ld   bc, $0008                                   ; $54ff: $01 $08 $00
	ld   e, l                                        ; $5502: $5d
	and  c                                           ; $5503: $a1
	sbc  a                                           ; $5504: $9f
	dec  c                                           ; $5505: $0d
	ld   [bc], a                                     ; $5506: $02
	dec  bc                                          ; $5507: $0b
	ld   [bc], a                                     ; $5508: $02
	xor  d                                           ; $5509: $aa
	sbc  [hl]                                        ; $550a: $9e
	ld   h, c                                        ; $550b: $61
	ld   d, h                                        ; $550c: $54
	ld   d, d                                        ; $550d: $52
	ld   d, h                                        ; $550e: $54
	ld   [bc], a                                     ; $550f: $02
	jp   Jump_04c_785a                               ; $5510: $c3 $5a $78


	ld   d, d                                        ; $5513: $52
	sub  [hl]                                        ; $5514: $96
	ld   d, h                                        ; $5515: $54
	ld   a, c                                        ; $5516: $79
	dec  c                                           ; $5517: $0d
	ld   [bc], a                                     ; $5518: $02
	and  c                                           ; $5519: $a1
	and  b                                           ; $551a: $a0
	inc  b                                           ; $551b: $04
	ld   [hl], c                                     ; $551c: $71
	ld   e, a                                        ; $551d: $5f
	ld   [hl], h                                     ; $551e: $74
	ld   a, e                                        ; $551f: $7b
	sbc  a                                           ; $5520: $9f
	dec  c                                           ; $5521: $0d
	nop                                              ; $5522: $00
	ld   a, [bc]                                     ; $5523: $0a
	dec  c                                           ; $5524: $0d
	nop                                              ; $5525: $00
	nop                                              ; $5526: $00
	rrca                                             ; $5527: $0f
	nop                                              ; $5528: $00
	ld   bc, $1e09                                   ; $5529: $01 $09 $1e
	nop                                              ; $552c: $00
	rrca                                             ; $552d: $0f
	nop                                              ; $552e: $00
	ld   bc, $0101                                   ; $552f: $01 $01 $01
	inc  bc                                          ; $5532: $03
	inc  b                                           ; $5533: $04
	ld   l, l                                        ; $5534: $6d
	sub  b                                           ; $5535: $90
	sbc  [hl]                                        ; $5536: $9e
	inc  b                                           ; $5537: $04
	sub  l                                           ; $5538: $95
	ld   [bc], a                                     ; $5539: $02
	ld   hl, $0486                                   ; $553a: $21 $86 $04
	jp   $7471                                       ; $553d: $c3 $71 $74


	dec  c                                           ; $5540: $0d
	db   $10                                         ; $5541: $10
	ld   [bc], a                                     ; $5542: $02
	jr   nz, jr_04c_5548                             ; $5543: $20 $03

	and  a                                           ; $5545: $a7
	adc  l                                           ; $5546: $8d
	ld   h, l                                        ; $5547: $65

jr_04c_5548:
	sub  [hl]                                        ; $5548: $96
	ld   d, h                                        ; $5549: $54
	rst  $38                                         ; $554a: $ff
	rst  $38                                         ; $554b: $ff
	ld   bc, $0d04                                   ; $554c: $01 $04 $0d
	nop                                              ; $554f: $00
	ld   a, [bc]                                     ; $5550: $0a
	inc  c                                           ; $5551: $0c
	ld   [bc], a                                     ; $5552: $02
	ld   c, $5c                                      ; $5553: $0e $5c
	inc  e                                           ; $5555: $1c
	dec  bc                                          ; $5556: $0b
	inc  b                                           ; $5557: $04
	inc  b                                           ; $5558: $04
	ld   bc, $9750                                   ; $5559: $01 $50 $97
	sbc  [hl]                                        ; $555c: $9e
	ld   [$5d00], sp                                 ; $555d: $08 $00 $5d
	and  c                                           ; $5560: $a1
	sbc  a                                           ; $5561: $9f
	dec  c                                           ; $5562: $0d
	inc  b                                           ; $5563: $04
	ld   c, c                                        ; $5564: $49
	ld   a, [$10f9]                                  ; $5565: $fa $f9 $10
	ld   l, e                                        ; $5568: $6b
	ld   a, h                                        ; $5569: $7c
	inc  b                                           ; $556a: $04
	dec  c                                           ; $556b: $0d
	ld   a, l                                        ; $556c: $7d
	ld   a, [$0dfa]                                  ; $556d: $fa $fa $0d
	rst  $10                                         ; $5570: $d7
	or   b                                           ; $5571: $b0
	rst  $10                                         ; $5572: $d7
	or   b                                           ; $5573: $b0
	ld   h, [hl]                                     ; $5574: $66
	sub  c                                           ; $5575: $91
	ld   a, b                                        ; $5576: $78
	ld   d, d                                        ; $5577: $52
	ld   a, h                                        ; $5578: $7c
	ld   a, [$fafa]                                  ; $5579: $fa $fa $fa
	dec  c                                           ; $557c: $0d
	nop                                              ; $557d: $00
	ld   a, [bc]                                     ; $557e: $0a
	rrca                                             ; $557f: $0f
	nop                                              ; $5580: $00
	ld   bc, $0301                                   ; $5581: $01 $01 $03
	adc  e                                           ; $5584: $8b
	ld   a, l                                        ; $5585: $7d
	rst  $38                                         ; $5586: $ff
	rst  $38                                         ; $5587: $ff
	dec  c                                           ; $5588: $0d
	ld   e, c                                        ; $5589: $59
	ld   e, l                                        ; $558a: $5d
	ld   e, c                                        ; $558b: $59
	ld   e, l                                        ; $558c: $5d
	ld   h, l                                        ; $558d: $65
	ld   e, c                                        ; $558e: $59
	ld   h, [hl]                                     ; $558f: $66
	ld   e, c                                        ; $5590: $59
	rst  $38                                         ; $5591: $ff
	rst  $38                                         ; $5592: $ff
	dec  c                                           ; $5593: $0d
	nop                                              ; $5594: $00
	ld   a, [bc]                                     ; $5595: $0a
	inc  e                                           ; $5596: $1c
	dec  bc                                          ; $5597: $0b
	dec  b                                           ; $5598: $05
	dec  b                                           ; $5599: $05
	ld   bc, $5b50                                   ; $559a: $01 $50 $5b
	sbc  d                                           ; $559d: $9a
	ld   l, l                                        ; $559e: $6d
	rst  $38                                         ; $559f: $ff
	rst  $38                                         ; $55a0: $ff
	dec  c                                           ; $55a1: $0d
	ld   l, e                                        ; $55a2: $6b
	sbc  d                                           ; $55a3: $9a
	ld   h, [hl]                                     ; $55a4: $66
	sub  c                                           ; $55a5: $91
	sbc  [hl]                                        ; $55a6: $9e
	inc  bc                                          ; $55a7: $03
	ld   l, l                                        ; $55a8: $6d
	dec  b                                           ; $55a9: $05
	add  hl, de                                      ; $55aa: $19
	ld   a, c                                        ; $55ab: $79
	ld   h, e                                        ; $55ac: $63
	ld   h, l                                        ; $55ad: $65
	ld   [hl], d                                     ; $55ae: $72
	ld   e, c                                        ; $55af: $59
	ld   d, [hl]                                     ; $55b0: $56
	dec  c                                           ; $55b1: $0d
	sbc  c                                           ; $55b2: $99
	ld   h, [hl]                                     ; $55b3: $66
	sub  c                                           ; $55b4: $91
	ld   a, b                                        ; $55b5: $78
	ld   d, d                                        ; $55b6: $52
	sbc  a                                           ; $55b7: $9f
	dec  c                                           ; $55b8: $0d
	nop                                              ; $55b9: $00
	ld   a, [bc]                                     ; $55ba: $0a
	ld   bc, $4904                                   ; $55bb: $01 $04 $49
	sub  [hl]                                        ; $55be: $96
	sbc  b                                           ; $55bf: $98
	sub  b                                           ; $55c0: $90
	ld   [bc], a                                     ; $55c1: $02
	jr   c, jr_04c_55c8                              ; $55c2: $38 $04

	ld   d, d                                        ; $55c4: $52
	ld   a, c                                        ; $55c5: $79
	inc  bc                                          ; $55c6: $03
	cp   c                                           ; $55c7: $b9

jr_04c_55c8:
	sbc  b                                           ; $55c8: $98
	ld   [bc], a                                     ; $55c9: $02
	ld   b, b                                        ; $55ca: $40
	adc  [hl]                                        ; $55cb: $8e
	ld   h, c                                        ; $55cc: $61
	halt                                             ; $55cd: $76
	ld   e, d                                        ; $55ce: $5a
	dec  c                                           ; $55cf: $0d
	ld   [hl], l                                     ; $55d0: $75
	ld   e, e                                        ; $55d1: $5b
	ld   a, b                                        ; $55d2: $78
	ld   d, d                                        ; $55d3: $52
	sbc  l                                           ; $55d4: $9d
	rst  $38                                         ; $55d5: $ff
	rst  $38                                         ; $55d6: $ff
	dec  c                                           ; $55d7: $0d
	nop                                              ; $55d8: $00
	ld   a, [bc]                                     ; $55d9: $0a
	inc  e                                           ; $55da: $1c
	dec  bc                                          ; $55db: $0b
	ld   [bc], a                                     ; $55dc: $02
	ld   [bc], a                                     ; $55dd: $02
	ld   bc, $0d03                                   ; $55de: $01 $03 $0d
	inc  b                                           ; $55e1: $04
	ld   a, b                                        ; $55e2: $78
	ld   a, b                                        ; $55e3: $78
	ld   d, d                                        ; $55e4: $52
	sbc  l                                           ; $55e5: $9d
	ld   a, e                                        ; $55e6: $7b
	sbc  a                                           ; $55e7: $9f
	dec  c                                           ; $55e8: $0d
	ld   e, c                                        ; $55e9: $59
	sbc  l                                           ; $55ea: $9d
	ld   d, d                                        ; $55eb: $52
	ld   l, e                                        ; $55ec: $6b
	ld   d, h                                        ; $55ed: $54
	ld   l, [hl]                                     ; $55ee: $6e
	ld   e, a                                        ; $55ef: $5f
	ld   [hl], a                                     ; $55f0: $77
	sbc  [hl]                                        ; $55f1: $9e
	inc  b                                           ; $55f2: $04
	dec  c                                           ; $55f3: $0d
	ld   [bc], a                                     ; $55f4: $02
	sub  [hl]                                        ; $55f5: $96
	inc  b                                           ; $55f6: $04
	ld   b, l                                        ; $55f7: $45
	inc  b                                           ; $55f8: $04
	ld   a, [bc]                                     ; $55f9: $0a
	ld   a, l                                        ; $55fa: $7d
	dec  c                                           ; $55fb: $0d
	ld   h, c                                        ; $55fc: $61
	sbc  d                                           ; $55fd: $9a
	ld   [hl], l                                     ; $55fe: $75
	inc  bc                                          ; $55ff: $03
	ld   a, [hl]                                     ; $5600: $7e
	sbc  l                                           ; $5601: $9d
	sbc  b                                           ; $5602: $98
	sub  [hl]                                        ; $5603: $96
	sbc  a                                           ; $5604: $9f
	dec  c                                           ; $5605: $0d
	nop                                              ; $5606: $00
	ld   a, [bc]                                     ; $5607: $0a
	ld   bc, $0d04                                   ; $5608: $01 $04 $0d
	and  b                                           ; $560b: $a0
	inc  b                                           ; $560c: $04
	jp   Jump_04c_7465                               ; $560d: $c3 $65 $74


	dec  c                                           ; $5610: $0d
	inc  bc                                          ; $5611: $03
	add  b                                           ; $5612: $80
	inc  bc                                          ; $5613: $03
	jp   c, Jump_04c_7465                            ; $5614: $da $65 $74

	ld   e, e                                        ; $5617: $5b
	ld   a, b                                        ; $5618: $78
	ld   h, e                                        ; $5619: $63
	ld   d, d                                        ; $561a: $52
	sbc  a                                           ; $561b: $9f
	dec  c                                           ; $561c: $0d
	ld   h, [hl]                                     ; $561d: $66
	sub  c                                           ; $561e: $91
	ld   d, b                                        ; $561f: $50
	ld   a, e                                        ; $5620: $7b
	ld   [$5d00], sp                                 ; $5621: $08 $00 $5d
	and  c                                           ; $5624: $a1
	sbc  a                                           ; $5625: $9f
	dec  c                                           ; $5626: $0d
	nop                                              ; $5627: $00
	ld   a, [bc]                                     ; $5628: $0a
	ld   h, $00                                      ; $5629: $26 $00
	inc  e                                           ; $562b: $1c
	rrca                                             ; $562c: $0f
	ld   bc, $0201                                   ; $562d: $01 $01 $02
	dec  b                                           ; $5630: $05
	add  b                                           ; $5631: $80
	ret  nz                                          ; $5632: $c0

	ld   bc, $0001                                   ; $5633: $01 $01 $00
	ld   bc, $5092                                   ; $5636: $01 $92 $50
	sbc  [hl]                                        ; $5639: $9e
	ld   [$5d00], sp                                 ; $563a: $08 $00 $5d
	and  c                                           ; $563d: $a1
	sbc  a                                           ; $563e: $9f
	dec  c                                           ; $563f: $0d
	nop                                              ; $5640: $00
	ld   a, [bc]                                     ; $5641: $0a
	dec  b                                           ; $5642: $05
	add  b                                           ; $5643: $80
	ld   de, $0101                                   ; $5644: $11 $01 $01
	nop                                              ; $5647: $00
	rlca                                             ; $5648: $07
	ld   e, l                                        ; $5649: $5d
	nop                                              ; $564a: $00
	inc  b                                           ; $564b: $04
	add  b                                           ; $564c: $80
	rst  ToBoot                                         ; $564d: $c7
	ld   bc, $20ff                                   ; $564e: $01 $ff $20
	nop                                              ; $5651: $00
	dec  b                                           ; $5652: $05
	add  b                                           ; $5653: $80
	rst  ToBoot                                         ; $5654: $c7
	ld   bc, $0001                                   ; $5655: $01 $01 $00
	ld   bc, $7305                                   ; $5658: $01 $05 $73
	ld   a, l                                        ; $565b: $7d
	ld   [bc], a                                     ; $565c: $02
	ld   d, b                                        ; $565d: $50
	inc  bc                                          ; $565e: $03
	ld   e, b                                        ; $565f: $58
	ld   b, $2d                                      ; $5660: $06 $2d
	ld   [bc], a                                     ; $5662: $02
	jr   nz, @+$01                                   ; $5663: $20 $ff

	rst  $38                                         ; $5665: $ff
	dec  c                                           ; $5666: $0d
	inc  b                                           ; $5667: $04
	ld   c, $03                                      ; $5668: $0e $03
	sub  b                                           ; $566a: $90
	halt                                             ; $566b: $76
	ld   a, l                                        ; $566c: $7d
	inc  b                                           ; $566d: $04
	ld   c, $7c                                      ; $566e: $0e $7c
	inc  bc                                          ; $5670: $03
	sub  d                                           ; $5671: $92
	inc  b                                           ; $5672: $04
	ld   [$9f6e], a                                  ; $5673: $ea $6e $9f
	dec  c                                           ; $5676: $0d
	ld   [bc], a                                     ; $5677: $02
	dec  bc                                          ; $5678: $0b
	ld   [bc], a                                     ; $5679: $02
	xor  d                                           ; $567a: $aa
	sbc  [hl]                                        ; $567b: $9e
	sub  [hl]                                        ; $567c: $96
	sbc  e                                           ; $567d: $9b
	ld   h, l                                        ; $567e: $65
	ld   e, l                                        ; $567f: $5d
	ld   a, b                                        ; $5680: $78
	sbc  a                                           ; $5681: $9f
	dec  c                                           ; $5682: $0d
	nop                                              ; $5683: $00
	ld   a, [bc]                                     ; $5684: $0a
	ld   b, $87                                      ; $5685: $06 $87
	nop                                              ; $5687: $00
	ld   bc, $7305                                   ; $5688: $01 $05 $73
	ld   a, l                                        ; $568b: $7d
	ld   [bc], a                                     ; $568c: $02
	ld   d, b                                        ; $568d: $50
	inc  bc                                          ; $568e: $03
	ld   e, b                                        ; $568f: $58
	ld   b, $2d                                      ; $5690: $06 $2d
	ld   [bc], a                                     ; $5692: $02
	jr   nz, @+$01                                   ; $5693: $20 $ff

	rst  $38                                         ; $5695: $ff
	dec  c                                           ; $5696: $0d
	ld   e, b                                        ; $5697: $58
	ld   [hl], c                                     ; $5698: $71
	halt                                             ; $5699: $76
	sbc  [hl]                                        ; $569a: $9e
	inc  bc                                          ; $569b: $03
	sub  h                                           ; $569c: $94
	dec  b                                           ; $569d: $05
	inc  sp                                          ; $569e: $33
	dec  b                                           ; $569f: $05
	ld   b, a                                        ; $56a0: $47
	dec  b                                           ; $56a1: $05
	ld   [hl-], a                                    ; $56a2: $32
	ld   a, l                                        ; $56a3: $7d
	dec  c                                           ; $56a4: $0d
	ld   h, c                                        ; $56a5: $61
	ld   a, h                                        ; $56a6: $7c
	inc  bc                                          ; $56a7: $03
	ld   c, a                                        ; $56a8: $4f
	sub  d                                           ; $56a9: $92
	ld   [hl], c                                     ; $56aa: $71
	ld   l, l                                        ; $56ab: $6d
	ld   a, b                                        ; $56ac: $78
	rst  $38                                         ; $56ad: $ff
	rst  $38                                         ; $56ae: $ff
	dec  c                                           ; $56af: $0d
	nop                                              ; $56b0: $00
	ld   a, [bc]                                     ; $56b1: $0a
	ld   bc, $ca02                                   ; $56b2: $01 $02 $ca
	ld   e, d                                        ; $56b5: $5a
	inc  b                                           ; $56b6: $04
	ld   [$8f02], sp                                 ; $56b7: $08 $02 $8f
	ld   [bc], a                                     ; $56ba: $02
	sub  b                                           ; $56bb: $90
	ld   [bc], a                                     ; $56bc: $02
	sub  c                                           ; $56bd: $91
	inc  b                                           ; $56be: $04
	add  hl, bc                                      ; $56bf: $09
	ld   a, h                                        ; $56c0: $7c
	ld   h, c                                        ; $56c1: $61
	halt                                             ; $56c2: $76
	and  b                                           ; $56c3: $a0
	dec  c                                           ; $56c4: $0d
	ld   [hl], a                                     ; $56c5: $77
	sbc  d                                           ; $56c6: $9a
	ld   l, [hl]                                     ; $56c7: $6e
	ld   e, a                                        ; $56c8: $5f
	inc  b                                           ; $56c9: $04
	dec  hl                                          ; $56ca: $2b
	ld   [hl], c                                     ; $56cb: $71
	ld   l, l                                        ; $56cc: $6d
	ld   e, c                                        ; $56cd: $59
	dec  c                                           ; $56ce: $0d
	or   b                                           ; $56cf: $b0
	and  l                                           ; $56d0: $a5
	cp   e                                           ; $56d1: $bb
	ld   [hl], l                                     ; $56d2: $75
	ld   [bc], a                                     ; $56d3: $02
	sbc  a                                           ; $56d4: $9f
	ld   e, c                                        ; $56d5: $59
	adc  a                                           ; $56d6: $8f
	ld   [hl], h                                     ; $56d7: $74
	ld   d, b                                        ; $56d8: $50
	ld   h, b                                        ; $56d9: $60
	sub  [hl]                                        ; $56da: $96
	ld   d, h                                        ; $56db: $54
	sbc  a                                           ; $56dc: $9f
	dec  c                                           ; $56dd: $0d
	nop                                              ; $56de: $00
	ld   a, [bc]                                     ; $56df: $0a
	dec  c                                           ; $56e0: $0d
	rrca                                             ; $56e1: $0f
	db   $10                                         ; $56e2: $10
	rrca                                             ; $56e3: $0f
	rrca                                             ; $56e4: $0f
	ld   bc, $6501                                   ; $56e5: $01 $01 $65
	ld   d, b                                        ; $56e8: $50
	sbc  l                                           ; $56e9: $9d
	ld   l, c                                        ; $56ea: $69
	ld   l, [hl]                                     ; $56eb: $6e
	ld   a, b                                        ; $56ec: $78
	ld   c, a                                        ; $56ed: $4f
	db   $fc                                         ; $56ee: $fc
	rst  $38                                         ; $56ef: $ff
	rst  $38                                         ; $56f0: $ff
	dec  c                                           ; $56f1: $0d
	ld   h, c                                        ; $56f2: $61
	and  c                                           ; $56f3: $a1
	ld   a, b                                        ; $56f4: $78
	inc  b                                           ; $56f5: $04
	db   $ec                                         ; $56f6: $ec
	and  b                                           ; $56f7: $a0
	sub  b                                           ; $56f8: $90
	sub  a                                           ; $56f9: $97
	ld   d, [hl]                                     ; $56fa: $56
	sbc  c                                           ; $56fb: $99
	ld   a, b                                        ; $56fc: $78
	and  c                                           ; $56fd: $a1
	ld   [hl], h                                     ; $56fe: $74
	sbc  a                                           ; $56ff: $9f
	dec  c                                           ; $5700: $0d
	nop                                              ; $5701: $00
	ld   a, [bc]                                     ; $5702: $0a
	inc  e                                           ; $5703: $1c
	rrca                                             ; $5704: $0f
	ld   [bc], a                                     ; $5705: $02
	ld   [bc], a                                     ; $5706: $02
	ld   bc, $7463                                   ; $5707: $01 $63 $74
	inc  b                                           ; $570a: $04
	cp   a                                           ; $570b: $bf
	inc  b                                           ; $570c: $04
	dec  d                                           ; $570d: $15
	ld   l, [hl]                                     ; $570e: $6e
	ld   a, [$000d]                                  ; $570f: $fa $0d $00
	ld   a, [bc]                                     ; $5712: $0a
	ld   b, $2d                                      ; $5713: $06 $2d
	ld   bc, $0f1c                                   ; $5715: $01 $1c $0f
	ld   bc, $0101                                   ; $5718: $01 $01 $01
	ld   [bc], a                                     ; $571b: $02
	dec  bc                                          ; $571c: $0b
	inc  bc                                          ; $571d: $03
	ld   h, l                                        ; $571e: $65
	ld   [hl], l                                     ; $571f: $75
	or   b                                           ; $5720: $b0
	and  l                                           ; $5721: $a5
	cp   e                                           ; $5722: $bb
	ld   a, l                                        ; $5723: $7d
	inc  bc                                          ; $5724: $03
	ld   a, [hl]                                     ; $5725: $7e
	sbc  l                                           ; $5726: $9d
	sbc  b                                           ; $5727: $98
	ld   l, [hl]                                     ; $5728: $6e
	sbc  a                                           ; $5729: $9f
	dec  c                                           ; $572a: $0d
	ld   [bc], a                                     ; $572b: $02
	jp   z, EnqueueHDMATransfer                                    ; $572c: $ca $7c $02

	and  c                                           ; $572f: $a1
	inc  bc                                          ; $5730: $03
	and  b                                           ; $5731: $a0
	ld   l, a                                        ; $5732: $6f
	ld   a, l                                        ; $5733: $7d
	sbc  [hl]                                        ; $5734: $9e
	ld   h, e                                        ; $5735: $63
	ld   e, l                                        ; $5736: $5d
	sub  a                                           ; $5737: $97
	ld   h, e                                        ; $5738: $63
	and  c                                           ; $5739: $a1
	ld   a, c                                        ; $573a: $79
	dec  c                                           ; $573b: $0d
	inc  b                                           ; $573c: $04
	ld   [de], a                                     ; $573d: $12
	ld   d, [hl]                                     ; $573e: $56
	ld   [hl], h                                     ; $573f: $74
	ld   e, b                                        ; $5740: $58
	ld   e, l                                        ; $5741: $5d
	sub  [hl]                                        ; $5742: $96
	rst  $38                                         ; $5743: $ff
	rst  $38                                         ; $5744: $ff
	and  e                                           ; $5745: $a3
	ret  z                                           ; $5746: $c8

	and  h                                           ; $5747: $a4
	xor  e                                           ; $5748: $ab
	cp   d                                           ; $5749: $ba
	ld   a, [$000d]                                  ; $574a: $fa $0d $00
	ld   a, [bc]                                     ; $574d: $0a
	dec  e                                           ; $574e: $1d
	ld   b, b                                        ; $574f: $40
	ld   de, $1103                                   ; $5750: $11 $03 $11
	inc  bc                                          ; $5753: $03
	rst  $38                                         ; $5754: $ff
	jr   z, jr_04c_5757                              ; $5755: $28 $00

jr_04c_5757:
	nop                                              ; $5757: $00
	dec  b                                           ; $5758: $05
	ld   b, b                                        ; $5759: $40
	cp   $01                                         ; $575a: $fe $01
	nop                                              ; $575c: $00
	nop                                              ; $575d: $00
	dec  b                                           ; $575e: $05
	add  b                                           ; $575f: $80
	ld   c, a                                        ; $5760: $4f
	ld   bc, $0000                                   ; $5761: $01 $00 $00
	dec  b                                           ; $5764: $05
	add  b                                           ; $5765: $80
	ld   d, b                                        ; $5766: $50
	ld   bc, $0000                                   ; $5767: $01 $00 $00
	dec  b                                           ; $576a: $05
	add  b                                           ; $576b: $80
	ld   d, c                                        ; $576c: $51
	ld   bc, $0000                                   ; $576d: $01 $00 $00
	dec  b                                           ; $5770: $05
	add  b                                           ; $5771: $80
	ld   d, d                                        ; $5772: $52
	ld   bc, $0000                                   ; $5773: $01 $00 $00
	dec  b                                           ; $5776: $05
	add  b                                           ; $5777: $80
	ld   d, e                                        ; $5778: $53
	ld   bc, $0000                                   ; $5779: $01 $00 $00
	dec  b                                           ; $577c: $05
	add  b                                           ; $577d: $80
	ld   d, h                                        ; $577e: $54
	ld   bc, $0000                                   ; $577f: $01 $00 $00
	dec  b                                           ; $5782: $05
	add  b                                           ; $5783: $80
	ld   d, l                                        ; $5784: $55
	ld   bc, $0000                                   ; $5785: $01 $00 $00
	dec  b                                           ; $5788: $05
	add  b                                           ; $5789: $80
	ld   d, [hl]                                     ; $578a: $56
	ld   bc, $0000                                   ; $578b: $01 $00 $00
	dec  b                                           ; $578e: $05
	add  b                                           ; $578f: $80
	ld   d, a                                        ; $5790: $57
	ld   bc, $0000                                   ; $5791: $01 $00 $00
	rlca                                             ; $5794: $07
	db   $eb                                         ; $5795: $eb
	nop                                              ; $5796: $00
	inc  bc                                          ; $5797: $03
	cp   $01                                         ; $5798: $fe $01
	inc  bc                                          ; $579a: $03
	dec  h                                           ; $579b: $25
	nop                                              ; $579c: $00
	dec  b                                           ; $579d: $05
	ld   b, b                                        ; $579e: $40
	cp   $03                                         ; $579f: $fe $03
	cp   $01                                         ; $57a1: $fe $01
	ld   bc, $0028                                   ; $57a3: $01 $28 $00
	jr   nz, jr_04c_57a9                             ; $57a6: $20 $01

	ld   e, d                                        ; $57a8: $5a

jr_04c_57a9:
	nop                                              ; $57a9: $00
	rlca                                             ; $57aa: $07
	jp   z, $0201                                    ; $57ab: $ca $01 $02

	dec  b                                           ; $57ae: $05
	ld   bc, $220a                                   ; $57af: $01 $0a $22
	nop                                              ; $57b2: $00
	rlca                                             ; $57b3: $07
	ld   h, [hl]                                     ; $57b4: $66
	ld   [bc], a                                     ; $57b5: $02
	ld   [bc], a                                     ; $57b6: $02
	dec  b                                           ; $57b7: $05
	ld   bc, $2214                                   ; $57b8: $01 $14 $22
	nop                                              ; $57bb: $00
	rlca                                             ; $57bc: $07
	inc  d                                           ; $57bd: $14
	inc  bc                                          ; $57be: $03
	ld   [bc], a                                     ; $57bf: $02
	dec  b                                           ; $57c0: $05
	ld   bc, $221e                                   ; $57c1: $01 $1e $22
	nop                                              ; $57c4: $00
	rlca                                             ; $57c5: $07
	jp   nc, $0203                                   ; $57c6: $d2 $03 $02

	dec  b                                           ; $57c9: $05
	ld   bc, $2228                                   ; $57ca: $01 $28 $22
	nop                                              ; $57cd: $00
	rlca                                             ; $57ce: $07
	ld   l, d                                        ; $57cf: $6a
	inc  b                                           ; $57d0: $04
	ld   [bc], a                                     ; $57d1: $02
	dec  b                                           ; $57d2: $05
	ld   bc, $2232                                   ; $57d3: $01 $32 $22
	nop                                              ; $57d6: $00
	rlca                                             ; $57d7: $07
	inc  b                                           ; $57d8: $04
	dec  b                                           ; $57d9: $05
	ld   [bc], a                                     ; $57da: $02
	dec  b                                           ; $57db: $05
	ld   bc, $223c                                   ; $57dc: $01 $3c $22
	nop                                              ; $57df: $00
	rlca                                             ; $57e0: $07
	cp   h                                           ; $57e1: $bc
	dec  b                                           ; $57e2: $05
	ld   [bc], a                                     ; $57e3: $02
	dec  b                                           ; $57e4: $05
	ld   bc, $2246                                   ; $57e5: $01 $46 $22
	nop                                              ; $57e8: $00
	rlca                                             ; $57e9: $07
	ld   h, l                                        ; $57ea: $65
	ld   b, $02                                      ; $57eb: $06 $02
	dec  b                                           ; $57ed: $05
	ld   bc, $2250                                   ; $57ee: $01 $50 $22
	nop                                              ; $57f1: $00
	ld   b, $12                                      ; $57f2: $06 $12
	rlca                                             ; $57f4: $07
	rlca                                             ; $57f5: $07
	ld   h, [hl]                                     ; $57f6: $66
	ld   [bc], a                                     ; $57f7: $02
	inc  b                                           ; $57f8: $04
	add  b                                           ; $57f9: $80
	ld   c, a                                        ; $57fa: $4f
	ld   bc, $20ff                                   ; $57fb: $01 $ff $20
	nop                                              ; $57fe: $00
	dec  b                                           ; $57ff: $05
	add  b                                           ; $5800: $80
	ld   c, a                                        ; $5801: $4f
	ld   bc, $0001                                   ; $5802: $01 $01 $00
	ld   bc, $5d63                                   ; $5805: $01 $63 $5d
	sub  a                                           ; $5808: $97
	ld   h, e                                        ; $5809: $63
	and  c                                           ; $580a: $a1
	ld   a, h                                        ; $580b: $7c
	inc  bc                                          ; $580c: $03
	ld   d, d                                        ; $580d: $52
	adc  h                                           ; $580e: $8c
	sbc  d                                           ; $580f: $9a
	ld   [bc], a                                     ; $5810: $02
	adc  $05                                         ; $5811: $ce $05
	or   b                                           ; $5813: $b0
	ld   a, l                                        ; $5814: $7d
	ld   sp, hl                                      ; $5815: $f9
	dec  c                                           ; $5816: $0d
	nop                                              ; $5817: $00
	ld   a, [bc]                                     ; $5818: $0a
	add  hl, de                                      ; $5819: $19
	dec  b                                           ; $581a: $05
	inc  bc                                          ; $581b: $03
	inc  bc                                          ; $581c: $03
	ld   a, a                                        ; $581d: $7f
	inc  b                                           ; $581e: $04
	inc  c                                           ; $581f: $0c
	nop                                              ; $5820: $00
	nop                                              ; $5821: $00
	dec  b                                           ; $5822: $05
	push hl                                          ; $5823: $e5
	dec  b                                           ; $5824: $05
	xor  [hl]                                        ; $5825: $ae
	nop                                              ; $5826: $00
	ld   bc, $ac05                                   ; $5827: $01 $05 $ac
	inc  bc                                          ; $582a: $03
	ld   c, a                                        ; $582b: $4f
	nop                                              ; $582c: $00
	ld   [bc], a                                     ; $582d: $02
	rlca                                             ; $582e: $07
	ld   hl, $0202                                   ; $582f: $21 $02 $02
	inc  bc                                          ; $5832: $03
	ld   bc, $2000                                   ; $5833: $01 $00 $20
	nop                                              ; $5836: $00
	rlca                                             ; $5837: $07
	ld   a, $02                                      ; $5838: $3e $02
	ld   [bc], a                                     ; $583a: $02
	inc  bc                                          ; $583b: $03
	ld   bc, $2001                                   ; $583c: $01 $01 $20
	nop                                              ; $583f: $00
	rlca                                             ; $5840: $07
	ld   a, $02                                      ; $5841: $3e $02
	ld   [bc], a                                     ; $5843: $02
	inc  bc                                          ; $5844: $03
	ld   bc, $2002                                   ; $5845: $01 $02 $20
	nop                                              ; $5848: $00
	ld   b, $3e                                      ; $5849: $06 $3e
	ld   [bc], a                                     ; $584b: $02
	inc  e                                           ; $584c: $1c
	rrca                                             ; $584d: $0f
	ld   bc, $1401                                   ; $584e: $01 $01 $14
	dec  de                                          ; $5851: $1b
	ld   bc, $0301                                   ; $5852: $01 $01 $03
	ld   c, d                                        ; $5855: $4a
	ld   [bc], a                                     ; $5856: $02
	or   h                                           ; $5857: $b4
	ld   l, [hl]                                     ; $5858: $6e
	sbc  a                                           ; $5859: $9f
	dec  c                                           ; $585a: $0d
	nop                                              ; $585b: $00
	ld   a, [bc]                                     ; $585c: $0a
	dec  b                                           ; $585d: $05
	ld   b, b                                        ; $585e: $40
	rst  $38                                         ; $585f: $ff
	inc  bc                                          ; $5860: $03
	rst  $38                                         ; $5861: $ff
	ld   bc, $2801                                   ; $5862: $01 $01 $28
	nop                                              ; $5865: $00
	ld   b, $69                                      ; $5866: $06 $69
	ld   bc, $0f1c                                   ; $5868: $01 $1c $0f
	ld   [bc], a                                     ; $586b: $02
	ld   [bc], a                                     ; $586c: $02
	inc  d                                           ; $586d: $14
	inc  e                                           ; $586e: $1c
	ld   bc, $0301                                   ; $586f: $01 $01 $03
	jr   z, jr_04c_5878                              ; $5872: $28 $04

	ld   c, b                                        ; $5874: $48
	ld   l, [hl]                                     ; $5875: $6e
	ld   [hl], c                                     ; $5876: $71
	ld   l, l                                        ; $5877: $6d

jr_04c_5878:
	ld   a, b                                        ; $5878: $78
	rst  $38                                         ; $5879: $ff
	rst  $38                                         ; $587a: $ff
	dec  c                                           ; $587b: $0d
	inc  bc                                          ; $587c: $03
	ld   c, d                                        ; $587d: $4a
	ld   [bc], a                                     ; $587e: $02
	or   h                                           ; $587f: $b4
	ld   a, l                                        ; $5880: $7d
	ld   bc, $0307                                   ; $5881: $01 $07 $03
	ld   a, a                                        ; $5884: $7f
	inc  b                                           ; $5885: $04
	inc  c                                           ; $5886: $0c
	ld   bc, $6e08                                   ; $5887: $01 $08 $6e
	sbc  a                                           ; $588a: $9f
	dec  c                                           ; $588b: $0d
	nop                                              ; $588c: $00
	ld   a, [bc]                                     ; $588d: $0a
	ld   b, $69                                      ; $588e: $06 $69
	ld   bc, $1407                                   ; $5890: $01 $07 $14
	inc  bc                                          ; $5893: $03
	inc  b                                           ; $5894: $04
	add  b                                           ; $5895: $80
	ld   d, b                                        ; $5896: $50
	ld   bc, $20ff                                   ; $5897: $01 $ff $20
	nop                                              ; $589a: $00
	dec  b                                           ; $589b: $05
	add  b                                           ; $589c: $80
	ld   d, b                                        ; $589d: $50
	ld   bc, $0001                                   ; $589e: $01 $01 $00
	ld   bc, $5d63                                   ; $58a1: $01 $63 $5d
	sub  a                                           ; $58a4: $97
	ld   h, e                                        ; $58a5: $63
	and  c                                           ; $58a6: $a1
	ld   e, d                                        ; $58a7: $5a
	inc  bc                                          ; $58a8: $03
	ld   l, c                                        ; $58a9: $69
	ld   [bc], a                                     ; $58aa: $02
	and  b                                           ; $58ab: $a0
	ld   [bc], a                                     ; $58ac: $02
	sbc  d                                           ; $58ad: $9a
	ld   e, e                                        ; $58ae: $5b
	ld   a, b                                        ; $58af: $78
	dec  c                                           ; $58b0: $0d
	ld   b, $38                                      ; $58b1: $06 $38
	ld   [bc], a                                     ; $58b3: $02
	ld   [hl], a                                     ; $58b4: $77
	inc  b                                           ; $58b5: $04
	db   $10                                         ; $58b6: $10
	ld   a, h                                        ; $58b7: $7c
	inc  bc                                          ; $58b8: $03
	ld   l, d                                        ; $58b9: $6a
	add  a                                           ; $58ba: $87
	inc  b                                           ; $58bb: $04
	sub  d                                           ; $58bc: $92
	ld   a, l                                        ; $58bd: $7d
	ld   sp, hl                                      ; $58be: $f9
	dec  c                                           ; $58bf: $0d
	nop                                              ; $58c0: $00
	ld   a, [bc]                                     ; $58c1: $0a
	add  hl, de                                      ; $58c2: $19
	dec  b                                           ; $58c3: $05
	inc  bc                                          ; $58c4: $03
	xor  e                                           ; $58c5: $ab
	ldh  [c], a                                      ; $58c6: $e2
	db   $eb                                         ; $58c7: $eb
	and  l                                           ; $58c8: $a5
	cp   d                                           ; $58c9: $ba
	nop                                              ; $58ca: $00
	nop                                              ; $58cb: $00
	ret  nc                                          ; $58cc: $d0

	push af                                          ; $58cd: $f5
	pop  de                                          ; $58ce: $d1
	ei                                               ; $58cf: $fb
	or   c                                           ; $58d0: $b1
	nop                                              ; $58d1: $00
	ld   bc, $e6d0                                   ; $58d2: $01 $d0 $e6
	cp   b                                           ; $58d5: $b8
	db   $eb                                         ; $58d6: $eb
	and  l                                           ; $58d7: $a5
	cp   d                                           ; $58d8: $ba
	nop                                              ; $58d9: $00
	ld   [bc], a                                     ; $58da: $02
	rlca                                             ; $58db: $07
	adc  $02                                         ; $58dc: $ce $02
	ld   [bc], a                                     ; $58de: $02
	inc  bc                                          ; $58df: $03
	ld   bc, $2000                                   ; $58e0: $01 $00 $20
	nop                                              ; $58e3: $00
	rlca                                             ; $58e4: $07
	db   $eb                                         ; $58e5: $eb
	ld   [bc], a                                     ; $58e6: $02
	ld   [bc], a                                     ; $58e7: $02
	inc  bc                                          ; $58e8: $03
	ld   bc, $2001                                   ; $58e9: $01 $01 $20
	nop                                              ; $58ec: $00
	rlca                                             ; $58ed: $07
	db   $eb                                         ; $58ee: $eb
	ld   [bc], a                                     ; $58ef: $02
	ld   [bc], a                                     ; $58f0: $02
	inc  bc                                          ; $58f1: $03
	ld   bc, $2002                                   ; $58f2: $01 $02 $20
	nop                                              ; $58f5: $00
	ld   b, $eb                                      ; $58f6: $06 $eb
	ld   [bc], a                                     ; $58f8: $02
	inc  e                                           ; $58f9: $1c
	rrca                                             ; $58fa: $0f
	ld   bc, $1401                                   ; $58fb: $01 $01 $14
	dec  de                                          ; $58fe: $1b
	ld   bc, $0301                                   ; $58ff: $01 $01 $03
	ld   c, d                                        ; $5902: $4a
	ld   [bc], a                                     ; $5903: $02
	or   h                                           ; $5904: $b4
	ld   l, [hl]                                     ; $5905: $6e
	sbc  a                                           ; $5906: $9f
	dec  c                                           ; $5907: $0d
	nop                                              ; $5908: $00
	ld   a, [bc]                                     ; $5909: $0a
	dec  b                                           ; $590a: $05
	ld   b, b                                        ; $590b: $40
	rst  $38                                         ; $590c: $ff
	inc  bc                                          ; $590d: $03
	rst  $38                                         ; $590e: $ff
	ld   bc, $2801                                   ; $590f: $01 $01 $28
	nop                                              ; $5912: $00
	ld   b, $69                                      ; $5913: $06 $69
	ld   bc, $0f1c                                   ; $5915: $01 $1c $0f
	ld   [bc], a                                     ; $5918: $02
	ld   [bc], a                                     ; $5919: $02
	inc  d                                           ; $591a: $14
	inc  e                                           ; $591b: $1c
	ld   bc, $0301                                   ; $591c: $01 $01 $03
	jr   z, jr_04c_5925                              ; $591f: $28 $04

	ld   c, b                                        ; $5921: $48
	ld   l, [hl]                                     ; $5922: $6e
	ld   [hl], c                                     ; $5923: $71
	ld   l, l                                        ; $5924: $6d

jr_04c_5925:
	ld   a, b                                        ; $5925: $78
	rst  $38                                         ; $5926: $ff
	rst  $38                                         ; $5927: $ff
	dec  c                                           ; $5928: $0d
	inc  bc                                          ; $5929: $03
	ld   c, d                                        ; $592a: $4a
	ld   [bc], a                                     ; $592b: $02
	or   h                                           ; $592c: $b4
	ld   a, l                                        ; $592d: $7d
	ld   bc, $ab07                                   ; $592e: $01 $07 $ab
	ldh  [c], a                                      ; $5931: $e2
	db   $eb                                         ; $5932: $eb
	and  l                                           ; $5933: $a5
	cp   d                                           ; $5934: $ba
	ld   bc, $6e08                                   ; $5935: $01 $08 $6e
	sbc  a                                           ; $5938: $9f
	dec  c                                           ; $5939: $0d
	nop                                              ; $593a: $00
	ld   a, [bc]                                     ; $593b: $0a
	ld   b, $69                                      ; $593c: $06 $69
	ld   bc, $d207                                   ; $593e: $01 $07 $d2
	inc  bc                                          ; $5941: $03
	inc  b                                           ; $5942: $04
	add  b                                           ; $5943: $80
	ld   d, c                                        ; $5944: $51
	ld   bc, $20ff                                   ; $5945: $01 $ff $20
	nop                                              ; $5948: $00
	dec  b                                           ; $5949: $05
	add  b                                           ; $594a: $80
	ld   d, c                                        ; $594b: $51
	ld   bc, $0001                                   ; $594c: $01 $01 $00
	ld   bc, $5d63                                   ; $594f: $01 $63 $5d
	sub  a                                           ; $5952: $97
	ld   h, e                                        ; $5953: $63
	and  c                                           ; $5954: $a1
	ld   e, d                                        ; $5955: $5a
	ld   [bc], a                                     ; $5956: $02
	add  [hl]                                        ; $5957: $86
	ld   b, $02                                      ; $5958: $06 $02
	ld   h, l                                        ; $595a: $65
	ld   [hl], h                                     ; $595b: $74
	ld   d, d                                        ; $595c: $52
	sbc  c                                           ; $595d: $99
	dec  c                                           ; $595e: $0d
	ld   [bc], a                                     ; $595f: $02
	cp   h                                           ; $5960: $bc
	inc  bc                                          ; $5961: $03
	db   $10                                         ; $5962: $10
	ld   a, h                                        ; $5963: $7c
	dec  b                                           ; $5964: $05
	inc  d                                           ; $5965: $14
	inc  b                                           ; $5966: $04
	sbc  l                                           ; $5967: $9d
	ld   a, l                                        ; $5968: $7d
	ld   sp, hl                                      ; $5969: $f9
	dec  c                                           ; $596a: $0d
	nop                                              ; $596b: $00
	ld   a, [bc]                                     ; $596c: $0a
	add  hl, de                                      ; $596d: $19
	dec  b                                           ; $596e: $05
	inc  bc                                          ; $596f: $03
	inc  b                                           ; $5970: $04
	sbc  d                                           ; $5971: $9a
	inc  bc                                          ; $5972: $03
	adc  c                                           ; $5973: $89
	ld   [bc], a                                     ; $5974: $02
	jr   nz, jr_04c_597b                             ; $5975: $20 $04

	inc  l                                           ; $5977: $2c
	dec  b                                           ; $5978: $05
	inc  d                                           ; $5979: $14
	nop                                              ; $597a: $00

jr_04c_597b:
	nop                                              ; $597b: $00
	inc  bc                                          ; $597c: $03
	sub  b                                           ; $597d: $90
	inc  b                                           ; $597e: $04
	ld   d, $04                                      ; $597f: $16 $04
	sub  $04                                         ; $5981: $d6 $04
	ld   c, b                                        ; $5983: $48
	dec  b                                           ; $5984: $05
	inc  d                                           ; $5985: $14
	nop                                              ; $5986: $00
	ld   bc, $1304                                   ; $5987: $01 $04 $13
	inc  bc                                          ; $598a: $03
	sbc  c                                           ; $598b: $99
	dec  b                                           ; $598c: $05
	ld   de, $7503                                   ; $598d: $11 $03 $75
	dec  b                                           ; $5990: $05
	inc  d                                           ; $5991: $14
	nop                                              ; $5992: $00
	ld   [bc], a                                     ; $5993: $02
	rlca                                             ; $5994: $07
	add  a                                           ; $5995: $87
	inc  bc                                          ; $5996: $03
	ld   [bc], a                                     ; $5997: $02
	inc  bc                                          ; $5998: $03
	ld   bc, $2000                                   ; $5999: $01 $00 $20
	nop                                              ; $599c: $00
	rlca                                             ; $599d: $07
	and  h                                           ; $599e: $a4
	inc  bc                                          ; $599f: $03
	ld   [bc], a                                     ; $59a0: $02
	inc  bc                                          ; $59a1: $03
	ld   bc, $2001                                   ; $59a2: $01 $01 $20
	nop                                              ; $59a5: $00
	rlca                                             ; $59a6: $07
	and  h                                           ; $59a7: $a4
	inc  bc                                          ; $59a8: $03
	ld   [bc], a                                     ; $59a9: $02
	inc  bc                                          ; $59aa: $03
	ld   bc, $2002                                   ; $59ab: $01 $02 $20
	nop                                              ; $59ae: $00
	ld   b, $a4                                      ; $59af: $06 $a4
	inc  bc                                          ; $59b1: $03
	inc  e                                           ; $59b2: $1c
	rrca                                             ; $59b3: $0f
	ld   bc, $1401                                   ; $59b4: $01 $01 $14
	dec  de                                          ; $59b7: $1b
	ld   bc, $0301                                   ; $59b8: $01 $01 $03
	ld   c, d                                        ; $59bb: $4a
	ld   [bc], a                                     ; $59bc: $02
	or   h                                           ; $59bd: $b4
	ld   l, [hl]                                     ; $59be: $6e
	sbc  a                                           ; $59bf: $9f
	dec  c                                           ; $59c0: $0d
	nop                                              ; $59c1: $00
	ld   a, [bc]                                     ; $59c2: $0a
	dec  b                                           ; $59c3: $05
	ld   b, b                                        ; $59c4: $40
	rst  $38                                         ; $59c5: $ff
	inc  bc                                          ; $59c6: $03
	rst  $38                                         ; $59c7: $ff
	ld   bc, $2801                                   ; $59c8: $01 $01 $28
	nop                                              ; $59cb: $00
	ld   b, $69                                      ; $59cc: $06 $69
	ld   bc, $0f1c                                   ; $59ce: $01 $1c $0f
	ld   [bc], a                                     ; $59d1: $02
	ld   [bc], a                                     ; $59d2: $02
	inc  d                                           ; $59d3: $14
	inc  e                                           ; $59d4: $1c
	ld   bc, $0301                                   ; $59d5: $01 $01 $03
	jr   z, jr_04c_59de                              ; $59d8: $28 $04

	ld   c, b                                        ; $59da: $48
	ld   l, [hl]                                     ; $59db: $6e
	ld   [hl], c                                     ; $59dc: $71
	ld   l, l                                        ; $59dd: $6d

jr_04c_59de:
	ld   a, b                                        ; $59de: $78
	rst  $38                                         ; $59df: $ff
	rst  $38                                         ; $59e0: $ff
	dec  c                                           ; $59e1: $0d
	inc  bc                                          ; $59e2: $03
	ld   c, d                                        ; $59e3: $4a
	ld   [bc], a                                     ; $59e4: $02
	or   h                                           ; $59e5: $b4
	ld   a, l                                        ; $59e6: $7d
	ld   bc, $0407                                   ; $59e7: $01 $07 $04
	sbc  d                                           ; $59ea: $9a
	inc  bc                                          ; $59eb: $03
	adc  c                                           ; $59ec: $89
	ld   [bc], a                                     ; $59ed: $02
	jr   nz, @+$06                                   ; $59ee: $20 $04

	inc  l                                           ; $59f0: $2c
	dec  b                                           ; $59f1: $05
	inc  d                                           ; $59f2: $14
	ld   bc, $6e08                                   ; $59f3: $01 $08 $6e
	sbc  a                                           ; $59f6: $9f
	dec  c                                           ; $59f7: $0d
	nop                                              ; $59f8: $00
	ld   a, [bc]                                     ; $59f9: $0a
	ld   b, $69                                      ; $59fa: $06 $69
	ld   bc, $6a07                                   ; $59fc: $01 $07 $6a
	inc  b                                           ; $59ff: $04
	inc  b                                           ; $5a00: $04
	add  b                                           ; $5a01: $80
	ld   d, d                                        ; $5a02: $52
	ld   bc, $20ff                                   ; $5a03: $01 $ff $20
	nop                                              ; $5a06: $00
	dec  b                                           ; $5a07: $05
	add  b                                           ; $5a08: $80
	ld   d, d                                        ; $5a09: $52
	ld   bc, $0001                                   ; $5a0a: $01 $01 $00
	ld   bc, $5d63                                   ; $5a0d: $01 $63 $5d
	sub  a                                           ; $5a10: $97
	ld   h, e                                        ; $5a11: $63
	and  c                                           ; $5a12: $a1
	ld   e, d                                        ; $5a13: $5a
	ld   [bc], a                                     ; $5a14: $02
	sub  h                                           ; $5a15: $94
	inc  bc                                          ; $5a16: $03
	ld   l, e                                        ; $5a17: $6b
	halt                                             ; $5a18: $76
	ld   h, l                                        ; $5a19: $65
	ld   [hl], h                                     ; $5a1a: $74
	ld   d, d                                        ; $5a1b: $52
	sbc  c                                           ; $5a1c: $99
	dec  c                                           ; $5a1d: $0d
	sub  b                                           ; $5a1e: $90
	ld   a, h                                        ; $5a1f: $7c
	ld   a, l                                        ; $5a20: $7d
	ld   sp, hl                                      ; $5a21: $f9
	dec  c                                           ; $5a22: $0d
	nop                                              ; $5a23: $00
	ld   a, [bc]                                     ; $5a24: $0a
	add  hl, de                                      ; $5a25: $19
	dec  b                                           ; $5a26: $05
	inc  bc                                          ; $5a27: $03
	dec  b                                           ; $5a28: $05
	rla                                              ; $5a29: $17
	nop                                              ; $5a2a: $00
	nop                                              ; $5a2b: $00
	reti                                             ; $5a2c: $d9


	call nc, Boot                                    ; $5a2d: $d4 $00 $01
	or   b                                           ; $5a30: $b0
	db   $e4                                         ; $5a31: $e4
	nop                                              ; $5a32: $00
	ld   [bc], a                                     ; $5a33: $02
	rlca                                             ; $5a34: $07
	daa                                              ; $5a35: $27
	inc  b                                           ; $5a36: $04
	ld   [bc], a                                     ; $5a37: $02
	inc  bc                                          ; $5a38: $03
	ld   bc, $2000                                   ; $5a39: $01 $00 $20
	nop                                              ; $5a3c: $00
	rlca                                             ; $5a3d: $07
	ld   b, h                                        ; $5a3e: $44
	inc  b                                           ; $5a3f: $04
	ld   [bc], a                                     ; $5a40: $02
	inc  bc                                          ; $5a41: $03
	ld   bc, $2001                                   ; $5a42: $01 $01 $20
	nop                                              ; $5a45: $00
	rlca                                             ; $5a46: $07
	ld   b, h                                        ; $5a47: $44
	inc  b                                           ; $5a48: $04
	ld   [bc], a                                     ; $5a49: $02
	inc  bc                                          ; $5a4a: $03
	ld   bc, $2002                                   ; $5a4b: $01 $02 $20
	nop                                              ; $5a4e: $00
	ld   b, $44                                      ; $5a4f: $06 $44
	inc  b                                           ; $5a51: $04
	inc  e                                           ; $5a52: $1c
	rrca                                             ; $5a53: $0f
	ld   bc, $1401                                   ; $5a54: $01 $01 $14
	dec  de                                          ; $5a57: $1b
	ld   bc, $0301                                   ; $5a58: $01 $01 $03
	ld   c, d                                        ; $5a5b: $4a
	ld   [bc], a                                     ; $5a5c: $02
	or   h                                           ; $5a5d: $b4
	ld   l, [hl]                                     ; $5a5e: $6e
	sbc  a                                           ; $5a5f: $9f
	dec  c                                           ; $5a60: $0d
	nop                                              ; $5a61: $00
	ld   a, [bc]                                     ; $5a62: $0a
	dec  b                                           ; $5a63: $05
	ld   b, b                                        ; $5a64: $40
	rst  $38                                         ; $5a65: $ff
	inc  bc                                          ; $5a66: $03
	rst  $38                                         ; $5a67: $ff
	ld   bc, $2801                                   ; $5a68: $01 $01 $28
	nop                                              ; $5a6b: $00
	ld   b, $69                                      ; $5a6c: $06 $69
	ld   bc, $0f1c                                   ; $5a6e: $01 $1c $0f
	ld   [bc], a                                     ; $5a71: $02
	ld   [bc], a                                     ; $5a72: $02
	inc  d                                           ; $5a73: $14
	inc  e                                           ; $5a74: $1c
	ld   bc, $0301                                   ; $5a75: $01 $01 $03
	jr   z, jr_04c_5a7e                              ; $5a78: $28 $04

	ld   c, b                                        ; $5a7a: $48
	ld   l, [hl]                                     ; $5a7b: $6e
	ld   [hl], c                                     ; $5a7c: $71
	ld   l, l                                        ; $5a7d: $6d

jr_04c_5a7e:
	ld   a, b                                        ; $5a7e: $78
	rst  $38                                         ; $5a7f: $ff
	rst  $38                                         ; $5a80: $ff
	dec  c                                           ; $5a81: $0d
	inc  bc                                          ; $5a82: $03
	ld   c, d                                        ; $5a83: $4a
	ld   [bc], a                                     ; $5a84: $02
	or   h                                           ; $5a85: $b4
	ld   a, l                                        ; $5a86: $7d
	ld   bc, $0507                                   ; $5a87: $01 $07 $05
	rla                                              ; $5a8a: $17
	ld   bc, $6e08                                   ; $5a8b: $01 $08 $6e
	sbc  a                                           ; $5a8e: $9f
	dec  c                                           ; $5a8f: $0d
	nop                                              ; $5a90: $00
	ld   a, [bc]                                     ; $5a91: $0a
	ld   b, $69                                      ; $5a92: $06 $69
	ld   bc, $0407                                   ; $5a94: $01 $07 $04
	dec  b                                           ; $5a97: $05
	inc  b                                           ; $5a98: $04
	add  b                                           ; $5a99: $80
	ld   d, e                                        ; $5a9a: $53
	ld   bc, $20ff                                   ; $5a9b: $01 $ff $20
	nop                                              ; $5a9e: $00
	dec  b                                           ; $5a9f: $05
	add  b                                           ; $5aa0: $80
	ld   d, e                                        ; $5aa1: $53
	ld   bc, $0001                                   ; $5aa2: $01 $01 $00
	ld   bc, $5d63                                   ; $5aa5: $01 $63 $5d
	sub  a                                           ; $5aa8: $97
	ld   h, e                                        ; $5aa9: $63
	and  c                                           ; $5aaa: $a1
	ld   e, d                                        ; $5aab: $5a
	inc  bc                                          ; $5aac: $03
	cp   c                                           ; $5aad: $b9
	sbc  c                                           ; $5aae: $99
	ld   [bc], a                                     ; $5aaf: $02
	jr   c, jr_04c_5ab6                              ; $5ab0: $38 $04

	ld   d, d                                        ; $5ab2: $52
	ld   a, h                                        ; $5ab3: $7c
	inc  bc                                          ; $5ab4: $03
	dec  bc                                          ; $5ab5: $0b

jr_04c_5ab6:
	ld   a, l                                        ; $5ab6: $7d
	ld   sp, hl                                      ; $5ab7: $f9
	dec  c                                           ; $5ab8: $0d
	nop                                              ; $5ab9: $00
	ld   a, [bc]                                     ; $5aba: $0a
	add  hl, de                                      ; $5abb: $19
	dec  b                                           ; $5abc: $05
	inc  bc                                          ; $5abd: $03
	push de                                          ; $5abe: $d5
	push af                                          ; $5abf: $f5
	or   b                                           ; $5ac0: $b0
	nop                                              ; $5ac1: $00
	nop                                              ; $5ac2: $00
	xor  $c4                                         ; $5ac3: $ee $c4
	jp   z, Boot                                     ; $5ac5: $ca $00 $01

	rst  $10                                         ; $5ac8: $d7
	db   $ed                                         ; $5ac9: $ed
	ei                                               ; $5aca: $fb
	nop                                              ; $5acb: $00
	ld   [bc], a                                     ; $5acc: $02
	rlca                                             ; $5acd: $07
	ret  nz                                          ; $5ace: $c0

	inc  b                                           ; $5acf: $04
	ld   [bc], a                                     ; $5ad0: $02
	inc  bc                                          ; $5ad1: $03
	ld   bc, $2000                                   ; $5ad2: $01 $00 $20
	nop                                              ; $5ad5: $00
	rlca                                             ; $5ad6: $07
	db   $dd                                         ; $5ad7: $dd
	inc  b                                           ; $5ad8: $04
	ld   [bc], a                                     ; $5ad9: $02
	inc  bc                                          ; $5ada: $03
	ld   bc, $2001                                   ; $5adb: $01 $01 $20
	nop                                              ; $5ade: $00
	rlca                                             ; $5adf: $07
	db   $dd                                         ; $5ae0: $dd
	inc  b                                           ; $5ae1: $04
	ld   [bc], a                                     ; $5ae2: $02
	inc  bc                                          ; $5ae3: $03
	ld   bc, $2002                                   ; $5ae4: $01 $02 $20
	nop                                              ; $5ae7: $00
	ld   b, $dd                                      ; $5ae8: $06 $dd
	inc  b                                           ; $5aea: $04
	inc  e                                           ; $5aeb: $1c
	rrca                                             ; $5aec: $0f
	ld   bc, $1401                                   ; $5aed: $01 $01 $14
	dec  de                                          ; $5af0: $1b
	ld   bc, $0301                                   ; $5af1: $01 $01 $03
	ld   c, d                                        ; $5af4: $4a
	ld   [bc], a                                     ; $5af5: $02
	or   h                                           ; $5af6: $b4
	ld   l, [hl]                                     ; $5af7: $6e
	sbc  a                                           ; $5af8: $9f
	dec  c                                           ; $5af9: $0d
	nop                                              ; $5afa: $00
	ld   a, [bc]                                     ; $5afb: $0a
	dec  b                                           ; $5afc: $05
	ld   b, b                                        ; $5afd: $40
	rst  $38                                         ; $5afe: $ff
	inc  bc                                          ; $5aff: $03
	rst  $38                                         ; $5b00: $ff
	ld   bc, $2801                                   ; $5b01: $01 $01 $28
	nop                                              ; $5b04: $00
	ld   b, $69                                      ; $5b05: $06 $69
	ld   bc, $0f1c                                   ; $5b07: $01 $1c $0f
	ld   [bc], a                                     ; $5b0a: $02
	ld   [bc], a                                     ; $5b0b: $02
	inc  d                                           ; $5b0c: $14
	inc  e                                           ; $5b0d: $1c
	ld   bc, $0301                                   ; $5b0e: $01 $01 $03
	jr   z, jr_04c_5b17                              ; $5b11: $28 $04

	ld   c, b                                        ; $5b13: $48
	ld   l, [hl]                                     ; $5b14: $6e
	ld   [hl], c                                     ; $5b15: $71
	ld   l, l                                        ; $5b16: $6d

jr_04c_5b17:
	ld   a, b                                        ; $5b17: $78
	rst  $38                                         ; $5b18: $ff
	rst  $38                                         ; $5b19: $ff
	dec  c                                           ; $5b1a: $0d
	inc  bc                                          ; $5b1b: $03
	ld   c, d                                        ; $5b1c: $4a
	ld   [bc], a                                     ; $5b1d: $02
	or   h                                           ; $5b1e: $b4
	ld   a, l                                        ; $5b1f: $7d
	ld   bc, $d507                                   ; $5b20: $01 $07 $d5
	push af                                          ; $5b23: $f5
	or   b                                           ; $5b24: $b0
	ld   bc, $6e08                                   ; $5b25: $01 $08 $6e
	sbc  a                                           ; $5b28: $9f
	dec  c                                           ; $5b29: $0d
	nop                                              ; $5b2a: $00
	ld   a, [bc]                                     ; $5b2b: $0a
	ld   b, $69                                      ; $5b2c: $06 $69
	ld   bc, $bc07                                   ; $5b2e: $01 $07 $bc
	dec  b                                           ; $5b31: $05
	inc  b                                           ; $5b32: $04
	add  b                                           ; $5b33: $80
	ld   d, h                                        ; $5b34: $54
	ld   bc, $20ff                                   ; $5b35: $01 $ff $20
	nop                                              ; $5b38: $00
	dec  b                                           ; $5b39: $05
	add  b                                           ; $5b3a: $80
	ld   d, h                                        ; $5b3b: $54
	ld   bc, $0001                                   ; $5b3c: $01 $01 $00
	ld   bc, $5d63                                   ; $5b3f: $01 $63 $5d
	sub  a                                           ; $5b42: $97
	ld   h, e                                        ; $5b43: $63
	and  c                                           ; $5b44: $a1
	ld   e, d                                        ; $5b45: $5a
	inc  bc                                          ; $5b46: $03
	and  b                                           ; $5b47: $a0
	ld   [hl], c                                     ; $5b48: $71
	ld   [hl], h                                     ; $5b49: $74
	ld   d, d                                        ; $5b4a: $52
	sbc  c                                           ; $5b4b: $99
	dec  c                                           ; $5b4c: $0d
	inc  b                                           ; $5b4d: $04
	xor  d                                           ; $5b4e: $aa
	inc  b                                           ; $5b4f: $04
	adc  a                                           ; $5b50: $8f
	inc  b                                           ; $5b51: $04
	inc  l                                           ; $5b52: $2c
	ld   a, h                                        ; $5b53: $7c
	inc  b                                           ; $5b54: $04
	rst  ToBoot                                         ; $5b55: $c7
	inc  bc                                          ; $5b56: $03
	ld   c, a                                        ; $5b57: $4f
	ld   a, l                                        ; $5b58: $7d
	ld   sp, hl                                      ; $5b59: $f9
	dec  c                                           ; $5b5a: $0d
	nop                                              ; $5b5b: $00
	ld   a, [bc]                                     ; $5b5c: $0a
	add  hl, de                                      ; $5b5d: $19
	dec  b                                           ; $5b5e: $05
	inc  bc                                          ; $5b5f: $03
	sbc  d                                           ; $5b60: $9a
	ld   d, d                                        ; $5b61: $52
	ld   e, a                                        ; $5b62: $5f
	and  c                                           ; $5b63: $a1
	ld   d, b                                        ; $5b64: $50
	sub  a                                           ; $5b65: $97
	ld   l, l                                        ; $5b66: $6d
	ld   e, c                                        ; $5b67: $59
	nop                                              ; $5b68: $00
	nop                                              ; $5b69: $00
	ld   e, l                                        ; $5b6a: $5d
	ld   h, e                                        ; $5b6b: $63
	ld   a, b                                        ; $5b6c: $78
	ld   e, h                                        ; $5b6d: $5c
	ld   a, h                                        ; $5b6e: $7c
	ld   [hl], d                                     ; $5b6f: $72
	sbc  c                                           ; $5b70: $99
	ld   e, h                                        ; $5b71: $5c
	nop                                              ; $5b72: $00
	ld   bc, $5496                                   ; $5b73: $01 $96 $54
	halt                                             ; $5b76: $76
	ld   d, h                                        ; $5b77: $54
	adc  [hl]                                        ; $5b78: $8e
	sub  a                                           ; $5b79: $97
	adc  h                                           ; $5b7a: $8c
	ld   h, e                                        ; $5b7b: $63
	nop                                              ; $5b7c: $00
	ld   [bc], a                                     ; $5b7d: $02
	rlca                                             ; $5b7e: $07
	ld   [hl], c                                     ; $5b7f: $71
	dec  b                                           ; $5b80: $05
	ld   [bc], a                                     ; $5b81: $02
	inc  bc                                          ; $5b82: $03
	ld   bc, $2000                                   ; $5b83: $01 $00 $20
	nop                                              ; $5b86: $00
	rlca                                             ; $5b87: $07
	adc  [hl]                                        ; $5b88: $8e
	dec  b                                           ; $5b89: $05
	ld   [bc], a                                     ; $5b8a: $02
	inc  bc                                          ; $5b8b: $03
	ld   bc, $2001                                   ; $5b8c: $01 $01 $20
	nop                                              ; $5b8f: $00
	rlca                                             ; $5b90: $07
	adc  [hl]                                        ; $5b91: $8e
	dec  b                                           ; $5b92: $05
	ld   [bc], a                                     ; $5b93: $02
	inc  bc                                          ; $5b94: $03
	ld   bc, $2002                                   ; $5b95: $01 $02 $20
	nop                                              ; $5b98: $00
	ld   b, $8e                                      ; $5b99: $06 $8e
	dec  b                                           ; $5b9b: $05
	inc  e                                           ; $5b9c: $1c
	rrca                                             ; $5b9d: $0f
	ld   bc, $1401                                   ; $5b9e: $01 $01 $14
	dec  de                                          ; $5ba1: $1b
	ld   bc, $0301                                   ; $5ba2: $01 $01 $03
	ld   c, d                                        ; $5ba5: $4a
	ld   [bc], a                                     ; $5ba6: $02
	or   h                                           ; $5ba7: $b4
	ld   l, [hl]                                     ; $5ba8: $6e
	sbc  a                                           ; $5ba9: $9f
	dec  c                                           ; $5baa: $0d
	nop                                              ; $5bab: $00
	ld   a, [bc]                                     ; $5bac: $0a
	dec  b                                           ; $5bad: $05
	ld   b, b                                        ; $5bae: $40
	rst  $38                                         ; $5baf: $ff
	inc  bc                                          ; $5bb0: $03
	rst  $38                                         ; $5bb1: $ff
	ld   bc, $2801                                   ; $5bb2: $01 $01 $28
	nop                                              ; $5bb5: $00
	ld   b, $69                                      ; $5bb6: $06 $69
	ld   bc, $0f1c                                   ; $5bb8: $01 $1c $0f
	ld   [bc], a                                     ; $5bbb: $02
	ld   [bc], a                                     ; $5bbc: $02
	inc  d                                           ; $5bbd: $14
	inc  e                                           ; $5bbe: $1c
	ld   bc, $0301                                   ; $5bbf: $01 $01 $03
	jr   z, jr_04c_5bc8                              ; $5bc2: $28 $04

	ld   c, b                                        ; $5bc4: $48
	ld   l, [hl]                                     ; $5bc5: $6e
	ld   [hl], c                                     ; $5bc6: $71
	ld   l, l                                        ; $5bc7: $6d

jr_04c_5bc8:
	ld   a, b                                        ; $5bc8: $78
	rst  $38                                         ; $5bc9: $ff
	rst  $38                                         ; $5bca: $ff
	dec  c                                           ; $5bcb: $0d
	inc  bc                                          ; $5bcc: $03
	ld   c, d                                        ; $5bcd: $4a
	ld   [bc], a                                     ; $5bce: $02
	or   h                                           ; $5bcf: $b4
	ld   a, l                                        ; $5bd0: $7d
	sbc  [hl]                                        ; $5bd1: $9e
	ld   bc, $9a07                                   ; $5bd2: $01 $07 $9a
	ld   d, d                                        ; $5bd5: $52
	ld   e, a                                        ; $5bd6: $5f
	and  c                                           ; $5bd7: $a1
	ld   d, b                                        ; $5bd8: $50
	sub  a                                           ; $5bd9: $97
	ld   l, l                                        ; $5bda: $6d
	ld   e, c                                        ; $5bdb: $59
	ld   bc, $0d08                                   ; $5bdc: $01 $08 $0d
	ld   l, [hl]                                     ; $5bdf: $6e
	sbc  a                                           ; $5be0: $9f
	dec  c                                           ; $5be1: $0d
	nop                                              ; $5be2: $00
	ld   a, [bc]                                     ; $5be3: $0a
	ld   b, $69                                      ; $5be4: $06 $69
	ld   bc, $6507                                   ; $5be6: $01 $07 $65
	ld   b, $04                                      ; $5be9: $06 $04
	add  b                                           ; $5beb: $80
	ld   d, l                                        ; $5bec: $55
	ld   bc, $20ff                                   ; $5bed: $01 $ff $20
	nop                                              ; $5bf0: $00
	dec  b                                           ; $5bf1: $05
	add  b                                           ; $5bf2: $80
	ld   d, l                                        ; $5bf3: $55
	ld   bc, $0001                                   ; $5bf4: $01 $01 $00
	ld   bc, $5d63                                   ; $5bf7: $01 $63 $5d
	sub  a                                           ; $5bfa: $97
	ld   h, e                                        ; $5bfb: $63
	and  c                                           ; $5bfc: $a1
	ld   e, d                                        ; $5bfd: $5a
	inc  b                                           ; $5bfe: $04
	ld   c, e                                        ; $5bff: $4b
	inc  b                                           ; $5c00: $04
	ldh  a, [c]                                      ; $5c01: $f2
	ld   [bc], a                                     ; $5c02: $02
	sub  a                                           ; $5c03: $97
	ld   [hl], l                                     ; $5c04: $75
	dec  c                                           ; $5c05: $0d
	ld   [bc], a                                     ; $5c06: $02
	rra                                              ; $5c07: $1f
	ld   h, [hl]                                     ; $5c08: $66
	sbc  c                                           ; $5c09: $99
	inc  b                                           ; $5c0a: $04
	db   $ec                                         ; $5c0b: $ec
	ld   a, l                                        ; $5c0c: $7d
	ld   sp, hl                                      ; $5c0d: $f9
	dec  c                                           ; $5c0e: $0d
	nop                                              ; $5c0f: $00
	ld   a, [bc]                                     ; $5c10: $0a
	add  hl, de                                      ; $5c11: $19
	dec  b                                           ; $5c12: $05
	inc  bc                                          ; $5c13: $03
	inc  b                                           ; $5c14: $04
	ld   a, [de]                                     ; $5c15: $1a
	ld   [bc], a                                     ; $5c16: $02
	cp   b                                           ; $5c17: $b8
	nop                                              ; $5c18: $00
	nop                                              ; $5c19: $00
	inc  bc                                          ; $5c1a: $03
	ld   d, b                                        ; $5c1b: $50
	ld   [bc], a                                     ; $5c1c: $02
	ld   a, h                                        ; $5c1d: $7c
	ld   [bc], a                                     ; $5c1e: $02
	or   [hl]                                        ; $5c1f: $b6
	nop                                              ; $5c20: $00
	ld   bc, $f804                                   ; $5c21: $01 $04 $f8
	ld   [bc], a                                     ; $5c24: $02
	add  a                                           ; $5c25: $87
	inc  b                                           ; $5c26: $04
	or   a                                           ; $5c27: $b7
	inc  bc                                          ; $5c28: $03
	add  d                                           ; $5c29: $82
	nop                                              ; $5c2a: $00
	ld   [bc], a                                     ; $5c2b: $02
	rlca                                             ; $5c2c: $07
	rra                                              ; $5c2d: $1f
	ld   b, $02                                      ; $5c2e: $06 $02
	inc  bc                                          ; $5c30: $03
	ld   bc, $2000                                   ; $5c31: $01 $00 $20
	nop                                              ; $5c34: $00
	rlca                                             ; $5c35: $07
	inc  a                                           ; $5c36: $3c
	ld   b, $02                                      ; $5c37: $06 $02
	inc  bc                                          ; $5c39: $03
	ld   bc, $2001                                   ; $5c3a: $01 $01 $20
	nop                                              ; $5c3d: $00
	rlca                                             ; $5c3e: $07
	inc  a                                           ; $5c3f: $3c
	ld   b, $02                                      ; $5c40: $06 $02
	inc  bc                                          ; $5c42: $03
	ld   bc, $2002                                   ; $5c43: $01 $02 $20
	nop                                              ; $5c46: $00
	ld   b, $3c                                      ; $5c47: $06 $3c
	ld   b, $1c                                      ; $5c49: $06 $1c
	rrca                                             ; $5c4b: $0f
	ld   bc, $1401                                   ; $5c4c: $01 $01 $14
	dec  de                                          ; $5c4f: $1b
	ld   bc, $0301                                   ; $5c50: $01 $01 $03
	ld   c, d                                        ; $5c53: $4a
	ld   [bc], a                                     ; $5c54: $02
	or   h                                           ; $5c55: $b4
	ld   l, [hl]                                     ; $5c56: $6e
	sbc  a                                           ; $5c57: $9f
	dec  c                                           ; $5c58: $0d
	nop                                              ; $5c59: $00
	ld   a, [bc]                                     ; $5c5a: $0a
	dec  b                                           ; $5c5b: $05
	ld   b, b                                        ; $5c5c: $40
	rst  $38                                         ; $5c5d: $ff
	inc  bc                                          ; $5c5e: $03
	rst  $38                                         ; $5c5f: $ff
	ld   bc, $2801                                   ; $5c60: $01 $01 $28
	nop                                              ; $5c63: $00
	ld   b, $69                                      ; $5c64: $06 $69
	ld   bc, $0f1c                                   ; $5c66: $01 $1c $0f
	ld   [bc], a                                     ; $5c69: $02
	ld   [bc], a                                     ; $5c6a: $02
	inc  d                                           ; $5c6b: $14
	inc  e                                           ; $5c6c: $1c
	ld   bc, $0301                                   ; $5c6d: $01 $01 $03
	jr   z, jr_04c_5c76                              ; $5c70: $28 $04

	ld   c, b                                        ; $5c72: $48
	ld   l, [hl]                                     ; $5c73: $6e
	ld   [hl], c                                     ; $5c74: $71
	ld   l, l                                        ; $5c75: $6d

jr_04c_5c76:
	ld   a, b                                        ; $5c76: $78
	rst  $38                                         ; $5c77: $ff
	rst  $38                                         ; $5c78: $ff
	dec  c                                           ; $5c79: $0d
	inc  bc                                          ; $5c7a: $03
	ld   c, d                                        ; $5c7b: $4a
	ld   [bc], a                                     ; $5c7c: $02
	or   h                                           ; $5c7d: $b4
	ld   a, l                                        ; $5c7e: $7d
	sbc  [hl]                                        ; $5c7f: $9e
	ld   bc, $0407                                   ; $5c80: $01 $07 $04
	ld   a, [de]                                     ; $5c83: $1a
	ld   [bc], a                                     ; $5c84: $02
	cp   b                                           ; $5c85: $b8
	ld   bc, $6e08                                   ; $5c86: $01 $08 $6e
	sbc  a                                           ; $5c89: $9f
	dec  c                                           ; $5c8a: $0d
	nop                                              ; $5c8b: $00
	ld   a, [bc]                                     ; $5c8c: $0a
	ld   b, $69                                      ; $5c8d: $06 $69
	ld   bc, $1207                                   ; $5c8f: $01 $07 $12
	rlca                                             ; $5c92: $07
	inc  b                                           ; $5c93: $04
	add  b                                           ; $5c94: $80
	ld   d, [hl]                                     ; $5c95: $56
	ld   bc, $20ff                                   ; $5c96: $01 $ff $20
	nop                                              ; $5c99: $00
	dec  b                                           ; $5c9a: $05
	add  b                                           ; $5c9b: $80
	ld   d, [hl]                                     ; $5c9c: $56
	ld   bc, $0001                                   ; $5c9d: $01 $01 $00
	ld   bc, $5d63                                   ; $5ca0: $01 $63 $5d
	sub  a                                           ; $5ca3: $97
	ld   h, e                                        ; $5ca4: $63
	and  c                                           ; $5ca5: $a1
	ld   e, d                                        ; $5ca6: $5a
	ld   [bc], a                                     ; $5ca7: $02
	sbc  d                                           ; $5ca8: $9a
	ld   e, e                                        ; $5ca9: $5b
	ld   a, b                                        ; $5caa: $78
	dec  c                                           ; $5cab: $0d
	inc  b                                           ; $5cac: $04
	adc  a                                           ; $5cad: $8f
	ld   a, h                                        ; $5cae: $7c
	inc  b                                           ; $5caf: $04
	rst  ToBoot                                         ; $5cb0: $c7
	inc  bc                                          ; $5cb1: $03
	ld   c, a                                        ; $5cb2: $4f
	ld   a, l                                        ; $5cb3: $7d
	ld   sp, hl                                      ; $5cb4: $f9
	dec  c                                           ; $5cb5: $0d
	nop                                              ; $5cb6: $00
	ld   a, [bc]                                     ; $5cb7: $0a
	add  hl, de                                      ; $5cb8: $19
	dec  b                                           ; $5cb9: $05
	inc  bc                                          ; $5cba: $03
	dec  b                                           ; $5cbb: $05
	rra                                              ; $5cbc: $1f
	inc  b                                           ; $5cbd: $04
	sub  c                                           ; $5cbe: $91
	inc  b                                           ; $5cbf: $04
	sub  d                                           ; $5cc0: $92
	ld   [bc], a                                     ; $5cc1: $02
	and  h                                           ; $5cc2: $a4
	nop                                              ; $5cc3: $00
	nop                                              ; $5cc4: $00
	inc  b                                           ; $5cc5: $04
	and  d                                           ; $5cc6: $a2
	halt                                             ; $5cc7: $76
	inc  bc                                          ; $5cc8: $03
	ld   e, $00                                      ; $5cc9: $1e $00
	ld   bc, $9503                                   ; $5ccb: $01 $03 $95
	dec  b                                           ; $5cce: $05
	inc  e                                           ; $5ccf: $1c
	ld   a, h                                        ; $5cd0: $7c
	inc  bc                                          ; $5cd1: $03
	ld   h, l                                        ; $5cd2: $65
	nop                                              ; $5cd3: $00
	ld   [bc], a                                     ; $5cd4: $02
	rlca                                             ; $5cd5: $07
	ret  z                                           ; $5cd6: $c8

	ld   b, $02                                      ; $5cd7: $06 $02
	inc  bc                                          ; $5cd9: $03
	ld   bc, $2000                                   ; $5cda: $01 $00 $20
	nop                                              ; $5cdd: $00
	rlca                                             ; $5cde: $07
	push hl                                          ; $5cdf: $e5
	ld   b, $02                                      ; $5ce0: $06 $02
	inc  bc                                          ; $5ce2: $03
	ld   bc, $2001                                   ; $5ce3: $01 $01 $20
	nop                                              ; $5ce6: $00
	rlca                                             ; $5ce7: $07
	push hl                                          ; $5ce8: $e5
	ld   b, $02                                      ; $5ce9: $06 $02
	inc  bc                                          ; $5ceb: $03
	ld   bc, $2002                                   ; $5cec: $01 $02 $20
	nop                                              ; $5cef: $00
	ld   b, $e5                                      ; $5cf0: $06 $e5
	ld   b, $1c                                      ; $5cf2: $06 $1c
	rrca                                             ; $5cf4: $0f
	ld   bc, $1401                                   ; $5cf5: $01 $01 $14
	dec  de                                          ; $5cf8: $1b
	ld   bc, $0301                                   ; $5cf9: $01 $01 $03
	ld   c, d                                        ; $5cfc: $4a
	ld   [bc], a                                     ; $5cfd: $02
	or   h                                           ; $5cfe: $b4
	ld   l, [hl]                                     ; $5cff: $6e
	sbc  a                                           ; $5d00: $9f
	dec  c                                           ; $5d01: $0d
	nop                                              ; $5d02: $00
	ld   a, [bc]                                     ; $5d03: $0a
	dec  b                                           ; $5d04: $05
	ld   b, b                                        ; $5d05: $40
	rst  $38                                         ; $5d06: $ff
	inc  bc                                          ; $5d07: $03
	rst  $38                                         ; $5d08: $ff
	ld   bc, $2801                                   ; $5d09: $01 $01 $28
	nop                                              ; $5d0c: $00
	ld   b, $69                                      ; $5d0d: $06 $69
	ld   bc, $0f1c                                   ; $5d0f: $01 $1c $0f
	ld   [bc], a                                     ; $5d12: $02
	ld   [bc], a                                     ; $5d13: $02
	inc  d                                           ; $5d14: $14
	inc  e                                           ; $5d15: $1c
	ld   bc, $0301                                   ; $5d16: $01 $01 $03
	jr   z, jr_04c_5d1f                              ; $5d19: $28 $04

	ld   c, b                                        ; $5d1b: $48
	ld   l, [hl]                                     ; $5d1c: $6e
	ld   [hl], c                                     ; $5d1d: $71
	ld   l, l                                        ; $5d1e: $6d

jr_04c_5d1f:
	ld   a, b                                        ; $5d1f: $78
	rst  $38                                         ; $5d20: $ff
	rst  $38                                         ; $5d21: $ff
	dec  c                                           ; $5d22: $0d
	inc  bc                                          ; $5d23: $03
	ld   c, d                                        ; $5d24: $4a
	ld   [bc], a                                     ; $5d25: $02
	or   h                                           ; $5d26: $b4
	ld   a, l                                        ; $5d27: $7d
	sbc  [hl]                                        ; $5d28: $9e
	ld   bc, $0507                                   ; $5d29: $01 $07 $05
	rra                                              ; $5d2c: $1f
	inc  b                                           ; $5d2d: $04
	sub  c                                           ; $5d2e: $91
	inc  b                                           ; $5d2f: $04
	sub  d                                           ; $5d30: $92
	ld   [bc], a                                     ; $5d31: $02
	and  h                                           ; $5d32: $a4
	ld   bc, $6e08                                   ; $5d33: $01 $08 $6e
	sbc  a                                           ; $5d36: $9f
	dec  c                                           ; $5d37: $0d
	nop                                              ; $5d38: $00
	ld   a, [bc]                                     ; $5d39: $0a
	ld   b, $69                                      ; $5d3a: $06 $69
	ld   bc, $ca07                                   ; $5d3c: $01 $07 $ca
	ld   bc, $8004                                   ; $5d3f: $01 $04 $80
	ld   d, a                                        ; $5d42: $57
	ld   bc, $20ff                                   ; $5d43: $01 $ff $20
	nop                                              ; $5d46: $00
	dec  b                                           ; $5d47: $05
	add  b                                           ; $5d48: $80
	ld   d, a                                        ; $5d49: $57
	ld   bc, $0001                                   ; $5d4a: $01 $01 $00
	ld   bc, $5d63                                   ; $5d4d: $01 $63 $5d
	sub  a                                           ; $5d50: $97
	ld   h, e                                        ; $5d51: $63
	and  c                                           ; $5d52: $a1
	ld   a, h                                        ; $5d53: $7c
	db   $ec                                         ; $5d54: $ec
	db   $dd                                         ; $5d55: $dd
	push af                                          ; $5d56: $f5
	ld   a, h                                        ; $5d57: $7c
	inc  bc                                          ; $5d58: $03
	dec  bc                                          ; $5d59: $0b
	ld   a, l                                        ; $5d5a: $7d
	ld   sp, hl                                      ; $5d5b: $f9
	dec  c                                           ; $5d5c: $0d
	nop                                              ; $5d5d: $00
	ld   a, [bc]                                     ; $5d5e: $0a
	add  hl, de                                      ; $5d5f: $19
	dec  b                                           ; $5d60: $05
	inc  bc                                          ; $5d61: $03
	inc  bc                                          ; $5d62: $03
	ld   bc, $0b03                                   ; $5d63: $01 $03 $0b
	nop                                              ; $5d66: $00
	nop                                              ; $5d67: $00
	inc  bc                                          ; $5d68: $03
	ld   a, [bc]                                     ; $5d69: $0a
	inc  bc                                          ; $5d6a: $03
	dec  bc                                          ; $5d6b: $0b
	nop                                              ; $5d6c: $00
	ld   bc, $0202                                   ; $5d6d: $01 $02 $02
	inc  bc                                          ; $5d70: $03
	dec  bc                                          ; $5d71: $0b
	nop                                              ; $5d72: $00
	ld   [bc], a                                     ; $5d73: $02
	rlca                                             ; $5d74: $07
	ld   h, a                                        ; $5d75: $67
	rlca                                             ; $5d76: $07
	ld   [bc], a                                     ; $5d77: $02
	inc  bc                                          ; $5d78: $03
	ld   bc, $2000                                   ; $5d79: $01 $00 $20
	nop                                              ; $5d7c: $00
	rlca                                             ; $5d7d: $07
	add  h                                           ; $5d7e: $84
	rlca                                             ; $5d7f: $07
	ld   [bc], a                                     ; $5d80: $02
	inc  bc                                          ; $5d81: $03
	ld   bc, $2001                                   ; $5d82: $01 $01 $20
	nop                                              ; $5d85: $00
	rlca                                             ; $5d86: $07
	add  h                                           ; $5d87: $84
	rlca                                             ; $5d88: $07
	ld   [bc], a                                     ; $5d89: $02
	inc  bc                                          ; $5d8a: $03
	ld   bc, $2002                                   ; $5d8b: $01 $02 $20
	nop                                              ; $5d8e: $00
	ld   b, $84                                      ; $5d8f: $06 $84
	rlca                                             ; $5d91: $07
	inc  e                                           ; $5d92: $1c
	rrca                                             ; $5d93: $0f
	ld   bc, $1401                                   ; $5d94: $01 $01 $14
	dec  de                                          ; $5d97: $1b
	ld   bc, $0301                                   ; $5d98: $01 $01 $03
	ld   c, d                                        ; $5d9b: $4a
	ld   [bc], a                                     ; $5d9c: $02
	or   h                                           ; $5d9d: $b4
	ld   l, [hl]                                     ; $5d9e: $6e
	sbc  a                                           ; $5d9f: $9f
	dec  c                                           ; $5da0: $0d
	nop                                              ; $5da1: $00
	ld   a, [bc]                                     ; $5da2: $0a
	dec  b                                           ; $5da3: $05
	ld   b, b                                        ; $5da4: $40
	rst  $38                                         ; $5da5: $ff
	inc  bc                                          ; $5da6: $03
	rst  $38                                         ; $5da7: $ff
	ld   bc, $2801                                   ; $5da8: $01 $01 $28
	nop                                              ; $5dab: $00
	ld   b, $69                                      ; $5dac: $06 $69
	ld   bc, $0f1c                                   ; $5dae: $01 $1c $0f
	ld   [bc], a                                     ; $5db1: $02
	ld   [bc], a                                     ; $5db2: $02
	inc  d                                           ; $5db3: $14
	inc  e                                           ; $5db4: $1c
	ld   bc, $0301                                   ; $5db5: $01 $01 $03
	jr   z, jr_04c_5dbe                              ; $5db8: $28 $04

	ld   c, b                                        ; $5dba: $48
	ld   l, [hl]                                     ; $5dbb: $6e
	ld   [hl], c                                     ; $5dbc: $71
	ld   l, l                                        ; $5dbd: $6d

jr_04c_5dbe:
	ld   a, b                                        ; $5dbe: $78
	rst  $38                                         ; $5dbf: $ff
	rst  $38                                         ; $5dc0: $ff
	dec  c                                           ; $5dc1: $0d
	inc  bc                                          ; $5dc2: $03
	ld   c, d                                        ; $5dc3: $4a
	ld   [bc], a                                     ; $5dc4: $02
	or   h                                           ; $5dc5: $b4
	ld   a, l                                        ; $5dc6: $7d
	sbc  [hl]                                        ; $5dc7: $9e
	ld   bc, $0307                                   ; $5dc8: $01 $07 $03
	ld   bc, $0b03                                   ; $5dcb: $01 $03 $0b
	ld   bc, $6e08                                   ; $5dce: $01 $08 $6e
	sbc  a                                           ; $5dd1: $9f
	dec  c                                           ; $5dd2: $0d
	nop                                              ; $5dd3: $00
	ld   a, [bc]                                     ; $5dd4: $0a
	ld   b, $69                                      ; $5dd5: $06 $69
	ld   bc, $0e00                                   ; $5dd7: $01 $00 $0e
	rra                                              ; $5dda: $1f
	rrca                                             ; $5ddb: $0f
	nop                                              ; $5ddc: $00
	ld   bc, $0502                                   ; $5ddd: $01 $02 $05
	add  b                                           ; $5de0: $80
	jp   nz, $0101                                   ; $5de1: $c2 $01 $01

	nop                                              ; $5de4: $00
	ld   bc, $4904                                   ; $5de5: $01 $04 $49
	ld   h, l                                        ; $5de8: $65
	ld   [hl], h                                     ; $5de9: $74
	sbc  c                                           ; $5dea: $99
	and  c                                           ; $5deb: $a1
	ld   [hl], l                                     ; $5dec: $75
	ld   h, a                                        ; $5ded: $67
	ld   e, c                                        ; $5dee: $59
	dec  c                                           ; $5def: $0d
	rst  JumpTable                                         ; $5df0: $df
	db   $ec                                         ; $5df1: $ec
	and  e                                           ; $5df2: $a3
	ld   h, e                                        ; $5df3: $63
	and  c                                           ; $5df4: $a1
	ld   sp, hl                                      ; $5df5: $f9
	dec  c                                           ; $5df6: $0d
	nop                                              ; $5df7: $00
	ld   a, [bc]                                     ; $5df8: $0a
	inc  e                                           ; $5df9: $1c
	inc  bc                                          ; $5dfa: $03
	nop                                              ; $5dfb: $00
	nop                                              ; $5dfc: $00
	ld   bc, $9750                                   ; $5dfd: $01 $50 $97
	sbc  [hl]                                        ; $5e00: $9e
	ld   [$5d00], sp                                 ; $5e01: $08 $00 $5d
	and  c                                           ; $5e04: $a1
	sbc  a                                           ; $5e05: $9f
	dec  c                                           ; $5e06: $0d
	inc  b                                           ; $5e07: $04
	ld   c, $04                                      ; $5e08: $0e $04
	ld   d, $02                                      ; $5e0a: $16 $02
	xor  b                                           ; $5e0c: $a8
	ld   e, d                                        ; $5e0d: $5a
	ld   h, c                                        ; $5e0e: $61
	sbc  l                                           ; $5e0f: $9d
	sbc  d                                           ; $5e10: $9a
	ld   [hl], h                                     ; $5e11: $74
	ld   l, l                                        ; $5e12: $6d
	ld   e, c                                        ; $5e13: $59
	sub  a                                           ; $5e14: $97
	dec  c                                           ; $5e15: $0d
	ld   a, b                                        ; $5e16: $78
	ld   e, b                                        ; $5e17: $58
	ld   l, e                                        ; $5e18: $6b
	ld   d, h                                        ; $5e19: $54
	halt                                             ; $5e1a: $76
	dec  b                                           ; $5e1b: $05
	pop  de                                          ; $5e1c: $d1
	ld   [hl], c                                     ; $5e1d: $71
	ld   [hl], h                                     ; $5e1e: $74
	rst  $38                                         ; $5e1f: $ff
	rst  $38                                         ; $5e20: $ff
	dec  c                                           ; $5e21: $0d
	nop                                              ; $5e22: $00
	ld   a, [bc]                                     ; $5e23: $0a
	add  hl, de                                      ; $5e24: $19
	dec  b                                           ; $5e25: $05
	ld   [bc], a                                     ; $5e26: $02
	inc  bc                                          ; $5e27: $03
	ld   l, e                                        ; $5e28: $6b
	inc  b                                           ; $5e29: $04
	ld   [de], a                                     ; $5e2a: $12
	ld   d, d                                        ; $5e2b: $52
	adc  h                                           ; $5e2c: $8c
	ld   h, a                                        ; $5e2d: $67
	nop                                              ; $5e2e: $00
	nop                                              ; $5e2f: $00
	ld   e, d                                        ; $5e30: $5a
	and  c                                           ; $5e31: $a1
	ld   a, [hl]                                     ; $5e32: $7e
	ld   [hl], c                                     ; $5e33: $71
	ld   [hl], h                                     ; $5e34: $74
	ld   [bc], a                                     ; $5e35: $02
	inc  [hl]                                        ; $5e36: $34
	ld   h, e                                        ; $5e37: $63
	ld   d, d                                        ; $5e38: $52
	nop                                              ; $5e39: $00
	ld   bc, $eb07                                   ; $5e3a: $01 $07 $eb
	nop                                              ; $5e3d: $00
	ld   [bc], a                                     ; $5e3e: $02
	inc  bc                                          ; $5e3f: $03
	ld   bc, $2000                                   ; $5e40: $01 $00 $20
	nop                                              ; $5e43: $00
	rlca                                             ; $5e44: $07
	ld   [hl], a                                     ; $5e45: $77
	nop                                              ; $5e46: $00
	ld   [bc], a                                     ; $5e47: $02
	inc  bc                                          ; $5e48: $03
	ld   bc, $2001                                   ; $5e49: $01 $01 $20
	nop                                              ; $5e4c: $00
	ld   b, $c8                                      ; $5e4d: $06 $c8
	nop                                              ; $5e4f: $00
	rrca                                             ; $5e50: $0f
	nop                                              ; $5e51: $00
	ld   bc, $5a01                                   ; $5e52: $01 $01 $5a
	and  c                                           ; $5e55: $a1
	ld   a, [hl]                                     ; $5e56: $7e
	ld   [hl], c                                     ; $5e57: $71
	ld   [hl], h                                     ; $5e58: $74
	ld   [bc], a                                     ; $5e59: $02
	inc  [hl]                                        ; $5e5a: $34
	ld   h, e                                        ; $5e5b: $63
	ld   d, d                                        ; $5e5c: $52
	sbc  a                                           ; $5e5d: $9f
	dec  c                                           ; $5e5e: $0d
	nop                                              ; $5e5f: $00
	ld   a, [bc]                                     ; $5e60: $0a
	inc  e                                           ; $5e61: $1c
	inc  bc                                          ; $5e62: $03
	inc  b                                           ; $5e63: $04
	inc  b                                           ; $5e64: $04
	dec  e                                           ; $5e65: $1d
	ld   b, b                                        ; $5e66: $40
	inc  de                                          ; $5e67: $13
	inc  bc                                          ; $5e68: $03
	inc  de                                          ; $5e69: $13
	ld   bc, $2902                                   ; $5e6a: $01 $02 $29
	nop                                              ; $5e6d: $00
	ld   bc, $2002                                   ; $5e6e: $01 $02 $20
	inc  bc                                          ; $5e71: $03
	add  d                                           ; $5e72: $82
	ld   h, [hl]                                     ; $5e73: $66
	sub  c                                           ; $5e74: $91
	inc  b                                           ; $5e75: $04
	ld   c, $04                                      ; $5e76: $0e $04
	adc  h                                           ; $5e78: $8c
	ld   l, [hl]                                     ; $5e79: $6e
	sbc  l                                           ; $5e7a: $9d
	rst  $38                                         ; $5e7b: $ff
	rst  $38                                         ; $5e7c: $ff
	dec  c                                           ; $5e7d: $0d
	xor  h                                           ; $5e7e: $ac
	push af                                          ; $5e7f: $f5
	bit  7, c                                        ; $5e80: $cb $79
	ld   [hl], l                                     ; $5e82: $75
	sub  b                                           ; $5e83: $90
	ld   l, l                                        ; $5e84: $6d
	ld   a, h                                        ; $5e85: $7c
	sub  b                                           ; $5e86: $90
	ld   d, h                                        ; $5e87: $54
	dec  c                                           ; $5e88: $0d
	ld   e, c                                        ; $5e89: $59
	ld   h, l                                        ; $5e8a: $65
	sub  a                                           ; $5e8b: $97
	rst  $38                                         ; $5e8c: $ff
	rst  $38                                         ; $5e8d: $ff
	dec  c                                           ; $5e8e: $0d
	nop                                              ; $5e8f: $00
	ld   a, [bc]                                     ; $5e90: $0a
	rrca                                             ; $5e91: $0f
	nop                                              ; $5e92: $00
	ld   bc, $0301                                   ; $5e93: $01 $01 $03
	add  e                                           ; $5e96: $83
	dec  b                                           ; $5e97: $05
	dec  c                                           ; $5e98: $0d
	ld   h, l                                        ; $5e99: $65
	adc  h                                           ; $5e9a: $8c
	ld   h, a                                        ; $5e9b: $67
	sbc  a                                           ; $5e9c: $9f
	dec  c                                           ; $5e9d: $0d
	nop                                              ; $5e9e: $00
	ld   a, [bc]                                     ; $5e9f: $0a
	nop                                              ; $5ea0: $00
	inc  e                                           ; $5ea1: $1c
	inc  bc                                          ; $5ea2: $03
	nop                                              ; $5ea3: $00
	nop                                              ; $5ea4: $00
	ld   bc, $999d                                   ; $5ea5: $01 $9d $99
	ld   d, d                                        ; $5ea8: $52
	ld   e, a                                        ; $5ea9: $5f
	ld   [hl], a                                     ; $5eaa: $77
	sbc  [hl]                                        ; $5eab: $9e
	dec  c                                           ; $5eac: $0d
	ld   l, a                                        ; $5ead: $6f
	sub  l                                           ; $5eae: $95
	ld   [hl], c                                     ; $5eaf: $71
	halt                                             ; $5eb0: $76
	inc  bc                                          ; $5eb1: $03
	ld   l, e                                        ; $5eb2: $6b
	inc  b                                           ; $5eb3: $04
	ld   [de], a                                     ; $5eb4: $12
	ld   [hl], c                                     ; $5eb5: $71
	ld   [hl], h                                     ; $5eb6: $74
	sub  b                                           ; $5eb7: $90
	sub  a                                           ; $5eb8: $97
	ld   d, [hl]                                     ; $5eb9: $56
	sbc  c                                           ; $5eba: $99
	ld   sp, hl                                      ; $5ebb: $f9
	dec  c                                           ; $5ebc: $0d
	nop                                              ; $5ebd: $00
	ld   a, [bc]                                     ; $5ebe: $0a
	inc  c                                           ; $5ebf: $0c
	dec  bc                                          ; $5ec0: $0b
	ld   b, $30                                      ; $5ec1: $06 $30
	ld   bc, $000f                                   ; $5ec3: $01 $0f $00
	ld   bc, $0301                                   ; $5ec6: $01 $01 $03
	ld   l, e                                        ; $5ec9: $6b
	inc  b                                           ; $5eca: $04
	ld   [de], a                                     ; $5ecb: $12
	ld   d, d                                        ; $5ecc: $52
	adc  h                                           ; $5ecd: $8c
	ld   h, a                                        ; $5ece: $67
	sbc  a                                           ; $5ecf: $9f
	dec  c                                           ; $5ed0: $0d
	rst  JumpTable                                         ; $5ed1: $df
	db   $ec                                         ; $5ed2: $ec
	and  e                                           ; $5ed3: $a3
	ld   h, e                                        ; $5ed4: $63
	and  c                                           ; $5ed5: $a1
	ld   [bc], a                                     ; $5ed6: $02
	jr   nz, jr_04c_5edc                             ; $5ed7: $20 $03

	add  d                                           ; $5ed9: $82
	ld   h, [hl]                                     ; $5eda: $66
	sub  c                                           ; $5edb: $91

jr_04c_5edc:
	dec  c                                           ; $5edc: $0d
	inc  b                                           ; $5edd: $04
	ld   c, $04                                      ; $5ede: $0e $04
	adc  h                                           ; $5ee0: $8c
	ld   [hl], l                                     ; $5ee1: $75
	ld   h, l                                        ; $5ee2: $65
	sub  l                                           ; $5ee3: $95
	ld   d, h                                        ; $5ee4: $54
	ld   e, c                                        ; $5ee5: $59
	sub  a                                           ; $5ee6: $97
	rst  $38                                         ; $5ee7: $ff
	rst  $38                                         ; $5ee8: $ff
	dec  c                                           ; $5ee9: $0d
	nop                                              ; $5eea: $00
	ld   a, [bc]                                     ; $5eeb: $0a
	inc  e                                           ; $5eec: $1c
	inc  bc                                          ; $5eed: $03
	inc  bc                                          ; $5eee: $03
	inc  bc                                          ; $5eef: $03
	dec  e                                           ; $5ef0: $1d
	ld   b, b                                        ; $5ef1: $40
	inc  de                                          ; $5ef2: $13
	inc  bc                                          ; $5ef3: $03
	inc  de                                          ; $5ef4: $13
	ld   bc, $2802                                   ; $5ef5: $01 $02 $28
	nop                                              ; $5ef8: $00
	ld   bc, $9850                                   ; $5ef9: $01 $50 $98
	ld   e, d                                        ; $5efc: $5a
	halt                                             ; $5efd: $76
	ld   d, h                                        ; $5efe: $54
	sbc  [hl]                                        ; $5eff: $9e
	inc  bc                                          ; $5f00: $03
	ld   e, e                                        ; $5f01: $5b
	ld   e, c                                        ; $5f02: $59
	sbc  c                                           ; $5f03: $99
	sbc  l                                           ; $5f04: $9d
	sbc  a                                           ; $5f05: $9f
	dec  c                                           ; $5f06: $0d
	nop                                              ; $5f07: $00
	ld   a, [bc]                                     ; $5f08: $0a
	ld   bc, $9166                                   ; $5f09: $01 $66 $91
	sbc  [hl]                                        ; $5f0c: $9e
	dec  b                                           ; $5f0d: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f0e: $cf
	adc  a                                           ; $5f0f: $8f
	sbc  c                                           ; $5f10: $99
	sbc  l                                           ; $5f11: $9d
	sub  [hl]                                        ; $5f12: $96
	sbc  a                                           ; $5f13: $9f
	dec  c                                           ; $5f14: $0d
	nop                                              ; $5f15: $00
	ld   a, [bc]                                     ; $5f16: $0a
	inc  e                                           ; $5f17: $1c
	inc  bc                                          ; $5f18: $03
	nop                                              ; $5f19: $00
	nop                                              ; $5f1a: $00
	ld   bc, $688c                                   ; $5f1b: $01 $8c $68
	ld   a, l                                        ; $5f1e: $7d
	sbc  [hl]                                        ; $5f1f: $9e
	ld   e, c                                        ; $5f20: $59
	and  c                                           ; $5f21: $a1
	ld   a, b                                        ; $5f22: $78
	and  b                                           ; $5f23: $a0
	rst  $38                                         ; $5f24: $ff
	rst  $38                                         ; $5f25: $ff
	dec  c                                           ; $5f26: $0d
	nop                                              ; $5f27: $00
	ld   a, [bc]                                     ; $5f28: $0a
	add  hl, de                                      ; $5f29: $19
	dec  b                                           ; $5f2a: $05
	ld   [bc], a                                     ; $5f2b: $02
	ld   e, c                                        ; $5f2c: $59
	ld   e, a                                        ; $5f2d: $5f
	sbc  c                                           ; $5f2e: $99
	nop                                              ; $5f2f: $00
	nop                                              ; $5f30: $00
	sub  [hl]                                        ; $5f31: $96
	and  c                                           ; $5f32: $a1
	ld   [hl], l                                     ; $5f33: $75
	ld   e, l                                        ; $5f34: $5d
	sbc  c                                           ; $5f35: $99
	nop                                              ; $5f36: $00
	ld   bc, $7407                                   ; $5f37: $01 $07 $74
	ld   bc, $0302                                   ; $5f3a: $01 $02 $03
	ld   bc, $2000                                   ; $5f3d: $01 $00 $20
	nop                                              ; $5f40: $00
	rlca                                             ; $5f41: $07
	xor  [hl]                                        ; $5f42: $ae
	ld   bc, $0302                                   ; $5f43: $01 $02 $03
	ld   bc, $2001                                   ; $5f46: $01 $01 $20
	nop                                              ; $5f49: $00
	ld   b, $ec                                      ; $5f4a: $06 $ec
	ld   bc, $000f                                   ; $5f4c: $01 $0f $00
	ld   bc, $6101                                   ; $5f4f: $01 $01 $61
	ld   a, h                                        ; $5f52: $7c
	dec  b                                           ; $5f53: $05
	sbc  a                                           ; $5f54: $9f
	inc  bc                                          ; $5f55: $03
	jr   nc, jr_04c_5fd1                             ; $5f56: $30 $79

	ld   e, c                                        ; $5f58: $59
	ld   e, a                                        ; $5f59: $5f
	sbc  c                                           ; $5f5a: $99
	and  c                                           ; $5f5b: $a1
	ld   [hl], l                                     ; $5f5c: $75
	ld   h, a                                        ; $5f5d: $67
	ld   a, e                                        ; $5f5e: $7b
	ld   sp, hl                                      ; $5f5f: $f9
	dec  c                                           ; $5f60: $0d
	nop                                              ; $5f61: $00
	ld   a, [bc]                                     ; $5f62: $0a
	inc  e                                           ; $5f63: $1c
	inc  bc                                          ; $5f64: $03
	inc  bc                                          ; $5f65: $03
	inc  bc                                          ; $5f66: $03
	ld   bc, $546b                                   ; $5f67: $01 $6b $54
	sub  [hl]                                        ; $5f6a: $96
	sbc  [hl]                                        ; $5f6b: $9e
	ld   a, b                                        ; $5f6c: $78
	ld   e, c                                        ; $5f6d: $59
	ld   a, b                                        ; $5f6e: $78
	ld   e, c                                        ; $5f6f: $59
	inc  bc                                          ; $5f70: $03
	ld   h, l                                        ; $5f71: $65
	inc  bc                                          ; $5f72: $03
	ld   l, e                                        ; $5f73: $6b
	ld   d, d                                        ; $5f74: $52
	sbc  l                                           ; $5f75: $9d
	ld   a, e                                        ; $5f76: $7b
	sbc  a                                           ; $5f77: $9f
	dec  c                                           ; $5f78: $0d
	nop                                              ; $5f79: $00
	ld   a, [bc]                                     ; $5f7a: $0a
	dec  b                                           ; $5f7b: $05
	ld   b, b                                        ; $5f7c: $40
	rst  $38                                         ; $5f7d: $ff
	inc  bc                                          ; $5f7e: $03
	rst  $38                                         ; $5f7f: $ff
	ld   bc, $2801                                   ; $5f80: $01 $01 $28
	nop                                              ; $5f83: $00
	ld   b, $10                                      ; $5f84: $06 $10
	ld   [bc], a                                     ; $5f86: $02
	rrca                                             ; $5f87: $0f
	nop                                              ; $5f88: $00
	ld   bc, $ac01                                   ; $5f89: $01 $01 $ac
	push af                                          ; $5f8c: $f5
	bit  4, e                                        ; $5f8d: $cb $63
	and  c                                           ; $5f8f: $a1
	and  b                                           ; $5f90: $a0
	sub  [hl]                                        ; $5f91: $96
	and  c                                           ; $5f92: $a1
	ld   [hl], l                                     ; $5f93: $75
	dec  b                                           ; $5f94: $05
	db   $10                                         ; $5f95: $10
	adc  h                                           ; $5f96: $8c
	ld   h, a                                        ; $5f97: $67
	sbc  a                                           ; $5f98: $9f
	dec  c                                           ; $5f99: $0d
	nop                                              ; $5f9a: $00
	ld   a, [bc]                                     ; $5f9b: $0a
	inc  e                                           ; $5f9c: $1c
	inc  bc                                          ; $5f9d: $03
	inc  b                                           ; $5f9e: $04
	inc  b                                           ; $5f9f: $04
	ld   bc, $f5ac                                   ; $5fa0: $01 $ac $f5
	bit  4, [hl]                                     ; $5fa3: $cb $66
	sub  c                                           ; $5fa5: $91
	ld   a, b                                        ; $5fa6: $78
	ld   e, l                                        ; $5fa7: $5d
	ld   [hl], h                                     ; $5fa8: $74
	dec  c                                           ; $5fa9: $0d
	db   $fd                                         ; $5faa: $fd
	ld   e, c                                        ; $5fab: $59
	and  c                                           ; $5fac: $a1
	ld   a, b                                        ; $5fad: $78
	cp   $96                                         ; $5fae: $fe $96
	rst  $38                                         ; $5fb0: $ff
	rst  $38                                         ; $5fb1: $ff
	dec  c                                           ; $5fb2: $0d
	ld   d, d                                        ; $5fb3: $52
	ld   d, d                                        ; $5fb4: $52

jr_04c_5fb5:
	sbc  l                                           ; $5fb5: $9d
	sbc  [hl]                                        ; $5fb6: $9e
	inc  bc                                          ; $5fb7: $03
	ret  z                                           ; $5fb8: $c8

	ld   e, d                                        ; $5fb9: $5a
	sub  d                                           ; $5fba: $92
	sbc  c                                           ; $5fbb: $99
	ld   e, c                                        ; $5fbc: $59
	sub  a                                           ; $5fbd: $97
	sbc  a                                           ; $5fbe: $9f
	dec  c                                           ; $5fbf: $0d
	nop                                              ; $5fc0: $00
	ld   a, [bc]                                     ; $5fc1: $0a
	ld   b, $10                                      ; $5fc2: $06 $10
	ld   [bc], a                                     ; $5fc4: $02
	inc  e                                           ; $5fc5: $1c
	inc  bc                                          ; $5fc6: $03
	ld   [bc], a                                     ; $5fc7: $02
	ld   [bc], a                                     ; $5fc8: $02
	ld   bc, $4904                                   ; $5fc9: $01 $04 $49
	and  b                                           ; $5fcc: $a0
	adc  d                                           ; $5fcd: $8a
	ei                                               ; $5fce: $fb
	ld   [hl], c                                     ; $5fcf: $71
	halt                                             ; $5fd0: $76

jr_04c_5fd1:
	ld   h, l                                        ; $5fd1: $65
	ld   [hl], h                                     ; $5fd2: $74
	sbc  c                                           ; $5fd3: $99
	ld   a, h                                        ; $5fd4: $7c
	ld   a, [$520d]                                  ; $5fd5: $fa $0d $52
	ld   d, d                                        ; $5fd8: $52
	sbc  l                                           ; $5fd9: $9d
	sbc  [hl]                                        ; $5fda: $9e
	inc  bc                                          ; $5fdb: $03
	ret  z                                           ; $5fdc: $c8

	ld   e, d                                        ; $5fdd: $5a
	sub  d                                           ; $5fde: $92
	sbc  c                                           ; $5fdf: $99
	ld   e, c                                        ; $5fe0: $59
	sub  a                                           ; $5fe1: $97
	sbc  a                                           ; $5fe2: $9f
	dec  c                                           ; $5fe3: $0d
	nop                                              ; $5fe4: $00
	ld   a, [bc]                                     ; $5fe5: $0a
	ld   b, $10                                      ; $5fe6: $06 $10
	ld   [bc], a                                     ; $5fe8: $02
	inc  e                                           ; $5fe9: $1c
	inc  bc                                          ; $5fea: $03
	nop                                              ; $5feb: $00
	nop                                              ; $5fec: $00
	ld   bc, $6803                                   ; $5fed: $01 $03 $68
	ld   a, l                                        ; $5ff0: $7d
	sbc  [hl]                                        ; $5ff1: $9e
	ld   e, e                                        ; $5ff2: $5b
	sbc  b                                           ; $5ff3: $98
	and  b                                           ; $5ff4: $a0
	inc  bc                                          ; $5ff5: $03
	xor  [hl]                                        ; $5ff6: $ae
	ld   [hl], c                                     ; $5ff7: $71
	ld   [hl], h                                     ; $5ff8: $74
	rst  $38                                         ; $5ff9: $ff
	rst  $38                                         ; $5ffa: $ff
	dec  c                                           ; $5ffb: $0d
	nop                                              ; $5ffc: $00
	ld   a, [bc]                                     ; $5ffd: $0a
	add  hl, de                                      ; $5ffe: $19
	dec  b                                           ; $5fff: $05
	inc  bc                                          ; $6000: $03
	ld   d, b                                        ; $6001: $50
	ld   a, b                                        ; $6002: $78
	and  b                                           ; $6003: $a0
	ld   d, b                                        ; $6004: $50
	ld   e, a                                        ; $6005: $5f
	sbc  c                                           ; $6006: $99
	nop                                              ; $6007: $00
	nop                                              ; $6008: $00
	or   b                                           ; $6009: $b0
	xor  a                                           ; $600a: $af
	and  b                                           ; $600b: $a0
	ld   d, h                                        ; $600c: $54
	ld   [hl], d                                     ; $600d: $72
	nop                                              ; $600e: $00
	ld   bc, $9f05                                   ; $600f: $01 $05 $9f
	inc  bc                                          ; $6012: $03
	jr   nc, jr_04c_5fb5                             ; $6013: $30 $a0

	inc  bc                                          ; $6015: $03
	dec  de                                          ; $6016: $1b
	sbc  c                                           ; $6017: $99
	nop                                              ; $6018: $00
	ld   [bc], a                                     ; $6019: $02
	rlca                                             ; $601a: $07
	ld   e, a                                        ; $601b: $5f
	ld   [bc], a                                     ; $601c: $02
	ld   [bc], a                                     ; $601d: $02
	inc  bc                                          ; $601e: $03
	ld   bc, $2000                                   ; $601f: $01 $00 $20
	nop                                              ; $6022: $00
	rlca                                             ; $6023: $07
	sub  l                                           ; $6024: $95
	ld   [bc], a                                     ; $6025: $02
	ld   [bc], a                                     ; $6026: $02
	inc  bc                                          ; $6027: $03
	ld   bc, $2001                                   ; $6028: $01 $01 $20
	nop                                              ; $602b: $00
	rlca                                             ; $602c: $07
	ret                                              ; $602d: $c9


	ld   [bc], a                                     ; $602e: $02
	ld   [bc], a                                     ; $602f: $02
	inc  bc                                          ; $6030: $03
	ld   bc, $2002                                   ; $6031: $01 $02 $20
	nop                                              ; $6034: $00
	ld   b, $02                                      ; $6035: $06 $02
	inc  bc                                          ; $6037: $03
	rrca                                             ; $6038: $0f
	nop                                              ; $6039: $00
	ld   bc, $5001                                   ; $603a: $01 $01 $50
	ld   a, b                                        ; $603d: $78
	and  b                                           ; $603e: $a0
	ld   d, b                                        ; $603f: $50
	ld   e, a                                        ; $6040: $5f
	sbc  c                                           ; $6041: $99
	and  c                                           ; $6042: $a1
	ld   [hl], l                                     ; $6043: $75
	ld   h, a                                        ; $6044: $67
	ld   a, e                                        ; $6045: $7b
	ld   sp, hl                                      ; $6046: $f9
	dec  c                                           ; $6047: $0d
	nop                                              ; $6048: $00
	ld   a, [bc]                                     ; $6049: $0a
	inc  e                                           ; $604a: $1c

jr_04c_604b:
	inc  bc                                          ; $604b: $03
	inc  bc                                          ; $604c: $03
	inc  bc                                          ; $604d: $03
	ld   bc, $546b                                   ; $604e: $01 $6b $54
	sub  [hl]                                        ; $6051: $96
	sbc  [hl]                                        ; $6052: $9e
	ld   a, b                                        ; $6053: $78
	ld   e, c                                        ; $6054: $59
	ld   a, b                                        ; $6055: $78
	ld   e, c                                        ; $6056: $59
	inc  bc                                          ; $6057: $03
	ld   h, l                                        ; $6058: $65
	inc  bc                                          ; $6059: $03
	ld   l, e                                        ; $605a: $6b
	ld   d, d                                        ; $605b: $52
	sbc  l                                           ; $605c: $9d
	ld   a, e                                        ; $605d: $7b
	sbc  a                                           ; $605e: $9f
	dec  c                                           ; $605f: $0d
	nop                                              ; $6060: $00
	ld   a, [bc]                                     ; $6061: $0a
	dec  b                                           ; $6062: $05
	ld   b, b                                        ; $6063: $40
	rst  $38                                         ; $6064: $ff
	inc  bc                                          ; $6065: $03
	rst  $38                                         ; $6066: $ff
	ld   bc, $2801                                   ; $6067: $01 $01 $28
	nop                                              ; $606a: $00
	ld   b, $26                                      ; $606b: $06 $26
	inc  bc                                          ; $606d: $03
	rrca                                             ; $606e: $0f
	nop                                              ; $606f: $00
	ld   bc, $b001                                   ; $6070: $01 $01 $b0
	xor  a                                           ; $6073: $af
	and  b                                           ; $6074: $a0
	ld   d, h                                        ; $6075: $54
	ld   [hl], d                                     ; $6076: $72
	and  c                                           ; $6077: $a1
	ld   [hl], l                                     ; $6078: $75
	ld   h, a                                        ; $6079: $67
	ld   a, e                                        ; $607a: $7b
	ld   sp, hl                                      ; $607b: $f9
	dec  c                                           ; $607c: $0d
	nop                                              ; $607d: $00
	ld   a, [bc]                                     ; $607e: $0a
	inc  e                                           ; $607f: $1c
	inc  bc                                          ; $6080: $03
	ld   b, $06                                      ; $6081: $06 $06
	ld   bc, $7454                                   ; $6083: $01 $54 $74
	sbc  c                                           ; $6086: $99
	sbc  l                                           ; $6087: $9d
	ld   e, a                                        ; $6088: $5f
	ld   a, b                                        ; $6089: $78
	ld   d, d                                        ; $608a: $52
	ld   [hl], l                                     ; $608b: $75
	ld   h, l                                        ; $608c: $65
	sub  l                                           ; $608d: $95
	ld   a, [$520d]                                  ; $608e: $fa $0d $52
	ld   d, d                                        ; $6091: $52
	sbc  l                                           ; $6092: $9d
	sbc  [hl]                                        ; $6093: $9e
	inc  bc                                          ; $6094: $03
	ret  z                                           ; $6095: $c8

	ld   e, d                                        ; $6096: $5a
	sub  d                                           ; $6097: $92
	sbc  c                                           ; $6098: $99
	ld   e, c                                        ; $6099: $59
	sub  a                                           ; $609a: $97
	sbc  a                                           ; $609b: $9f
	dec  c                                           ; $609c: $0d
	nop                                              ; $609d: $00
	ld   a, [bc]                                     ; $609e: $0a
	ld   b, $26                                      ; $609f: $06 $26
	inc  bc                                          ; $60a1: $03
	rrca                                             ; $60a2: $0f
	nop                                              ; $60a3: $00
	ld   bc, $0501                                   ; $60a4: $01 $01 $05
	sbc  a                                           ; $60a7: $9f
	inc  bc                                          ; $60a8: $03
	jr   nc, jr_04c_604b                             ; $60a9: $30 $a0

	inc  bc                                          ; $60ab: $03
	dec  de                                          ; $60ac: $1b
	sbc  c                                           ; $60ad: $99
	and  c                                           ; $60ae: $a1
	ld   [hl], l                                     ; $60af: $75
	ld   h, a                                        ; $60b0: $67
	ld   a, e                                        ; $60b1: $7b
	ld   sp, hl                                      ; $60b2: $f9
	dec  c                                           ; $60b3: $0d
	nop                                              ; $60b4: $00
	ld   a, [bc]                                     ; $60b5: $0a
	inc  e                                           ; $60b6: $1c
	inc  bc                                          ; $60b7: $03
	inc  b                                           ; $60b8: $04
	inc  b                                           ; $60b9: $04
	ld   bc, $1b03                                   ; $60ba: $01 $03 $1b
	sbc  d                                           ; $60bd: $9a
	sbc  c                                           ; $60be: $99
	sbc  l                                           ; $60bf: $9d
	ld   e, a                                        ; $60c0: $5f
	ld   a, b                                        ; $60c1: $78
	ld   d, d                                        ; $60c2: $52
	ld   [hl], l                                     ; $60c3: $75
	ld   h, l                                        ; $60c4: $65
	sub  l                                           ; $60c5: $95
	rst  $38                                         ; $60c6: $ff
	rst  $38                                         ; $60c7: $ff
	dec  c                                           ; $60c8: $0d
	ld   d, d                                        ; $60c9: $52
	ld   d, d                                        ; $60ca: $52
	sbc  l                                           ; $60cb: $9d
	sbc  [hl]                                        ; $60cc: $9e
	inc  bc                                          ; $60cd: $03
	ret  z                                           ; $60ce: $c8

	ld   e, d                                        ; $60cf: $5a
	sub  d                                           ; $60d0: $92
	sbc  c                                           ; $60d1: $99
	ld   e, c                                        ; $60d2: $59
	sub  a                                           ; $60d3: $97
	sbc  a                                           ; $60d4: $9f
	dec  c                                           ; $60d5: $0d
	nop                                              ; $60d6: $00
	ld   a, [bc]                                     ; $60d7: $0a
	ld   b, $26                                      ; $60d8: $06 $26
	inc  bc                                          ; $60da: $03
	inc  e                                           ; $60db: $1c
	inc  bc                                          ; $60dc: $03
	ld   [bc], a                                     ; $60dd: $02
	ld   [bc], a                                     ; $60de: $02
	ld   bc, $4904                                   ; $60df: $01 $04 $49
	and  b                                           ; $60e2: $a0
	adc  d                                           ; $60e3: $8a
	ei                                               ; $60e4: $fb
	ld   [hl], c                                     ; $60e5: $71
	halt                                             ; $60e6: $76
	ld   h, l                                        ; $60e7: $65
	ld   [hl], h                                     ; $60e8: $74
	sbc  c                                           ; $60e9: $99
	ld   a, h                                        ; $60ea: $7c
	ld   a, [$520d]                                  ; $60eb: $fa $0d $52
	ld   d, d                                        ; $60ee: $52
	sbc  l                                           ; $60ef: $9d
	sbc  [hl]                                        ; $60f0: $9e
	inc  bc                                          ; $60f1: $03
	ret  z                                           ; $60f2: $c8

	ld   e, d                                        ; $60f3: $5a
	sub  d                                           ; $60f4: $92
	sbc  c                                           ; $60f5: $99
	ld   e, c                                        ; $60f6: $59
	sub  a                                           ; $60f7: $97
	sbc  a                                           ; $60f8: $9f
	dec  c                                           ; $60f9: $0d
	nop                                              ; $60fa: $00
	ld   a, [bc]                                     ; $60fb: $0a
	ld   b, $26                                      ; $60fc: $06 $26
	inc  bc                                          ; $60fe: $03
	inc  e                                           ; $60ff: $1c
	inc  bc                                          ; $6100: $03
	nop                                              ; $6101: $00
	nop                                              ; $6102: $00
	ld   bc, $6803                                   ; $6103: $01 $03 $68
	ld   a, l                                        ; $6106: $7d
	ret  nc                                          ; $6107: $d0

	db   $ec                                         ; $6108: $ec
	xor  l                                           ; $6109: $ad
	adc  $a0                                         ; $610a: $ce $a0
	rst  $38                                         ; $610c: $ff
	rst  $38                                         ; $610d: $ff
	dec  c                                           ; $610e: $0d
	nop                                              ; $610f: $00
	ld   a, [bc]                                     ; $6110: $0a
	add  hl, de                                      ; $6111: $19
	dec  b                                           ; $6112: $05
	ld   [bc], a                                     ; $6113: $02
	ld   d, b                                        ; $6114: $50
	ld   a, b                                        ; $6115: $78
	ld   a, c                                        ; $6116: $79
	inc  bc                                          ; $6117: $03
	pop  hl                                          ; $6118: $e1
	ld   h, a                                        ; $6119: $67
	nop                                              ; $611a: $00
	nop                                              ; $611b: $00
	sub  [hl]                                        ; $611c: $96
	ld   h, [hl]                                     ; $611d: $66
	sbc  b                                           ; $611e: $98
	adc  h                                           ; $611f: $8c
	ld   e, l                                        ; $6120: $5d
	sbc  c                                           ; $6121: $99
	nop                                              ; $6122: $00
	ld   bc, $6007                                   ; $6123: $01 $07 $60
	inc  bc                                          ; $6126: $03
	ld   [bc], a                                     ; $6127: $02
	inc  bc                                          ; $6128: $03
	ld   bc, $2000                                   ; $6129: $01 $00 $20
	nop                                              ; $612c: $00
	rlca                                             ; $612d: $07
	or   d                                           ; $612e: $b2
	inc  bc                                          ; $612f: $03
	ld   [bc], a                                     ; $6130: $02
	inc  bc                                          ; $6131: $03
	ld   bc, $2001                                   ; $6132: $01 $01 $20
	nop                                              ; $6135: $00
	ld   b, $f2                                      ; $6136: $06 $f2
	inc  bc                                          ; $6138: $03
	rrca                                             ; $6139: $0f
	nop                                              ; $613a: $00
	ld   bc, $5001                                   ; $613b: $01 $01 $50
	ld   a, b                                        ; $613e: $78
	ld   a, c                                        ; $613f: $79
	inc  bc                                          ; $6140: $03
	pop  hl                                          ; $6141: $e1
	ld   h, a                                        ; $6142: $67
	and  c                                           ; $6143: $a1
	ld   [hl], l                                     ; $6144: $75
	ld   h, a                                        ; $6145: $67
	ld   a, e                                        ; $6146: $7b
	ld   sp, hl                                      ; $6147: $f9
	dec  c                                           ; $6148: $0d
	nop                                              ; $6149: $00
	ld   a, [bc]                                     ; $614a: $0a
	inc  e                                           ; $614b: $1c
	inc  bc                                          ; $614c: $03
	inc  bc                                          ; $614d: $03
	inc  bc                                          ; $614e: $03
	ld   bc, $546b                                   ; $614f: $01 $6b $54
	sub  [hl]                                        ; $6152: $96
	sbc  a                                           ; $6153: $9f
	dec  c                                           ; $6154: $0d
	ld   l, e                                        ; $6155: $6b
	ld   d, h                                        ; $6156: $54
	ld   h, l                                        ; $6157: $65
	ld   l, l                                        ; $6158: $6d
	sub  a                                           ; $6159: $97
	sbc  [hl]                                        ; $615a: $9e
	ld   h, c                                        ; $615b: $61
	ld   a, h                                        ; $615c: $7c
	dec  b                                           ; $615d: $05
	sbc  a                                           ; $615e: $9f
	inc  bc                                          ; $615f: $03
	jr   nc, jr_04c_61d8                             ; $6160: $30 $76

	dec  c                                           ; $6162: $0d
	nop                                              ; $6163: $00
	dec  b                                           ; $6164: $05
	ld   b, b                                        ; $6165: $40
	rst  $38                                         ; $6166: $ff
	inc  bc                                          ; $6167: $03
	rst  $38                                         ; $6168: $ff
	ld   bc, $2801                                   ; $6169: $01 $01 $28
	nop                                              ; $616c: $00
	ld   bc, $7152                                   ; $616d: $01 $52 $71
	ld   h, l                                        ; $6170: $65
	sub  l                                           ; $6171: $95
	ld   a, c                                        ; $6172: $79
	dec  b                                           ; $6173: $05
	adc  c                                           ; $6174: $89
	inc  bc                                          ; $6175: $03
	call nc, Call_04c_7465                           ; $6176: $d4 $65 $74
	ld   e, b                                        ; $6179: $58
	ld   d, d                                        ; $617a: $52
	ld   [hl], h                                     ; $617b: $74
	sbc  a                                           ; $617c: $9f
	dec  c                                           ; $617d: $0d
	nop                                              ; $617e: $00
	ld   a, [bc]                                     ; $617f: $0a
	dec  c                                           ; $6180: $0d
	nop                                              ; $6181: $00
	nop                                              ; $6182: $00
	rrca                                             ; $6183: $0f
	nop                                              ; $6184: $00
	ld   bc, $0b0c                                   ; $6185: $01 $0c $0b
	ld   b, $1e                                      ; $6188: $06 $1e
	inc  b                                           ; $618a: $04
	rrca                                             ; $618b: $0f
	nop                                              ; $618c: $00
	ld   bc, $9601                                   ; $618d: $01 $01 $96
	ld   h, [hl]                                     ; $6190: $66
	sbc  c                                           ; $6191: $99
	and  c                                           ; $6192: $a1
	ld   [hl], l                                     ; $6193: $75
	ld   h, a                                        ; $6194: $67
	ld   a, e                                        ; $6195: $7b
	sbc  a                                           ; $6196: $9f
	dec  c                                           ; $6197: $0d
	nop                                              ; $6198: $00
	ld   a, [bc]                                     ; $6199: $0a
	inc  e                                           ; $619a: $1c
	inc  bc                                          ; $619b: $03
	ld   [bc], a                                     ; $619c: $02
	ld   [bc], a                                     ; $619d: $02
	ld   bc, $6696                                   ; $619e: $01 $96 $66
	ld   [hl], c                                     ; $61a1: $71
	ld   l, l                                        ; $61a2: $6d
	sub  a                                           ; $61a3: $97
	dec  c                                           ; $61a4: $0d
	inc  bc                                          ; $61a5: $03
	xor  [hl]                                        ; $61a6: $ae
	ld   d, [hl]                                     ; $61a7: $56
	ld   a, b                                        ; $61a8: $78
	ld   e, l                                        ; $61a9: $5d
	ld   a, b                                        ; $61aa: $78
	sbc  c                                           ; $61ab: $99
	ld   [hl], l                                     ; $61ac: $75
	ld   h, l                                        ; $61ad: $65
	sub  l                                           ; $61ae: $95
	ld   a, [$520d]                                  ; $61af: $fa $0d $52
	ld   d, d                                        ; $61b2: $52
	sbc  l                                           ; $61b3: $9d
	sbc  [hl]                                        ; $61b4: $9e
	inc  bc                                          ; $61b5: $03
	ret  z                                           ; $61b6: $c8

	ld   e, d                                        ; $61b7: $5a
	sub  d                                           ; $61b8: $92
	sbc  c                                           ; $61b9: $99
	ld   e, c                                        ; $61ba: $59
	sub  a                                           ; $61bb: $97
	sbc  a                                           ; $61bc: $9f
	dec  c                                           ; $61bd: $0d
	nop                                              ; $61be: $00
	ld   a, [bc]                                     ; $61bf: $0a
	dec  c                                           ; $61c0: $0d
	nop                                              ; $61c1: $00
	nop                                              ; $61c2: $00
	rrca                                             ; $61c3: $0f
	nop                                              ; $61c4: $00
	ld   bc, $0b0c                                   ; $61c5: $01 $0c $0b
	ld   b, $1e                                      ; $61c8: $06 $1e
	inc  b                                           ; $61ca: $04
	inc  e                                           ; $61cb: $1c
	inc  bc                                          ; $61cc: $03
	ld   [bc], a                                     ; $61cd: $02
	ld   [bc], a                                     ; $61ce: $02
	ld   bc, $4904                                   ; $61cf: $01 $04 $49
	and  b                                           ; $61d2: $a0
	adc  d                                           ; $61d3: $8a
	ei                                               ; $61d4: $fb
	ld   [hl], c                                     ; $61d5: $71
	halt                                             ; $61d6: $76
	ld   h, l                                        ; $61d7: $65

jr_04c_61d8:
	ld   [hl], h                                     ; $61d8: $74
	sbc  c                                           ; $61d9: $99
	ld   a, h                                        ; $61da: $7c
	ld   a, [$520d]                                  ; $61db: $fa $0d $52
	ld   d, d                                        ; $61de: $52
	sbc  l                                           ; $61df: $9d
	sbc  [hl]                                        ; $61e0: $9e
	inc  bc                                          ; $61e1: $03
	ret  z                                           ; $61e2: $c8

	ld   e, d                                        ; $61e3: $5a
	sub  d                                           ; $61e4: $92
	sbc  c                                           ; $61e5: $99
	ld   e, c                                        ; $61e6: $59
	sub  a                                           ; $61e7: $97
	sbc  a                                           ; $61e8: $9f
	dec  c                                           ; $61e9: $0d
	nop                                              ; $61ea: $00
	ld   a, [bc]                                     ; $61eb: $0a
	dec  c                                           ; $61ec: $0d
	nop                                              ; $61ed: $00
	nop                                              ; $61ee: $00
	rrca                                             ; $61ef: $0f
	nop                                              ; $61f0: $00
	ld   bc, $0b0c                                   ; $61f1: $01 $0c $0b
	ld   b, $1e                                      ; $61f4: $06 $1e
	inc  b                                           ; $61f6: $04
	rlca                                             ; $61f7: $07
	add  hl, sp                                      ; $61f8: $39
	inc  b                                           ; $61f9: $04
	inc  bc                                          ; $61fa: $03
	rst  $38                                         ; $61fb: $ff
	ld   bc, $2003                                   ; $61fc: $01 $03 $20
	nop                                              ; $61ff: $00
	rlca                                             ; $6200: $07
	ld   [hl], b                                     ; $6201: $70
	inc  b                                           ; $6202: $04
	inc  bc                                          ; $6203: $03
	rst  $38                                         ; $6204: $ff
	ld   bc, $2002                                   ; $6205: $01 $02 $20
	nop                                              ; $6208: $00
	rlca                                             ; $6209: $07
	and  h                                           ; $620a: $a4
	inc  b                                           ; $620b: $04
	inc  bc                                          ; $620c: $03
	rst  $38                                         ; $620d: $ff
	ld   bc, $2301                                   ; $620e: $01 $01 $23
	nop                                              ; $6211: $00
	inc  e                                           ; $6212: $1c
	inc  bc                                          ; $6213: $03
	inc  bc                                          ; $6214: $03
	inc  bc                                          ; $6215: $03
	dec  e                                           ; $6216: $1d
	ld   b, b                                        ; $6217: $40
	inc  de                                          ; $6218: $13
	inc  bc                                          ; $6219: $03
	inc  de                                          ; $621a: $13
	ld   bc, $2803                                   ; $621b: $01 $03 $28
	nop                                              ; $621e: $00
	ld   bc, $0458                                   ; $621f: $01 $58 $04
	ld   a, e                                        ; $6222: $7b
	sbc  d                                           ; $6223: $9a
	ld   h, e                                        ; $6224: $63
	adc  h                                           ; $6225: $8c
	sbc  a                                           ; $6226: $9f
	dec  c                                           ; $6227: $0d
	ld   h, a                                        ; $6228: $67
	ld   h, d                                        ; $6229: $62
	ld   e, l                                        ; $622a: $5d
	inc  bc                                          ; $622b: $03
	ld   e, e                                        ; $622c: $5b
	ld   e, c                                        ; $622d: $59
	ld   [hl], c                                     ; $622e: $71
	ld   l, l                                        ; $622f: $6d
	sbc  l                                           ; $6230: $9d
	sbc  a                                           ; $6231: $9f
	dec  c                                           ; $6232: $0d
	nop                                              ; $6233: $00
	ld   a, [bc]                                     ; $6234: $0a
	rlca                                             ; $6235: $07
	add  hl, bc                                      ; $6236: $09
	ld   b, $04                                      ; $6237: $06 $04
	add  b                                           ; $6239: $80
	add  c                                           ; $623a: $81
	ld   bc, $20ff                                   ; $623b: $01 $ff $20
	nop                                              ; $623e: $00
	rlca                                             ; $623f: $07
	db   $db                                         ; $6240: $db
	inc  b                                           ; $6241: $04
	inc  b                                           ; $6242: $04
	add  b                                           ; $6243: $80
	add  c                                           ; $6244: $81
	ld   bc, $2000                                   ; $6245: $01 $00 $20
	nop                                              ; $6248: $00
	inc  e                                           ; $6249: $1c
	inc  bc                                          ; $624a: $03
	inc  bc                                          ; $624b: $03
	inc  bc                                          ; $624c: $03
	dec  e                                           ; $624d: $1d
	ld   b, b                                        ; $624e: $40
	inc  de                                          ; $624f: $13
	inc  bc                                          ; $6250: $03
	inc  de                                          ; $6251: $13
	ld   bc, $2801                                   ; $6252: $01 $01 $28
	nop                                              ; $6255: $00
	ld   bc, $0458                                   ; $6256: $01 $58 $04
	ld   a, e                                        ; $6259: $7b
	sbc  d                                           ; $625a: $9a
	ld   h, e                                        ; $625b: $63
	adc  h                                           ; $625c: $8c
	sbc  a                                           ; $625d: $9f
	dec  c                                           ; $625e: $0d
	sub  b                                           ; $625f: $90
	ld   d, h                                        ; $6260: $54
	ld   d, d                                        ; $6261: $52
	ld   d, d                                        ; $6262: $52
	sbc  l                                           ; $6263: $9d
	sub  [hl]                                        ; $6264: $96
	sbc  a                                           ; $6265: $9f
	dec  c                                           ; $6266: $0d
	nop                                              ; $6267: $00
	ld   a, [bc]                                     ; $6268: $0a
	rlca                                             ; $6269: $07
	add  hl, bc                                      ; $626a: $09
	ld   b, $04                                      ; $626b: $06 $04
	add  b                                           ; $626d: $80
	add  c                                           ; $626e: $81
	ld   bc, $20ff                                   ; $626f: $01 $ff $20
	nop                                              ; $6272: $00
	rlca                                             ; $6273: $07
	db   $db                                         ; $6274: $db
	inc  b                                           ; $6275: $04
	inc  b                                           ; $6276: $04
	add  b                                           ; $6277: $80
	add  c                                           ; $6278: $81
	ld   bc, $2000                                   ; $6279: $01 $00 $20
	nop                                              ; $627c: $00
	inc  e                                           ; $627d: $1c
	inc  bc                                          ; $627e: $03
	inc  b                                           ; $627f: $04
	inc  b                                           ; $6280: $04
	dec  e                                           ; $6281: $1d
	ld   b, b                                        ; $6282: $40
	inc  de                                          ; $6283: $13
	inc  bc                                          ; $6284: $03
	inc  de                                          ; $6285: $13
	ld   bc, $2901                                   ; $6286: $01 $01 $29
	nop                                              ; $6289: $00
	ld   bc, $7680                                   ; $628a: $01 $80 $76
	sbc  b                                           ; $628d: $98
	ld   [hl], l                                     ; $628e: $75
	sub  d                                           ; $628f: $92
	ld   [hl], c                                     ; $6290: $71
	ld   l, l                                        ; $6291: $6d
	inc  b                                           ; $6292: $04
	ld   a, b                                        ; $6293: $78
	ld   e, d                                        ; $6294: $5a
	dec  c                                           ; $6295: $0d
	inc  bc                                          ; $6296: $03
	ld   [hl], b                                     ; $6297: $70
	ld   e, c                                        ; $6298: $59
	ld   [hl], c                                     ; $6299: $71
	ld   l, l                                        ; $629a: $6d
	sbc  l                                           ; $629b: $9d
	sbc  a                                           ; $629c: $9f
	dec  c                                           ; $629d: $0d
	nop                                              ; $629e: $00
	ld   a, [bc]                                     ; $629f: $0a
	rlca                                             ; $62a0: $07
	add  hl, bc                                      ; $62a1: $09
	ld   b, $04                                      ; $62a2: $06 $04
	add  b                                           ; $62a4: $80
	add  c                                           ; $62a5: $81
	ld   bc, $20ff                                   ; $62a6: $01 $ff $20
	nop                                              ; $62a9: $00
	rlca                                             ; $62aa: $07
	db   $db                                         ; $62ab: $db
	inc  b                                           ; $62ac: $04
	inc  b                                           ; $62ad: $04
	add  b                                           ; $62ae: $80
	add  c                                           ; $62af: $81
	ld   bc, $2000                                   ; $62b0: $01 $00 $20
	nop                                              ; $62b3: $00
	inc  e                                           ; $62b4: $1c
	inc  bc                                          ; $62b5: $03
	inc  b                                           ; $62b6: $04
	inc  b                                           ; $62b7: $04
	ld   bc, $6176                                   ; $62b8: $01 $76 $61
	sbc  e                                           ; $62bb: $9b
	ld   [hl], l                                     ; $62bc: $75
	sbc  [hl]                                        ; $62bd: $9e
	ld   a, b                                        ; $62be: $78
	ld   l, d                                        ; $62bf: $6a
	inc  b                                           ; $62c0: $04
	ld   c, $04                                      ; $62c1: $0e $04
	ld   d, $02                                      ; $62c3: $16 $02
	xor  b                                           ; $62c5: $a8
	ld   e, d                                        ; $62c6: $5a
	dec  c                                           ; $62c7: $0d
	ld   h, c                                        ; $62c8: $61
	sbc  l                                           ; $62c9: $9d
	sbc  d                                           ; $62ca: $9a
	ld   [hl], h                                     ; $62cb: $74
	ld   l, l                                        ; $62cc: $6d
	ld   a, h                                        ; $62cd: $7c
	ld   e, c                                        ; $62ce: $59
	ld   h, l                                        ; $62cf: $65
	sub  a                                           ; $62d0: $97
	rst  $38                                         ; $62d1: $ff
	rst  $38                                         ; $62d2: $ff
	ld   sp, hl                                      ; $62d3: $f9
	dec  c                                           ; $62d4: $0d
	nop                                              ; $62d5: $00
	ld   a, [bc]                                     ; $62d6: $0a
	add  hl, de                                      ; $62d7: $19
	dec  b                                           ; $62d8: $05
	ld   [bc], a                                     ; $62d9: $02
	inc  bc                                          ; $62da: $03
	sub  h                                           ; $62db: $94
	inc  bc                                          ; $62dc: $03
	sbc  c                                           ; $62dd: $99
	ld   a, c                                        ; $62de: $79
	ld   l, l                                        ; $62df: $6d
	ld   e, b                                        ; $62e0: $58
	sbc  d                                           ; $62e1: $9a
	ld   l, l                                        ; $62e2: $6d
	halt                                             ; $62e3: $76
	ld   e, c                                        ; $62e4: $59
	ld   sp, hl                                      ; $62e5: $f9
	nop                                              ; $62e6: $00
	nop                                              ; $62e7: $00
	adc  $bb                                         ; $62e8: $ce $bb
	ldh  [$79], a                                    ; $62ea: $e0 $79
	sub  d                                           ; $62ec: $92
	sub  a                                           ; $62ed: $97
	sbc  d                                           ; $62ee: $9a
	ld   l, l                                        ; $62ef: $6d
	halt                                             ; $62f0: $76
	ld   e, c                                        ; $62f1: $59
	ld   sp, hl                                      ; $62f2: $f9
	nop                                              ; $62f3: $00
	ld   bc, $3107                                   ; $62f4: $01 $07 $31
	dec  b                                           ; $62f7: $05
	ld   [bc], a                                     ; $62f8: $02
	inc  bc                                          ; $62f9: $03
	ld   bc, $2000                                   ; $62fa: $01 $00 $20
	nop                                              ; $62fd: $00
	rlca                                             ; $62fe: $07
	sub  b                                           ; $62ff: $90
	dec  b                                           ; $6300: $05
	ld   [bc], a                                     ; $6301: $02
	inc  bc                                          ; $6302: $03
	ld   bc, $2001                                   ; $6303: $01 $01 $20
	nop                                              ; $6306: $00
	ld   b, $cb                                      ; $6307: $06 $cb
	dec  b                                           ; $6309: $05
	rrca                                             ; $630a: $0f
	nop                                              ; $630b: $00
	ld   bc, $0301                                   ; $630c: $01 $01 $03
	sub  h                                           ; $630f: $94
	inc  bc                                          ; $6310: $03
	sbc  c                                           ; $6311: $99
	ld   a, c                                        ; $6312: $79
	ld   l, l                                        ; $6313: $6d
	ld   e, b                                        ; $6314: $58
	sbc  d                                           ; $6315: $9a
	ld   l, l                                        ; $6316: $6d
	halt                                             ; $6317: $76
	ld   e, c                                        ; $6318: $59
	ld   sp, hl                                      ; $6319: $f9
	dec  c                                           ; $631a: $0d
	nop                                              ; $631b: $00
	ld   a, [bc]                                     ; $631c: $0a
	inc  e                                           ; $631d: $1c
	inc  bc                                          ; $631e: $03
	inc  b                                           ; $631f: $04
	inc  b                                           ; $6320: $04
	ld   bc, $546b                                   ; $6321: $01 $6b $54
	ld   a, e                                        ; $6324: $7b
	rst  $38                                         ; $6325: $ff
	rst  $38                                         ; $6326: $ff
	ld   [bc], a                                     ; $6327: $02
	and  l                                           ; $6328: $a5
	inc  b                                           ; $6329: $04
	add  hl, hl                                      ; $632a: $29
	ld   e, c                                        ; $632b: $59
	sub  a                                           ; $632c: $97
	dec  c                                           ; $632d: $0d
	ld   l, a                                        ; $632e: $6f
	sub  c                                           ; $632f: $91
	and  c                                           ; $6330: $a1
	halt                                             ; $6331: $76
	inc  b                                           ; $6332: $04
	or   h                                           ; $6333: $b4
	ld   [bc], a                                     ; $6334: $02
	ld   l, b                                        ; $6335: $68
	ld   h, l                                        ; $6336: $65
	ld   a, b                                        ; $6337: $78
	ld   d, d                                        ; $6338: $52
	halt                                             ; $6339: $76
	dec  c                                           ; $633a: $0d
	ld   d, d                                        ; $633b: $52
	ld   e, a                                        ; $633c: $5f
	ld   a, b                                        ; $633d: $78
	ld   d, d                                        ; $633e: $52
	sbc  l                                           ; $633f: $9d
	ld   a, e                                        ; $6340: $7b
	sbc  a                                           ; $6341: $9f
	dec  c                                           ; $6342: $0d
	nop                                              ; $6343: $00
	ld   a, [bc]                                     ; $6344: $0a
	inc  e                                           ; $6345: $1c
	inc  bc                                          ; $6346: $03
	nop                                              ; $6347: $00
	nop                                              ; $6348: $00
	ld   bc, $9166                                   ; $6349: $01 $66 $91
	sbc  [hl]                                        ; $634c: $9e
	ld   [$5d00], sp                                 ; $634d: $08 $00 $5d
	and  c                                           ; $6350: $a1
	sbc  a                                           ; $6351: $9f
	dec  c                                           ; $6352: $0d
	ld   e, b                                        ; $6353: $58
	inc  b                                           ; $6354: $04
	ld   a, e                                        ; $6355: $7b
	sbc  d                                           ; $6356: $9a
	ld   h, e                                        ; $6357: $63
	adc  h                                           ; $6358: $8c
	ld   [hl], l                                     ; $6359: $75
	ld   h, l                                        ; $635a: $65
	ld   l, l                                        ; $635b: $6d
	sbc  a                                           ; $635c: $9f
	dec  c                                           ; $635d: $0d
	nop                                              ; $635e: $00
	ld   a, [bc]                                     ; $635f: $0a
	dec  c                                           ; $6360: $0d
	nop                                              ; $6361: $00
	nop                                              ; $6362: $00
	rrca                                             ; $6363: $0f
	nop                                              ; $6364: $00
	ld   bc, $1e09                                   ; $6365: $01 $09 $1e
	nop                                              ; $6368: $00
	rrca                                             ; $6369: $0f
	nop                                              ; $636a: $00
	ld   bc, $ce01                                   ; $636b: $01 $01 $ce
	cp   e                                           ; $636e: $bb
	ldh  [$79], a                                    ; $636f: $e0 $79
	sub  d                                           ; $6371: $92
	sub  a                                           ; $6372: $97
	sbc  d                                           ; $6373: $9a
	ld   l, l                                        ; $6374: $6d
	halt                                             ; $6375: $76
	ld   e, c                                        ; $6376: $59
	ld   sp, hl                                      ; $6377: $f9
	dec  c                                           ; $6378: $0d
	nop                                              ; $6379: $00
	ld   a, [bc]                                     ; $637a: $0a
	inc  e                                           ; $637b: $1c
	inc  bc                                          ; $637c: $03

Jump_04c_637d:
	inc  b                                           ; $637d: $04
	inc  b                                           ; $637e: $04
	dec  e                                           ; $637f: $1d
	ld   b, b                                        ; $6380: $40
	inc  de                                          ; $6381: $13
	inc  bc                                          ; $6382: $03
	inc  de                                          ; $6383: $13
	ld   bc, $2901                                   ; $6384: $01 $01 $29
	nop                                              ; $6387: $00
	ld   bc, $bbce                                   ; $6388: $01 $ce $bb
	ldh  [$5a], a                                    ; $638b: $e0 $5a
	inc  b                                           ; $638d: $04
	ld   c, $04                                      ; $638e: $0e $04
	ld   d, $02                                      ; $6390: $16 $02
	xor  b                                           ; $6392: $a8
	and  b                                           ; $6393: $a0
	dec  c                                           ; $6394: $0d
	ld   h, c                                        ; $6395: $61
	sbc  l                                           ; $6396: $9d
	ld   h, a                                        ; $6397: $67
	sbc  l                                           ; $6398: $9d
	ld   e, a                                        ; $6399: $5f
	ld   a, b                                        ; $639a: $78
	ld   d, d                                        ; $639b: $52
	ld   [hl], l                                     ; $639c: $75
	ld   h, l                                        ; $639d: $65
	sub  l                                           ; $639e: $95
	rst  $38                                         ; $639f: $ff
	rst  $38                                         ; $63a0: $ff
	dec  c                                           ; $63a1: $0d
	nop                                              ; $63a2: $00
	ld   a, [bc]                                     ; $63a3: $0a
	inc  e                                           ; $63a4: $1c
	inc  bc                                          ; $63a5: $03
	inc  b                                           ; $63a6: $04
	inc  b                                           ; $63a7: $04
	ld   bc, $9e8c                                   ; $63a8: $01 $8c $9e
	ld   d, d                                        ; $63ab: $52
	ld   d, d                                        ; $63ac: $52
	sbc  l                                           ; $63ad: $9d
	sbc  a                                           ; $63ae: $9f
	dec  c                                           ; $63af: $0d
	ld   [bc], a                                     ; $63b0: $02
	xor  d                                           ; $63b1: $aa
	ld   [hl], l                                     ; $63b2: $75
	inc  bc                                          ; $63b3: $03
	cp   $87                                         ; $63b4: $fe $87
	sbc  c                                           ; $63b6: $99
	ld   e, c                                        ; $63b7: $59
	sub  a                                           ; $63b8: $97
	rst  $38                                         ; $63b9: $ff
	rst  $38                                         ; $63ba: $ff
	dec  c                                           ; $63bb: $0d
	nop                                              ; $63bc: $00
	ld   a, [bc]                                     ; $63bd: $0a
	inc  e                                           ; $63be: $1c
	inc  bc                                          ; $63bf: $03
	nop                                              ; $63c0: $00
	nop                                              ; $63c1: $00
	ld   bc, $9166                                   ; $63c2: $01 $66 $91
	sbc  [hl]                                        ; $63c5: $9e
	ld   [$5d00], sp                                 ; $63c6: $08 $00 $5d
	and  c                                           ; $63c9: $a1
	sbc  a                                           ; $63ca: $9f
	dec  c                                           ; $63cb: $0d
	ld   e, b                                        ; $63cc: $58
	inc  b                                           ; $63cd: $04
	ld   a, e                                        ; $63ce: $7b
	sbc  d                                           ; $63cf: $9a
	ld   h, e                                        ; $63d0: $63
	adc  h                                           ; $63d1: $8c
	ld   [hl], l                                     ; $63d2: $75
	ld   h, l                                        ; $63d3: $65
	ld   l, l                                        ; $63d4: $6d
	sbc  a                                           ; $63d5: $9f
	dec  c                                           ; $63d6: $0d
	nop                                              ; $63d7: $00
	ld   a, [bc]                                     ; $63d8: $0a
	dec  c                                           ; $63d9: $0d
	nop                                              ; $63da: $00
	nop                                              ; $63db: $00
	rrca                                             ; $63dc: $0f
	nop                                              ; $63dd: $00
	ld   bc, $1e09                                   ; $63de: $01 $09 $1e
	nop                                              ; $63e1: $00
	inc  e                                           ; $63e2: $1c
	inc  bc                                          ; $63e3: $03
	inc  b                                           ; $63e4: $04
	inc  b                                           ; $63e5: $04
	ld   bc, $6176                                   ; $63e6: $01 $76 $61
	sbc  e                                           ; $63e9: $9b
	ld   [hl], l                                     ; $63ea: $75
	sbc  [hl]                                        ; $63eb: $9e
	ld   a, b                                        ; $63ec: $78
	ld   l, d                                        ; $63ed: $6a
	inc  b                                           ; $63ee: $04
	ld   c, $04                                      ; $63ef: $0e $04
	ld   d, $02                                      ; $63f1: $16 $02
	xor  b                                           ; $63f3: $a8
	ld   e, d                                        ; $63f4: $5a
	dec  c                                           ; $63f5: $0d
	ld   h, c                                        ; $63f6: $61
	sbc  l                                           ; $63f7: $9d
	sbc  d                                           ; $63f8: $9a
	ld   [hl], h                                     ; $63f9: $74
	ld   l, l                                        ; $63fa: $6d
	ld   a, h                                        ; $63fb: $7c
	ld   e, c                                        ; $63fc: $59
	ld   h, l                                        ; $63fd: $65
	sub  a                                           ; $63fe: $97
	rst  $38                                         ; $63ff: $ff
	rst  $38                                         ; $6400: $ff
	ld   sp, hl                                      ; $6401: $f9
	dec  c                                           ; $6402: $0d
	nop                                              ; $6403: $00
	ld   a, [bc]                                     ; $6404: $0a
	add  hl, de                                      ; $6405: $19
	dec  b                                           ; $6406: $05
	inc  bc                                          ; $6407: $03
	inc  bc                                          ; $6408: $03
	sub  h                                           ; $6409: $94
	inc  bc                                          ; $640a: $03
	sbc  c                                           ; $640b: $99
	ld   a, c                                        ; $640c: $79
	ld   l, l                                        ; $640d: $6d
	ld   e, b                                        ; $640e: $58
	sbc  d                                           ; $640f: $9a
	ld   l, l                                        ; $6410: $6d
	halt                                             ; $6411: $76
	ld   e, c                                        ; $6412: $59
	ld   sp, hl                                      ; $6413: $f9
	nop                                              ; $6414: $00
	nop                                              ; $6415: $00
	adc  $bb                                         ; $6416: $ce $bb
	ldh  [$79], a                                    ; $6418: $e0 $79
	sub  d                                           ; $641a: $92
	sub  a                                           ; $641b: $97
	sbc  d                                           ; $641c: $9a
	ld   l, l                                        ; $641d: $6d
	halt                                             ; $641e: $76
	ld   e, c                                        ; $641f: $59
	ld   sp, hl                                      ; $6420: $f9
	nop                                              ; $6421: $00
	ld   bc, $8b03                                   ; $6422: $01 $03 $8b
	ld   a, l                                        ; $6425: $7d
	rst  $38                                         ; $6426: $ff
	rst  $38                                         ; $6427: $ff
	nop                                              ; $6428: $00
	ld   [bc], a                                     ; $6429: $02
	rlca                                             ; $642a: $07
	ld   l, a                                        ; $642b: $6f
	ld   b, $02                                      ; $642c: $06 $02
	inc  bc                                          ; $642e: $03
	ld   bc, $2000                                   ; $642f: $01 $00 $20
	nop                                              ; $6432: $00
	rlca                                             ; $6433: $07
	adc  $06                                         ; $6434: $ce $06
	ld   [bc], a                                     ; $6436: $02
	inc  bc                                          ; $6437: $03
	ld   bc, $2001                                   ; $6438: $01 $01 $20
	nop                                              ; $643b: $00
	rlca                                             ; $643c: $07
	ld   b, a                                        ; $643d: $47
	rlca                                             ; $643e: $07
	ld   [bc], a                                     ; $643f: $02
	inc  bc                                          ; $6440: $03
	ld   bc, $2002                                   ; $6441: $01 $02 $20
	nop                                              ; $6444: $00
	ld   b, $09                                      ; $6445: $06 $09
	rlca                                             ; $6447: $07
	rrca                                             ; $6448: $0f
	nop                                              ; $6449: $00
	ld   bc, $0301                                   ; $644a: $01 $01 $03
	sub  h                                           ; $644d: $94
	inc  bc                                          ; $644e: $03
	sbc  c                                           ; $644f: $99
	ld   a, c                                        ; $6450: $79
	ld   l, l                                        ; $6451: $6d
	ld   e, b                                        ; $6452: $58
	sbc  d                                           ; $6453: $9a
	ld   l, l                                        ; $6454: $6d
	halt                                             ; $6455: $76
	ld   e, c                                        ; $6456: $59
	ld   sp, hl                                      ; $6457: $f9
	dec  c                                           ; $6458: $0d
	nop                                              ; $6459: $00
	ld   a, [bc]                                     ; $645a: $0a
	inc  e                                           ; $645b: $1c
	inc  bc                                          ; $645c: $03
	inc  b                                           ; $645d: $04
	inc  b                                           ; $645e: $04
	ld   bc, $546b                                   ; $645f: $01 $6b $54
	ld   a, e                                        ; $6462: $7b
	rst  $38                                         ; $6463: $ff
	rst  $38                                         ; $6464: $ff
	ld   [bc], a                                     ; $6465: $02
	and  l                                           ; $6466: $a5
	inc  b                                           ; $6467: $04
	add  hl, hl                                      ; $6468: $29
	ld   e, c                                        ; $6469: $59
	sub  a                                           ; $646a: $97
	dec  c                                           ; $646b: $0d
	ld   l, a                                        ; $646c: $6f
	sub  c                                           ; $646d: $91
	and  c                                           ; $646e: $a1
	halt                                             ; $646f: $76
	inc  b                                           ; $6470: $04
	or   h                                           ; $6471: $b4
	ld   [bc], a                                     ; $6472: $02
	ld   l, b                                        ; $6473: $68
	ld   h, l                                        ; $6474: $65
	ld   a, b                                        ; $6475: $78
	ld   d, d                                        ; $6476: $52
	halt                                             ; $6477: $76
	dec  c                                           ; $6478: $0d
	ld   d, d                                        ; $6479: $52
	ld   e, a                                        ; $647a: $5f
	ld   a, b                                        ; $647b: $78
	ld   d, d                                        ; $647c: $52
	sbc  l                                           ; $647d: $9d
	ld   a, e                                        ; $647e: $7b
	sbc  a                                           ; $647f: $9f
	dec  c                                           ; $6480: $0d
	nop                                              ; $6481: $00
	ld   a, [bc]                                     ; $6482: $0a
	inc  e                                           ; $6483: $1c
	inc  bc                                          ; $6484: $03
	nop                                              ; $6485: $00
	nop                                              ; $6486: $00
	ld   bc, $9166                                   ; $6487: $01 $66 $91
	sbc  [hl]                                        ; $648a: $9e
	ld   [$5d00], sp                                 ; $648b: $08 $00 $5d
	and  c                                           ; $648e: $a1
	sbc  a                                           ; $648f: $9f
	dec  c                                           ; $6490: $0d
	ld   e, b                                        ; $6491: $58
	inc  b                                           ; $6492: $04
	ld   a, e                                        ; $6493: $7b
	sbc  d                                           ; $6494: $9a
	ld   h, e                                        ; $6495: $63
	adc  h                                           ; $6496: $8c
	ld   [hl], l                                     ; $6497: $75
	ld   h, l                                        ; $6498: $65
	ld   l, l                                        ; $6499: $6d
	sbc  a                                           ; $649a: $9f
	dec  c                                           ; $649b: $0d
	nop                                              ; $649c: $00
	ld   a, [bc]                                     ; $649d: $0a
	dec  c                                           ; $649e: $0d
	nop                                              ; $649f: $00
	nop                                              ; $64a0: $00
	rrca                                             ; $64a1: $0f
	nop                                              ; $64a2: $00
	ld   bc, $1e09                                   ; $64a3: $01 $09 $1e
	nop                                              ; $64a6: $00
	rrca                                             ; $64a7: $0f
	nop                                              ; $64a8: $00
	ld   bc, $ce01                                   ; $64a9: $01 $01 $ce
	cp   e                                           ; $64ac: $bb
	ldh  [$79], a                                    ; $64ad: $e0 $79
	sub  d                                           ; $64af: $92
	sub  a                                           ; $64b0: $97
	sbc  d                                           ; $64b1: $9a
	ld   l, l                                        ; $64b2: $6d
	halt                                             ; $64b3: $76
	ld   e, c                                        ; $64b4: $59
	ld   sp, hl                                      ; $64b5: $f9
	dec  c                                           ; $64b6: $0d
	nop                                              ; $64b7: $00
	ld   a, [bc]                                     ; $64b8: $0a
	inc  e                                           ; $64b9: $1c
	inc  bc                                          ; $64ba: $03
	inc  b                                           ; $64bb: $04
	inc  b                                           ; $64bc: $04
	dec  e                                           ; $64bd: $1d
	ld   b, b                                        ; $64be: $40
	inc  de                                          ; $64bf: $13
	inc  bc                                          ; $64c0: $03
	inc  de                                          ; $64c1: $13
	ld   bc, $2901                                   ; $64c2: $01 $01 $29
	nop                                              ; $64c5: $00
	ld   bc, $bbce                                   ; $64c6: $01 $ce $bb
	ldh  [$5a], a                                    ; $64c9: $e0 $5a
	inc  b                                           ; $64cb: $04
	ld   c, $04                                      ; $64cc: $0e $04
	ld   d, $02                                      ; $64ce: $16 $02
	xor  b                                           ; $64d0: $a8
	and  b                                           ; $64d1: $a0
	dec  c                                           ; $64d2: $0d
	ld   h, c                                        ; $64d3: $61
	sbc  l                                           ; $64d4: $9d
	ld   h, a                                        ; $64d5: $67
	sbc  l                                           ; $64d6: $9d
	ld   e, a                                        ; $64d7: $5f
	ld   a, b                                        ; $64d8: $78
	ld   d, d                                        ; $64d9: $52
	ld   [hl], l                                     ; $64da: $75
	ld   h, l                                        ; $64db: $65
	sub  l                                           ; $64dc: $95
	rst  $38                                         ; $64dd: $ff
	rst  $38                                         ; $64de: $ff
	dec  c                                           ; $64df: $0d
	nop                                              ; $64e0: $00
	ld   a, [bc]                                     ; $64e1: $0a
	inc  e                                           ; $64e2: $1c
	inc  bc                                          ; $64e3: $03
	inc  b                                           ; $64e4: $04
	inc  b                                           ; $64e5: $04
	ld   bc, $9e8c                                   ; $64e6: $01 $8c $9e
	ld   d, d                                        ; $64e9: $52
	ld   d, d                                        ; $64ea: $52
	sbc  l                                           ; $64eb: $9d
	sbc  a                                           ; $64ec: $9f
	dec  c                                           ; $64ed: $0d
	ld   [bc], a                                     ; $64ee: $02
	xor  d                                           ; $64ef: $aa
	ld   [hl], l                                     ; $64f0: $75
	inc  bc                                          ; $64f1: $03
	cp   $87                                         ; $64f2: $fe $87
	sbc  c                                           ; $64f4: $99
	ld   e, c                                        ; $64f5: $59
	sub  a                                           ; $64f6: $97
	rst  $38                                         ; $64f7: $ff
	rst  $38                                         ; $64f8: $ff
	dec  c                                           ; $64f9: $0d
	nop                                              ; $64fa: $00
	ld   a, [bc]                                     ; $64fb: $0a
	inc  e                                           ; $64fc: $1c
	inc  bc                                          ; $64fd: $03
	nop                                              ; $64fe: $00
	nop                                              ; $64ff: $00
	ld   bc, $9166                                   ; $6500: $01 $66 $91
	sbc  [hl]                                        ; $6503: $9e
	ld   [$5d00], sp                                 ; $6504: $08 $00 $5d
	and  c                                           ; $6507: $a1
	sbc  a                                           ; $6508: $9f
	dec  c                                           ; $6509: $0d
	ld   e, b                                        ; $650a: $58
	inc  b                                           ; $650b: $04
	ld   a, e                                        ; $650c: $7b
	sbc  d                                           ; $650d: $9a
	ld   h, e                                        ; $650e: $63
	adc  h                                           ; $650f: $8c
	ld   [hl], l                                     ; $6510: $75
	ld   h, l                                        ; $6511: $65
	ld   l, l                                        ; $6512: $6d
	sbc  a                                           ; $6513: $9f
	dec  c                                           ; $6514: $0d
	nop                                              ; $6515: $00
	ld   a, [bc]                                     ; $6516: $0a
	dec  c                                           ; $6517: $0d
	nop                                              ; $6518: $00
	nop                                              ; $6519: $00
	rrca                                             ; $651a: $0f
	nop                                              ; $651b: $00
	ld   bc, $1e09                                   ; $651c: $01 $09 $1e
	nop                                              ; $651f: $00
	rrca                                             ; $6520: $0f
	nop                                              ; $6521: $00
	ld   bc, $0301                                   ; $6522: $01 $01 $03
	adc  e                                           ; $6525: $8b
	ld   a, l                                        ; $6526: $7d
	rst  $38                                         ; $6527: $ff
	rst  $38                                         ; $6528: $ff
	dec  c                                           ; $6529: $0d
	xor  h                                           ; $652a: $ac
	push af                                          ; $652b: $f5
	bit  4, e                                        ; $652c: $cb $63
	and  c                                           ; $652e: $a1
	ld   e, d                                        ; $652f: $5a
	ld   h, c                                        ; $6530: $61
	sbc  l                                           ; $6531: $9d
	ld   h, l                                        ; $6532: $65
	ld   l, l                                        ; $6533: $6d
	and  c                                           ; $6534: $a1
	ld   [hl], l                                     ; $6535: $75
	ld   h, a                                        ; $6536: $67
	sbc  a                                           ; $6537: $9f
	dec  c                                           ; $6538: $0d
	nop                                              ; $6539: $00
	ld   a, [bc]                                     ; $653a: $0a
	inc  e                                           ; $653b: $1c
	inc  bc                                          ; $653c: $03
	inc  b                                           ; $653d: $04
	inc  b                                           ; $653e: $04
	ld   bc, $f5ac                                   ; $653f: $01 $ac $f5
	bit  3, d                                        ; $6542: $cb $5a
	ld   sp, hl                                      ; $6544: $f9
	dec  c                                           ; $6545: $0d
	sub  b                                           ; $6546: $90
	ld   d, h                                        ; $6547: $54
	rst  $38                                         ; $6548: $ff
	rst  $38                                         ; $6549: $ff
	ld   h, l                                        ; $654a: $65
	ld   e, c                                        ; $654b: $59
	ld   l, l                                        ; $654c: $6d
	ld   a, b                                        ; $654d: $78
	ld   d, d                                        ; $654e: $52
	sbc  l                                           ; $654f: $9d
	ld   a, e                                        ; $6550: $7b
	sbc  a                                           ; $6551: $9f
	dec  c                                           ; $6552: $0d
	ld   [bc], a                                     ; $6553: $02
	xor  d                                           ; $6554: $aa
	ld   [hl], l                                     ; $6555: $75
	inc  bc                                          ; $6556: $03
	and  $02                                         ; $6557: $e6 $02
	ld   b, $65                                      ; $6559: $06 $65
	ld   [hl], h                                     ; $655b: $74
	ld   e, b                                        ; $655c: $58
	ld   e, l                                        ; $655d: $5d
	sbc  l                                           ; $655e: $9d
	sbc  a                                           ; $655f: $9f
	dec  c                                           ; $6560: $0d
	nop                                              ; $6561: $00
	ld   a, [bc]                                     ; $6562: $0a
	inc  e                                           ; $6563: $1c
	inc  bc                                          ; $6564: $03
	nop                                              ; $6565: $00
	nop                                              ; $6566: $00
	ld   bc, $9166                                   ; $6567: $01 $66 $91
	sbc  [hl]                                        ; $656a: $9e
	ld   [$5d00], sp                                 ; $656b: $08 $00 $5d
	and  c                                           ; $656e: $a1
	sbc  a                                           ; $656f: $9f
	dec  c                                           ; $6570: $0d
	ld   e, b                                        ; $6571: $58
	inc  b                                           ; $6572: $04
	ld   a, e                                        ; $6573: $7b
	sbc  d                                           ; $6574: $9a
	ld   h, e                                        ; $6575: $63
	adc  h                                           ; $6576: $8c
	ld   [hl], l                                     ; $6577: $75
	ld   h, l                                        ; $6578: $65
	ld   l, l                                        ; $6579: $6d
	sbc  a                                           ; $657a: $9f
	dec  c                                           ; $657b: $0d
	nop                                              ; $657c: $00
	ld   a, [bc]                                     ; $657d: $0a
	dec  c                                           ; $657e: $0d
	nop                                              ; $657f: $00
	nop                                              ; $6580: $00
	rrca                                             ; $6581: $0f
	nop                                              ; $6582: $00
	ld   bc, $1e09                                   ; $6583: $01 $09 $1e
	nop                                              ; $6586: $00
	nop                                              ; $6587: $00
	inc  e                                           ; $6588: $1c
	inc  b                                           ; $6589: $04
	ld   bc, $0201                                   ; $658a: $01 $01 $02
	dec  b                                           ; $658d: $05
	add  b                                           ; $658e: $80
	call nz, $0101                                   ; $658f: $c4 $01 $01
	nop                                              ; $6592: $00
	ld   bc, $9e50                                   ; $6593: $01 $50 $9e
	ld   l, a                                        ; $6596: $6f
	ld   d, d                                        ; $6597: $52
	ld   [bc], a                                     ; $6598: $02
	inc  de                                          ; $6599: $13
	ld   l, a                                        ; $659a: $6f
	sub  c                                           ; $659b: $91
	and  c                                           ; $659c: $a1
	ld   a, [$500d]                                  ; $659d: $fa $0d $50
	ei                                               ; $65a0: $fb
	ld   l, e                                        ; $65a1: $6b
	ei                                               ; $65a2: $fb
	adc  d                                           ; $65a3: $8a
	ei                                               ; $65a4: $fb
	ld   a, [$000d]                                  ; $65a5: $fa $0d $00
	ld   a, [bc]                                     ; $65a8: $0a
	add  hl, de                                      ; $65a9: $19
	dec  b                                           ; $65aa: $05
	inc  bc                                          ; $65ab: $03
	ld   h, l                                        ; $65ac: $65
	sbc  b                                           ; $65ad: $98
	halt                                             ; $65ae: $76
	sbc  b                                           ; $65af: $98
	nop                                              ; $65b0: $00
	nop                                              ; $65b1: $00
	or   b                                           ; $65b2: $b0
	and  l                                           ; $65b3: $a5
	cp   e                                           ; $65b4: $bb
	nop                                              ; $65b5: $00
	ld   bc, $9166                                   ; $65b6: $01 $66 $91
	and  c                                           ; $65b9: $a1
	ld   e, a                                        ; $65ba: $5f
	and  c                                           ; $65bb: $a1
	nop                                              ; $65bc: $00
	ld   [bc], a                                     ; $65bd: $02
	rlca                                             ; $65be: $07
	adc  c                                           ; $65bf: $89
	nop                                              ; $65c0: $00
	ld   [bc], a                                     ; $65c1: $02
	inc  bc                                          ; $65c2: $03
	ld   bc, $2000                                   ; $65c3: $01 $00 $20
	nop                                              ; $65c6: $00
	rlca                                             ; $65c7: $07
	jp   $0203                                       ; $65c8: $c3 $03 $02


	inc  bc                                          ; $65cb: $03
	ld   bc, $2001                                   ; $65cc: $01 $01 $20
	nop                                              ; $65cf: $00
	rlca                                             ; $65d0: $07
	ldh  a, [c]                                      ; $65d1: $f2
	ld   b, $02                                      ; $65d2: $06 $02
	inc  bc                                          ; $65d4: $03
	ld   bc, $2002                                   ; $65d5: $01 $02 $20
	nop                                              ; $65d8: $00
	ld   b, $54                                      ; $65d9: $06 $54
	nop                                              ; $65db: $00
	inc  e                                           ; $65dc: $1c
	inc  b                                           ; $65dd: $04
	rlca                                             ; $65de: $07
	rlca                                             ; $65df: $07
	dec  e                                           ; $65e0: $1d
	ld   b, b                                        ; $65e1: $40
	inc  d                                           ; $65e2: $14
	inc  bc                                          ; $65e3: $03
	inc  d                                           ; $65e4: $14
	ld   bc, $2902                                   ; $65e5: $01 $02 $29
	nop                                              ; $65e8: $00
	ld   bc, $9e50                                   ; $65e9: $01 $50 $9e
	and  l                                           ; $65ec: $a5
	and  $6b                                         ; $65ed: $e6 $6b
	ld   d, h                                        ; $65ef: $54
	ld   a, b                                        ; $65f0: $78
	ld   e, c                                        ; $65f1: $59
	ld   e, b                                        ; $65f2: $58
	ld   h, l                                        ; $65f3: $65
	ld   [hl], h                                     ; $65f4: $74

Jump_04c_65f5:
	sbc  c                                           ; $65f5: $99
	rst  $38                                         ; $65f6: $ff
	rst  $38                                         ; $65f7: $ff
	dec  c                                           ; $65f8: $0d
	nop                                              ; $65f9: $00
	ld   a, [bc]                                     ; $65fa: $0a
	ld   bc, $5490                                   ; $65fb: $01 $90 $54
	ld   d, d                                        ; $65fe: $52
	ld   d, d                                        ; $65ff: $52
	ld   a, [$520d]                                  ; $6600: $fa $0d $52
	ld   h, c                                        ; $6603: $61
	ld   d, h                                        ; $6604: $54
	sbc  [hl]                                        ; $6605: $9e
	cp   c                                           ; $6606: $b9
	push hl                                          ; $6607: $e5
	push af                                          ; $6608: $f5
	sbc  $fb                                         ; $6609: $de $fb
	db   $ed                                         ; $660b: $ed
	sbc  a                                           ; $660c: $9f
	dec  c                                           ; $660d: $0d
	nop                                              ; $660e: $00
	ld   a, [bc]                                     ; $660f: $0a
	nop                                              ; $6610: $00
	rrca                                             ; $6611: $0f
	nop                                              ; $6612: $00
	ld   bc, $6601                                   ; $6613: $01 $01 $66
	sub  c                                           ; $6616: $91
	ld   d, b                                        ; $6617: $50
	sbc  [hl]                                        ; $6618: $9e
	ld   h, l                                        ; $6619: $65
	sbc  b                                           ; $661a: $98
	halt                                             ; $661b: $76
	sbc  b                                           ; $661c: $98
	and  b                                           ; $661d: $a0
	sub  d                                           ; $661e: $92
	sbc  e                                           ; $661f: $9b
	ld   d, h                                        ; $6620: $54
	sbc  a                                           ; $6621: $9f
	dec  c                                           ; $6622: $0d
	nop                                              ; $6623: $00
	ld   a, [bc]                                     ; $6624: $0a
	dec  b                                           ; $6625: $05
	add  b                                           ; $6626: $80
	ld   b, l                                        ; $6627: $45
	ld   bc, $0001                                   ; $6628: $01 $01 $00
	inc  e                                           ; $662b: $1c
	inc  b                                           ; $662c: $04
	nop                                              ; $662d: $00
	nop                                              ; $662e: $00
	ld   bc, $a154                                   ; $662f: $01 $54 $a1
	sbc  [hl]                                        ; $6632: $9e
	ld   d, d                                        ; $6633: $52
	ld   d, d                                        ; $6634: $52
	sub  [hl]                                        ; $6635: $96
	sbc  a                                           ; $6636: $9f
	dec  c                                           ; $6637: $0d
	ld   h, [hl]                                     ; $6638: $66
	sub  c                                           ; $6639: $91
	sbc  [hl]                                        ; $663a: $9e
	and  e                                           ; $663b: $a3
	and  l                                           ; $663c: $a5
	db   $ec                                         ; $663d: $ec
	cp   d                                           ; $663e: $ba
	ld   e, c                                        ; $663f: $59
	sub  a                                           ; $6640: $97
	ld   a, e                                        ; $6641: $7b
	sbc  a                                           ; $6642: $9f
	dec  c                                           ; $6643: $0d
	ld   h, e                                        ; $6644: $63
	ld   d, d                                        ; $6645: $52
	ld   h, l                                        ; $6646: $65
	sub  l                                           ; $6647: $95
	ld   a, l                                        ; $6648: $7d
	ld   bc, $a307                                   ; $6649: $01 $07 $a3
	and  l                                           ; $664c: $a5
	db   $ec                                         ; $664d: $ec
	cp   d                                           ; $664e: $ba
	ld   bc, $6e08                                   ; $664f: $01 $08 $6e
	sub  [hl]                                        ; $6652: $96
	sbc  a                                           ; $6653: $9f
	dec  c                                           ; $6654: $0d
	nop                                              ; $6655: $00
	ld   a, [bc]                                     ; $6656: $0a
	add  hl, de                                      ; $6657: $19
	dec  b                                           ; $6658: $05
	inc  bc                                          ; $6659: $03
	cp   d                                           ; $665a: $ba
	and  l                                           ; $665b: $a5
	xor  h                                           ; $665c: $ac
	nop                                              ; $665d: $00
	nop                                              ; $665e: $00
	cp   d                                           ; $665f: $ba
	pop  af                                          ; $6660: $f1
	push af                                          ; $6661: $f5
	nop                                              ; $6662: $00
	ld   bc, $c9ba                                   ; $6663: $01 $ba $c9
	ei                                               ; $6666: $fb
	push af                                          ; $6667: $f5
	nop                                              ; $6668: $00
	ld   [bc], a                                     ; $6669: $02
	rlca                                             ; $666a: $07
	ld   b, h                                        ; $666b: $44
	ld   bc, $0302                                   ; $666c: $01 $02 $03
	ld   bc, $2000                                   ; $666f: $01 $00 $20
	nop                                              ; $6672: $00
	rlca                                             ; $6673: $07
	ld   [hl+], a                                    ; $6674: $22
	ld   bc, $0302                                   ; $6675: $01 $02 $03
	ld   bc, $2001                                   ; $6678: $01 $01 $20
	nop                                              ; $667b: $00
	rlca                                             ; $667c: $07
	ld   [hl+], a                                    ; $667d: $22
	ld   bc, $0302                                   ; $667e: $01 $02 $03
	ld   bc, $2002                                   ; $6681: $01 $02 $20
	nop                                              ; $6684: $00
	ld   b, $00                                      ; $6685: $06 $00
	ld   bc, $041c                                   ; $6687: $01 $1c $04
	nop                                              ; $668a: $00
	nop                                              ; $668b: $00
	ld   bc, $fbd7                                   ; $668c: $01 $d7 $fb
	sbc  [hl]                                        ; $668f: $9e
	ld   h, [hl]                                     ; $6690: $66
	ld   e, c                                        ; $6691: $59
	and  c                                           ; $6692: $a1
	ld   e, h                                        ; $6693: $5c
	sbc  d                                           ; $6694: $9a
	ld   l, [hl]                                     ; $6695: $6e
	sub  [hl]                                        ; $6696: $96
	sbc  a                                           ; $6697: $9f
	dec  c                                           ; $6698: $0d
	ld   l, a                                        ; $6699: $6f
	ld   d, d                                        ; $669a: $52
	ld   [bc], a                                     ; $669b: $02
	inc  de                                          ; $669c: $13
	ld   l, a                                        ; $669d: $6f
	sub  c                                           ; $669e: $91
	and  c                                           ; $669f: $a1
	ld   a, h                                        ; $66a0: $7c
	adc  h                                           ; $66a1: $8c
	ld   e, a                                        ; $66a2: $5f
	sbc  a                                           ; $66a3: $9f
	dec  c                                           ; $66a4: $0d
	nop                                              ; $66a5: $00
	ld   a, [bc]                                     ; $66a6: $0a
	ld   b, $a5                                      ; $66a7: $06 $a5
	inc  bc                                          ; $66a9: $03
	inc  e                                           ; $66aa: $1c
	inc  b                                           ; $66ab: $04
	nop                                              ; $66ac: $00
	nop                                              ; $66ad: $00
	ld   bc, $0701                                   ; $66ae: $01 $01 $07
	push af                                          ; $66b1: $f5
	ld   bc, $5a08                                   ; $66b2: $01 $08 $5a
	ld   [hl], d                                     ; $66b5: $72
	ld   d, d                                        ; $66b6: $52
	ld   l, l                                        ; $66b7: $6d
	ld   e, c                                        ; $66b8: $59
	sub  a                                           ; $66b9: $97
	dec  c                                           ; $66ba: $0d
	ld   l, a                                        ; $66bb: $6f
	ld   d, d                                        ; $66bc: $52
	ld   [bc], a                                     ; $66bd: $02
	inc  de                                          ; $66be: $13
	ld   l, a                                        ; $66bf: $6f
	sub  c                                           ; $66c0: $91
	and  c                                           ; $66c1: $a1
	ld   a, h                                        ; $66c2: $7c
	adc  h                                           ; $66c3: $8c
	ld   e, a                                        ; $66c4: $5f
	sbc  a                                           ; $66c5: $9f
	dec  c                                           ; $66c6: $0d
	nop                                              ; $66c7: $00
	ld   a, [bc]                                     ; $66c8: $0a
	ld   b, $a5                                      ; $66c9: $06 $a5
	inc  bc                                          ; $66cb: $03
	rrca                                             ; $66cc: $0f
	nop                                              ; $66cd: $00
	ld   bc, $0101                                   ; $66ce: $01 $01 $01
	rlca                                             ; $66d1: $07
	cp   d                                           ; $66d2: $ba
	and  l                                           ; $66d3: $a5
	xor  h                                           ; $66d4: $ac
	ld   bc, $fa08                                   ; $66d5: $01 $08 $fa
	dec  c                                           ; $66d8: $0d
	nop                                              ; $66d9: $00
	ld   a, [bc]                                     ; $66da: $0a
	inc  e                                           ; $66db: $1c
	inc  b                                           ; $66dc: $04
	nop                                              ; $66dd: $00
	nop                                              ; $66de: $00
	ld   bc, $ffac                                   ; $66df: $01 $ac $ff
	rst  $38                                         ; $66e2: $ff
	ld   bc, $ac07                                   ; $66e3: $01 $07 $ac
	db   $e3                                         ; $66e6: $e3
	db   $eb                                         ; $66e7: $eb
	ld   bc, $fa08                                   ; $66e8: $01 $08 $fa
	dec  c                                           ; $66eb: $0d
	nop                                              ; $66ec: $00
	ld   a, [bc]                                     ; $66ed: $0a
	add  hl, de                                      ; $66ee: $19
	dec  b                                           ; $66ef: $05
	inc  bc                                          ; $66f0: $03
	db   $eb                                         ; $66f1: $eb
	and  l                                           ; $66f2: $a5
	push af                                          ; $66f3: $f5
	pop  bc                                          ; $66f4: $c1
	push af                                          ; $66f5: $f5
	cp   d                                           ; $66f6: $ba
	nop                                              ; $66f7: $00
	nop                                              ; $66f8: $00
	db   $eb                                         ; $66f9: $eb
	ei                                               ; $66fa: $fb
	db   $e3                                         ; $66fb: $e3
	push af                                          ; $66fc: $f5
	nop                                              ; $66fd: $00
	ld   bc, $a5eb                                   ; $66fe: $01 $eb $a5
	xor  e                                           ; $6701: $ab
	push af                                          ; $6702: $f5
	nop                                              ; $6703: $00
	ld   [bc], a                                     ; $6704: $02
	rlca                                             ; $6705: $07
	sbc  e                                           ; $6706: $9b
	ld   bc, $0302                                   ; $6707: $01 $02 $03
	ld   bc, $2000                                   ; $670a: $01 $00 $20
	nop                                              ; $670d: $00
	rlca                                             ; $670e: $07
	ld   [hl+], a                                    ; $670f: $22
	ld   bc, $0302                                   ; $6710: $01 $02 $03
	ld   bc, $2001                                   ; $6713: $01 $01 $20
	nop                                              ; $6716: $00
	rlca                                             ; $6717: $07
	ld   [hl+], a                                    ; $6718: $22
	ld   bc, $0302                                   ; $6719: $01 $02 $03
	ld   bc, $2002                                   ; $671c: $01 $02 $20
	nop                                              ; $671f: $00
	ld   b, $00                                      ; $6720: $06 $00
	ld   bc, $000f                                   ; $6722: $01 $0f $00
	ld   bc, $0101                                   ; $6725: $01 $01 $01
	rlca                                             ; $6728: $07
	db   $eb                                         ; $6729: $eb
	and  l                                           ; $672a: $a5
	push af                                          ; $672b: $f5
	pop  bc                                          ; $672c: $c1
	push af                                          ; $672d: $f5
	cp   d                                           ; $672e: $ba
	ld   bc, $fa08                                   ; $672f: $01 $08 $fa
	dec  c                                           ; $6732: $0d
	nop                                              ; $6733: $00
	ld   a, [bc]                                     ; $6734: $0a
	inc  e                                           ; $6735: $1c
	inc  b                                           ; $6736: $04
	nop                                              ; $6737: $00
	nop                                              ; $6738: $00
	ld   bc, $ffba                                   ; $6739: $01 $ba $ff
	rst  $38                                         ; $673c: $ff
	ld   bc, $ba07                                   ; $673d: $01 $07 $ba
	and  l                                           ; $6740: $a5
	cp   d                                           ; $6741: $ba
	ld   bc, $fa08                                   ; $6742: $01 $08 $fa
	dec  c                                           ; $6745: $0d
	nop                                              ; $6746: $00
	ld   a, [bc]                                     ; $6747: $0a
	add  hl, de                                      ; $6748: $19
	dec  b                                           ; $6749: $05
	inc  bc                                          ; $674a: $03
	cp   d                                           ; $674b: $ba
	jp   nc, $baa5                                   ; $674c: $d2 $a5 $ba

	nop                                              ; $674f: $00
	nop                                              ; $6750: $00
	cp   d                                           ; $6751: $ba
	pop  af                                          ; $6752: $f1
	push af                                          ; $6753: $f5
	nop                                              ; $6754: $00
	ld   bc, $b2ba                                   ; $6755: $01 $ba $b2
	db   $ed                                         ; $6758: $ed
	ret                                              ; $6759: $c9


	push af                                          ; $675a: $f5
	nop                                              ; $675b: $00
	ld   [bc], a                                     ; $675c: $02
	rlca                                             ; $675d: $07
	di                                               ; $675e: $f3
	ld   bc, $0302                                   ; $675f: $01 $02 $03
	ld   bc, $2000                                   ; $6762: $01 $00 $20
	nop                                              ; $6765: $00
	rlca                                             ; $6766: $07
	ld   [hl+], a                                    ; $6767: $22
	ld   bc, $0302                                   ; $6768: $01 $02 $03
	ld   bc, $2001                                   ; $676b: $01 $01 $20
	nop                                              ; $676e: $00
	rlca                                             ; $676f: $07
	ld   [hl+], a                                    ; $6770: $22
	ld   bc, $0302                                   ; $6771: $01 $02 $03
	ld   bc, $2002                                   ; $6774: $01 $02 $20
	nop                                              ; $6777: $00
	ld   b, $00                                      ; $6778: $06 $00
	ld   bc, $000f                                   ; $677a: $01 $0f $00
	ld   bc, $0101                                   ; $677d: $01 $01 $01
	rlca                                             ; $6780: $07
	cp   d                                           ; $6781: $ba
	jp   nc, $baa5                                   ; $6782: $d2 $a5 $ba

	ld   bc, $fa08                                   ; $6785: $01 $08 $fa
	dec  c                                           ; $6788: $0d
	nop                                              ; $6789: $00
	ld   a, [bc]                                     ; $678a: $0a
	inc  e                                           ; $678b: $1c
	inc  b                                           ; $678c: $04
	inc  bc                                          ; $678d: $03
	inc  bc                                          ; $678e: $03
	ld   bc, $6d8c                                   ; $678f: $01 $8c $6d
	ld   bc, $ba07                                   ; $6792: $01 $07 $ba
	ld   bc, $5308                                   ; $6795: $01 $08 $53
	ld   sp, hl                                      ; $6798: $f9
	dec  c                                           ; $6799: $0d
	ld   d, [hl]                                     ; $679a: $56
	rst  $38                                         ; $679b: $ff
	rst  $38                                         ; $679c: $ff
	halt                                             ; $679d: $76
	ld   bc, $6707                                   ; $679e: $01 $07 $67
	sbc  c                                           ; $67a1: $99
	adc  a                                           ; $67a2: $8f
	ld   bc, $fa08                                   ; $67a3: $01 $08 $fa
	dec  c                                           ; $67a6: $0d
	nop                                              ; $67a7: $00
	ld   a, [bc]                                     ; $67a8: $0a
	add  hl, de                                      ; $67a9: $19
	dec  b                                           ; $67aa: $05
	inc  bc                                          ; $67ab: $03
	db   $e3                                         ; $67ac: $e3
	pop  bc                                          ; $67ad: $c1
	xor  h                                           ; $67ae: $ac
	nop                                              ; $67af: $00
	nop                                              ; $67b0: $00
	db   $e3                                         ; $67b1: $e3
	xor  l                                           ; $67b2: $ad
	call c, $00f5                                    ; $67b3: $dc $f5 $00
	ld   bc, $528f                                   ; $67b6: $01 $8f $52
	ld   h, [hl]                                     ; $67b9: $66
	and  c                                           ; $67ba: $a1
	nop                                              ; $67bb: $00
	ld   [bc], a                                     ; $67bc: $02
	rlca                                             ; $67bd: $07
	or   b                                           ; $67be: $b0
	ld   [bc], a                                     ; $67bf: $02
	ld   [bc], a                                     ; $67c0: $02
	inc  bc                                          ; $67c1: $03
	ld   bc, $2000                                   ; $67c2: $01 $00 $20
	nop                                              ; $67c5: $00
	rlca                                             ; $67c6: $07
	add  d                                           ; $67c7: $82
	ld   [bc], a                                     ; $67c8: $02
	ld   [bc], a                                     ; $67c9: $02
	inc  bc                                          ; $67ca: $03
	ld   bc, $2001                                   ; $67cb: $01 $01 $20
	nop                                              ; $67ce: $00
	rlca                                             ; $67cf: $07
	add  d                                           ; $67d0: $82
	ld   [bc], a                                     ; $67d1: $02
	ld   [bc], a                                     ; $67d2: $02
	inc  bc                                          ; $67d3: $03
	ld   bc, $2002                                   ; $67d4: $01 $02 $20
	nop                                              ; $67d7: $00
	ld   b, $53                                      ; $67d8: $06 $53
	ld   [bc], a                                     ; $67da: $02
	inc  e                                           ; $67db: $1c
	inc  b                                           ; $67dc: $04
	ld   bc, $1d01                                   ; $67dd: $01 $01 $1d
	ld   b, b                                        ; $67e0: $40
	inc  d                                           ; $67e1: $14
	inc  bc                                          ; $67e2: $03
	inc  d                                           ; $67e3: $14
	ld   bc, $2802                                   ; $67e4: $01 $02 $28
	nop                                              ; $67e7: $00
	ld   bc, $fbd7                                   ; $67e8: $01 $d7 $fb
	sbc  [hl]                                        ; $67eb: $9e
	ld   h, [hl]                                     ; $67ec: $66
	ld   e, c                                        ; $67ed: $59
	and  c                                           ; $67ee: $a1
	ld   e, h                                        ; $67ef: $5c
	sbc  d                                           ; $67f0: $9a
	ld   l, [hl]                                     ; $67f1: $6e
	sub  [hl]                                        ; $67f2: $96
	sbc  a                                           ; $67f3: $9f
	dec  c                                           ; $67f4: $0d
	and  e                                           ; $67f5: $a3
	and  l                                           ; $67f6: $a5
	db   $ec                                         ; $67f7: $ec
	cp   d                                           ; $67f8: $ba
	ld   a, h                                        ; $67f9: $7c
	ld   e, c                                        ; $67fa: $59
	ld   l, a                                        ; $67fb: $6f
	db   $fc                                         ; $67fc: $fc
	sbc  a                                           ; $67fd: $9f
	dec  c                                           ; $67fe: $0d
	xor  c                                           ; $67ff: $a9
	reti                                             ; $6800: $d9


	reti                                             ; $6801: $d9


	reti                                             ; $6802: $d9


	sbc  a                                           ; $6803: $9f
	dec  c                                           ; $6804: $0d
	nop                                              ; $6805: $00
	ld   a, [bc]                                     ; $6806: $0a
	ld   b, $a5                                      ; $6807: $06 $a5
	inc  bc                                          ; $6809: $03
	inc  e                                           ; $680a: $1c
	inc  b                                           ; $680b: $04
	ld   bc, $1d01                                   ; $680c: $01 $01 $1d
	ld   b, b                                        ; $680f: $40
	inc  d                                           ; $6810: $14
	inc  bc                                          ; $6811: $03
	inc  d                                           ; $6812: $14
	ld   bc, $2802                                   ; $6813: $01 $02 $28
	nop                                              ; $6816: $00
	ld   bc, $d9a9                                   ; $6817: $01 $a9 $d9
	reti                                             ; $681a: $d9


	reti                                             ; $681b: $d9


	sbc  a                                           ; $681c: $9f
	dec  c                                           ; $681d: $0d
	ld   bc, $f507                                   ; $681e: $01 $07 $f5
	ld   bc, $5a08                                   ; $6821: $01 $08 $5a
	ld   [hl], d                                     ; $6824: $72
	ld   d, d                                        ; $6825: $52
	ld   l, l                                        ; $6826: $6d
	ld   e, c                                        ; $6827: $59
	sub  a                                           ; $6828: $97
	dec  c                                           ; $6829: $0d
	and  e                                           ; $682a: $a3
	and  l                                           ; $682b: $a5
	db   $ec                                         ; $682c: $ec
	cp   d                                           ; $682d: $ba
	ld   a, h                                        ; $682e: $7c
	ld   e, c                                        ; $682f: $59
	ld   l, a                                        ; $6830: $6f
	ld   a, [$000d]                                  ; $6831: $fa $0d $00
	ld   a, [bc]                                     ; $6834: $0a
	ld   b, $a5                                      ; $6835: $06 $a5
	inc  bc                                          ; $6837: $03
	rrca                                             ; $6838: $0f
	nop                                              ; $6839: $00
	ld   bc, $0101                                   ; $683a: $01 $01 $01
	rlca                                             ; $683d: $07
	db   $e3                                         ; $683e: $e3
	pop  bc                                          ; $683f: $c1
	xor  h                                           ; $6840: $ac
	ld   bc, $fa08                                   ; $6841: $01 $08 $fa
	dec  c                                           ; $6844: $0d
	nop                                              ; $6845: $00
	ld   a, [bc]                                     ; $6846: $0a
	inc  e                                           ; $6847: $1c
	inc  b                                           ; $6848: $04
	nop                                              ; $6849: $00
	nop                                              ; $684a: $00
	ld   bc, $f9ac                                   ; $684b: $01 $ac $f9
	db   $10                                         ; $684e: $10
	rst  $38                                         ; $684f: $ff
	rst  $38                                         ; $6850: $ff
	ld   bc, $ac07                                   ; $6851: $01 $07 $ac
	db   $e4                                         ; $6854: $e4
	db   $e3                                         ; $6855: $e3
	ld   bc, $fa08                                   ; $6856: $01 $08 $fa
	dec  c                                           ; $6859: $0d
	nop                                              ; $685a: $00
	ld   a, [bc]                                     ; $685b: $0a
	add  hl, de                                      ; $685c: $19
	dec  b                                           ; $685d: $05
	inc  bc                                          ; $685e: $03
	db   $e3                                         ; $685f: $e3
	sub  $a4                                         ; $6860: $d6 $a4
	cp   d                                           ; $6862: $ba
	ret                                              ; $6863: $c9


	sub  $a8                                         ; $6864: $d6 $a8
	xor  $ba                                         ; $6866: $ee $ba
	nop                                              ; $6868: $00
	nop                                              ; $6869: $00
	db   $e3                                         ; $686a: $e3
	db   $ed                                         ; $686b: $ed
	reti                                             ; $686c: $d9


	push af                                          ; $686d: $f5
	nop                                              ; $686e: $00
	ld   bc, $efe3                                   ; $686f: $01 $e3 $ef
	push af                                          ; $6872: $f5
	nop                                              ; $6873: $00
	ld   [bc], a                                     ; $6874: $02
	rlca                                             ; $6875: $07
	dec  bc                                          ; $6876: $0b
	inc  bc                                          ; $6877: $03
	ld   [bc], a                                     ; $6878: $02
	inc  bc                                          ; $6879: $03
	ld   bc, $2000                                   ; $687a: $01 $00 $20
	nop                                              ; $687d: $00
	rlca                                             ; $687e: $07
	add  d                                           ; $687f: $82
	ld   [bc], a                                     ; $6880: $02
	ld   [bc], a                                     ; $6881: $02
	inc  bc                                          ; $6882: $03
	ld   bc, $2001                                   ; $6883: $01 $01 $20
	nop                                              ; $6886: $00
	rlca                                             ; $6887: $07
	add  d                                           ; $6888: $82
	ld   [bc], a                                     ; $6889: $02
	ld   [bc], a                                     ; $688a: $02
	inc  bc                                          ; $688b: $03
	ld   bc, $2002                                   ; $688c: $01 $02 $20
	nop                                              ; $688f: $00
	ld   b, $53                                      ; $6890: $06 $53
	ld   [bc], a                                     ; $6892: $02
	rrca                                             ; $6893: $0f
	nop                                              ; $6894: $00
	ld   bc, $0101                                   ; $6895: $01 $01 $01
	rlca                                             ; $6898: $07
	db   $e3                                         ; $6899: $e3
	sub  $a4                                         ; $689a: $d6 $a4
	cp   d                                           ; $689c: $ba
	ret                                              ; $689d: $c9


	sub  $a8                                         ; $689e: $d6 $a8
	xor  $ba                                         ; $68a0: $ee $ba
	ld   bc, $fa08                                   ; $68a2: $01 $08 $fa
	dec  c                                           ; $68a5: $0d
	nop                                              ; $68a6: $00
	ld   a, [bc]                                     ; $68a7: $0a
	inc  e                                           ; $68a8: $1c
	inc  b                                           ; $68a9: $04
	inc  bc                                          ; $68aa: $03
	inc  bc                                          ; $68ab: $03
	ld   bc, $6d8c                                   ; $68ac: $01 $8c $6d
	ld   bc, $ba07                                   ; $68af: $01 $07 $ba
	ld   bc, $5308                                   ; $68b2: $01 $08 $53
	ld   sp, hl                                      ; $68b5: $f9
	dec  c                                           ; $68b6: $0d
	nop                                              ; $68b7: $00
	inc  e                                           ; $68b8: $1c
	inc  b                                           ; $68b9: $04
	nop                                              ; $68ba: $00
	nop                                              ; $68bb: $00
	ld   bc, $ff56                                   ; $68bc: $01 $56 $ff
	rst  $38                                         ; $68bf: $ff
	halt                                             ; $68c0: $76
	ld   bc, $ba07                                   ; $68c1: $01 $07 $ba
	and  a                                           ; $68c4: $a7
	xor  b                                           ; $68c5: $a8
	ei                                               ; $68c6: $fb
	ret  z                                           ; $68c7: $c8

	push af                                          ; $68c8: $f5
	ld   bc, $fa08                                   ; $68c9: $01 $08 $fa
	dec  c                                           ; $68cc: $0d
	nop                                              ; $68cd: $00
	ld   a, [bc]                                     ; $68ce: $0a
	inc  e                                           ; $68cf: $1c
	inc  b                                           ; $68d0: $04
	ld   b, $06                                      ; $68d1: $06 $06
	ld   bc, $ff50                                   ; $68d3: $01 $50 $ff
	rst  $38                                         ; $68d6: $ff
	ld   bc, $f507                                   ; $68d7: $01 $07 $f5
	ld   bc, $5a08                                   ; $68da: $01 $08 $5a
	ld   [hl], d                                     ; $68dd: $72
	ld   d, d                                        ; $68de: $52
	ld   l, a                                        ; $68df: $6f
	sub  c                                           ; $68e0: $91
	ld   [hl], c                                     ; $68e1: $71
	ld   l, l                                        ; $68e2: $6d
	sbc  a                                           ; $68e3: $9f
	dec  c                                           ; $68e4: $0d
	nop                                              ; $68e5: $00
	ld   a, [bc]                                     ; $68e6: $0a
	inc  e                                           ; $68e7: $1c
	inc  b                                           ; $68e8: $04
	dec  b                                           ; $68e9: $05
	dec  b                                           ; $68ea: $05
	ld   bc, $d9a9                                   ; $68eb: $01 $a9 $d9
	reti                                             ; $68ee: $d9


	rst  $38                                         ; $68ef: $ff
	rst  $38                                         ; $68f0: $ff
	dec  c                                           ; $68f1: $0d
	and  e                                           ; $68f2: $a3
	and  l                                           ; $68f3: $a5
	db   $ec                                         ; $68f4: $ec
	cp   d                                           ; $68f5: $ba
	sbc  [hl]                                        ; $68f6: $9e
	adc  h                                           ; $68f7: $8c
	ld   e, a                                        ; $68f8: $5f
	ld   l, a                                        ; $68f9: $6f
	sub  c                                           ; $68fa: $91
	ld   [hl], c                                     ; $68fb: $71
	ld   l, l                                        ; $68fc: $6d
	rst  $38                                         ; $68fd: $ff
	rst  $38                                         ; $68fe: $ff
	dec  c                                           ; $68ff: $0d
	nop                                              ; $6900: $00
	ld   a, [bc]                                     ; $6901: $0a
	dec  e                                           ; $6902: $1d
	ld   b, b                                        ; $6903: $40
	inc  d                                           ; $6904: $14
	inc  bc                                          ; $6905: $03
	inc  d                                           ; $6906: $14
	ld   bc, $2803                                   ; $6907: $01 $03 $28
	nop                                              ; $690a: $00
	ld   bc, $9075                                   ; $690b: $01 $75 $90
	sbc  [hl]                                        ; $690e: $9e
	ld   h, a                                        ; $690f: $67
	ld   h, d                                        ; $6910: $62
	ld   e, l                                        ; $6911: $5d
	ld   l, l                                        ; $6912: $6d
	ld   a, h                                        ; $6913: $7c
	ld   h, l                                        ; $6914: $65
	ld   e, c                                        ; $6915: $59
	ld   [hl], c                                     ; $6916: $71
	ld   l, l                                        ; $6917: $6d
	sub  [hl]                                        ; $6918: $96
	sbc  a                                           ; $6919: $9f
	dec  c                                           ; $691a: $0d
	ld   d, b                                        ; $691b: $50
	sbc  b                                           ; $691c: $98
	ld   e, d                                        ; $691d: $5a
	halt                                             ; $691e: $76
	ld   d, h                                        ; $691f: $54
	sbc  [hl]                                        ; $6920: $9e
	ld   l, a                                        ; $6921: $6f
	ld   d, d                                        ; $6922: $52
	ld   [bc], a                                     ; $6923: $02
	inc  de                                          ; $6924: $13
	ld   l, a                                        ; $6925: $6f
	sub  c                                           ; $6926: $91
	and  c                                           ; $6927: $a1
	sbc  a                                           ; $6928: $9f
	dec  c                                           ; $6929: $0d
	nop                                              ; $692a: $00
	ld   a, [bc]                                     ; $692b: $0a
	nop                                              ; $692c: $00
	ld   bc, $fb50                                   ; $692d: $01 $50 $fb
	sbc  [hl]                                        ; $6930: $9e
	ld   l, l                                        ; $6931: $6d
	ld   a, h                                        ; $6932: $7c
	ld   h, l                                        ; $6933: $65
	ld   e, c                                        ; $6934: $59
	ld   [hl], c                                     ; $6935: $71
	ld   l, l                                        ; $6936: $6d
	sbc  a                                           ; $6937: $9f
	dec  c                                           ; $6938: $0d
	ld   d, b                                        ; $6939: $50
	sbc  b                                           ; $693a: $98
	ld   e, d                                        ; $693b: $5a
	halt                                             ; $693c: $76
	ld   d, h                                        ; $693d: $54
	sbc  [hl]                                        ; $693e: $9e
	ld   l, a                                        ; $693f: $6f
	ld   d, d                                        ; $6940: $52
	ld   [bc], a                                     ; $6941: $02
	inc  de                                          ; $6942: $13
	ld   l, a                                        ; $6943: $6f
	sub  c                                           ; $6944: $91
	and  c                                           ; $6945: $a1
	sbc  a                                           ; $6946: $9f
	dec  c                                           ; $6947: $0d
	nop                                              ; $6948: $00
	ld   a, [bc]                                     ; $6949: $0a
	nop                                              ; $694a: $00
	rrca                                             ; $694b: $0f
	nop                                              ; $694c: $00
	ld   bc, $6601                                   ; $694d: $01 $01 $66
	sub  c                                           ; $6950: $91
	ld   d, b                                        ; $6951: $50
	sbc  [hl]                                        ; $6952: $9e
	or   b                                           ; $6953: $b0
	and  l                                           ; $6954: $a5
	cp   e                                           ; $6955: $bb
	and  b                                           ; $6956: $a0
	sub  d                                           ; $6957: $92
	sbc  e                                           ; $6958: $9b
	ld   d, h                                        ; $6959: $54
	sbc  a                                           ; $695a: $9f
	dec  c                                           ; $695b: $0d
	nop                                              ; $695c: $00
	ld   a, [bc]                                     ; $695d: $0a
	dec  b                                           ; $695e: $05
	add  b                                           ; $695f: $80
	ld   b, l                                        ; $6960: $45
	ld   bc, $0001                                   ; $6961: $01 $01 $00
	inc  e                                           ; $6964: $1c
	inc  b                                           ; $6965: $04
	ld   bc, $0101                                   ; $6966: $01 $01 $01
	ld   d, h                                        ; $6969: $54
	and  c                                           ; $696a: $a1
	ld   a, [$660d]                                  ; $696b: $fa $0d $66
	sub  c                                           ; $696e: $91
	sbc  [hl]                                        ; $696f: $9e
	and  e                                           ; $6970: $a3
	and  l                                           ; $6971: $a5
	db   $ec                                         ; $6972: $ec
	cp   d                                           ; $6973: $ba
	ld   e, d                                        ; $6974: $5a
	dec  c                                           ; $6975: $0d
	sub  b                                           ; $6976: $90
	and  c                                           ; $6977: $a1
	ld   l, [hl]                                     ; $6978: $6e
	ld   d, d                                        ; $6979: $52
	ld   l, [hl]                                     ; $697a: $6e
	ld   h, a                                        ; $697b: $67
	ld   a, [$000d]                                  ; $697c: $fa $0d $00
	ld   a, [bc]                                     ; $697f: $0a
	inc  e                                           ; $6980: $1c
	inc  b                                           ; $6981: $04
	nop                                              ; $6982: $00
	nop                                              ; $6983: $00
	ld   bc, $0701                                   ; $6984: $01 $01 $07
	ret  nc                                          ; $6987: $d0

	xor  c                                           ; $6988: $a9
	ld   bc, $7608                                   ; $6989: $01 $08 $76
	ld   bc, $ac07                                   ; $698c: $01 $07 $ac
	ld   bc, $5a08                                   ; $698f: $01 $08 $5a
	dec  c                                           ; $6992: $0d
	ld   e, e                                        ; $6993: $5b
	sub  l                                           ; $6994: $95
	ld   d, h                                        ; $6995: $54
	ld   l, e                                        ; $6996: $6b
	ld   d, h                                        ; $6997: $54
	ld   h, l                                        ; $6998: $65
	adc  h                                           ; $6999: $8c
	ld   h, l                                        ; $699a: $65
	ld   l, l                                        ; $699b: $6d
	sbc  a                                           ; $699c: $9f
	dec  c                                           ; $699d: $0d
	ld   e, c                                        ; $699e: $59
	ld   [hl], c                                     ; $699f: $71
	ld   l, l                                        ; $69a0: $6d
	ld   a, h                                        ; $69a1: $7c
	ld   a, l                                        ; $69a2: $7d
	ld   [hl], a                                     ; $69a3: $77
	ld   [hl], c                                     ; $69a4: $71
	ld   l, a                                        ; $69a5: $6f
	ld   sp, hl                                      ; $69a6: $f9
	dec  c                                           ; $69a7: $0d
	nop                                              ; $69a8: $00
	ld   a, [bc]                                     ; $69a9: $0a
	add  hl, de                                      ; $69aa: $19
	dec  b                                           ; $69ab: $05
	inc  bc                                          ; $69ac: $03
	ld   bc, $d007                                   ; $69ad: $01 $07 $d0
	xor  c                                           ; $69b0: $a9
	ld   bc, $5908                                   ; $69b1: $01 $08 $59
	ld   a, b                                        ; $69b4: $78
	ld   sp, hl                                      ; $69b5: $f9
	nop                                              ; $69b6: $00
	nop                                              ; $69b7: $00
	ld   bc, $ac07                                   ; $69b8: $01 $07 $ac
	ld   bc, $5908                                   ; $69bb: $01 $08 $59
	ld   a, b                                        ; $69be: $78
	ld   sp, hl                                      ; $69bf: $f9
	nop                                              ; $69c0: $00
	ld   bc, $5b80                                   ; $69c1: $01 $80 $5b
	sbc  l                                           ; $69c4: $9d
	ld   e, a                                        ; $69c5: $5f
	ld   e, c                                        ; $69c6: $59
	ld   a, b                                        ; $69c7: $78
	ld   sp, hl                                      ; $69c8: $f9
	nop                                              ; $69c9: $00
	ld   [bc], a                                     ; $69ca: $02
	rlca                                             ; $69cb: $07
	ld   h, c                                        ; $69cc: $61
	inc  b                                           ; $69cd: $04
	ld   [bc], a                                     ; $69ce: $02
	inc  bc                                          ; $69cf: $03
	ld   bc, $2000                                   ; $69d0: $01 $00 $20
	nop                                              ; $69d3: $00
	rlca                                             ; $69d4: $07
	adc  a                                           ; $69d5: $8f
	inc  b                                           ; $69d6: $04
	ld   [bc], a                                     ; $69d7: $02
	inc  bc                                          ; $69d8: $03
	ld   bc, $2001                                   ; $69d9: $01 $01 $20
	nop                                              ; $69dc: $00
	rlca                                             ; $69dd: $07
	adc  a                                           ; $69de: $8f
	inc  b                                           ; $69df: $04
	ld   [bc], a                                     ; $69e0: $02
	inc  bc                                          ; $69e1: $03
	ld   bc, $2002                                   ; $69e2: $01 $02 $20
	nop                                              ; $69e5: $00
	ld   b, $8f                                      ; $69e6: $06 $8f
	inc  b                                           ; $69e8: $04
	inc  e                                           ; $69e9: $1c
	inc  b                                           ; $69ea: $04
	ld   bc, $1401                                   ; $69eb: $01 $01 $14
	dec  de                                          ; $69ee: $1b
	ld   bc, $d501                                   ; $69ef: $01 $01 $d5
	push af                                          ; $69f2: $f5
	sbc  $fb                                         ; $69f3: $de $fb
	push af                                          ; $69f5: $f5
	ld   a, [$d00d]                                  ; $69f6: $fa $0d $d0
	xor  c                                           ; $69f9: $a9
	ld   l, [hl]                                     ; $69fa: $6e
	ld   e, c                                        ; $69fb: $59
	sub  a                                           ; $69fc: $97
	ld   bc, $7d07                                   ; $69fd: $01 $07 $7d
	ld   d, [hl]                                     ; $6a00: $56
	ei                                               ; $6a01: $fb
	ld   bc, $a108                                   ; $6a02: $01 $08 $a1
	ld   l, [hl]                                     ; $6a05: $6e
	sub  [hl]                                        ; $6a06: $96
	sbc  a                                           ; $6a07: $9f
	dec  c                                           ; $6a08: $0d
	nop                                              ; $6a09: $00
	ld   a, [bc]                                     ; $6a0a: $0a
	dec  b                                           ; $6a0b: $05
	ld   b, b                                        ; $6a0c: $40
	rst  $38                                         ; $6a0d: $ff
	inc  bc                                          ; $6a0e: $03
	rst  $38                                         ; $6a0f: $ff
	ld   bc, $2801                                   ; $6a10: $01 $01 $28
	nop                                              ; $6a13: $00
	ld   b, $ba                                      ; $6a14: $06 $ba
	inc  b                                           ; $6a16: $04
	inc  e                                           ; $6a17: $1c
	inc  b                                           ; $6a18: $04
	nop                                              ; $6a19: $00
	nop                                              ; $6a1a: $00
	inc  d                                           ; $6a1b: $14
	inc  e                                           ; $6a1c: $1c
	ld   bc, $d701                                   ; $6a1d: $01 $01 $d7
	ei                                               ; $6a20: $fb
	ld   a, [$690d]                                  ; $6a21: $fa $0d $69
	ld   d, d                                        ; $6a24: $52
	ld   e, c                                        ; $6a25: $59
	ld   d, d                                        ; $6a26: $52
	ld   a, l                                        ; $6a27: $7d
	sbc  [hl]                                        ; $6a28: $9e
	ret  nc                                          ; $6a29: $d0

	xor  c                                           ; $6a2a: $a9
	ld   l, [hl]                                     ; $6a2b: $6e
	sub  [hl]                                        ; $6a2c: $96
	sbc  a                                           ; $6a2d: $9f
	dec  c                                           ; $6a2e: $0d
	ret  nc                                          ; $6a2f: $d0

	xor  c                                           ; $6a30: $a9
	ld   l, [hl]                                     ; $6a31: $6e
	ld   e, c                                        ; $6a32: $59
	sub  a                                           ; $6a33: $97
	ld   bc, $7d07                                   ; $6a34: $01 $07 $7d
	ld   d, [hl]                                     ; $6a37: $56
	ei                                               ; $6a38: $fb
	ld   bc, $a108                                   ; $6a39: $01 $08 $a1
	ld   l, [hl]                                     ; $6a3c: $6e
	sub  [hl]                                        ; $6a3d: $96
	sbc  a                                           ; $6a3e: $9f
	dec  c                                           ; $6a3f: $0d
	nop                                              ; $6a40: $00
	ld   a, [bc]                                     ; $6a41: $0a
	inc  e                                           ; $6a42: $1c
	inc  b                                           ; $6a43: $04
	nop                                              ; $6a44: $00
	nop                                              ; $6a45: $00
	ld   bc, $5c72                                   ; $6a46: $01 $72 $5c
	ld   a, h                                        ; $6a49: $7c
	sub  b                                           ; $6a4a: $90
	and  c                                           ; $6a4b: $a1
	ld   l, [hl]                                     ; $6a4c: $6e
	ld   d, d                                        ; $6a4d: $52
	sbc  a                                           ; $6a4e: $9f
	dec  c                                           ; $6a4f: $0d
	ld   bc, $c007                                   ; $6a50: $01 $07 $c0
	or   d                                           ; $6a53: $b2
	ld   bc, $7608                                   ; $6a54: $01 $08 $76
	ld   bc, $df07                                   ; $6a57: $01 $07 $df
	push bc                                          ; $6a5a: $c5
	ld   bc, $7d08                                   ; $6a5b: $01 $08 $7d
	dec  c                                           ; $6a5e: $0d
	ld   [hl], a                                     ; $6a5f: $77
	ld   [hl], c                                     ; $6a60: $71
	ld   l, a                                        ; $6a61: $6f
	ld   e, d                                        ; $6a62: $5a
	ld   l, l                                        ; $6a63: $6d
	ld   e, c                                        ; $6a64: $59
	ld   d, d                                        ; $6a65: $52
	ld   sp, hl                                      ; $6a66: $f9
	dec  c                                           ; $6a67: $0d
	nop                                              ; $6a68: $00
	ld   a, [bc]                                     ; $6a69: $0a
	add  hl, de                                      ; $6a6a: $19
	dec  b                                           ; $6a6b: $05
	inc  bc                                          ; $6a6c: $03
	ld   bc, $c007                                   ; $6a6d: $01 $07 $c0
	or   d                                           ; $6a70: $b2
	ld   bc, $5908                                   ; $6a71: $01 $08 $59
	ld   a, b                                        ; $6a74: $78
	ld   sp, hl                                      ; $6a75: $f9
	nop                                              ; $6a76: $00
	nop                                              ; $6a77: $00
	ld   bc, $df07                                   ; $6a78: $01 $07 $df
	push bc                                          ; $6a7b: $c5
	ld   bc, $5908                                   ; $6a7c: $01 $08 $59
	ld   a, b                                        ; $6a7f: $78
	ld   sp, hl                                      ; $6a80: $f9
	nop                                              ; $6a81: $00
	ld   bc, $7858                                   ; $6a82: $01 $58 $78
	ld   h, [hl]                                     ; $6a85: $66
	ld   h, [hl]                                     ; $6a86: $66
	sub  c                                           ; $6a87: $91
	ld   a, b                                        ; $6a88: $78
	ld   d, d                                        ; $6a89: $52
	ld   e, c                                        ; $6a8a: $59
	ld   sp, hl                                      ; $6a8b: $f9
	nop                                              ; $6a8c: $00
	ld   [bc], a                                     ; $6a8d: $02
	rlca                                             ; $6a8e: $07
	inc  h                                           ; $6a8f: $24
	dec  b                                           ; $6a90: $05
	ld   [bc], a                                     ; $6a91: $02
	inc  bc                                          ; $6a92: $03
	ld   bc, $2000                                   ; $6a93: $01 $00 $20
	nop                                              ; $6a96: $00
	rlca                                             ; $6a97: $07
	ld   d, d                                        ; $6a98: $52
	dec  b                                           ; $6a99: $05
	ld   [bc], a                                     ; $6a9a: $02
	inc  bc                                          ; $6a9b: $03
	ld   bc, $2001                                   ; $6a9c: $01 $01 $20
	nop                                              ; $6a9f: $00
	rlca                                             ; $6aa0: $07
	ld   d, d                                        ; $6aa1: $52
	dec  b                                           ; $6aa2: $05
	ld   [bc], a                                     ; $6aa3: $02
	inc  bc                                          ; $6aa4: $03
	ld   bc, $2002                                   ; $6aa5: $01 $02 $20
	nop                                              ; $6aa8: $00
	ld   b, $52                                      ; $6aa9: $06 $52
	dec  b                                           ; $6aab: $05
	inc  e                                           ; $6aac: $1c
	inc  b                                           ; $6aad: $04
	ld   bc, $1401                                   ; $6aae: $01 $01 $14
	dec  de                                          ; $6ab1: $1b
	ld   bc, $d501                                   ; $6ab2: $01 $01 $d5
	push af                                          ; $6ab5: $f5
	sbc  $fb                                         ; $6ab6: $de $fb
	push af                                          ; $6ab8: $f5
	ld   a, [$c00d]                                  ; $6ab9: $fa $0d $c0
	or   d                                           ; $6abc: $b2
	ld   l, [hl]                                     ; $6abd: $6e
	ld   e, c                                        ; $6abe: $59
	sub  a                                           ; $6abf: $97
	ld   bc, $6d07                                   ; $6ac0: $01 $07 $6d
	ld   e, a                                        ; $6ac3: $5f
	ld   d, l                                        ; $6ac4: $55
	ld   bc, $a108                                   ; $6ac5: $01 $08 $a1
	ld   l, [hl]                                     ; $6ac8: $6e
	sub  [hl]                                        ; $6ac9: $96
	sbc  a                                           ; $6aca: $9f
	dec  c                                           ; $6acb: $0d
	nop                                              ; $6acc: $00
	ld   a, [bc]                                     ; $6acd: $0a
	dec  b                                           ; $6ace: $05
	ld   b, b                                        ; $6acf: $40
	rst  $38                                         ; $6ad0: $ff
	inc  bc                                          ; $6ad1: $03
	rst  $38                                         ; $6ad2: $ff
	ld   bc, $2801                                   ; $6ad3: $01 $01 $28
	nop                                              ; $6ad6: $00
	ld   b, $7d                                      ; $6ad7: $06 $7d
	dec  b                                           ; $6ad9: $05
	inc  e                                           ; $6ada: $1c
	inc  b                                           ; $6adb: $04
	nop                                              ; $6adc: $00
	nop                                              ; $6add: $00
	inc  d                                           ; $6ade: $14
	inc  e                                           ; $6adf: $1c
	ld   bc, $d701                                   ; $6ae0: $01 $01 $d7
	ei                                               ; $6ae3: $fb
	ld   a, [$690d]                                  ; $6ae4: $fa $0d $69
	ld   d, d                                        ; $6ae7: $52
	ld   e, c                                        ; $6ae8: $59
	ld   d, d                                        ; $6ae9: $52
	ld   a, l                                        ; $6aea: $7d
	sbc  [hl]                                        ; $6aeb: $9e
	ret  nz                                          ; $6aec: $c0

	or   d                                           ; $6aed: $b2
	ld   l, [hl]                                     ; $6aee: $6e
	sub  [hl]                                        ; $6aef: $96
	sbc  a                                           ; $6af0: $9f
	dec  c                                           ; $6af1: $0d
	ret  nz                                          ; $6af2: $c0

	or   d                                           ; $6af3: $b2
	ld   l, [hl]                                     ; $6af4: $6e
	ld   e, c                                        ; $6af5: $59
	sub  a                                           ; $6af6: $97
	ld   bc, $6d07                                   ; $6af7: $01 $07 $6d
	ld   e, a                                        ; $6afa: $5f
	ld   d, l                                        ; $6afb: $55
	ld   bc, $a108                                   ; $6afc: $01 $08 $a1
	ld   l, [hl]                                     ; $6aff: $6e
	sub  [hl]                                        ; $6b00: $96
	sbc  a                                           ; $6b01: $9f
	dec  c                                           ; $6b02: $0d
	nop                                              ; $6b03: $00
	ld   a, [bc]                                     ; $6b04: $0a
	inc  e                                           ; $6b05: $1c
	inc  b                                           ; $6b06: $04
	nop                                              ; $6b07: $00
	nop                                              ; $6b08: $00
	ld   bc, $5263                                   ; $6b09: $01 $63 $52
	ld   h, d                                        ; $6b0c: $62
	ld   a, h                                        ; $6b0d: $7c
	sub  b                                           ; $6b0e: $90
	and  c                                           ; $6b0f: $a1
	ld   l, [hl]                                     ; $6b10: $6e
	ld   d, d                                        ; $6b11: $52
	sbc  a                                           ; $6b12: $9f
	dec  c                                           ; $6b13: $0d
	nop                                              ; $6b14: $00
	ld   a, [bc]                                     ; $6b15: $0a
	ld   bc, $0701                                   ; $6b16: $01 $01 $07
	and  a                                           ; $6b19: $a7
	rst  JumpTable                                         ; $6b1a: $df
	ld   bc, $7608                                   ; $6b1b: $01 $08 $76
	ld   bc, $d707                                   ; $6b1e: $01 $07 $d7
	ret  nz                                          ; $6b21: $c0

	ld   bc, $5a08                                   ; $6b22: $01 $08 $5a
	dec  c                                           ; $6b25: $0d
	ld   e, e                                        ; $6b26: $5b
	sub  l                                           ; $6b27: $95
	ld   d, h                                        ; $6b28: $54
	ld   l, e                                        ; $6b29: $6b
	ld   d, h                                        ; $6b2a: $54
	ld   h, l                                        ; $6b2b: $65
	adc  h                                           ; $6b2c: $8c
	ld   h, l                                        ; $6b2d: $65
	ld   l, l                                        ; $6b2e: $6d
	sbc  a                                           ; $6b2f: $9f
	dec  c                                           ; $6b30: $0d
	ld   e, c                                        ; $6b31: $59
	ld   [hl], c                                     ; $6b32: $71
	ld   l, l                                        ; $6b33: $6d
	ld   a, h                                        ; $6b34: $7c
	ld   a, l                                        ; $6b35: $7d
	sbc  [hl]                                        ; $6b36: $9e
	ld   [hl], a                                     ; $6b37: $77
	ld   [hl], c                                     ; $6b38: $71
	ld   l, a                                        ; $6b39: $6f
	ld   sp, hl                                      ; $6b3a: $f9
	dec  c                                           ; $6b3b: $0d
	nop                                              ; $6b3c: $00
	ld   a, [bc]                                     ; $6b3d: $0a
	add  hl, de                                      ; $6b3e: $19
	dec  b                                           ; $6b3f: $05
	inc  bc                                          ; $6b40: $03
	ld   bc, $a707                                   ; $6b41: $01 $07 $a7
	rst  JumpTable                                         ; $6b44: $df
	ld   bc, $5908                                   ; $6b45: $01 $08 $59
	ld   a, b                                        ; $6b48: $78
	ld   sp, hl                                      ; $6b49: $f9
	nop                                              ; $6b4a: $00
	nop                                              ; $6b4b: $00
	ld   bc, $d707                                   ; $6b4c: $01 $07 $d7
	ret  nz                                          ; $6b4f: $c0

	ld   bc, $5908                                   ; $6b50: $01 $08 $59
	ld   a, b                                        ; $6b53: $78
	ld   sp, hl                                      ; $6b54: $f9
	nop                                              ; $6b55: $00
	ld   bc, $7858                                   ; $6b56: $01 $58 $78
	ld   h, [hl]                                     ; $6b59: $66
	ld   h, [hl]                                     ; $6b5a: $66
	sub  c                                           ; $6b5b: $91
	ld   a, b                                        ; $6b5c: $78
	ld   d, d                                        ; $6b5d: $52
	ld   e, c                                        ; $6b5e: $59
	ld   sp, hl                                      ; $6b5f: $f9
	nop                                              ; $6b60: $00
	ld   [bc], a                                     ; $6b61: $02
	rlca                                             ; $6b62: $07
	ld   hl, sp+$05                                  ; $6b63: $f8 $05
	ld   [bc], a                                     ; $6b65: $02
	inc  bc                                          ; $6b66: $03
	ld   bc, $2000                                   ; $6b67: $01 $00 $20
	nop                                              ; $6b6a: $00
	rlca                                             ; $6b6b: $07
	jr   c, jr_04c_6b74                              ; $6b6c: $38 $06

	ld   [bc], a                                     ; $6b6e: $02
	inc  bc                                          ; $6b6f: $03
	ld   bc, $2001                                   ; $6b70: $01 $01 $20
	nop                                              ; $6b73: $00

jr_04c_6b74:
	rlca                                             ; $6b74: $07
	jr   c, jr_04c_6b7d                              ; $6b75: $38 $06

	ld   [bc], a                                     ; $6b77: $02
	inc  bc                                          ; $6b78: $03
	ld   bc, $2002                                   ; $6b79: $01 $02 $20
	nop                                              ; $6b7c: $00

jr_04c_6b7d:
	ld   b, $38                                      ; $6b7d: $06 $38
	ld   b, $1c                                      ; $6b7f: $06 $1c
	inc  b                                           ; $6b81: $04
	ld   bc, $1401                                   ; $6b82: $01 $01 $14
	dec  de                                          ; $6b85: $1b
	ld   bc, $d501                                   ; $6b86: $01 $01 $d5
	push af                                          ; $6b89: $f5
	sbc  $fb                                         ; $6b8a: $de $fb
	push af                                          ; $6b8c: $f5
	ld   a, [$000d]                                  ; $6b8d: $fa $0d $00
	ld   a, [bc]                                     ; $6b90: $0a
	ld   bc, $0701                                   ; $6b91: $01 $01 $07
	ret                                              ; $6b94: $c9


	push af                                          ; $6b95: $f5
	ld   bc, $ac08                                   ; $6b96: $01 $08 $ac
	push bc                                          ; $6b99: $c5
	ld   l, l                                        ; $6b9a: $6d
	add  a                                           ; $6b9b: $87
	ld   [hl], h                                     ; $6b9c: $74
	dec  c                                           ; $6b9d: $0d
	ld   bc, $a707                                   ; $6b9e: $01 $07 $a7
	rst  JumpTable                                         ; $6ba1: $df
	ld   bc, $5908                                   ; $6ba2: $01 $08 $59
	ld   [hl], c                                     ; $6ba5: $71
	ld   l, l                                        ; $6ba6: $6d
	rst  $38                                         ; $6ba7: $ff
	rst  $38                                         ; $6ba8: $ff
	dec  c                                           ; $6ba9: $0d
	ld   a, b                                        ; $6baa: $78
	and  c                                           ; $6bab: $a1
	ld   l, a                                        ; $6bac: $6f
	sub  c                                           ; $6bad: $91
	ld   [hl], c                                     ; $6bae: $71
	ld   [hl], h                                     ; $6baf: $74
	sbc  a                                           ; $6bb0: $9f
	dec  c                                           ; $6bb1: $0d
	nop                                              ; $6bb2: $00
	ld   a, [bc]                                     ; $6bb3: $0a
	dec  b                                           ; $6bb4: $05
	ld   b, b                                        ; $6bb5: $40
	rst  $38                                         ; $6bb6: $ff
	inc  bc                                          ; $6bb7: $03
	rst  $38                                         ; $6bb8: $ff
	ld   bc, $2801                                   ; $6bb9: $01 $01 $28
	nop                                              ; $6bbc: $00
	ld   b, $7a                                      ; $6bbd: $06 $7a
	ld   b, $1c                                      ; $6bbf: $06 $1c
	inc  b                                           ; $6bc1: $04
	nop                                              ; $6bc2: $00
	nop                                              ; $6bc3: $00
	inc  d                                           ; $6bc4: $14
	inc  e                                           ; $6bc5: $1c
	ld   bc, $d701                                   ; $6bc6: $01 $01 $d7
	ei                                               ; $6bc9: $fb
	ld   a, [$690d]                                  ; $6bca: $fa $0d $69
	ld   d, d                                        ; $6bcd: $52
	ld   e, c                                        ; $6bce: $59
	ld   d, d                                        ; $6bcf: $52
	ld   a, l                                        ; $6bd0: $7d
	sbc  [hl]                                        ; $6bd1: $9e
	and  a                                           ; $6bd2: $a7
	rst  JumpTable                                         ; $6bd3: $df
	ld   [hl], l                                     ; $6bd4: $75
	ld   h, l                                        ; $6bd5: $65
	ld   l, l                                        ; $6bd6: $6d
	sbc  a                                           ; $6bd7: $9f
	dec  c                                           ; $6bd8: $0d
	nop                                              ; $6bd9: $00
	ld   a, [bc]                                     ; $6bda: $0a
	inc  e                                           ; $6bdb: $1c
	inc  b                                           ; $6bdc: $04
	ld   bc, $0101                                   ; $6bdd: $01 $01 $01
	ld   bc, $c907                                   ; $6be0: $01 $07 $c9
	push af                                          ; $6be3: $f5
	ld   bc, $ac08                                   ; $6be4: $01 $08 $ac
	push bc                                          ; $6be7: $c5
	ld   l, l                                        ; $6be8: $6d
	add  a                                           ; $6be9: $87
	ld   [hl], h                                     ; $6bea: $74
	dec  c                                           ; $6beb: $0d
	ld   bc, $a707                                   ; $6bec: $01 $07 $a7
	rst  JumpTable                                         ; $6bef: $df
	ld   bc, $5908                                   ; $6bf0: $01 $08 $59
	ld   [hl], c                                     ; $6bf3: $71
	ld   l, l                                        ; $6bf4: $6d
	rst  $38                                         ; $6bf5: $ff
	rst  $38                                         ; $6bf6: $ff
	dec  c                                           ; $6bf7: $0d
	ld   a, b                                        ; $6bf8: $78
	and  c                                           ; $6bf9: $a1
	ld   l, a                                        ; $6bfa: $6f
	sub  c                                           ; $6bfb: $91
	ld   [hl], c                                     ; $6bfc: $71
	ld   [hl], h                                     ; $6bfd: $74
	sbc  a                                           ; $6bfe: $9f
	dec  c                                           ; $6bff: $0d
	nop                                              ; $6c00: $00
	ld   a, [bc]                                     ; $6c01: $0a
	rlca                                             ; $6c02: $07
	cp   l                                           ; $6c03: $bd
	ld   b, $03                                      ; $6c04: $06 $03
	rst  $38                                         ; $6c06: $ff
	ld   bc, $2301                                   ; $6c07: $01 $01 $23
	nop                                              ; $6c0a: $00
	dec  e                                           ; $6c0b: $1d
	ld   b, b                                        ; $6c0c: $40
	inc  d                                           ; $6c0d: $14
	inc  bc                                          ; $6c0e: $03
	inc  d                                           ; $6c0f: $14
	ld   bc, $2803                                   ; $6c10: $01 $03 $28
	nop                                              ; $6c13: $00
	ld   bc, $6763                                   ; $6c14: $01 $63 $67
	ld   e, d                                        ; $6c17: $5a
	sbc  [hl]                                        ; $6c18: $9e
	ld   l, a                                        ; $6c19: $6f
	ld   d, d                                        ; $6c1a: $52
	ld   [bc], a                                     ; $6c1b: $02
	inc  de                                          ; $6c1c: $13
	ld   l, a                                        ; $6c1d: $6f
	sub  c                                           ; $6c1e: $91
	and  c                                           ; $6c1f: $a1
	ld   l, [hl]                                     ; $6c20: $6e
	ld   a, e                                        ; $6c21: $7b
	sbc  a                                           ; $6c22: $9f
	dec  c                                           ; $6c23: $0d
	ld   d, b                                        ; $6c24: $50
	ei                                               ; $6c25: $fb
	sbc  [hl]                                        ; $6c26: $9e
	ld   e, b                                        ; $6c27: $58
	sub  b                                           ; $6c28: $90
	ld   h, l                                        ; $6c29: $65
	sbc  e                                           ; $6c2a: $9b
	ld   e, c                                        ; $6c2b: $59
	ld   [hl], c                                     ; $6c2c: $71
	ld   l, l                                        ; $6c2d: $6d
	sbc  a                                           ; $6c2e: $9f
	dec  c                                           ; $6c2f: $0d
	nop                                              ; $6c30: $00
	ld   a, [bc]                                     ; $6c31: $0a
	ld   bc, $9850                                   ; $6c32: $01 $50 $98
	ld   e, d                                        ; $6c35: $5a
	halt                                             ; $6c36: $76
	ld   d, h                                        ; $6c37: $54
	sbc  [hl]                                        ; $6c38: $9e
	ld   l, a                                        ; $6c39: $6f
	ld   d, d                                        ; $6c3a: $52
	ld   [bc], a                                     ; $6c3b: $02
	inc  de                                          ; $6c3c: $13
	ld   l, a                                        ; $6c3d: $6f
	sub  c                                           ; $6c3e: $91
	and  c                                           ; $6c3f: $a1
	sbc  a                                           ; $6c40: $9f
	dec  c                                           ; $6c41: $0d
	nop                                              ; $6c42: $00
	ld   a, [bc]                                     ; $6c43: $0a
	nop                                              ; $6c44: $00
	inc  e                                           ; $6c45: $1c
	inc  b                                           ; $6c46: $04
	inc  bc                                          ; $6c47: $03
	inc  bc                                          ; $6c48: $03
	dec  e                                           ; $6c49: $1d
	ld   b, b                                        ; $6c4a: $40
	inc  d                                           ; $6c4b: $14
	inc  bc                                          ; $6c4c: $03
	inc  d                                           ; $6c4d: $14
	ld   bc, $2801                                   ; $6c4e: $01 $01 $28
	nop                                              ; $6c51: $00
	ld   bc, $976e                                   ; $6c52: $01 $6e $97
	ld   h, l                                        ; $6c55: $65
	ld   a, b                                        ; $6c56: $78
	ld   d, d                                        ; $6c57: $52
	ld   a, b                                        ; $6c58: $78
	ld   c, a                                        ; $6c59: $4f
	sbc  [hl]                                        ; $6c5a: $9e
	dec  c                                           ; $6c5b: $0d
	ld   l, a                                        ; $6c5c: $6f
	ld   d, d                                        ; $6c5d: $52
	ld   [bc], a                                     ; $6c5e: $02
	inc  de                                          ; $6c5f: $13
	ld   l, a                                        ; $6c60: $6f
	sub  c                                           ; $6c61: $91
	and  c                                           ; $6c62: $a1
	sbc  a                                           ; $6c63: $9f
	dec  c                                           ; $6c64: $0d
	nop                                              ; $6c65: $00
	inc  e                                           ; $6c66: $1c
	inc  b                                           ; $6c67: $04
	nop                                              ; $6c68: $00
	nop                                              ; $6c69: $00
	ld   bc, $9075                                   ; $6c6a: $01 $75 $90
	sbc  [hl]                                        ; $6c6d: $9e
	ld   e, b                                        ; $6c6e: $58
	sub  b                                           ; $6c6f: $90
	ld   h, l                                        ; $6c70: $65
	sbc  e                                           ; $6c71: $9b
	ld   e, c                                        ; $6c72: $59
	ld   [hl], c                                     ; $6c73: $71
	ld   l, l                                        ; $6c74: $6d
	sbc  a                                           ; $6c75: $9f
	dec  c                                           ; $6c76: $0d
	nop                                              ; $6c77: $00
	ld   a, [bc]                                     ; $6c78: $0a
	nop                                              ; $6c79: $00
	rrca                                             ; $6c7a: $0f
	nop                                              ; $6c7b: $00
	ld   bc, $6601                                   ; $6c7c: $01 $01 $66
	sub  c                                           ; $6c7f: $91
	ld   d, b                                        ; $6c80: $50
	sbc  [hl]                                        ; $6c81: $9e
	ld   h, [hl]                                     ; $6c82: $66
	sub  c                                           ; $6c83: $91
	and  c                                           ; $6c84: $a1
	ld   e, a                                        ; $6c85: $5f
	and  c                                           ; $6c86: $a1
	and  b                                           ; $6c87: $a0
	ld   h, l                                        ; $6c88: $65
	sub  [hl]                                        ; $6c89: $96
	ld   d, h                                        ; $6c8a: $54
	sbc  a                                           ; $6c8b: $9f
	dec  c                                           ; $6c8c: $0d
	nop                                              ; $6c8d: $00
	ld   a, [bc]                                     ; $6c8e: $0a
	dec  b                                           ; $6c8f: $05
	add  b                                           ; $6c90: $80
	ld   b, l                                        ; $6c91: $45
	ld   bc, $0001                                   ; $6c92: $01 $01 $00
	inc  e                                           ; $6c95: $1c
	inc  b                                           ; $6c96: $04
	ld   bc, $0101                                   ; $6c97: $01 $01 $01
	ld   d, h                                        ; $6c9a: $54
	and  c                                           ; $6c9b: $a1
	ld   a, [$000d]                                  ; $6c9c: $fa $0d $00
	dec  b                                           ; $6c9f: $05
	ld   b, b                                        ; $6ca0: $40
	rst  $38                                         ; $6ca1: $ff
	ld   bc, $0005                                   ; $6ca2: $01 $05 $00
	ld   bc, $9166                                   ; $6ca5: $01 $66 $91
	sbc  [hl]                                        ; $6ca8: $9e
	ld   d, d                                        ; $6ca9: $52
	ld   e, l                                        ; $6caa: $5d
	sub  [hl]                                        ; $6cab: $96
	rst  $38                                         ; $6cac: $ff
	rst  $38                                         ; $6cad: $ff
	dec  c                                           ; $6cae: $0d
	ld   h, [hl]                                     ; $6caf: $66
	sub  c                                           ; $6cb0: $91
	and  c                                           ; $6cb1: $a1
	ld   e, a                                        ; $6cb2: $5f
	and  c                                           ; $6cb3: $a1
	adc  e                                           ; $6cb4: $8b
	and  c                                           ; $6cb5: $a1
	ld   a, [$000d]                                  ; $6cb6: $fa $0d $00
	ld   a, [bc]                                     ; $6cb9: $0a
	rrca                                             ; $6cba: $0f
	nop                                              ; $6cbb: $00
	ld   bc, $0101                                   ; $6cbc: $01 $01 $01
	inc  bc                                          ; $6cbf: $03
	and  e                                           ; $6cc0: $a3
	and  l                                           ; $6cc1: $a5
	db   $ec                                         ; $6cc2: $ec
	cp   d                                           ; $6cc3: $ba
	ld   a, l                                        ; $6cc4: $7d
	rst  $38                                         ; $6cc5: $ff
	rst  $38                                         ; $6cc6: $ff
	jp   nc, Jump_04c_6efb                           ; $6cc7: $d2 $fb $6e

	ld   bc, $0d04                                   ; $6cca: $01 $04 $0d
	nop                                              ; $6ccd: $00
	ld   a, [bc]                                     ; $6cce: $0a
	add  hl, de                                      ; $6ccf: $19
	dec  b                                           ; $6cd0: $05
	inc  bc                                          ; $6cd1: $03
	or   c                                           ; $6cd2: $b1
	ei                                               ; $6cd3: $fb
	and  b                                           ; $6cd4: $a0
	inc  bc                                          ; $6cd5: $03
	add  b                                           ; $6cd6: $80
	ld   h, a                                        ; $6cd7: $67
	nop                                              ; $6cd8: $00
	nop                                              ; $6cd9: $00
	jp   nz, $aee9                                   ; $6cda: $c2 $e9 $ae

	and  b                                           ; $6cdd: $a0
	inc  bc                                          ; $6cde: $03
	add  b                                           ; $6cdf: $80
	ld   h, a                                        ; $6ce0: $67
	nop                                              ; $6ce1: $00
	ld   bc, $fbd2                                   ; $6ce2: $01 $d2 $fb
	and  b                                           ; $6ce5: $a0
	inc  bc                                          ; $6ce6: $03
	add  b                                           ; $6ce7: $80
	ld   h, a                                        ; $6ce8: $67
	nop                                              ; $6ce9: $00
	ld   [bc], a                                     ; $6cea: $02
	rlca                                             ; $6ceb: $07
	add  c                                           ; $6cec: $81
	rlca                                             ; $6ced: $07
	ld   [bc], a                                     ; $6cee: $02
	inc  bc                                          ; $6cef: $03
	ld   bc, $2000                                   ; $6cf0: $01 $00 $20
	nop                                              ; $6cf3: $00
	rlca                                             ; $6cf4: $07
	xor  [hl]                                        ; $6cf5: $ae
	rlca                                             ; $6cf6: $07
	ld   [bc], a                                     ; $6cf7: $02
	inc  bc                                          ; $6cf8: $03
	ld   bc, $2001                                   ; $6cf9: $01 $01 $20
	nop                                              ; $6cfc: $00
	rlca                                             ; $6cfd: $07
	ret  c                                           ; $6cfe: $d8

	rlca                                             ; $6cff: $07
	ld   [bc], a                                     ; $6d00: $02
	inc  bc                                          ; $6d01: $03
	ld   bc, $2002                                   ; $6d02: $01 $02 $20
	nop                                              ; $6d05: $00
	ld   b, $01                                      ; $6d06: $06 $01
	ld   [$000f], sp                                 ; $6d08: $08 $0f $00
	ld   bc, $b101                                   ; $6d0b: $01 $01 $b1
	ei                                               ; $6d0e: $fb
	ld   l, [hl]                                     ; $6d0f: $6e
	ld   a, [$000d]                                  ; $6d10: $fa $0d $00
	ld   a, [bc]                                     ; $6d13: $0a
	inc  e                                           ; $6d14: $1c
	inc  b                                           ; $6d15: $04
	ld   bc, $0101                                   ; $6d16: $01 $01 $01
	sbc  l                                           ; $6d19: $9d
	ei                                               ; $6d1a: $fb
	ld   d, d                                        ; $6d1b: $52
	ld   a, [$a30d]                                  ; $6d1c: $fa $0d $a3
	and  l                                           ; $6d1f: $a5
	db   $ec                                         ; $6d20: $ec
	cp   d                                           ; $6d21: $ba
	ld   a, h                                        ; $6d22: $7c
	ld   e, c                                        ; $6d23: $59
	ld   l, a                                        ; $6d24: $6f
	ei                                               ; $6d25: $fb
	ld   a, [$000d]                                  ; $6d26: $fa $0d $00
	ld   a, [bc]                                     ; $6d29: $0a
	dec  b                                           ; $6d2a: $05
	ld   b, b                                        ; $6d2b: $40
	rst  $38                                         ; $6d2c: $ff
	inc  bc                                          ; $6d2d: $03
	rst  $38                                         ; $6d2e: $ff
	ld   bc, $2801                                   ; $6d2f: $01 $01 $28
	nop                                              ; $6d32: $00
	ld   b, $43                                      ; $6d33: $06 $43
	ld   [$000f], sp                                 ; $6d35: $08 $0f $00
	ld   bc, wtodo_VisitedTitleScreen                                   ; $6d38: $01 $01 $c2
	jp   hl                                          ; $6d3b: $e9


	xor  [hl]                                        ; $6d3c: $ae
	ld   l, [hl]                                     ; $6d3d: $6e
	ld   a, [$000d]                                  ; $6d3e: $fa $0d $00
	ld   a, [bc]                                     ; $6d41: $0a
	dec  b                                           ; $6d42: $05
	ld   b, b                                        ; $6d43: $40
	rst  $38                                         ; $6d44: $ff
	inc  bc                                          ; $6d45: $03
	rst  $38                                         ; $6d46: $ff
	ld   bc, $2901                                   ; $6d47: $01 $01 $29
	nop                                              ; $6d4a: $00
	inc  e                                           ; $6d4b: $1c
	inc  b                                           ; $6d4c: $04
	ld   b, $06                                      ; $6d4d: $06 $06
	ld   bc, $9e50                                   ; $6d4f: $01 $50 $9e
	adc  h                                           ; $6d52: $8c
	ld   e, a                                        ; $6d53: $5f
	ld   l, a                                        ; $6d54: $6f
	sub  c                                           ; $6d55: $91
	ld   [hl], c                                     ; $6d56: $71
	ld   l, l                                        ; $6d57: $6d
	rst  $38                                         ; $6d58: $ff
	rst  $38                                         ; $6d59: $ff
	dec  c                                           ; $6d5a: $0d

Jump_04c_6d5b:
	nop                                              ; $6d5b: $00
	ld   a, [bc]                                     ; $6d5c: $0a
	ld   b, $43                                      ; $6d5d: $06 $43
	ld   [$000f], sp                                 ; $6d5f: $08 $0f $00
	ld   bc, $d201                                   ; $6d62: $01 $01 $d2

Jump_04c_6d65:
	ei                                               ; $6d65: $fb
	ld   l, [hl]                                     ; $6d66: $6e
	ld   a, [$000d]                                  ; $6d67: $fa $0d $00
	ld   a, [bc]                                     ; $6d6a: $0a
	inc  e                                           ; $6d6b: $1c
	inc  b                                           ; $6d6c: $04
	nop                                              ; $6d6d: $00
	nop                                              ; $6d6e: $00
	ld   bc, $9e50                                   ; $6d6f: $01 $50 $9e
	ld   d, b                                        ; $6d72: $50
	ld   d, d                                        ; $6d73: $52
	ld   h, c                                        ; $6d74: $61
	ld   l, [hl]                                     ; $6d75: $6e
	rst  $38                                         ; $6d76: $ff
	rst  $38                                         ; $6d77: $ff
	dec  c                                           ; $6d78: $0d
	ld   h, [hl]                                     ; $6d79: $66
	sub  c                                           ; $6d7a: $91
	sbc  [hl]                                        ; $6d7b: $9e
	ld   d, b                                        ; $6d7c: $50
	ld   d, d                                        ; $6d7d: $52
	ld   h, c                                        ; $6d7e: $61
	ld   [hl], l                                     ; $6d7f: $75
	ld   h, l                                        ; $6d80: $65
	sub  l                                           ; $6d81: $95
	ld   a, [$000d]                                  ; $6d82: $fa $0d $00
	ld   a, [bc]                                     ; $6d85: $0a
	ld   b, $60                                      ; $6d86: $06 $60
	ld   [$041c], sp                                 ; $6d88: $08 $1c $04
	ld   [bc], a                                     ; $6d8b: $02
	ld   [bc], a                                     ; $6d8c: $02
	dec  e                                           ; $6d8d: $1d
	ld   b, b                                        ; $6d8e: $40
	inc  d                                           ; $6d8f: $14
	inc  bc                                          ; $6d90: $03
	inc  d                                           ; $6d91: $14
	ld   bc, $2903                                   ; $6d92: $01 $03 $29
	nop                                              ; $6d95: $00
	ld   bc, $526f                                   ; $6d96: $01 $6f $52
	ld   [bc], a                                     ; $6d99: $02
	inc  de                                          ; $6d9a: $13
	ld   l, a                                        ; $6d9b: $6f
	sub  c                                           ; $6d9c: $91
	and  c                                           ; $6d9d: $a1
	sbc  [hl]                                        ; $6d9e: $9e
	cp   e                                           ; $6d9f: $bb
	db   $ed                                         ; $6da0: $ed
	and  l                                           ; $6da1: $a5
	ld   a, [$500d]                                  ; $6da2: $fa $0d $50
	halt                                             ; $6da5: $76
	ld   l, [hl]                                     ; $6da6: $6e
	ld   h, l                                        ; $6da7: $65
	ld   h, l                                        ; $6da8: $65
	ld   l, l                                        ; $6da9: $6d
	ei                                               ; $6daa: $fb
	ld   a, [$000d]                                  ; $6dab: $fa $0d $00
	ld   a, [bc]                                     ; $6dae: $0a
	ld   bc, $5490                                   ; $6daf: $01 $90 $54
	sbc  [hl]                                        ; $6db2: $9e
	ld   l, a                                        ; $6db3: $6f
	ld   d, d                                        ; $6db4: $52
	ld   [bc], a                                     ; $6db5: $02
	inc  de                                          ; $6db6: $13
	ld   l, a                                        ; $6db7: $6f
	sub  c                                           ; $6db8: $91
	and  c                                           ; $6db9: $a1
	halt                                             ; $6dba: $76
	ld   a, l                                        ; $6dbb: $7d
	dec  c                                           ; $6dbc: $0d
	sub  d                                           ; $6dbd: $92
	and  c                                           ; $6dbe: $a1
	ld   a, b                                        ; $6dbf: $78
	ld   d, d                                        ; $6dc0: $52
	ld   a, [$d60d]                                  ; $6dc1: $fa $0d $d6
	push af                                          ; $6dc4: $f5
	ld   l, [hl]                                     ; $6dc5: $6e
	ld   a, [$000d]                                  ; $6dc6: $fa $0d $00
	ld   a, [bc]                                     ; $6dc9: $0a
	nop                                              ; $6dca: $00
	inc  e                                           ; $6dcb: $1c
	inc  b                                           ; $6dcc: $04
	nop                                              ; $6dcd: $00
	nop                                              ; $6dce: $00
	ld   bc, $9166                                   ; $6dcf: $01 $66 $91
	sbc  [hl]                                        ; $6dd2: $9e
	ld   a, c                                        ; $6dd3: $79
	ld   e, c                                        ; $6dd4: $59
	ld   d, d                                        ; $6dd5: $52
	adc  a                                           ; $6dd6: $8f
	ld   d, d                                        ; $6dd7: $52
	ld   e, l                                        ; $6dd8: $5d
	sub  [hl]                                        ; $6dd9: $96
	rst  $38                                         ; $6dda: $ff
	rst  $38                                         ; $6ddb: $ff
	dec  c                                           ; $6ddc: $0d
	ld   h, [hl]                                     ; $6ddd: $66
	sub  c                                           ; $6dde: $91
	and  c                                           ; $6ddf: $a1
	ld   e, a                                        ; $6de0: $5f
	and  c                                           ; $6de1: $a1
	adc  e                                           ; $6de2: $8b
	and  c                                           ; $6de3: $a1
	ld   a, [$000d]                                  ; $6de4: $fa $0d $00
	ld   a, [bc]                                     ; $6de7: $0a
	rrca                                             ; $6de8: $0f
	nop                                              ; $6de9: $00
	ld   bc, $0101                                   ; $6dea: $01 $01 $01
	inc  bc                                          ; $6ded: $03
	and  e                                           ; $6dee: $a3
	and  l                                           ; $6def: $a5
	db   $ec                                         ; $6df0: $ec
	cp   d                                           ; $6df1: $ba
	ld   a, l                                        ; $6df2: $7d
	rst  $38                                         ; $6df3: $ff
	rst  $38                                         ; $6df4: $ff
	or   c                                           ; $6df5: $b1
	ei                                               ; $6df6: $fb
	ld   l, [hl]                                     ; $6df7: $6e
	ld   bc, $0d04                                   ; $6df8: $01 $04 $0d
	nop                                              ; $6dfb: $00
	ld   a, [bc]                                     ; $6dfc: $0a
	add  hl, de                                      ; $6dfd: $19
	dec  b                                           ; $6dfe: $05
	inc  bc                                          ; $6dff: $03
	jp   nz, $aee9                                   ; $6e00: $c2 $e9 $ae

	and  b                                           ; $6e03: $a0
	inc  bc                                          ; $6e04: $03
	add  b                                           ; $6e05: $80
	ld   h, a                                        ; $6e06: $67
	nop                                              ; $6e07: $00
	nop                                              ; $6e08: $00
	jp   nc, $a0fb                                   ; $6e09: $d2 $fb $a0

	inc  bc                                          ; $6e0c: $03
	add  b                                           ; $6e0d: $80
	ld   h, a                                        ; $6e0e: $67
	nop                                              ; $6e0f: $00
	ld   bc, $fbb1                                   ; $6e10: $01 $b1 $fb
	and  b                                           ; $6e13: $a0
	inc  bc                                          ; $6e14: $03
	add  b                                           ; $6e15: $80
	ld   h, a                                        ; $6e16: $67
	nop                                              ; $6e17: $00
	ld   [bc], a                                     ; $6e18: $02
	rlca                                             ; $6e19: $07
	xor  a                                           ; $6e1a: $af
	ld   [$0302], sp                                 ; $6e1b: $08 $02 $03
	ld   bc, $2000                                   ; $6e1e: $01 $00 $20
	nop                                              ; $6e21: $00
	rlca                                             ; $6e22: $07
	db   $dd                                         ; $6e23: $dd
	ld   [$0302], sp                                 ; $6e24: $08 $02 $03
	ld   bc, $2001                                   ; $6e27: $01 $01 $20
	nop                                              ; $6e2a: $00
	rlca                                             ; $6e2b: $07
	ld   b, $09                                      ; $6e2c: $06 $09
	ld   [bc], a                                     ; $6e2e: $02
	inc  bc                                          ; $6e2f: $03
	ld   bc, $2002                                   ; $6e30: $01 $02 $20
	nop                                              ; $6e33: $00
	ld   b, $01                                      ; $6e34: $06 $01
	ld   [$000f], sp                                 ; $6e36: $08 $0f $00
	ld   bc, wtodo_VisitedTitleScreen                                   ; $6e39: $01 $01 $c2
	jp   hl                                          ; $6e3c: $e9


	xor  [hl]                                        ; $6e3d: $ae
	ld   l, [hl]                                     ; $6e3e: $6e
	ld   a, [$000d]                                  ; $6e3f: $fa $0d $00
	ld   a, [bc]                                     ; $6e42: $0a
	inc  e                                           ; $6e43: $1c
	inc  b                                           ; $6e44: $04
	ld   bc, $0101                                   ; $6e45: $01 $01 $01
	sbc  l                                           ; $6e48: $9d
	ei                                               ; $6e49: $fb
	ld   d, d                                        ; $6e4a: $52
	ld   a, [$a30d]                                  ; $6e4b: $fa $0d $a3
	and  l                                           ; $6e4e: $a5
	db   $ec                                         ; $6e4f: $ec
	cp   d                                           ; $6e50: $ba
	ld   a, h                                        ; $6e51: $7c
	ld   e, c                                        ; $6e52: $59
	ld   l, a                                        ; $6e53: $6f
	ei                                               ; $6e54: $fb
	ld   a, [$000d]                                  ; $6e55: $fa $0d $00
	ld   a, [bc]                                     ; $6e58: $0a
	dec  b                                           ; $6e59: $05
	ld   b, b                                        ; $6e5a: $40
	rst  $38                                         ; $6e5b: $ff
	inc  bc                                          ; $6e5c: $03
	rst  $38                                         ; $6e5d: $ff
	ld   bc, $2801                                   ; $6e5e: $01 $01 $28
	nop                                              ; $6e61: $00
	ld   b, $2f                                      ; $6e62: $06 $2f
	add  hl, bc                                      ; $6e64: $09
	rrca                                             ; $6e65: $0f
	nop                                              ; $6e66: $00
	ld   bc, $d201                                   ; $6e67: $01 $01 $d2
	ei                                               ; $6e6a: $fb
	ld   l, [hl]                                     ; $6e6b: $6e
	ld   a, [$000d]                                  ; $6e6c: $fa $0d $00
	ld   a, [bc]                                     ; $6e6f: $0a
	dec  b                                           ; $6e70: $05
	ld   b, b                                        ; $6e71: $40
	rst  $38                                         ; $6e72: $ff
	inc  bc                                          ; $6e73: $03
	rst  $38                                         ; $6e74: $ff
	ld   bc, $2901                                   ; $6e75: $01 $01 $29
	nop                                              ; $6e78: $00
	inc  e                                           ; $6e79: $1c
	inc  b                                           ; $6e7a: $04
	ld   b, $06                                      ; $6e7b: $06 $06
	ld   bc, $9e50                                   ; $6e7d: $01 $50 $9e
	adc  h                                           ; $6e80: $8c
	ld   e, a                                        ; $6e81: $5f
	ld   l, a                                        ; $6e82: $6f
	sub  c                                           ; $6e83: $91
	ld   [hl], c                                     ; $6e84: $71
	ld   l, l                                        ; $6e85: $6d
	rst  $38                                         ; $6e86: $ff
	rst  $38                                         ; $6e87: $ff
	dec  c                                           ; $6e88: $0d
	nop                                              ; $6e89: $00
	ld   a, [bc]                                     ; $6e8a: $0a
	ld   b, $2f                                      ; $6e8b: $06 $2f
	add  hl, bc                                      ; $6e8d: $09
	rrca                                             ; $6e8e: $0f
	nop                                              ; $6e8f: $00
	ld   bc, $b101                                   ; $6e90: $01 $01 $b1
	ei                                               ; $6e93: $fb
	ld   l, [hl]                                     ; $6e94: $6e
	ld   a, [$000d]                                  ; $6e95: $fa $0d $00
	ld   a, [bc]                                     ; $6e98: $0a
	inc  e                                           ; $6e99: $1c
	inc  b                                           ; $6e9a: $04
	nop                                              ; $6e9b: $00
	nop                                              ; $6e9c: $00
	ld   bc, $9e50                                   ; $6e9d: $01 $50 $9e
	ld   d, b                                        ; $6ea0: $50
	ld   d, d                                        ; $6ea1: $52
	ld   h, c                                        ; $6ea2: $61
	ld   l, [hl]                                     ; $6ea3: $6e
	rst  $38                                         ; $6ea4: $ff
	rst  $38                                         ; $6ea5: $ff
	dec  c                                           ; $6ea6: $0d
	ld   h, [hl]                                     ; $6ea7: $66
	sub  c                                           ; $6ea8: $91
	sbc  [hl]                                        ; $6ea9: $9e
	ld   d, b                                        ; $6eaa: $50
	ld   d, d                                        ; $6eab: $52
	ld   h, c                                        ; $6eac: $61
	ld   [hl], l                                     ; $6ead: $75
	ld   h, l                                        ; $6eae: $65
	sub  l                                           ; $6eaf: $95
	ld   a, [$000d]                                  ; $6eb0: $fa $0d $00
	ld   a, [bc]                                     ; $6eb3: $0a
	ld   b, $4d                                      ; $6eb4: $06 $4d
	add  hl, bc                                      ; $6eb6: $09
	inc  e                                           ; $6eb7: $1c
	inc  b                                           ; $6eb8: $04
	nop                                              ; $6eb9: $00
	nop                                              ; $6eba: $00
	ld   bc, $9166                                   ; $6ebb: $01 $66 $91
	sbc  [hl]                                        ; $6ebe: $9e
	ld   h, e                                        ; $6ebf: $63
	and  c                                           ; $6ec0: $a1
	ld   e, c                                        ; $6ec1: $59
	ld   d, d                                        ; $6ec2: $52
	adc  a                                           ; $6ec3: $8f
	ld   d, d                                        ; $6ec4: $52
	ld   e, l                                        ; $6ec5: $5d
	sub  [hl]                                        ; $6ec6: $96
	rst  $38                                         ; $6ec7: $ff
	rst  $38                                         ; $6ec8: $ff
	dec  c                                           ; $6ec9: $0d
	ld   h, [hl]                                     ; $6eca: $66
	sub  c                                           ; $6ecb: $91
	and  c                                           ; $6ecc: $a1
	ld   e, a                                        ; $6ecd: $5f
	and  c                                           ; $6ece: $a1
	adc  e                                           ; $6ecf: $8b
	and  c                                           ; $6ed0: $a1
	ld   a, [$000d]                                  ; $6ed1: $fa $0d $00
	ld   a, [bc]                                     ; $6ed4: $0a
	rrca                                             ; $6ed5: $0f
	nop                                              ; $6ed6: $00
	ld   bc, $0101                                   ; $6ed7: $01 $01 $01
	inc  bc                                          ; $6eda: $03
	and  e                                           ; $6edb: $a3
	and  l                                           ; $6edc: $a5
	db   $ec                                         ; $6edd: $ec
	cp   d                                           ; $6ede: $ba
	ld   a, l                                        ; $6edf: $7d
	rst  $38                                         ; $6ee0: $ff
	rst  $38                                         ; $6ee1: $ff
	or   c                                           ; $6ee2: $b1
	ei                                               ; $6ee3: $fb
	ld   l, [hl]                                     ; $6ee4: $6e
	ld   bc, $0d04                                   ; $6ee5: $01 $04 $0d
	nop                                              ; $6ee8: $00
	ld   a, [bc]                                     ; $6ee9: $0a
	add  hl, de                                      ; $6eea: $19
	dec  b                                           ; $6eeb: $05
	inc  bc                                          ; $6eec: $03
	jp   nz, $aee9                                   ; $6eed: $c2 $e9 $ae

	and  b                                           ; $6ef0: $a0
	inc  bc                                          ; $6ef1: $03
	add  b                                           ; $6ef2: $80
	ld   h, a                                        ; $6ef3: $67
	nop                                              ; $6ef4: $00
	nop                                              ; $6ef5: $00
	jp   nc, $a0fb                                   ; $6ef6: $d2 $fb $a0

	inc  bc                                          ; $6ef9: $03
	add  b                                           ; $6efa: $80

Jump_04c_6efb:
	ld   h, a                                        ; $6efb: $67
	nop                                              ; $6efc: $00
	ld   bc, $fbb1                                   ; $6efd: $01 $b1 $fb
	and  b                                           ; $6f00: $a0
	inc  bc                                          ; $6f01: $03
	add  b                                           ; $6f02: $80
	ld   h, a                                        ; $6f03: $67
	nop                                              ; $6f04: $00
	ld   [bc], a                                     ; $6f05: $02
	rlca                                             ; $6f06: $07
	sbc  h                                           ; $6f07: $9c
	add  hl, bc                                      ; $6f08: $09
	ld   [bc], a                                     ; $6f09: $02
	inc  bc                                          ; $6f0a: $03
	ld   bc, $2000                                   ; $6f0b: $01 $00 $20
	nop                                              ; $6f0e: $00
	rlca                                             ; $6f0f: $07
	jp   z, $0209                                    ; $6f10: $ca $09 $02

	inc  bc                                          ; $6f13: $03
	ld   bc, $2001                                   ; $6f14: $01 $01 $20
	nop                                              ; $6f17: $00
	rlca                                             ; $6f18: $07
	di                                               ; $6f19: $f3
	add  hl, bc                                      ; $6f1a: $09
	ld   [bc], a                                     ; $6f1b: $02
	inc  bc                                          ; $6f1c: $03
	ld   bc, $2002                                   ; $6f1d: $01 $02 $20
	nop                                              ; $6f20: $00
	ld   b, $01                                      ; $6f21: $06 $01
	ld   [$000f], sp                                 ; $6f23: $08 $0f $00
	ld   bc, wtodo_VisitedTitleScreen                                   ; $6f26: $01 $01 $c2
	jp   hl                                          ; $6f29: $e9


	xor  [hl]                                        ; $6f2a: $ae
	ld   l, [hl]                                     ; $6f2b: $6e
	ld   a, [$000d]                                  ; $6f2c: $fa $0d $00
	ld   a, [bc]                                     ; $6f2f: $0a
	inc  e                                           ; $6f30: $1c
	inc  b                                           ; $6f31: $04
	ld   bc, $0101                                   ; $6f32: $01 $01 $01
	sbc  l                                           ; $6f35: $9d
	ei                                               ; $6f36: $fb
	ld   d, d                                        ; $6f37: $52
	ld   a, [$a30d]                                  ; $6f38: $fa $0d $a3
	and  l                                           ; $6f3b: $a5
	db   $ec                                         ; $6f3c: $ec
	cp   d                                           ; $6f3d: $ba
	ld   a, h                                        ; $6f3e: $7c
	ld   e, c                                        ; $6f3f: $59
	ld   l, a                                        ; $6f40: $6f
	ei                                               ; $6f41: $fb
	ld   a, [$000d]                                  ; $6f42: $fa $0d $00
	ld   a, [bc]                                     ; $6f45: $0a
	dec  b                                           ; $6f46: $05
	ld   b, b                                        ; $6f47: $40
	rst  $38                                         ; $6f48: $ff
	inc  bc                                          ; $6f49: $03
	rst  $38                                         ; $6f4a: $ff
	ld   bc, $2801                                   ; $6f4b: $01 $01 $28
	nop                                              ; $6f4e: $00
	ld   b, $12                                      ; $6f4f: $06 $12
	ld   a, [bc]                                     ; $6f51: $0a
	rrca                                             ; $6f52: $0f
	nop                                              ; $6f53: $00
	ld   bc, $d201                                   ; $6f54: $01 $01 $d2
	ei                                               ; $6f57: $fb
	ld   l, [hl]                                     ; $6f58: $6e
	ld   a, [$000d]                                  ; $6f59: $fa $0d $00
	ld   a, [bc]                                     ; $6f5c: $0a
	dec  b                                           ; $6f5d: $05
	ld   b, b                                        ; $6f5e: $40
	rst  $38                                         ; $6f5f: $ff
	inc  bc                                          ; $6f60: $03
	rst  $38                                         ; $6f61: $ff
	ld   bc, $2901                                   ; $6f62: $01 $01 $29
	nop                                              ; $6f65: $00
	inc  e                                           ; $6f66: $1c
	inc  b                                           ; $6f67: $04
	ld   b, $06                                      ; $6f68: $06 $06
	ld   bc, $9e50                                   ; $6f6a: $01 $50 $9e
	adc  h                                           ; $6f6d: $8c
	ld   e, a                                        ; $6f6e: $5f
	ld   l, a                                        ; $6f6f: $6f
	sub  c                                           ; $6f70: $91
	ld   [hl], c                                     ; $6f71: $71
	ld   l, l                                        ; $6f72: $6d
	rst  $38                                         ; $6f73: $ff
	rst  $38                                         ; $6f74: $ff
	dec  c                                           ; $6f75: $0d
	nop                                              ; $6f76: $00
	ld   a, [bc]                                     ; $6f77: $0a
	ld   b, $12                                      ; $6f78: $06 $12
	ld   a, [bc]                                     ; $6f7a: $0a
	rrca                                             ; $6f7b: $0f
	nop                                              ; $6f7c: $00
	ld   bc, $b101                                   ; $6f7d: $01 $01 $b1
	ei                                               ; $6f80: $fb
	ld   l, [hl]                                     ; $6f81: $6e
	ld   a, [$000d]                                  ; $6f82: $fa $0d $00
	ld   a, [bc]                                     ; $6f85: $0a
	inc  e                                           ; $6f86: $1c
	inc  b                                           ; $6f87: $04
	nop                                              ; $6f88: $00
	nop                                              ; $6f89: $00
	ld   bc, $9a50                                   ; $6f8a: $01 $50 $9a
	sbc  [hl]                                        ; $6f8d: $9e
	ld   d, b                                        ; $6f8e: $50
	ld   d, d                                        ; $6f8f: $52
	ld   h, c                                        ; $6f90: $61
	ld   l, [hl]                                     ; $6f91: $6e
	rst  $38                                         ; $6f92: $ff
	rst  $38                                         ; $6f93: $ff
	dec  c                                           ; $6f94: $0d
	nop                                              ; $6f95: $00
	ld   a, [bc]                                     ; $6f96: $0a
	ld   b, $12                                      ; $6f97: $06 $12
	ld   a, [bc]                                     ; $6f99: $0a
	rrca                                             ; $6f9a: $0f
	nop                                              ; $6f9b: $00
	ld   bc, $0101                                   ; $6f9c: $01 $01 $01
	inc  bc                                          ; $6f9f: $03
	add  e                                           ; $6fa0: $83
	ld   d, h                                        ; $6fa1: $54
	rst  $38                                         ; $6fa2: $ff
	rst  $38                                         ; $6fa3: $ff
	ld   h, c                                        ; $6fa4: $61
	and  c                                           ; $6fa5: $a1
	ld   a, b                                        ; $6fa6: $78
	sub  b                                           ; $6fa7: $90
	and  c                                           ; $6fa8: $a1
	ld   l, [hl]                                     ; $6fa9: $6e
	sbc  e                                           ; $6faa: $9b
	ld   d, h                                        ; $6fab: $54
	ld   bc, $0d04                                   ; $6fac: $01 $04 $0d
	nop                                              ; $6faf: $00
	ld   a, [bc]                                     ; $6fb0: $0a
	rlca                                             ; $6fb1: $07
	db   $fd                                         ; $6fb2: $fd
	ld   a, [bc]                                     ; $6fb3: $0a
	inc  bc                                          ; $6fb4: $03
	rst  $38                                         ; $6fb5: $ff
	ld   bc, $2005                                   ; $6fb6: $01 $05 $20
	nop                                              ; $6fb9: $00
	rlca                                             ; $6fba: $07
	and  a                                           ; $6fbb: $a7
	ld   a, [bc]                                     ; $6fbc: $0a
	inc  bc                                          ; $6fbd: $03
	rst  $38                                         ; $6fbe: $ff
	ld   bc, $2506                                   ; $6fbf: $01 $06 $25
	nop                                              ; $6fc2: $00
	inc  e                                           ; $6fc3: $1c
	inc  b                                           ; $6fc4: $04
	rlca                                             ; $6fc5: $07
	rlca                                             ; $6fc6: $07
	dec  e                                           ; $6fc7: $1d
	ld   b, b                                        ; $6fc8: $40
	inc  d                                           ; $6fc9: $14
	inc  bc                                          ; $6fca: $03
	inc  d                                           ; $6fcb: $14
	ld   bc, $2903                                   ; $6fcc: $01 $03 $29
	nop                                              ; $6fcf: $00
	ld   bc, $526f                                   ; $6fd0: $01 $6f $52
	ld   [bc], a                                     ; $6fd3: $02
	inc  de                                          ; $6fd4: $13
	ld   l, a                                        ; $6fd5: $6f
	sub  c                                           ; $6fd6: $91
	and  c                                           ; $6fd7: $a1
	cp   e                                           ; $6fd8: $bb
	db   $ed                                         ; $6fd9: $ed
	and  l                                           ; $6fda: $a5
	db   $fc                                         ; $6fdb: $fc
	rst  $38                                         ; $6fdc: $ff
	rst  $38                                         ; $6fdd: $ff
	dec  c                                           ; $6fde: $0d
	ld   l, d                                        ; $6fdf: $6a
	ld   [hl], c                                     ; $6fe0: $71
	ld   l, l                                        ; $6fe1: $6d
	ld   d, d                                        ; $6fe2: $52
	sbc  [hl]                                        ; $6fe3: $9e
	ld   l, d                                        ; $6fe4: $6a
	ld   [hl], c                                     ; $6fe5: $71
	ld   l, l                                        ; $6fe6: $6d
	ld   d, d                                        ; $6fe7: $52
	sbc  [hl]                                        ; $6fe8: $9e
	dec  c                                           ; $6fe9: $0d
	ld   d, b                                        ; $6fea: $50
	halt                                             ; $6feb: $76
	ld   l, [hl]                                     ; $6fec: $6e
	ld   h, l                                        ; $6fed: $65
	ld   h, l                                        ; $6fee: $65
	ld   l, l                                        ; $6fef: $6d
	and  c                                           ; $6ff0: $a1
	ld   l, [hl]                                     ; $6ff1: $6e
	rst  $38                                         ; $6ff2: $ff
	rst  $38                                         ; $6ff3: $ff
	dec  c                                           ; $6ff4: $0d
	nop                                              ; $6ff5: $00
	ld   a, [bc]                                     ; $6ff6: $0a
	inc  e                                           ; $6ff7: $1c
	inc  b                                           ; $6ff8: $04
	inc  b                                           ; $6ff9: $04
	inc  b                                           ; $6ffa: $04
	ld   bc, $bab1                                   ; $6ffb: $01 $b1 $ba
	push af                                          ; $6ffe: $f5
	rst  $38                                         ; $6fff: $ff
	rst  $38                                         ; $7000: $ff
	dec  c                                           ; $7001: $0d
	and  e                                           ; $7002: $a3
	and  l                                           ; $7003: $a5
	db   $ec                                         ; $7004: $ec
	cp   d                                           ; $7005: $ba
	ld   h, [hl]                                     ; $7006: $66
	sub  c                                           ; $7007: $91
	and  c                                           ; $7008: $a1
	ld   e, a                                        ; $7009: $5f
	and  c                                           ; $700a: $a1
	dec  c                                           ; $700b: $0d
	ld   [hl], d                                     ; $700c: $72
	sub  [hl]                                        ; $700d: $96
	ld   d, d                                        ; $700e: $52
	ld   a, h                                        ; $700f: $7c
	ld   a, c                                        ; $7010: $79
	rst  $38                                         ; $7011: $ff
	rst  $38                                         ; $7012: $ff
	dec  c                                           ; $7013: $0d
	nop                                              ; $7014: $00
	ld   a, [bc]                                     ; $7015: $0a
	ld   bc, $6152                                   ; $7016: $01 $52 $61
	ld   d, h                                        ; $7019: $54
	sbc  [hl]                                        ; $701a: $9e
	cp   c                                           ; $701b: $b9
	push hl                                          ; $701c: $e5
	push af                                          ; $701d: $f5
	sbc  $fb                                         ; $701e: $de $fb
	db   $ed                                         ; $7020: $ed
	rst  $38                                         ; $7021: $ff
	rst  $38                                         ; $7022: $ff
	dec  c                                           ; $7023: $0d
	nop                                              ; $7024: $00
	ld   a, [bc]                                     ; $7025: $0a
	dec  c                                           ; $7026: $0d
	nop                                              ; $7027: $00
	nop                                              ; $7028: $00
	rrca                                             ; $7029: $0f
	nop                                              ; $702a: $00
	ld   bc, $1e09                                   ; $702b: $01 $09 $1e
	nop                                              ; $702e: $00
	inc  e                                           ; $702f: $1c
	inc  b                                           ; $7030: $04
	ld   bc, $1d01                                   ; $7031: $01 $01 $1d
	ld   b, b                                        ; $7034: $40
	inc  d                                           ; $7035: $14
	inc  bc                                          ; $7036: $03
	inc  d                                           ; $7037: $14
	ld   bc, $2803                                   ; $7038: $01 $03 $28
	nop                                              ; $703b: $00
	ld   bc, $fb9d                                   ; $703c: $01 $9d $fb
	ld   d, d                                        ; $703f: $52
	sbc  [hl]                                        ; $7040: $9e
	sbc  l                                           ; $7041: $9d
	ei                                               ; $7042: $fb
	ld   d, d                                        ; $7043: $52
	ld   a, [$a30d]                                  ; $7044: $fa $0d $a3
	and  l                                           ; $7047: $a5
	db   $ec                                         ; $7048: $ec
	cp   d                                           ; $7049: $ba
	ld   a, h                                        ; $704a: $7c
	ld   e, c                                        ; $704b: $59
	ld   l, a                                        ; $704c: $6f
	ei                                               ; $704d: $fb
	ld   a, [$000d]                                  ; $704e: $fa $0d $00
	ld   a, [bc]                                     ; $7051: $0a
	ld   bc, $7156                                   ; $7052: $01 $56 $71
	add  [hl]                                        ; $7055: $86
	and  c                                           ; $7056: $a1
	ld   a, [$a30d]                                  ; $7057: $fa $0d $a3
	and  l                                           ; $705a: $a5
	db   $ec                                         ; $705b: $ec
	cp   d                                           ; $705c: $ba
	ld   h, a                                        ; $705d: $67
	ld   h, d                                        ; $705e: $62
	ld   d, d                                        ; $705f: $52
	ld   [hl], l                                     ; $7060: $75
	ld   h, l                                        ; $7061: $65
	sub  l                                           ; $7062: $95
	ld   sp, hl                                      ; $7063: $f9
	dec  c                                           ; $7064: $0d
	nop                                              ; $7065: $00
	ld   a, [bc]                                     ; $7066: $0a
	ld   bc, $fb50                                   ; $7067: $01 $50 $fb
	ld   e, b                                        ; $706a: $58
	sub  b                                           ; $706b: $90
	ld   h, l                                        ; $706c: $65
	sbc  e                                           ; $706d: $9b
	ld   e, c                                        ; $706e: $59
	ld   [hl], c                                     ; $706f: $71
	ld   l, l                                        ; $7070: $6d
	sbc  a                                           ; $7071: $9f
	dec  c                                           ; $7072: $0d
	ld   d, b                                        ; $7073: $50
	sbc  b                                           ; $7074: $98
	ld   e, d                                        ; $7075: $5a
	halt                                             ; $7076: $76
	ld   d, h                                        ; $7077: $54
	sbc  [hl]                                        ; $7078: $9e
	ld   l, a                                        ; $7079: $6f
	ld   d, d                                        ; $707a: $52
	ld   [bc], a                                     ; $707b: $02
	inc  de                                          ; $707c: $13
	ld   l, a                                        ; $707d: $6f
	sub  c                                           ; $707e: $91
	and  c                                           ; $707f: $a1
	sbc  a                                           ; $7080: $9f
	dec  c                                           ; $7081: $0d
	nop                                              ; $7082: $00
	ld   a, [bc]                                     ; $7083: $0a
	nop                                              ; $7084: $00
	inc  e                                           ; $7085: $1c
	inc  b                                           ; $7086: $04
	nop                                              ; $7087: $00
	nop                                              ; $7088: $00
	ld   bc, $5058                                   ; $7089: $01 $58 $50
	ld   d, d                                        ; $708c: $52
	ld   h, c                                        ; $708d: $61
	ld   l, [hl]                                     ; $708e: $6e
	ld   a, e                                        ; $708f: $7b
	sbc  [hl]                                        ; $7090: $9e
	dec  c                                           ; $7091: $0d
	ld   l, a                                        ; $7092: $6f
	ld   d, d                                        ; $7093: $52
	ld   [bc], a                                     ; $7094: $02
	inc  de                                          ; $7095: $13
	ld   l, a                                        ; $7096: $6f
	sub  c                                           ; $7097: $91
	and  c                                           ; $7098: $a1
	sbc  a                                           ; $7099: $9f
	dec  c                                           ; $709a: $0d
	nop                                              ; $709b: $00
	ld   a, [bc]                                     ; $709c: $0a
	dec  e                                           ; $709d: $1d
	ld   b, b                                        ; $709e: $40
	inc  d                                           ; $709f: $14
	inc  bc                                          ; $70a0: $03
	inc  d                                           ; $70a1: $14
	ld   bc, $2801                                   ; $70a2: $01 $01 $28
	nop                                              ; $70a5: $00
	ld   bc, $9075                                   ; $70a6: $01 $75 $90
	sbc  [hl]                                        ; $70a9: $9e
	ld   e, b                                        ; $70aa: $58
	sub  b                                           ; $70ab: $90
	ld   h, l                                        ; $70ac: $65
	sbc  e                                           ; $70ad: $9b
	ld   e, c                                        ; $70ae: $59
	ld   [hl], c                                     ; $70af: $71
	ld   l, l                                        ; $70b0: $6d
	sbc  a                                           ; $70b1: $9f
	dec  c                                           ; $70b2: $0d
	ld   d, b                                        ; $70b3: $50
	sbc  b                                           ; $70b4: $98
	ld   e, d                                        ; $70b5: $5a
	halt                                             ; $70b6: $76
	ld   d, h                                        ; $70b7: $54
	sbc  [hl]                                        ; $70b8: $9e
	ld   l, a                                        ; $70b9: $6f
	ld   d, d                                        ; $70ba: $52
	ld   [bc], a                                     ; $70bb: $02
	inc  de                                          ; $70bc: $13
	ld   l, a                                        ; $70bd: $6f
	sub  c                                           ; $70be: $91
	and  c                                           ; $70bf: $a1
	sbc  a                                           ; $70c0: $9f
	dec  c                                           ; $70c1: $0d
	nop                                              ; $70c2: $00
	ld   a, [bc]                                     ; $70c3: $0a
	nop                                              ; $70c4: $00
	nop                                              ; $70c5: $00
	ld   d, $12                                      ; $70c6: $16 $12
	rrca                                             ; $70c8: $0f
	nop                                              ; $70c9: $00
	ld   bc, $0102                                   ; $70ca: $01 $02 $01
	ld   e, b                                        ; $70cd: $58
	ld   a, l                                        ; $70ce: $7d
	sub  [hl]                                        ; $70cf: $96
	ld   d, h                                        ; $70d0: $54
	ld   h, d                                        ; $70d1: $62
	ld   h, h                                        ; $70d2: $64
	ld   d, d                                        ; $70d3: $52
	adc  h                                           ; $70d4: $8c
	ld   h, a                                        ; $70d5: $67
	sbc  a                                           ; $70d6: $9f
	dec  c                                           ; $70d7: $0d
	nop                                              ; $70d8: $00
	ld   a, [bc]                                     ; $70d9: $0a
	rrca                                             ; $70da: $0f
	ld   b, $01                                      ; $70db: $06 $01
	ld   bc, $c4ab                                   ; $70dd: $01 $ab $c4
	cp   d                                           ; $70e0: $ba
	ld   a, [$6f0d]                                  ; $70e1: $fa $0d $6f
	sub  c                                           ; $70e4: $91
	and  c                                           ; $70e5: $a1
	halt                                             ; $70e6: $76
	ld   [bc], a                                     ; $70e7: $02
	ld   [hl], d                                     ; $70e8: $72
	ld   d, b                                        ; $70e9: $50
	sub  a                                           ; $70ea: $97
	ld   [hl], c                                     ; $70eb: $71
	ld   l, l                                        ; $70ec: $6d
	ld   e, c                                        ; $70ed: $59
	ld   sp, hl                                      ; $70ee: $f9
	dec  c                                           ; $70ef: $0d
	nop                                              ; $70f0: $00
	ld   a, [bc]                                     ; $70f1: $0a
	rrca                                             ; $70f2: $0f
	nop                                              ; $70f3: $00
	ld   bc, $0101                                   ; $70f4: $01 $01 $01
	inc  bc                                          ; $70f7: $03
	inc  b                                           ; $70f8: $04
	ld   c, c                                        ; $70f9: $49
	and  b                                           ; $70fa: $a0
	ld   [bc], a                                     ; $70fb: $02
	jp   nz, Jump_04c_5461                           ; $70fc: $c2 $61 $54

	ld   e, c                                        ; $70ff: $59
	ld   a, b                                        ; $7100: $78
	rst  $38                                         ; $7101: $ff
	rst  $38                                         ; $7102: $ff
	ld   bc, $0d04                                   ; $7103: $01 $04 $0d
	nop                                              ; $7106: $00
	ld   a, [bc]                                     ; $7107: $0a
	add  hl, de                                      ; $7108: $19
	dec  b                                           ; $7109: $05
	inc  bc                                          ; $710a: $03
	inc  b                                           ; $710b: $04
	adc  d                                           ; $710c: $8a
	inc  bc                                          ; $710d: $03
	ld   e, [hl]                                     ; $710e: $5e
	ld   [bc], a                                     ; $710f: $02
	adc  h                                           ; $7110: $8c
	ld   a, c                                        ; $7111: $79
	ld   [hl], d                                     ; $7112: $72
	ld   d, d                                        ; $7113: $52
	ld   [hl], h                                     ; $7114: $74
	ld   [bc], a                                     ; $7115: $02
	jp   nz, $005d                                   ; $7116: $c2 $5d $00

	nop                                              ; $7119: $00
	ld   [bc], a                                     ; $711a: $02
	sbc  d                                           ; $711b: $9a
	inc  b                                           ; $711c: $04
	sub  d                                           ; $711d: $92
	ld   a, c                                        ; $711e: $79
	ld   [hl], d                                     ; $711f: $72
	ld   d, d                                        ; $7120: $52
	ld   [hl], h                                     ; $7121: $74
	nop                                              ; $7122: $00
	ld   bc, $0804                                   ; $7123: $01 $04 $08
	ld   [bc], a                                     ; $7126: $02
	adc  a                                           ; $7127: $8f
	ld   [bc], a                                     ; $7128: $02
	sub  b                                           ; $7129: $90
	ld   [bc], a                                     ; $712a: $02
	sub  c                                           ; $712b: $91
	inc  b                                           ; $712c: $04
	add  hl, bc                                      ; $712d: $09
	ld   a, c                                        ; $712e: $79
	ld   [hl], d                                     ; $712f: $72
	ld   d, d                                        ; $7130: $52
	ld   [hl], h                                     ; $7131: $74
	nop                                              ; $7132: $00
	ld   [bc], a                                     ; $7133: $02
	rlca                                             ; $7134: $07
	xor  l                                           ; $7135: $ad
	nop                                              ; $7136: $00
	ld   [bc], a                                     ; $7137: $02
	inc  bc                                          ; $7138: $03
	ld   bc, $2000                                   ; $7139: $01 $00 $20
	nop                                              ; $713c: $00
	rlca                                             ; $713d: $07
	ld   a, [hl-]                                    ; $713e: $3a
	inc  bc                                          ; $713f: $03
	ld   [bc], a                                     ; $7140: $02
	inc  bc                                          ; $7141: $03
	ld   bc, $2001                                   ; $7142: $01 $01 $20
	nop                                              ; $7145: $00
	rlca                                             ; $7146: $07
	and  a                                           ; $7147: $a7
	dec  b                                           ; $7148: $05
	ld   [bc], a                                     ; $7149: $02
	inc  bc                                          ; $714a: $03
	ld   bc, $2002                                   ; $714b: $01 $02 $20
	nop                                              ; $714e: $00
	ld   b, $8c                                      ; $714f: $06 $8c
	nop                                              ; $7151: $00
	rrca                                             ; $7152: $0f
	ld   b, $01                                      ; $7153: $06 $01
	ld   bc, $a502                                   ; $7155: $01 $02 $a5
	inc  b                                           ; $7158: $04
	xor  d                                           ; $7159: $aa
	sub  b                                           ; $715a: $90
	ld   [bc], a                                     ; $715b: $02
	jr   nz, jr_04c_7162                             ; $715c: $20 $04

	xor  d                                           ; $715e: $aa
	sbc  [hl]                                        ; $715f: $9e
	dec  c                                           ; $7160: $0d
	ld   [bc], a                                     ; $7161: $02

jr_04c_7162:
	and  c                                           ; $7162: $a1
	ld   [bc], a                                     ; $7163: $02
	ld   a, e                                        ; $7164: $7b
	ld   d, d                                        ; $7165: $52
	inc  b                                           ; $7166: $04
	ld   b, l                                        ; $7167: $45
	sbc  d                                           ; $7168: $9a
	ld   [hl], h                                     ; $7169: $74
	ld   d, d                                        ; $716a: $52
	ld   h, c                                        ; $716b: $61
	ld   d, h                                        ; $716c: $54
	ld   l, d                                        ; $716d: $6a
	ld   a, [$000d]                                  ; $716e: $fa $0d $00
	ld   a, [bc]                                     ; $7171: $0a
	nop                                              ; $7172: $00
	rrca                                             ; $7173: $0f
	nop                                              ; $7174: $00
	ld   bc, $ac01                                   ; $7175: $01 $01 $ac
	push af                                          ; $7178: $f5
	bit  4, e                                        ; $7179: $cb $63
	and  c                                           ; $717b: $a1
	ld   a, h                                        ; $717c: $7c
	inc  b                                           ; $717d: $04
	adc  d                                           ; $717e: $8a
	inc  bc                                          ; $717f: $03
	ld   e, [hl]                                     ; $7180: $5e
	ld   [bc], a                                     ; $7181: $02
	adc  h                                           ; $7182: $8c
	ld   [hl], c                                     ; $7183: $71
	ld   [hl], h                                     ; $7184: $74
	dec  c                                           ; $7185: $0d
	ld   a, b                                        ; $7186: $78
	and  c                                           ; $7187: $a1
	ld   [hl], l                                     ; $7188: $75
	ld   h, a                                        ; $7189: $67
	ld   e, c                                        ; $718a: $59
	ld   sp, hl                                      ; $718b: $f9
	dec  c                                           ; $718c: $0d
	nop                                              ; $718d: $00
	ld   a, [bc]                                     ; $718e: $0a
	ld   c, $26                                      ; $718f: $0e $26
	inc  e                                           ; $7191: $1c
	ld   b, $00                                      ; $7192: $06 $00
	nop                                              ; $7194: $00
	ld   bc, $6d50                                   ; $7195: $01 $50 $6d
	ld   d, d                                        ; $7198: $52
	ld   a, h                                        ; $7199: $7c
	inc  b                                           ; $719a: $04
	adc  d                                           ; $719b: $8a
	inc  bc                                          ; $719c: $03

Jump_04c_719d:
	ld   e, [hl]                                     ; $719d: $5e
	ld   [bc], a                                     ; $719e: $02
	adc  h                                           ; $719f: $8c
	ld   sp, hl                                      ; $71a0: $f9
	dec  c                                           ; $71a1: $0d
	ld   [bc], a                                     ; $71a2: $02
	jr   nz, jr_04c_71a9                             ; $71a3: $20 $04

	add  h                                           ; $71a5: $84
	dec  b                                           ; $71a6: $05
	dec  de                                          ; $71a7: $1b
	inc  b                                           ; $71a8: $04

jr_04c_71a9:
	ld   [hl], b                                     ; $71a9: $70
	ld   l, [hl]                                     ; $71aa: $6e
	ld   e, a                                        ; $71ab: $5f
	ld   [hl], a                                     ; $71ac: $77
	sbc  a                                           ; $71ad: $9f
	dec  c                                           ; $71ae: $0d
	nop                                              ; $71af: $00
	ld   a, [bc]                                     ; $71b0: $0a
	add  hl, de                                      ; $71b1: $19
	dec  b                                           ; $71b2: $05
	inc  bc                                          ; $71b3: $03
	cp   d                                           ; $71b4: $ba
	ei                                               ; $71b5: $fb
	jp   nc, $ecfb                                   ; $71b6: $d2 $fb $ec

	push af                                          ; $71b9: $f5
	jp   nc, $f9a5                                   ; $71ba: $d2 $a5 $f9

	nop                                              ; $71bd: $00
	nop                                              ; $71be: $00
	ld   d, d                                        ; $71bf: $52
	ld   l, a                                        ; $71c0: $6f
	add  b                                           ; $71c1: $80
	sub  c                                           ; $71c2: $91
	ld   e, l                                        ; $71c3: $5d
	ld   a, l                                        ; $71c4: $7d
	sub  d                                           ; $71c5: $92
	ld   h, l                                        ; $71c6: $65
	ld   a, l                                        ; $71c7: $7d
	ld   d, d                                        ; $71c8: $52
	ld   sp, hl                                      ; $71c9: $f9
	nop                                              ; $71ca: $00
	ld   bc, $fbdf                                   ; $71cb: $01 $df $fb
	cp   c                                           ; $71ce: $b9
	push hl                                          ; $71cf: $e5
	push af                                          ; $71d0: $f5
	ld   a, h                                        ; $71d1: $7c
	inc  b                                           ; $71d2: $04
	db   $ec                                         ; $71d3: $ec
	ld   sp, hl                                      ; $71d4: $f9
	nop                                              ; $71d5: $00
	ld   [bc], a                                     ; $71d6: $02
	rlca                                             ; $71d7: $07
	cpl                                              ; $71d8: $2f
	ld   bc, $0302                                   ; $71d9: $01 $02 $03
	ld   bc, $2000                                   ; $71dc: $01 $00 $20
	nop                                              ; $71df: $00
	rlca                                             ; $71e0: $07
	adc  b                                           ; $71e1: $88
	ld   bc, $0302                                   ; $71e2: $01 $02 $03
	ld   bc, $2001                                   ; $71e5: $01 $01 $20
	nop                                              ; $71e8: $00
	rlca                                             ; $71e9: $07
	call z, $0201                                    ; $71ea: $cc $01 $02
	inc  bc                                          ; $71ed: $03
	ld   bc, $2002                                   ; $71ee: $01 $02 $20
	nop                                              ; $71f1: $00
	ld   b, $85                                      ; $71f2: $06 $85
	ld   [bc], a                                     ; $71f4: $02
	rrca                                             ; $71f5: $0f
	nop                                              ; $71f6: $00
	ld   bc, $ba01                                   ; $71f7: $01 $01 $ba
	ei                                               ; $71fa: $fb
	jp   nc, $ecfb                                   ; $71fb: $d2 $fb $ec

	push af                                          ; $71fe: $f5
	jp   nc, $0da5                                   ; $71ff: $d2 $a5 $0d

	halt                                             ; $7202: $76
	inc  b                                           ; $7203: $04
	ld   de, $7c8e                                   ; $7204: $11 $8e $7c
	ld   [hl], l                                     ; $7207: $75
	ld   h, a                                        ; $7208: $67
	ld   e, c                                        ; $7209: $59
	ld   sp, hl                                      ; $720a: $f9
	dec  c                                           ; $720b: $0d
	nop                                              ; $720c: $00
	ld   a, [bc]                                     ; $720d: $0a
	inc  e                                           ; $720e: $1c
	ld   b, $01                                      ; $720f: $06 $01
	ld   bc, $401d                                   ; $7211: $01 $1d $40
	ld   d, $03                                      ; $7214: $16 $03
	ld   d, $01                                      ; $7216: $16 $01
	ld   [bc], a                                     ; $7218: $02
	jr   z, jr_04c_721b                              ; $7219: $28 $00

jr_04c_721b:
	ld   bc, $546b                                   ; $721b: $01 $6b $54
	ld   l, [hl]                                     ; $721e: $6e
	sbc  a                                           ; $721f: $9f
	inc  bc                                          ; $7220: $03
	adc  $04                                         ; $7221: $ce $04
	ret  c                                           ; $7223: $d8

	ld   a, c                                        ; $7224: $79
	ld   h, c                                        ; $7225: $61
	add  h                                           ; $7226: $84
	ld   h, l                                        ; $7227: $65
	and  b                                           ; $7228: $a0
	dec  c                                           ; $7229: $0d
	dec  b                                           ; $722a: $05
	pop  af                                          ; $722b: $f1
	ld   l, a                                        ; $722c: $6f
	ld   [hl], d                                     ; $722d: $72
	ld   e, a                                        ; $722e: $5f
	ld   [hl], h                                     ; $722f: $74
	sbc  [hl]                                        ; $7230: $9e
	ld   h, l                                        ; $7231: $65
	sub  l                                           ; $7232: $95
	ld   d, h                                        ; $7233: $54
	ld   h, b                                        ; $7234: $60
	ld   e, e                                        ; $7235: $5b
	dec  b                                           ; $7236: $05
	ld   d, l                                        ; $7237: $55
	ld   [hl], l                                     ; $7238: $75
	dec  c                                           ; $7239: $0d
	ld   [bc], a                                     ; $723a: $02
	ld   a, [de]                                     ; $723b: $1a
	inc  bc                                          ; $723c: $03
	ld   l, e                                        ; $723d: $6b
	and  b                                           ; $723e: $a0
	ld   l, l                                        ; $723f: $6d
	ld   e, b                                        ; $7240: $58
	ld   h, a                                        ; $7241: $67
	ld   [bc], a                                     ; $7242: $02
	adc  h                                           ; $7243: $8c
	ld   a, b                                        ; $7244: $78
	and  c                                           ; $7245: $a1
	ld   l, [hl]                                     ; $7246: $6e
	sbc  a                                           ; $7247: $9f
	dec  c                                           ; $7248: $0d
	nop                                              ; $7249: $00
	ld   a, [bc]                                     ; $724a: $0a
	ld   b, $85                                      ; $724b: $06 $85
	ld   [bc], a                                     ; $724d: $02
	rrca                                             ; $724e: $0f
	nop                                              ; $724f: $00
	ld   bc, $5201                                   ; $7250: $01 $01 $52
	ld   l, a                                        ; $7253: $6f
	add  b                                           ; $7254: $80
	sub  c                                           ; $7255: $91
	ld   e, l                                        ; $7256: $5d
	ld   a, l                                        ; $7257: $7d
	sub  d                                           ; $7258: $92
	ld   h, l                                        ; $7259: $65
	ld   a, l                                        ; $725a: $7d
	ld   d, d                                        ; $725b: $52
	dec  c                                           ; $725c: $0d
	halt                                             ; $725d: $76
	inc  b                                           ; $725e: $04
	ld   de, $7c8e                                   ; $725f: $11 $8e $7c
	ld   [hl], l                                     ; $7262: $75
	ld   h, a                                        ; $7263: $67
	ld   e, c                                        ; $7264: $59
	ld   sp, hl                                      ; $7265: $f9
	dec  c                                           ; $7266: $0d
	nop                                              ; $7267: $00
	ld   a, [bc]                                     ; $7268: $0a
	inc  e                                           ; $7269: $1c
	ld   b, $03                                      ; $726a: $06 $03
	inc  bc                                          ; $726c: $03
	ld   bc, $9e78                                   ; $726d: $01 $78 $9e
	ld   a, b                                        ; $7270: $78
	and  c                                           ; $7271: $a1
	ld   l, [hl]                                     ; $7272: $6e
	ld   l, e                                        ; $7273: $6b
	sbc  b                                           ; $7274: $98
	sub  c                                           ; $7275: $91
	sbc  a                                           ; $7276: $9f
	dec  c                                           ; $7277: $0d
	rst  $38                                         ; $7278: $ff

Call_04c_7279:
	rst  $38                                         ; $7279: $ff
	adc  h                                           ; $727a: $8c
	ld   d, b                                        ; $727b: $50
	sbc  [hl]                                        ; $727c: $9e
	inc  bc                                          ; $727d: $03
	ld   l, $03                                      ; $727e: $2e $03
	pop  hl                                          ; $7280: $e1
	ld   a, l                                        ; $7281: $7d
	inc  b                                           ; $7282: $04
	ld   de, $788f                                   ; $7283: $11 $8f $78
	ld   d, d                                        ; $7286: $52
	dec  c                                           ; $7287: $0d
	sub  [hl]                                        ; $7288: $96
	ld   a, b                                        ; $7289: $78
	db   $fc                                         ; $728a: $fc
	sbc  a                                           ; $728b: $9f
	dec  c                                           ; $728c: $0d
	nop                                              ; $728d: $00
	ld   a, [bc]                                     ; $728e: $0a
	ld   b, $3f                                      ; $728f: $06 $3f
	ld   [bc], a                                     ; $7291: $02
	rrca                                             ; $7292: $0f
	nop                                              ; $7293: $00
	ld   bc, $df01                                   ; $7294: $01 $01 $df
	ei                                               ; $7297: $fb
	cp   c                                           ; $7298: $b9
	push hl                                          ; $7299: $e5
	push af                                          ; $729a: $f5
	ld   a, h                                        ; $729b: $7c
	inc  b                                           ; $729c: $04
	db   $ec                                         ; $729d: $ec
	ld   a, h                                        ; $729e: $7c
	dec  c                                           ; $729f: $0d
	inc  b                                           ; $72a0: $04
	rst  ToBoot                                         ; $72a1: $c7
	inc  bc                                          ; $72a2: $03
	ld   c, a                                        ; $72a3: $4f
	ld   [hl], l                                     ; $72a4: $75
	ld   h, a                                        ; $72a5: $67
	ld   e, c                                        ; $72a6: $59
	ld   sp, hl                                      ; $72a7: $f9
	dec  c                                           ; $72a8: $0d
	nop                                              ; $72a9: $00
	ld   a, [bc]                                     ; $72aa: $0a
	inc  e                                           ; $72ab: $1c
	ld   b, $05                                      ; $72ac: $06 $05
	dec  b                                           ; $72ae: $05
	ld   bc, $a161                                   ; $72af: $01 $61 $a1
	ld   a, b                                        ; $72b2: $78
	inc  b                                           ; $72b3: $04
	rst  ToBoot                                         ; $72b4: $c7
	inc  bc                                          ; $72b5: $03
	ld   c, a                                        ; $72b6: $4f
	ld   a, h                                        ; $72b7: $7c
	inc  b                                           ; $72b8: $04
	db   $ec                                         ; $72b9: $ec
	ld   a, l                                        ; $72ba: $7d
	ld   a, b                                        ; $72bb: $78
	ld   d, d                                        ; $72bc: $52
	sub  [hl]                                        ; $72bd: $96
	sbc  a                                           ; $72be: $9f
	dec  c                                           ; $72bf: $0d
	rst  $38                                         ; $72c0: $ff
	rst  $38                                         ; $72c1: $ff
	adc  h                                           ; $72c2: $8c
	ld   d, b                                        ; $72c3: $50
	sbc  [hl]                                        ; $72c4: $9e
	inc  bc                                          ; $72c5: $03
	ld   l, $03                                      ; $72c6: $2e $03
	pop  hl                                          ; $72c8: $e1
	ld   a, l                                        ; $72c9: $7d
	inc  b                                           ; $72ca: $04
	ld   de, $788f                                   ; $72cb: $11 $8f $78
	ld   d, d                                        ; $72ce: $52
	dec  c                                           ; $72cf: $0d
	sub  [hl]                                        ; $72d0: $96
	ld   a, b                                        ; $72d1: $78
	db   $fc                                         ; $72d2: $fc
	sbc  a                                           ; $72d3: $9f
	dec  c                                           ; $72d4: $0d
	nop                                              ; $72d5: $00
	ld   a, [bc]                                     ; $72d6: $0a
	ld   b, $3f                                      ; $72d7: $06 $3f
	ld   [bc], a                                     ; $72d9: $02
	inc  e                                           ; $72da: $1c
	ld   b, $05                                      ; $72db: $06 $05
	dec  b                                           ; $72dd: $05
	ld   bc, $1104                                   ; $72de: $01 $04 $11
	adc  a                                           ; $72e1: $8f
	ld   a, b                                        ; $72e2: $78
	ld   d, d                                        ; $72e3: $52
	ld   a, h                                        ; $72e4: $7c
	ld   e, c                                        ; $72e5: $59
	ld   sp, hl                                      ; $72e6: $f9
	dec  c                                           ; $72e7: $0d
	adc  h                                           ; $72e8: $8c
	ld   d, b                                        ; $72e9: $50
	sbc  [hl]                                        ; $72ea: $9e
	ld   l, e                                        ; $72eb: $6b
	ld   d, h                                        ; $72ec: $54
	ld   l, [hl]                                     ; $72ed: $6e
	sub  [hl]                                        ; $72ee: $96
	ld   a, b                                        ; $72ef: $78
	sbc  a                                           ; $72f0: $9f
	dec  c                                           ; $72f1: $0d
	inc  bc                                          ; $72f2: $03
	ld   l, $03                                      ; $72f3: $2e $03
	pop  hl                                          ; $72f5: $e1
	ld   a, l                                        ; $72f6: $7d
	inc  b                                           ; $72f7: $04
	ld   de, $788f                                   ; $72f8: $11 $8f $78
	ld   d, d                                        ; $72fb: $52
	sub  [hl]                                        ; $72fc: $96
	ld   a, b                                        ; $72fd: $78
	sbc  a                                           ; $72fe: $9f
	dec  c                                           ; $72ff: $0d
	nop                                              ; $7300: $00
	ld   a, [bc]                                     ; $7301: $0a
	ld   b, $3f                                      ; $7302: $06 $3f
	ld   [bc], a                                     ; $7304: $02
	inc  e                                           ; $7305: $1c
	ld   b, $01                                      ; $7306: $06 $01
	ld   bc, $ba01                                   ; $7308: $01 $01 $ba
	ei                                               ; $730b: $fb
	jp   nc, $ecfb                                   ; $730c: $d2 $fb $ec

	push af                                          ; $730f: $f5
	jp   nc, $0da5                                   ; $7310: $d2 $a5 $0d

	ld   [hl], h                                     ; $7313: $74
	inc  b                                           ; $7314: $04
	ld   de, $a18e                                   ; $7315: $11 $8e $a1
	ld   l, [hl]                                     ; $7318: $6e
	sbc  a                                           ; $7319: $9f
	dec  c                                           ; $731a: $0d
	nop                                              ; $731b: $00
	ld   a, [bc]                                     ; $731c: $0a
	ld   bc, $ce03                                   ; $731d: $01 $03 $ce
	inc  b                                           ; $7320: $04
	ret  c                                           ; $7321: $d8

	ld   a, c                                        ; $7322: $79
	ld   h, c                                        ; $7323: $61
	add  h                                           ; $7324: $84
	ld   h, l                                        ; $7325: $65
	and  b                                           ; $7326: $a0
	dec  b                                           ; $7327: $05
	pop  af                                          ; $7328: $f1
	ld   l, a                                        ; $7329: $6f
	ld   [hl], d                                     ; $732a: $72
	ld   e, a                                        ; $732b: $5f
	ld   [hl], h                                     ; $732c: $74
	dec  c                                           ; $732d: $0d
	ld   h, l                                        ; $732e: $65
	sub  l                                           ; $732f: $95
	ld   d, h                                        ; $7330: $54
	ld   h, b                                        ; $7331: $60
	ld   e, e                                        ; $7332: $5b
	dec  b                                           ; $7333: $05
	ld   d, l                                        ; $7334: $55
	ld   [hl], l                                     ; $7335: $75
	ld   [bc], a                                     ; $7336: $02
	ld   a, [de]                                     ; $7337: $1a
	inc  bc                                          ; $7338: $03
	ld   l, e                                        ; $7339: $6b
	and  b                                           ; $733a: $a0
	ld   l, l                                        ; $733b: $6d
	ld   e, b                                        ; $733c: $58
	ld   h, a                                        ; $733d: $67
	dec  c                                           ; $733e: $0d
	ld   [bc], a                                     ; $733f: $02
	adc  h                                           ; $7340: $8c
	ld   a, b                                        ; $7341: $78
	and  c                                           ; $7342: $a1
	ld   l, [hl]                                     ; $7343: $6e
	sbc  a                                           ; $7344: $9f
	dec  c                                           ; $7345: $0d
	nop                                              ; $7346: $00
	ld   a, [bc]                                     ; $7347: $0a
	ld   b, $85                                      ; $7348: $06 $85
	ld   [bc], a                                     ; $734a: $02
	inc  e                                           ; $734b: $1c
	ld   b, $00                                      ; $734c: $06 $00
	nop                                              ; $734e: $00
	ld   bc, $9075                                   ; $734f: $01 $75 $90
	sbc  [hl]                                        ; $7352: $9e
	inc  bc                                          ; $7353: $03
	di                                               ; $7354: $f3
	inc  bc                                          ; $7355: $03
	sbc  c                                           ; $7356: $99
	ld   [hl], a                                     ; $7357: $77
	ld   d, h                                        ; $7358: $54
	ld   h, l                                        ; $7359: $65
	ld   l, l                                        ; $735a: $6d
	and  c                                           ; $735b: $a1
	ld   l, [hl]                                     ; $735c: $6e
	sbc  a                                           ; $735d: $9f
	dec  c                                           ; $735e: $0d
	inc  b                                           ; $735f: $04
	adc  d                                           ; $7360: $8a
	inc  bc                                          ; $7361: $03
	ld   e, [hl]                                     ; $7362: $5e
	ld   [bc], a                                     ; $7363: $02
	adc  h                                           ; $7364: $8c
	ld   l, [hl]                                     ; $7365: $6e
	ld   a, b                                        ; $7366: $78
	and  c                                           ; $7367: $a1
	ld   [hl], h                                     ; $7368: $74
	rst  $38                                         ; $7369: $ff
	rst  $38                                         ; $736a: $ff
	dec  c                                           ; $736b: $0d
	nop                                              ; $736c: $00
	ld   a, [bc]                                     ; $736d: $0a
	rrca                                             ; $736e: $0f
	nop                                              ; $736f: $00
	ld   bc, $5201                                   ; $7370: $01 $01 $52
	ld   [hl], d                                     ; $7373: $72
	ld   e, c                                        ; $7374: $59
	inc  bc                                          ; $7375: $03
	xor  h                                           ; $7376: $ac
	sbc  c                                           ; $7377: $99
	sbc  [hl]                                        ; $7378: $9e
	inc  b                                           ; $7379: $04
	ld   l, l                                        ; $737a: $6d
	ld   a, h                                        ; $737b: $7c
	inc  b                                           ; $737c: $04
	adc  d                                           ; $737d: $8a
	inc  bc                                          ; $737e: $03
	ld   e, [hl]                                     ; $737f: $5e
	ld   [bc], a                                     ; $7380: $02
	adc  h                                           ; $7381: $8c
	ld   a, h                                        ; $7382: $7c
	dec  c                                           ; $7383: $0d
	inc  bc                                          ; $7384: $03
	inc  de                                          ; $7385: $13
	ld   [bc], a                                     ; $7386: $02
	ld   h, l                                        ; $7387: $65
	ld   a, c                                        ; $7388: $79
	ld   h, l                                        ; $7389: $65
	sub  [hl]                                        ; $738a: $96
	ld   d, h                                        ; $738b: $54
	ld   e, c                                        ; $738c: $59
	halt                                             ; $738d: $76
	dec  c                                           ; $738e: $0d
	dec  b                                           ; $738f: $05
	pop  de                                          ; $7390: $d1
	ld   d, d                                        ; $7391: $52
	adc  h                                           ; $7392: $8c
	ld   h, l                                        ; $7393: $65
	ld   [hl], h                                     ; $7394: $74
	sbc  a                                           ; $7395: $9f
	dec  c                                           ; $7396: $0d
	nop                                              ; $7397: $00
	ld   a, [bc]                                     ; $7398: $0a
	inc  e                                           ; $7399: $1c
	ld   b, $05                                      ; $739a: $06 $05
	dec  b                                           ; $739c: $05
	ld   bc, $0358                                   ; $739d: $01 $58 $03
	ld   c, a                                        ; $73a0: $4f
	sbc  a                                           ; $73a1: $9f
	inc  b                                           ; $73a2: $04
	rst  ToBoot                                         ; $73a3: $c7
	inc  bc                                          ; $73a4: $03
	ld   c, a                                        ; $73a5: $4f
	sub  [hl]                                        ; $73a6: $96
	sbc  b                                           ; $73a7: $98
	inc  bc                                          ; $73a8: $03
	ld   a, b                                        ; $73a9: $78
	ld   a, c                                        ; $73aa: $79
	dec  c                                           ; $73ab: $0d
	ld   [bc], a                                     ; $73ac: $02
	adc  h                                           ; $73ad: $8c
	and  b                                           ; $73ae: $a0
	inc  bc                                          ; $73af: $03
	xor  h                                           ; $73b0: $ac
	sbc  c                                           ; $73b1: $99
	inc  bc                                          ; $73b2: $03
	db   $d3                                         ; $73b3: $d3
	dec  b                                           ; $73b4: $05
	ld   a, [bc]                                     ; $73b5: $0a
	and  b                                           ; $73b6: $a0
	ld   h, l                                        ; $73b7: $65
	ld   a, b                                        ; $73b8: $78
	ld   e, e                                        ; $73b9: $5b
	sub  c                                           ; $73ba: $91
	dec  c                                           ; $73bb: $0d
	pop  bc                                          ; $73bc: $c1
	db   $e3                                         ; $73bd: $e3
	ld   l, [hl]                                     ; $73be: $6e
	sbc  e                                           ; $73bf: $9b
	ld   d, h                                        ; $73c0: $54
	sbc  a                                           ; $73c1: $9f
	dec  c                                           ; $73c2: $0d
	nop                                              ; $73c3: $00
	ld   a, [bc]                                     ; $73c4: $0a
	inc  e                                           ; $73c5: $1c
	ld   b, $02                                      ; $73c6: $06 $02
	ld   [bc], a                                     ; $73c8: $02
	ld   bc, $9789                                   ; $73c9: $01 $89 $97
	adc  c                                           ; $73cc: $89
	sub  a                                           ; $73cd: $97
	sbc  [hl]                                        ; $73ce: $9e
	inc  bc                                          ; $73cf: $03
	ld   l, l                                        ; $73d0: $6d
	dec  b                                           ; $73d1: $05
	add  hl, de                                      ; $73d2: $19
	ld   e, d                                        ; $73d3: $5a
	dec  b                                           ; $73d4: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73d5: $cf
	adc  h                                           ; $73d6: $8c
	sbc  c                                           ; $73d7: $99
	ld   l, h                                        ; $73d8: $6c
	sbc  a                                           ; $73d9: $9f
	dec  c                                           ; $73da: $0d
	dec  b                                           ; $73db: $05
	jr   z, jr_04c_7430                              ; $73dc: $28 $52

	ld   [hl], l                                     ; $73de: $75
	sbc  [hl]                                        ; $73df: $9e
	inc  bc                                          ; $73e0: $03
	inc  e                                           ; $73e1: $1c
	inc  b                                           ; $73e2: $04
	ld   d, e                                        ; $73e3: $53
	ld   h, l                                        ; $73e4: $65
	sbc  e                                           ; $73e5: $9b
	ld   a, [$020d]                                  ; $73e6: $fa $0d $02
	and  l                                           ; $73e9: $a5
	inc  b                                           ; $73ea: $04
	xor  d                                           ; $73eb: $aa
	sub  b                                           ; $73ec: $90
	sbc  [hl]                                        ; $73ed: $9e
	ld   e, d                                        ; $73ee: $5a
	and  c                                           ; $73ef: $a1
	ld   a, [hl]                                     ; $73f0: $7e
	sbc  d                                           ; $73f1: $9a
	sub  [hl]                                        ; $73f2: $96
	sbc  a                                           ; $73f3: $9f
	dec  c                                           ; $73f4: $0d
	nop                                              ; $73f5: $00
	ld   a, [bc]                                     ; $73f6: $0a
	dec  c                                           ; $73f7: $0d
	nop                                              ; $73f8: $00
	nop                                              ; $73f9: $00
	rrca                                             ; $73fa: $0f
	nop                                              ; $73fb: $00
	ld   bc, $1e09                                   ; $73fc: $01 $09 $1e
	nop                                              ; $73ff: $00
	rrca                                             ; $7400: $0f
	nop                                              ; $7401: $00
	ld   bc, $ac01                                   ; $7402: $01 $01 $ac
	push af                                          ; $7405: $f5
	bit  4, e                                        ; $7406: $cb $63
	and  c                                           ; $7408: $a1
	ld   a, h                                        ; $7409: $7c
	ld   [bc], a                                     ; $740a: $02
	sbc  d                                           ; $740b: $9a
	ld   e, e                                        ; $740c: $5b
	ld   a, b                                        ; $740d: $78
	inc  bc                                          ; $740e: $03
	ld   l, d                                        ; $740f: $6a
	add  a                                           ; $7410: $87
	inc  b                                           ; $7411: $04
	sub  d                                           ; $7412: $92
	ld   a, l                                        ; $7413: $7d
	dec  c                                           ; $7414: $0d
	inc  b                                           ; $7415: $04
	ld   c, c                                        ; $7416: $49
	ld   [hl], l                                     ; $7417: $75
	ld   h, a                                        ; $7418: $67
	ld   e, c                                        ; $7419: $59
	ld   sp, hl                                      ; $741a: $f9
	dec  c                                           ; $741b: $0d
	nop                                              ; $741c: $00
	ld   a, [bc]                                     ; $741d: $0a
	dec  c                                           ; $741e: $0d
	nop                                              ; $741f: $00
	nop                                              ; $7420: $00
	inc  c                                           ; $7421: $0c
	ld   [bc], a                                     ; $7422: $02
	ld   c, $26                                      ; $7423: $0e $26
	inc  e                                           ; $7425: $1c
	ld   b, $00                                      ; $7426: $06 $00
	nop                                              ; $7428: $00
	ld   bc, $546b                                   ; $7429: $01 $6b $54
	ld   l, [hl]                                     ; $742c: $6e
	ld   a, b                                        ; $742d: $78
	rst  $38                                         ; $742e: $ff
	rst  $38                                         ; $742f: $ff

jr_04c_7430:
	inc  b                                           ; $7430: $04
	ld   c, c                                        ; $7431: $49
	ld   [hl], l                                     ; $7432: $75
	sub  b                                           ; $7433: $90
	ld   [bc], a                                     ; $7434: $02
	sbc  d                                           ; $7435: $9a
	ld   e, e                                        ; $7436: $5b
	ld   l, [hl]                                     ; $7437: $6e
	ld   e, a                                        ; $7438: $5f
	ld   [hl], a                                     ; $7439: $77
	dec  c                                           ; $743a: $0d
	sub  d                                           ; $743b: $92
	ld   [hl], c                                     ; $743c: $71
	ld   a, a                                        ; $743d: $7f
	ld   [bc], a                                     ; $743e: $02
	dec  c                                           ; $743f: $0d
	inc  b                                           ; $7440: $04
	halt                                             ; $7441: $76
	dec  b                                           ; $7442: $05
	ld   [bc], a                                     ; $7443: $02
	dec  b                                           ; $7444: $05
	ld   de, $037d                                   ; $7445: $11 $7d $03
	ld   l, c                                        ; $7448: $69
	ld   [bc], a                                     ; $7449: $02
	cp   [hl]                                        ; $744a: $be
	ld   l, [hl]                                     ; $744b: $6e
	sub  [hl]                                        ; $744c: $96
	ld   a, b                                        ; $744d: $78
	sbc  a                                           ; $744e: $9f
	dec  c                                           ; $744f: $0d
	nop                                              ; $7450: $00
	ld   a, [bc]                                     ; $7451: $0a
	ld   bc, $0358                                   ; $7452: $01 $58 $03
	ld   c, a                                        ; $7455: $4f
	sbc  [hl]                                        ; $7456: $9e
	or   l                                           ; $7457: $b5
	ei                                               ; $7458: $fb
	and  $c2                                         ; $7459: $e6 $c2
	push hl                                          ; $745b: $e5
	push af                                          ; $745c: $f5
	ret  c                                           ; $745d: $d8

	db   $ed                                         ; $745e: $ed
	ei                                               ; $745f: $fb
	ld   [hl], c                                     ; $7460: $71
	ld   [hl], h                                     ; $7461: $74
	dec  c                                           ; $7462: $0d
	inc  b                                           ; $7463: $04
	dec  hl                                          ; $7464: $2b

Call_04c_7465:
Jump_04c_7465:
	ld   [hl], c                                     ; $7465: $71
	ld   [hl], h                                     ; $7466: $74
	sbc  c                                           ; $7467: $99
	ld   e, c                                        ; $7468: $59
	ld   sp, hl                                      ; $7469: $f9
	dec  c                                           ; $746a: $0d
	nop                                              ; $746b: $00
	ld   a, [bc]                                     ; $746c: $0a
	add  hl, de                                      ; $746d: $19
	dec  b                                           ; $746e: $05
	inc  bc                                          ; $746f: $03
	ld   bc, $7907                                   ; $7470: $01 $07 $79
	ld   e, d                                        ; $7473: $5a
	ld   d, h                                        ; $7474: $54
	sbc  b                                           ; $7475: $98
	ld   bc, $7508                                   ; $7476: $01 $08 $75
	ld   h, a                                        ; $7479: $67
	sub  [hl]                                        ; $747a: $96
	ld   a, e                                        ; $747b: $7b
	ld   sp, hl                                      ; $747c: $f9
	nop                                              ; $747d: $00
	nop                                              ; $747e: $00
	ld   d, b                                        ; $747f: $50
	ld   a, h                                        ; $7480: $7c
	sbc  [hl]                                        ; $7481: $9e
	inc  b                                           ; $7482: $04
	ld   a, a                                        ; $7483: $7f
	add  a                                           ; $7484: $87
	ld   a, b                                        ; $7485: $78
	ld   d, d                                        ; $7486: $52
	dec  b                                           ; $7487: $05
	ld   sp, hl                                      ; $7488: $f9
	ld   a, h                                        ; $7489: $7c
	ld   sp, hl                                      ; $748a: $f9
	nop                                              ; $748b: $00
	ld   bc, $5254                                   ; $748c: $01 $54 $52
	sbc  e                                           ; $748f: $9b
	ld   d, h                                        ; $7490: $54
	ld   e, c                                        ; $7491: $59
	inc  b                                           ; $7492: $04
	ld   c, c                                        ; $7493: $49
	ld   e, c                                        ; $7494: $59
	inc  b                                           ; $7495: $04
	ld   b, l                                        ; $7496: $45
	ld   [hl], c                                     ; $7497: $71
	ld   [hl], h                                     ; $7498: $74
	sbc  c                                           ; $7499: $99
	rst  $38                                         ; $749a: $ff
	ld   sp, hl                                      ; $749b: $f9
	nop                                              ; $749c: $00
	ld   [bc], a                                     ; $749d: $02
	rlca                                             ; $749e: $07
	or   $03                                         ; $749f: $f6 $03
	ld   [bc], a                                     ; $74a1: $02
	inc  bc                                          ; $74a2: $03
	ld   bc, $2000                                   ; $74a3: $01 $00 $20
	nop                                              ; $74a6: $00
	rlca                                             ; $74a7: $07
	ld   l, l                                        ; $74a8: $6d
	inc  b                                           ; $74a9: $04
	ld   [bc], a                                     ; $74aa: $02
	inc  bc                                          ; $74ab: $03
	ld   bc, $2001                                   ; $74ac: $01 $01 $20
	nop                                              ; $74af: $00
	rlca                                             ; $74b0: $07
	ret  c                                           ; $74b1: $d8

	inc  b                                           ; $74b2: $04
	ld   [bc], a                                     ; $74b3: $02
	inc  bc                                          ; $74b4: $03
	ld   bc, $2002                                   ; $74b5: $01 $02 $20
	nop                                              ; $74b8: $00
	ld   b, $58                                      ; $74b9: $06 $58
	dec  b                                           ; $74bb: $05
	rrca                                             ; $74bc: $0f
	nop                                              ; $74bd: $00
	ld   bc, $0101                                   ; $74be: $01 $01 $01
	rlca                                             ; $74c1: $07
	ld   a, c                                        ; $74c2: $79
	ld   e, d                                        ; $74c3: $5a
	ld   d, h                                        ; $74c4: $54
	sbc  b                                           ; $74c5: $98
	ld   bc, $7508                                   ; $74c6: $01 $08 $75
	ld   h, a                                        ; $74c9: $67
	sub  [hl]                                        ; $74ca: $96
	ld   a, e                                        ; $74cb: $7b
	ld   sp, hl                                      ; $74cc: $f9
	dec  c                                           ; $74cd: $0d
	or   l                                           ; $74ce: $b5
	ei                                               ; $74cf: $fb
	and  $71                                         ; $74d0: $e6 $71
	ld   [hl], h                                     ; $74d2: $74
	rst  $38                                         ; $74d3: $ff
	rst  $38                                         ; $74d4: $ff
	dec  c                                           ; $74d5: $0d
	nop                                              ; $74d6: $00
	ld   a, [bc]                                     ; $74d7: $0a
	inc  e                                           ; $74d8: $1c
	ld   b, $01                                      ; $74d9: $06 $01
	ld   bc, $401d                                   ; $74db: $01 $1d $40
	ld   d, $03                                      ; $74de: $16 $03
	ld   d, $01                                      ; $74e0: $16 $01
	ld   [bc], a                                     ; $74e2: $02
	jr   z, jr_04c_74e5                              ; $74e3: $28 $00

jr_04c_74e5:
	ld   bc, $5d96                                   ; $74e5: $01 $96 $5d
	inc  b                                           ; $74e8: $04
	dec  hl                                          ; $74e9: $2b
	ld   [hl], c                                     ; $74ea: $71
	ld   [hl], h                                     ; $74eb: $74
	sbc  c                                           ; $74ec: $99
	ld   a, b                                        ; $74ed: $78
	sbc  a                                           ; $74ee: $9f
	dec  c                                           ; $74ef: $0d
	ld   d, b                                        ; $74f0: $50
	sbc  d                                           ; $74f1: $9a
	ld   e, d                                        ; $74f2: $5a
	sbc  [hl]                                        ; $74f3: $9e
	adc  h                                           ; $74f4: $8c
	ld   l, l                                        ; $74f5: $6d
	ld   d, h                                        ; $74f6: $54
	adc  h                                           ; $74f7: $8c
	ld   d, d                                        ; $74f8: $52
	and  c                                           ; $74f9: $a1
	ld   l, [hl]                                     ; $74fa: $6e
	sub  [hl]                                        ; $74fb: $96
	ld   a, b                                        ; $74fc: $78
	sbc  a                                           ; $74fd: $9f
	dec  c                                           ; $74fe: $0d
	ld   [bc], a                                     ; $74ff: $02
	ld   e, b                                        ; $7500: $58
	ld   [bc], a                                     ; $7501: $02
	add  [hl]                                        ; $7502: $86
	ld   e, d                                        ; $7503: $5a
	ld   d, b                                        ; $7504: $50
	ld   [hl], c                                     ; $7505: $71
	ld   l, l                                        ; $7506: $6d
	sub  a                                           ; $7507: $97
	inc  bc                                          ; $7508: $03
	ld   l, d                                        ; $7509: $6a
	sbc  l                                           ; $750a: $9d
	ld   l, c                                        ; $750b: $69
	ld   [hl], h                                     ; $750c: $74
	sub  d                                           ; $750d: $92
	sbc  c                                           ; $750e: $99
	sub  [hl]                                        ; $750f: $96
	dec  c                                           ; $7510: $0d
	nop                                              ; $7511: $00
	ld   a, [bc]                                     ; $7512: $0a
	ld   bc, $9166                                   ; $7513: $01 $66 $91
	sbc  [hl]                                        ; $7516: $9e
	ld   [bc], a                                     ; $7517: $02
	and  l                                           ; $7518: $a5
	inc  b                                           ; $7519: $04
	xor  d                                           ; $751a: $aa
	sub  b                                           ; $751b: $90
	ld   [bc], a                                     ; $751c: $02
	jr   nz, jr_04c_7523                             ; $751d: $20 $04

	xor  d                                           ; $751f: $aa
	sbc  [hl]                                        ; $7520: $9e
	dec  c                                           ; $7521: $0d
	ld   [bc], a                                     ; $7522: $02

jr_04c_7523:
	and  c                                           ; $7523: $a1
	ld   [bc], a                                     ; $7524: $02
	ld   a, e                                        ; $7525: $7b
	ld   d, d                                        ; $7526: $52
	inc  b                                           ; $7527: $04
	ld   b, l                                        ; $7528: $45
	sbc  d                                           ; $7529: $9a
	ld   [hl], h                                     ; $752a: $74
	ld   d, d                                        ; $752b: $52
	ld   e, a                                        ; $752c: $5f
	sub  [hl]                                        ; $752d: $96
	ld   a, [$000d]                                  ; $752e: $fa $0d $00
	ld   a, [bc]                                     ; $7531: $0a
	nop                                              ; $7532: $00
	rrca                                             ; $7533: $0f
	nop                                              ; $7534: $00
	ld   bc, $5001                                   ; $7535: $01 $01 $50
	ld   a, h                                        ; $7538: $7c
	sbc  [hl]                                        ; $7539: $9e
	inc  b                                           ; $753a: $04
	ld   a, a                                        ; $753b: $7f
	add  a                                           ; $753c: $87
	ld   a, b                                        ; $753d: $78
	ld   d, d                                        ; $753e: $52
	dec  b                                           ; $753f: $05
	ld   sp, hl                                      ; $7540: $f9
	ld   a, h                                        ; $7541: $7c
	ld   sp, hl                                      ; $7542: $f9
	dec  c                                           ; $7543: $0d
	nop                                              ; $7544: $00
	ld   a, [bc]                                     ; $7545: $0a
	inc  e                                           ; $7546: $1c
	ld   b, $05                                      ; $7547: $06 $05
	dec  b                                           ; $7549: $05
	dec  e                                           ; $754a: $1d
	ld   b, b                                        ; $754b: $40
	ld   d, $03                                      ; $754c: $16 $03
	ld   d, $01                                      ; $754e: $16 $01
	ld   bc, $0029                                   ; $7550: $01 $29 $00
	ld   bc, $9a6b                                   ; $7553: $01 $6b $9a
	ld   a, l                                        ; $7556: $7d
	and  $f5                                         ; $7557: $e6 $f5
	pop  de                                          ; $7559: $d1
	db   $ed                                         ; $755a: $ed
	or   b                                           ; $755b: $b0
	and  l                                           ; $755c: $a5
	bit  5, [hl]                                     ; $755d: $cb $6e
	sbc  e                                           ; $755f: $9b
	rst  $38                                         ; $7560: $ff
	rst  $38                                         ; $7561: $ff
	dec  c                                           ; $7562: $0d
	ld   l, d                                        ; $7563: $6a
	and  c                                           ; $7564: $a1
	ld   l, d                                        ; $7565: $6a
	and  c                                           ; $7566: $a1
	ld   l, a                                        ; $7567: $6f
	ld   e, d                                        ; $7568: $5a
	ld   d, h                                        ; $7569: $54
	ld   h, [hl]                                     ; $756a: $66
	sub  c                                           ; $756b: $91
	dec  c                                           ; $756c: $0d
	ld   a, e                                        ; $756d: $7b
	ld   d, [hl]                                     ; $756e: $56
	ld   e, c                                        ; $756f: $59
	sub  [hl]                                        ; $7570: $96
	db   $fc                                         ; $7571: $fc
	sbc  a                                           ; $7572: $9f
	dec  c                                           ; $7573: $0d
	nop                                              ; $7574: $00
	ld   a, [bc]                                     ; $7575: $0a
	inc  e                                           ; $7576: $1c
	ld   b, $00                                      ; $7577: $06 $00
	nop                                              ; $7579: $00
	ld   bc, $508c                                   ; $757a: $01 $8c $50
	ld   d, d                                        ; $757d: $52
	ld   d, d                                        ; $757e: $52
	sub  d                                           ; $757f: $92
	sbc  a                                           ; $7580: $9f
	dec  c                                           ; $7581: $0d
	ld   [bc], a                                     ; $7582: $02
	and  l                                           ; $7583: $a5
	inc  b                                           ; $7584: $04
	xor  d                                           ; $7585: $aa
	sub  b                                           ; $7586: $90
	ld   [bc], a                                     ; $7587: $02
	jr   nz, jr_04c_758e                             ; $7588: $20 $04

	xor  d                                           ; $758a: $aa
	sbc  [hl]                                        ; $758b: $9e
	dec  c                                           ; $758c: $0d
	ld   [bc], a                                     ; $758d: $02

jr_04c_758e:
	and  c                                           ; $758e: $a1
	ld   [bc], a                                     ; $758f: $02
	ld   a, e                                        ; $7590: $7b
	ld   d, d                                        ; $7591: $52
	inc  b                                           ; $7592: $04
	ld   b, l                                        ; $7593: $45
	sbc  d                                           ; $7594: $9a
	ld   [hl], h                                     ; $7595: $74
	ld   d, d                                        ; $7596: $52
	ld   e, a                                        ; $7597: $5f
	sub  [hl]                                        ; $7598: $96
	ld   a, [$000d]                                  ; $7599: $fa $0d $00
	ld   a, [bc]                                     ; $759c: $0a
	nop                                              ; $759d: $00
	rrca                                             ; $759e: $0f
	nop                                              ; $759f: $00
	ld   bc, $5401                                   ; $75a0: $01 $01 $54
	ld   d, d                                        ; $75a3: $52
	sbc  e                                           ; $75a4: $9b
	ld   d, h                                        ; $75a5: $54
	ld   e, c                                        ; $75a6: $59
	inc  b                                           ; $75a7: $04
	ld   c, c                                        ; $75a8: $49
	ld   e, c                                        ; $75a9: $59
	inc  b                                           ; $75aa: $04
	ld   b, l                                        ; $75ab: $45
	ld   [hl], c                                     ; $75ac: $71
	ld   [hl], h                                     ; $75ad: $74
	sbc  c                                           ; $75ae: $99
	dec  c                                           ; $75af: $0d
	and  c                                           ; $75b0: $a1
	ld   [hl], l                                     ; $75b1: $75
	ld   h, a                                        ; $75b2: $67
	ld   e, c                                        ; $75b3: $59
	ld   sp, hl                                      ; $75b4: $f9
	dec  c                                           ; $75b5: $0d
	nop                                              ; $75b6: $00
	ld   a, [bc]                                     ; $75b7: $0a
	inc  e                                           ; $75b8: $1c
	ld   b, $02                                      ; $75b9: $06 $02
	ld   [bc], a                                     ; $75bb: $02
	dec  e                                           ; $75bc: $1d
	ld   b, b                                        ; $75bd: $40
	ld   d, $03                                      ; $75be: $16 $03
	ld   d, $01                                      ; $75c0: $16 $01
	inc  bc                                          ; $75c2: $03
	add  hl, hl                                      ; $75c3: $29
	nop                                              ; $75c4: $00
	ld   bc, $ffff                                   ; $75c5: $01 $ff $ff
	ld   l, e                                        ; $75c8: $6b
	sbc  d                                           ; $75c9: $9a

Call_04c_75ca:
	ld   a, l                                        ; $75ca: $7d
	sbc  [hl]                                        ; $75cb: $9e
	or   l                                           ; $75cc: $b5
	ei                                               ; $75cd: $fb
	and  $66                                         ; $75ce: $e6 $66
	sub  c                                           ; $75d0: $91
	ld   a, b                                        ; $75d1: $78
	ld   e, l                                        ; $75d2: $5d
	ld   [hl], h                                     ; $75d3: $74
	dec  c                                           ; $75d4: $0d
	ld   a, b                                        ; $75d5: $78
	ld   h, d                                        ; $75d6: $62
	ei                                               ; $75d7: $fb
	sub  d                                           ; $75d8: $92
	ld   bc, $0403                                   ; $75d9: $01 $03 $04
	rst  ToBoot                                         ; $75dc: $c7
	ld   [bc], a                                     ; $75dd: $02
	or   c                                           ; $75de: $b1
	ld   [bc], a                                     ; $75df: $02
	ld   hl, $0401                                   ; $75e0: $21 $01 $04
	ld   l, [hl]                                     ; $75e3: $6e
	sbc  e                                           ; $75e4: $9b
	ld   a, [$8e0d]                                  ; $75e5: $fa $0d $8e
	ld   l, b                                        ; $75e8: $68
	ld   e, c                                        ; $75e9: $59
	ld   h, l                                        ; $75ea: $65
	ld   d, d                                        ; $75eb: $52
	db   $dd                                         ; $75ec: $dd
	or   d                                           ; $75ed: $b2
	ld   h, a                                        ; $75ee: $67
	and  c                                           ; $75ef: $a1
	ld   a, b                                        ; $75f0: $78
	sub  [hl]                                        ; $75f1: $96
	sbc  a                                           ; $75f2: $9f
	dec  c                                           ; $75f3: $0d
	nop                                              ; $75f4: $00
	ld   a, [bc]                                     ; $75f5: $0a
	inc  e                                           ; $75f6: $1c
	ld   b, $00                                      ; $75f7: $06 $00
	nop                                              ; $75f9: $00
	ld   bc, $508c                                   ; $75fa: $01 $8c $50
	ld   d, d                                        ; $75fd: $52
	ld   d, d                                        ; $75fe: $52
	sub  d                                           ; $75ff: $92
	sbc  a                                           ; $7600: $9f
	dec  c                                           ; $7601: $0d
	ld   [bc], a                                     ; $7602: $02
	and  l                                           ; $7603: $a5
	inc  b                                           ; $7604: $04
	xor  d                                           ; $7605: $aa
	sub  b                                           ; $7606: $90
	ld   [bc], a                                     ; $7607: $02
	jr   nz, jr_04c_760e                             ; $7608: $20 $04

	xor  d                                           ; $760a: $aa
	sbc  [hl]                                        ; $760b: $9e
	dec  c                                           ; $760c: $0d
	ld   [bc], a                                     ; $760d: $02

jr_04c_760e:
	and  c                                           ; $760e: $a1
	ld   [bc], a                                     ; $760f: $02
	ld   a, e                                        ; $7610: $7b
	ld   d, d                                        ; $7611: $52
	inc  b                                           ; $7612: $04
	ld   b, l                                        ; $7613: $45
	sbc  d                                           ; $7614: $9a
	ld   [hl], h                                     ; $7615: $74
	ld   d, d                                        ; $7616: $52
	ld   e, a                                        ; $7617: $5f
	sub  [hl]                                        ; $7618: $96
	ld   a, [$000d]                                  ; $7619: $fa $0d $00
	ld   a, [bc]                                     ; $761c: $0a
	nop                                              ; $761d: $00
	inc  e                                           ; $761e: $1c
	ld   b, $00                                      ; $761f: $06 $00
	nop                                              ; $7621: $00
	ld   bc, $a178                                   ; $7622: $01 $78 $a1
	ld   l, [hl]                                     ; $7625: $6e
	inc  b                                           ; $7626: $04
	dec  hl                                          ; $7627: $2b
	sub  a                                           ; $7628: $97
	ld   a, e                                        ; $7629: $7b
	ld   d, [hl]                                     ; $762a: $56
	ld   a, h                                        ; $762b: $7c
	ld   e, c                                        ; $762c: $59
	ld   sp, hl                                      ; $762d: $f9
	dec  c                                           ; $762e: $0d
	ld   d, b                                        ; $762f: $50
	and  c                                           ; $7630: $a1
	ld   a, b                                        ; $7631: $78
	ld   a, c                                        ; $7632: $79
	ld   d, h                                        ; $7633: $54
	adc  h                                           ; $7634: $8c
	ld   d, d                                        ; $7635: $52
	ld   a, h                                        ; $7636: $7c
	ld   a, c                                        ; $7637: $79
	sub  [hl]                                        ; $7638: $96
	sbc  a                                           ; $7639: $9f
	dec  c                                           ; $763a: $0d
	adc  h                                           ; $763b: $8c
	sbc  [hl]                                        ; $763c: $9e
	ld   [bc], a                                     ; $763d: $02
	and  l                                           ; $763e: $a5
	inc  b                                           ; $763f: $04
	add  hl, hl                                      ; $7640: $29
	inc  bc                                          ; $7641: $03
	ld   l, d                                        ; $7642: $6a
	sbc  l                                           ; $7643: $9d
	ld   l, c                                        ; $7644: $69
	ld   [hl], h                                     ; $7645: $74
	sub  d                                           ; $7646: $92
	sbc  c                                           ; $7647: $99
	ld   h, e                                        ; $7648: $63
	sbc  a                                           ; $7649: $9f
	dec  c                                           ; $764a: $0d
	nop                                              ; $764b: $00
	ld   a, [bc]                                     ; $764c: $0a
	ld   bc, $9166                                   ; $764d: $01 $66 $91
	sbc  [hl]                                        ; $7650: $9e
	ld   [bc], a                                     ; $7651: $02
	and  l                                           ; $7652: $a5
	inc  b                                           ; $7653: $04
	xor  d                                           ; $7654: $aa
	sub  b                                           ; $7655: $90
	ld   [bc], a                                     ; $7656: $02
	jr   nz, jr_04c_765d                             ; $7657: $20 $04

	xor  d                                           ; $7659: $aa
	sbc  [hl]                                        ; $765a: $9e
	dec  c                                           ; $765b: $0d
	ld   [bc], a                                     ; $765c: $02

jr_04c_765d:
	and  c                                           ; $765d: $a1
	ld   [bc], a                                     ; $765e: $02
	ld   a, e                                        ; $765f: $7b
	ld   d, d                                        ; $7660: $52
	inc  b                                           ; $7661: $04
	ld   b, l                                        ; $7662: $45
	sbc  d                                           ; $7663: $9a
	ld   [hl], h                                     ; $7664: $74
	ld   d, d                                        ; $7665: $52
	ld   e, a                                        ; $7666: $5f
	sub  [hl]                                        ; $7667: $96
	ld   a, [$000d]                                  ; $7668: $fa $0d $00
	ld   a, [bc]                                     ; $766b: $0a
	nop                                              ; $766c: $00
	rrca                                             ; $766d: $0f
	nop                                              ; $766e: $00
	ld   bc, $0201                                   ; $766f: $01 $01 $02
	jr   c, jr_04c_7678                              ; $7672: $38 $04

	ld   d, d                                        ; $7674: $52
	ld   [hl], c                                     ; $7675: $71
	ld   [hl], h                                     ; $7676: $74
	ld   d, d                                        ; $7677: $52

jr_04c_7678:
	sbc  e                                           ; $7678: $9b
	and  c                                           ; $7679: $a1
	ld   a, b                                        ; $767a: $78
	inc  bc                                          ; $767b: $03
	dec  bc                                          ; $767c: $0b
	ld   e, d                                        ; $767d: $5a
	ld   d, b                                        ; $767e: $50
	ld   [hl], c                                     ; $767f: $71
	ld   [hl], h                                     ; $7680: $74
	dec  c                                           ; $7681: $0d
	ld   e, c                                        ; $7682: $59
	ld   [hl], c                                     ; $7683: $71
	ld   h, c                                        ; $7684: $61
	ld   d, d                                        ; $7685: $52
	ld   d, d                                        ; $7686: $52
	ld   [hl], l                                     ; $7687: $75
	ld   h, a                                        ; $7688: $67
	sub  [hl]                                        ; $7689: $96
	ld   a, e                                        ; $768a: $7b
	sbc  a                                           ; $768b: $9f
	dec  c                                           ; $768c: $0d
	nop                                              ; $768d: $00
	ld   a, [bc]                                     ; $768e: $0a
	dec  c                                           ; $768f: $0d
	nop                                              ; $7690: $00
	nop                                              ; $7691: $00
	inc  c                                           ; $7692: $0c
	ld   [bc], a                                     ; $7693: $02
	ld   c, $26                                      ; $7694: $0e $26
	inc  e                                           ; $7696: $1c
	ld   b, $00                                      ; $7697: $06 $00
	nop                                              ; $7699: $00
	ld   bc, $5050                                   ; $769a: $01 $50 $50
	sbc  [hl]                                        ; $769d: $9e
	inc  bc                                          ; $769e: $03
	xor  c                                           ; $769f: $a9
	ld   e, d                                        ; $76a0: $5a
	inc  bc                                          ; $76a1: $03
	cp   c                                           ; $76a2: $b9
	ld   [hl], c                                     ; $76a3: $71
	ld   [hl], h                                     ; $76a4: $74
	sbc  c                                           ; $76a5: $99
	ld   e, c                                        ; $76a6: $59
	dec  c                                           ; $76a7: $0d
	inc  b                                           ; $76a8: $04
	sbc  [hl]                                        ; $76a9: $9e
	ld   e, c                                        ; $76aa: $59
	sbc  b                                           ; $76ab: $98
	sub  d                                           ; $76ac: $92
	ld   h, a                                        ; $76ad: $67
	ld   d, d                                        ; $76ae: $52
	sub  [hl]                                        ; $76af: $96
	ld   d, h                                        ; $76b0: $54
	ld   a, c                                        ; $76b1: $79
	dec  c                                           ; $76b2: $0d
	inc  bc                                          ; $76b3: $03
	dec  bc                                          ; $76b4: $0b
	inc  b                                           ; $76b5: $04
	sbc  [hl]                                        ; $76b6: $9e
	ld   e, a                                        ; $76b7: $5f
	ld   h, l                                        ; $76b8: $65
	ld   [hl], h                                     ; $76b9: $74
	ld   d, b                                        ; $76ba: $50
	sbc  c                                           ; $76bb: $99
	ld   a, h                                        ; $76bc: $7c
	ld   h, e                                        ; $76bd: $63
	sbc  a                                           ; $76be: $9f
	dec  c                                           ; $76bf: $0d
	nop                                              ; $76c0: $00
	ld   a, [bc]                                     ; $76c1: $0a
	ld   bc, $6176                                   ; $76c2: $01 $76 $61
	sbc  e                                           ; $76c5: $9b
	ld   [hl], l                                     ; $76c6: $75
	sbc  [hl]                                        ; $76c7: $9e
	ld   e, b                                        ; $76c8: $58
	inc  bc                                          ; $76c9: $03
	ld   c, a                                        ; $76ca: $4f
	rst  $38                                         ; $76cb: $ff
	rst  $38                                         ; $76cc: $ff
	dec  c                                           ; $76cd: $0d
	ld   [hl], a                                     ; $76ce: $77
	ld   a, h                                        ; $76cf: $7c
	inc  bc                                          ; $76d0: $03
	dec  bc                                          ; $76d1: $0b
	ld   a, h                                        ; $76d2: $7c
	ld   [bc], a                                     ; $76d3: $02
	jr   c, jr_04c_76da                              ; $76d4: $38 $04

	ld   d, d                                        ; $76d6: $52
	ld   e, d                                        ; $76d7: $5a
	dec  c                                           ; $76d8: $0d
	xor  h                                           ; $76d9: $ac

jr_04c_76da:
	call nz, $a5b4                                   ; $76da: $c4 $b4 $a5
	and  l                                           ; $76dd: $a5
	halt                                             ; $76de: $76
	dec  b                                           ; $76df: $05
	pop  de                                          ; $76e0: $d1
	ld   d, h                                        ; $76e1: $54
	ld   sp, hl                                      ; $76e2: $f9
	dec  c                                           ; $76e3: $0d
	nop                                              ; $76e4: $00
	ld   a, [bc]                                     ; $76e5: $0a
	add  hl, de                                      ; $76e6: $19
	dec  b                                           ; $76e7: $05
	inc  bc                                          ; $76e8: $03
	xor  $c4                                         ; $76e9: $ee $c4
	jp   z, $6775                                    ; $76eb: $ca $75 $67

	nop                                              ; $76ee: $00
	nop                                              ; $76ef: $00
	jp   nc, $d8fb                                   ; $76f0: $d2 $fb $d8

	db   $ed                                         ; $76f3: $ed
	ld   [hl], l                                     ; $76f4: $75
	ld   h, a                                        ; $76f5: $67
	nop                                              ; $76f6: $00
	ld   bc, $f5d5                                   ; $76f7: $01 $d5 $f5
	or   b                                           ; $76fa: $b0
	ld   [hl], l                                     ; $76fb: $75
	ld   h, a                                        ; $76fc: $67
	nop                                              ; $76fd: $00
	ld   [bc], a                                     ; $76fe: $02
	rlca                                             ; $76ff: $07
	ld   d, a                                        ; $7700: $57
	ld   b, $02                                      ; $7701: $06 $02
	inc  bc                                          ; $7703: $03
	ld   bc, $2000                                   ; $7704: $01 $00 $20
	nop                                              ; $7707: $00
	rlca                                             ; $7708: $07
	rst  ToBoot                                         ; $7709: $c7
	ld   b, $02                                      ; $770a: $06 $02
	inc  bc                                          ; $770c: $03
	ld   bc, $2001                                   ; $770d: $01 $01 $20
	nop                                              ; $7710: $00
	rlca                                             ; $7711: $07
	ld   h, $07                                      ; $7712: $26 $07
	ld   [bc], a                                     ; $7714: $02
	inc  bc                                          ; $7715: $03
	ld   bc, $2002                                   ; $7716: $01 $02 $20
	nop                                              ; $7719: $00
	ld   b, $65                                      ; $771a: $06 $65
	rlca                                             ; $771c: $07
	rrca                                             ; $771d: $0f
	nop                                              ; $771e: $00
	ld   bc, $ee01                                   ; $771f: $01 $01 $ee
	call nz, Call_04c_75ca                           ; $7722: $c4 $ca $75
	ld   h, a                                        ; $7725: $67
	sbc  a                                           ; $7726: $9f
	dec  c                                           ; $7727: $0d
	ld   b, $05                                      ; $7728: $06 $05
	ld   d, [hl]                                     ; $772a: $56
	sbc  c                                           ; $772b: $99
	inc  bc                                          ; $772c: $03
	dec  bc                                          ; $772d: $0b
	ld   [hl], l                                     ; $772e: $75
	ld   h, a                                        ; $772f: $67
	sub  [hl]                                        ; $7730: $96
	ld   a, e                                        ; $7731: $7b
	sbc  a                                           ; $7732: $9f
	dec  c                                           ; $7733: $0d
	nop                                              ; $7734: $00
	ld   a, [bc]                                     ; $7735: $0a
	inc  e                                           ; $7736: $1c
	ld   b, $01                                      ; $7737: $06 $01
	ld   bc, $401d                                   ; $7739: $01 $1d $40
	ld   d, $03                                      ; $773c: $16 $03
	ld   d, $01                                      ; $773e: $16 $01
	inc  bc                                          ; $7740: $03
	jr   z, jr_04c_7743                              ; $7741: $28 $00

jr_04c_7743:
	ld   bc, $546b                                   ; $7743: $01 $6b $54
	ld   l, [hl]                                     ; $7746: $6e
	sbc  e                                           ; $7747: $9b
	sbc  [hl]                                        ; $7748: $9e
	ld   l, e                                        ; $7749: $6b
	ld   d, h                                        ; $774a: $54
	ld   l, [hl]                                     ; $774b: $6e
	sbc  e                                           ; $774c: $9b
	sbc  a                                           ; $774d: $9f
	dec  c                                           ; $774e: $0d
	ld   a, b                                        ; $774f: $78
	and  c                                           ; $7750: $a1
	ld   l, c                                        ; $7751: $69
	sbc  [hl]                                        ; $7752: $9e
	ld   d, b                                        ; $7753: $50
	ld   l, l                                        ; $7754: $6d
	ld   d, d                                        ; $7755: $52
	ld   e, d                                        ; $7756: $5a
	ld   a, h                                        ; $7757: $7c
	ld   [hl], c                                     ; $7758: $71
	ld   [hl], h                                     ; $7759: $74
	sbc  c                                           ; $775a: $99
	and  c                                           ; $775b: $a1
	dec  c                                           ; $775c: $0d
	ld   l, [hl]                                     ; $775d: $6e
	ld   e, c                                        ; $775e: $59
	sub  a                                           ; $775f: $97
	ld   a, b                                        ; $7760: $78
	sbc  a                                           ; $7761: $9f
	dec  c                                           ; $7762: $0d
	nop                                              ; $7763: $00
	ld   a, [bc]                                     ; $7764: $0a
	ld   bc, $8c58                                   ; $7765: $01 $58 $8c
	ld   d, [hl]                                     ; $7768: $56
	sbc  [hl]                                        ; $7769: $9e
	ld   a, b                                        ; $776a: $78
	ld   e, c                                        ; $776b: $59
	ld   a, b                                        ; $776c: $78
	ld   e, c                                        ; $776d: $59
	cp   h                                           ; $776e: $bc
	push af                                          ; $776f: $f5
	cp   d                                           ; $7770: $ba
	ld   d, b                                        ; $7771: $50
	sbc  c                                           ; $7772: $99
	dec  c                                           ; $7773: $0d
	ld   h, [hl]                                     ; $7774: $66
	sub  c                                           ; $7775: $91
	ld   a, b                                        ; $7776: $78
	ld   d, d                                        ; $7777: $52
	ld   e, c                                        ; $7778: $59
	sbc  a                                           ; $7779: $9f
	dec  c                                           ; $777a: $0d
	ld   h, [hl]                                     ; $777b: $66
	sub  c                                           ; $777c: $91
	sbc  [hl]                                        ; $777d: $9e
	ld   [bc], a                                     ; $777e: $02
	and  l                                           ; $777f: $a5
	inc  b                                           ; $7780: $04
	xor  d                                           ; $7781: $aa
	sub  b                                           ; $7782: $90
	ld   e, d                                        ; $7783: $5a
	and  c                                           ; $7784: $a1
	ld   a, [hl]                                     ; $7785: $7e
	sbc  d                                           ; $7786: $9a
	sub  [hl]                                        ; $7787: $96
	sbc  a                                           ; $7788: $9f
	dec  c                                           ; $7789: $0d
	nop                                              ; $778a: $00
	ld   a, [bc]                                     ; $778b: $0a
	nop                                              ; $778c: $00
	rrca                                             ; $778d: $0f
	nop                                              ; $778e: $00
	ld   bc, $401d                                   ; $778f: $01 $1d $40
	ld   d, $03                                      ; $7792: $16 $03
	ld   d, $01                                      ; $7794: $16 $01
	ld   [bc], a                                     ; $7796: $02
	add  hl, hl                                      ; $7797: $29
	nop                                              ; $7798: $00
	ld   bc, $fbd2                                   ; $7799: $01 $d2 $fb
	ret  c                                           ; $779c: $d8

	db   $ed                                         ; $779d: $ed
	ld   [hl], l                                     ; $779e: $75
	ld   h, a                                        ; $779f: $67
	ld   a, e                                        ; $77a0: $7b
	sbc  a                                           ; $77a1: $9f
	dec  c                                           ; $77a2: $0d
	ld   [bc], a                                     ; $77a3: $02
	cp   [hl]                                        ; $77a4: $be
	ld   [bc], a                                     ; $77a5: $02
	ldh  [c], a                                      ; $77a6: $e2
	ld   a, b                                        ; $77a7: $78
	inc  bc                                          ; $77a8: $03
	dec  bc                                          ; $77a9: $0b
	ld   [hl], l                                     ; $77aa: $75
	ld   d, d                                        ; $77ab: $52
	ld   d, d                                        ; $77ac: $52
	ld   h, [hl]                                     ; $77ad: $66
	sub  c                                           ; $77ae: $91
	dec  c                                           ; $77af: $0d
	ld   a, b                                        ; $77b0: $78
	ld   d, d                                        ; $77b1: $52
	ld   [hl], l                                     ; $77b2: $75
	ld   h, a                                        ; $77b3: $67
	ld   e, c                                        ; $77b4: $59
	sbc  a                                           ; $77b5: $9f
	dec  c                                           ; $77b6: $0d
	nop                                              ; $77b7: $00
	ld   a, [bc]                                     ; $77b8: $0a
	inc  e                                           ; $77b9: $1c
	ld   b, $03                                      ; $77ba: $06 $03
	inc  bc                                          ; $77bc: $03
	ld   bc, $ffb3                                   ; $77bd: $01 $b3 $ff
	ld   h, l                                        ; $77c0: $65
	sub  e                                           ; $77c1: $93
	adc  l                                           ; $77c2: $8d
	sbc  l                                           ; $77c3: $9d
	sbc  c                                           ; $77c4: $99
	ld   d, d                                        ; $77c5: $52
	ld   a, b                                        ; $77c6: $78
	sbc  [hl]                                        ; $77c7: $9e
	ld   e, b                                        ; $77c8: $58
	inc  bc                                          ; $77c9: $03
	ld   c, a                                        ; $77ca: $4f
	rst  $38                                         ; $77cb: $ff
	rst  $38                                         ; $77cc: $ff
	dec  c                                           ; $77cd: $0d
	ld   d, b                                        ; $77ce: $50
	sbc  d                                           ; $77cf: $9a
	ld   a, l                                        ; $77d0: $7d
	or   [hl]                                        ; $77d1: $b6
	db   $dd                                         ; $77d2: $dd
	rst  ToBoot                                         ; $77d3: $c7
	push af                                          ; $77d4: $f5
	inc  bc                                          ; $77d5: $03
	ld   l, [hl]                                     ; $77d6: $6e
	ld   e, d                                        ; $77d7: $5a
	ld   a, h                                        ; $77d8: $7c
	sbc  c                                           ; $77d9: $99
	sub  [hl]                                        ; $77da: $96
	ld   d, h                                        ; $77db: $54
	ld   a, b                                        ; $77dc: $78
	dec  c                                           ; $77dd: $0d
	ld   [bc], a                                     ; $77de: $02
	ld   e, b                                        ; $77df: $58
	inc  b                                           ; $77e0: $04
	dec  c                                           ; $77e1: $0d
	ld   l, [hl]                                     ; $77e2: $6e
	ld   l, h                                        ; $77e3: $6c
	rst  $38                                         ; $77e4: $ff
	rst  $38                                         ; $77e5: $ff
	dec  c                                           ; $77e6: $0d
	nop                                              ; $77e7: $00
	ld   a, [bc]                                     ; $77e8: $0a
	ld   b, $65                                      ; $77e9: $06 $65
	rlca                                             ; $77eb: $07
	rrca                                             ; $77ec: $0f
	nop                                              ; $77ed: $00
	ld   bc, $d501                                   ; $77ee: $01 $01 $d5
	push af                                          ; $77f1: $f5
	or   b                                           ; $77f2: $b0
	ld   [hl], l                                     ; $77f3: $75
	ld   h, a                                        ; $77f4: $67
	ld   a, e                                        ; $77f5: $7b
	sbc  a                                           ; $77f6: $9f
	dec  c                                           ; $77f7: $0d
	ld   e, c                                        ; $77f8: $59
	sbc  l                                           ; $77f9: $9d
	ld   d, d                                        ; $77fa: $52
	ld   d, d                                        ; $77fb: $52
	and  l                                           ; $77fc: $a5
	db   $e3                                         ; $77fd: $e3
	ei                                               ; $77fe: $fb
	cp   c                                           ; $77ff: $b9
	ld   e, d                                        ; $7800: $5a
	dec  c                                           ; $7801: $0d
	ld   d, b                                        ; $7802: $50
	sbc  b                                           ; $7803: $98
	adc  h                                           ; $7804: $8c
	ld   h, a                                        ; $7805: $67
	ld   e, c                                        ; $7806: $59
	sub  a                                           ; $7807: $97
	sbc  a                                           ; $7808: $9f
	dec  c                                           ; $7809: $0d
	nop                                              ; $780a: $00
	ld   a, [bc]                                     ; $780b: $0a
	inc  e                                           ; $780c: $1c
	ld   b, $05                                      ; $780d: $06 $05
	dec  b                                           ; $780f: $05
	ld   bc, $a178                                   ; $7810: $01 $78 $a1
	ld   l, [hl]                                     ; $7813: $6e
	sbc  [hl]                                        ; $7814: $9e
	ld   h, e                                        ; $7815: $63
	ld   e, l                                        ; $7816: $5d
	sub  a                                           ; $7817: $97
	ld   a, h                                        ; $7818: $7c
	sub  $a2                                         ; $7819: $d6 $a2
	push af                                          ; $781b: $f5
	ld   e, c                                        ; $781c: $59
	sub  [hl]                                        ; $781d: $96
	sbc  a                                           ; $781e: $9f
	dec  c                                           ; $781f: $0d
	ld   [hl], d                                     ; $7820: $72
	adc  h                                           ; $7821: $8c
	sub  a                                           ; $7822: $97
	ld   a, e                                        ; $7823: $7b
	ld   d, [hl]                                     ; $7824: $56
	ld   a, h                                        ; $7825: $7c
	rst  $38                                         ; $7826: $ff
	rst  $38                                         ; $7827: $ff
	dec  c                                           ; $7828: $0d
	nop                                              ; $7829: $00
	ld   a, [bc]                                     ; $782a: $0a
	inc  e                                           ; $782b: $1c
	ld   b, $01                                      ; $782c: $06 $01
	ld   bc, $5001                                   ; $782e: $01 $01 $50
	ld   l, l                                        ; $7831: $6d
	ld   d, d                                        ; $7832: $52
	ld   a, l                                        ; $7833: $7d
	xor  $c4                                         ; $7834: $ee $c4
	jp   z, $67a0                                    ; $7836: $ca $a0 $67

	ld   h, a                                        ; $7839: $67
	adc  a                                           ; $783a: $8f
	sbc  c                                           ; $783b: $99
	ld   l, d                                        ; $783c: $6a
	sbc  a                                           ; $783d: $9f
	dec  c                                           ; $783e: $0d
	xor  $c4                                         ; $783f: $ee $c4
	jp   z, $035a                                    ; $7841: $ca $5a $03

	ld   l, c                                        ; $7844: $69
	ld   [bc], a                                     ; $7845: $02
	cp   [hl]                                        ; $7846: $be
	ld   a, b                                        ; $7847: $78
	and  c                                           ; $7848: $a1
	ld   l, [hl]                                     ; $7849: $6e
	sbc  a                                           ; $784a: $9f
	dec  c                                           ; $784b: $0d
	ld   e, b                                        ; $784c: $58
	adc  d                                           ; $784d: $8a
	ld   d, [hl]                                     ; $784e: $56
	ld   [hl], h                                     ; $784f: $74
	ld   e, b                                        ; $7850: $58
	ld   d, d                                        ; $7851: $52
	ld   [hl], h                                     ; $7852: $74
	ld   e, l                                        ; $7853: $5d
	sbc  d                                           ; $7854: $9a
	sub  [hl]                                        ; $7855: $96
	ld   a, b                                        ; $7856: $78
	rst  $38                                         ; $7857: $ff
	rst  $38                                         ; $7858: $ff
	dec  c                                           ; $7859: $0d

Jump_04c_785a:
	nop                                              ; $785a: $00
	ld   a, [bc]                                     ; $785b: $0a
	nop                                              ; $785c: $00
	nop                                              ; $785d: $00
	dec  c                                           ; $785e: $0d
	inc  bc                                          ; $785f: $03
	nop                                              ; $7860: $00
	rrca                                             ; $7861: $0f
	nop                                              ; $7862: $00
	ld   bc, $0702                                   ; $7863: $01 $02 $07
	sbc  a                                           ; $7866: $9f
	inc  b                                           ; $7867: $04
	inc  b                                           ; $7868: $04
	add  b                                           ; $7869: $80
	push de                                          ; $786a: $d5
	ld   bc, $20ff                                   ; $786b: $01 $ff $20
	nop                                              ; $786e: $00
	ld   bc, $7d58                                   ; $786f: $01 $58 $7d
	sub  [hl]                                        ; $7872: $96
	ld   d, h                                        ; $7873: $54
	ld   h, d                                        ; $7874: $62
	ld   h, h                                        ; $7875: $64
	ld   d, d                                        ; $7876: $52
	adc  h                                           ; $7877: $8c
	ld   h, a                                        ; $7878: $67
	sbc  a                                           ; $7879: $9f
	dec  c                                           ; $787a: $0d
	rst  JumpTable                                         ; $787b: $df
	db   $ec                                         ; $787c: $ec
	and  e                                           ; $787d: $a3
	ld   h, e                                        ; $787e: $63
	and  c                                           ; $787f: $a1
	sbc  a                                           ; $7880: $9f
	dec  c                                           ; $7881: $0d
	nop                                              ; $7882: $00
	ld   a, [bc]                                     ; $7883: $0a
	rrca                                             ; $7884: $0f
	inc  bc                                          ; $7885: $03
	nop                                              ; $7886: $00
	ld   bc, $0008                                   ; $7887: $01 $08 $00
	ld   e, l                                        ; $788a: $5d
	and  c                                           ; $788b: $a1
	sbc  a                                           ; $788c: $9f
	dec  c                                           ; $788d: $0d
	ld   e, b                                        ; $788e: $58
	ld   a, l                                        ; $788f: $7d
	sub  [hl]                                        ; $7890: $96
	ld   d, h                                        ; $7891: $54
	sbc  a                                           ; $7892: $9f
	dec  c                                           ; $7893: $0d
	nop                                              ; $7894: $00
	ld   a, [bc]                                     ; $7895: $0a
	rrca                                             ; $7896: $0f
	nop                                              ; $7897: $00
	ld   bc, $6b01                                   ; $7898: $01 $01 $6b
	ld   a, h                                        ; $789b: $7c
	inc  bc                                          ; $789c: $03
	ld   l, e                                        ; $789d: $6b
	ld   a, c                                        ; $789e: $79
	inc  bc                                          ; $789f: $03
	and  b                                           ; $78a0: $a0
	ld   [hl], c                                     ; $78a1: $71
	ld   [hl], h                                     ; $78a2: $74
	sbc  c                                           ; $78a3: $99
	sub  b                                           ; $78a4: $90
	ld   a, h                                        ; $78a5: $7c
	ld   a, l                                        ; $78a6: $7d
	dec  c                                           ; $78a7: $0d
	inc  b                                           ; $78a8: $04
	ld   c, c                                        ; $78a9: $49
	ld   [hl], l                                     ; $78aa: $75
	ld   h, a                                        ; $78ab: $67
	ld   e, c                                        ; $78ac: $59
	ld   sp, hl                                      ; $78ad: $f9
	dec  c                                           ; $78ae: $0d
	nop                                              ; $78af: $00
	ld   a, [bc]                                     ; $78b0: $0a
	inc  e                                           ; $78b1: $1c
	inc  bc                                          ; $78b2: $03
	inc  bc                                          ; $78b3: $03
	inc  bc                                          ; $78b4: $03
	ld   bc, $9e50                                   ; $78b5: $01 $50 $9e
	ld   h, c                                        ; $78b8: $61
	sbc  d                                           ; $78b9: $9a
	ld   a, e                                        ; $78ba: $7b
	rst  $38                                         ; $78bb: $ff
	rst  $38                                         ; $78bc: $ff
	dec  c                                           ; $78bd: $0d
	ld   h, c                                        ; $78be: $61
	sbc  d                                           ; $78bf: $9a
	ld   a, l                                        ; $78c0: $7d
	ld   [bc], a                                     ; $78c1: $02
	and  l                                           ; $78c2: $a5
	inc  b                                           ; $78c3: $04
	add  hl, hl                                      ; $78c4: $29
	ld   a, h                                        ; $78c5: $7c
	ld   [bc], a                                     ; $78c6: $02
	sbc  c                                           ; $78c7: $99
	ld   [bc], a                                     ; $78c8: $02
	rra                                              ; $78c9: $1f
	ld   a, h                                        ; $78ca: $7c
	inc  b                                           ; $78cb: $04
	inc  c                                           ; $78cc: $0c
	inc  b                                           ; $78cd: $04
	adc  a                                           ; $78ce: $8f
	sub  [hl]                                        ; $78cf: $96
	sbc  a                                           ; $78d0: $9f
	dec  c                                           ; $78d1: $0d
	nop                                              ; $78d2: $00
	ld   a, [bc]                                     ; $78d3: $0a
	add  hl, de                                      ; $78d4: $19
	dec  b                                           ; $78d5: $05
	inc  bc                                          ; $78d6: $03
	ld   [bc], a                                     ; $78d7: $02
	rra                                              ; $78d8: $1f
	inc  b                                           ; $78d9: $04
	call nc, Call_04c_7279                           ; $78da: $d4 $79 $72
	ld   d, d                                        ; $78dd: $52
	ld   [hl], h                                     ; $78de: $74
	ld   [bc], a                                     ; $78df: $02
	jp   nz, $005d                                   ; $78e0: $c2 $5d $00

	nop                                              ; $78e3: $00
	inc  b                                           ; $78e4: $04
	db   $ec                                         ; $78e5: $ec
	ld   a, c                                        ; $78e6: $79
	ld   [hl], d                                     ; $78e7: $72
	ld   d, d                                        ; $78e8: $52
	ld   [hl], h                                     ; $78e9: $74
	ld   [bc], a                                     ; $78ea: $02
	jp   nz, $005d                                   ; $78eb: $c2 $5d $00

	ld   bc, $8e04                                   ; $78ee: $01 $04 $8e
	inc  b                                           ; $78f1: $04
	inc  c                                           ; $78f2: $0c
	ld   a, c                                        ; $78f3: $79
	ld   [hl], d                                     ; $78f4: $72
	ld   d, d                                        ; $78f5: $52
	ld   [hl], h                                     ; $78f6: $74
	ld   [bc], a                                     ; $78f7: $02
	jp   nz, $005d                                   ; $78f8: $c2 $5d $00

	ld   [bc], a                                     ; $78fb: $02
	rlca                                             ; $78fc: $07
	ld   [$0200], a                                  ; $78fd: $ea $00 $02
	inc  bc                                          ; $7900: $03
	ld   bc, $2000                                   ; $7901: $01 $00 $20
	nop                                              ; $7904: $00
	rlca                                             ; $7905: $07
	ld   e, l                                        ; $7906: $5d
	ld   [bc], a                                     ; $7907: $02
	ld   [bc], a                                     ; $7908: $02
	inc  bc                                          ; $7909: $03
	ld   bc, $2001                                   ; $790a: $01 $01 $20
	nop                                              ; $790d: $00
	rlca                                             ; $790e: $07
	db   $ed                                         ; $790f: $ed
	inc  bc                                          ; $7910: $03
	ld   [bc], a                                     ; $7911: $02
	inc  bc                                          ; $7912: $03
	ld   bc, $2002                                   ; $7913: $01 $02 $20
	nop                                              ; $7916: $00
	ld   b, $bc                                      ; $7917: $06 $bc
	nop                                              ; $7919: $00
	inc  e                                           ; $791a: $1c
	inc  bc                                          ; $791b: $03
	nop                                              ; $791c: $00
	nop                                              ; $791d: $00
	ld   bc, $5063                                   ; $791e: $01 $63 $50
	sbc  [hl]                                        ; $7921: $9e
	inc  bc                                          ; $7922: $03
	ld   l, l                                        ; $7923: $6d
	dec  b                                           ; $7924: $05
	add  hl, de                                      ; $7925: $19
	ld   a, h                                        ; $7926: $7c
	inc  bc                                          ; $7927: $03
	ld   l, a                                        ; $7928: $6f
	ld   [bc], a                                     ; $7929: $02
	xor  c                                           ; $792a: $a9
	sub  [hl]                                        ; $792b: $96
	sbc  a                                           ; $792c: $9f
	dec  c                                           ; $792d: $0d
	inc  bc                                          ; $792e: $03
	ld   [hl], b                                     ; $792f: $70
	ld   e, l                                        ; $7930: $5d
	sbc  [hl]                                        ; $7931: $9e
	ld   h, l                                        ; $7932: $65
	ld   l, l                                        ; $7933: $6d
	ld   e, l                                        ; $7934: $5d
	ld   h, l                                        ; $7935: $65
	ld   [hl], h                                     ; $7936: $74
	ld   e, e                                        ; $7937: $5b
	ld   a, b                                        ; $7938: $78
	ld   h, e                                        ; $7939: $63
	ld   d, d                                        ; $793a: $52
	sbc  a                                           ; $793b: $9f
	dec  c                                           ; $793c: $0d
	nop                                              ; $793d: $00
	ld   a, [bc]                                     ; $793e: $0a
	dec  c                                           ; $793f: $0d
	nop                                              ; $7940: $00
	nop                                              ; $7941: $00
	rrca                                             ; $7942: $0f
	nop                                              ; $7943: $00
	ld   bc, $1e09                                   ; $7944: $01 $09 $1e
	nop                                              ; $7947: $00
	rrca                                             ; $7948: $0f
	nop                                              ; $7949: $00
	ld   bc, $0201                                   ; $794a: $01 $01 $02
	rra                                              ; $794d: $1f
	inc  b                                           ; $794e: $04
	call nc, $047d                                   ; $794f: $d4 $7d $04
	ld   c, c                                        ; $7952: $49
	ld   [hl], l                                     ; $7953: $75
	ld   h, a                                        ; $7954: $67
	ld   e, c                                        ; $7955: $59
	ld   sp, hl                                      ; $7956: $f9
	dec  c                                           ; $7957: $0d
	nop                                              ; $7958: $00
	ld   a, [bc]                                     ; $7959: $0a
	inc  e                                           ; $795a: $1c
	inc  bc                                          ; $795b: $03
	nop                                              ; $795c: $00
	nop                                              ; $795d: $00
	ld   bc, $4b04                                   ; $795e: $01 $04 $4b
	inc  b                                           ; $7961: $04
	ldh  a, [c]                                      ; $7962: $f2
	ld   [bc], a                                     ; $7963: $02
	sub  a                                           ; $7964: $97
	sub  [hl]                                        ; $7965: $96
	sbc  a                                           ; $7966: $9f
	dec  c                                           ; $7967: $0d
	nop                                              ; $7968: $00
	ld   a, [bc]                                     ; $7969: $0a
	add  hl, de                                      ; $796a: $19
	dec  b                                           ; $796b: $05
	inc  bc                                          ; $796c: $03
	ld   d, b                                        ; $796d: $50
	ld   a, h                                        ; $796e: $7c
	inc  b                                           ; $796f: $04
	inc  de                                          ; $7970: $13
	ld   h, [hl]                                     ; $7971: $66
	ld   e, l                                        ; $7972: $5d
	ld   a, c                                        ; $7973: $79
	ld   [bc], a                                     ; $7974: $02
	ld   a, a                                        ; $7975: $7f
	ld   e, l                                        ; $7976: $5d
	dec  b                                           ; $7977: $05
	jr   nz, jr_04c_79ef                             ; $7978: $20 $75

	ld   h, a                                        ; $797a: $67
	ld   e, c                                        ; $797b: $59
	ld   sp, hl                                      ; $797c: $f9
	nop                                              ; $797d: $00
	nop                                              ; $797e: $00
	ld   d, b                                        ; $797f: $50
	ld   a, h                                        ; $7980: $7c
	inc  b                                           ; $7981: $04
	inc  de                                          ; $7982: $13
	ld   [bc], a                                     ; $7983: $02
	adc  a                                           ; $7984: $8f
	ld   a, c                                        ; $7985: $79
	ld   [bc], a                                     ; $7986: $02
	ld   a, a                                        ; $7987: $7f
	ld   e, l                                        ; $7988: $5d
	dec  b                                           ; $7989: $05
	jr   nz, jr_04c_7a01                             ; $798a: $20 $75

	ld   h, a                                        ; $798c: $67
	ld   e, c                                        ; $798d: $59
	ld   sp, hl                                      ; $798e: $f9
	nop                                              ; $798f: $00
	ld   bc, $a177                                   ; $7990: $01 $77 $a1
	ld   a, b                                        ; $7993: $78
	dec  b                                           ; $7994: $05
	jr   nz, jr_04c_7a0f                             ; $7995: $20 $78

	and  c                                           ; $7997: $a1
	ld   [hl], l                                     ; $7998: $75
	ld   h, a                                        ; $7999: $67
	ld   e, c                                        ; $799a: $59
	ld   sp, hl                                      ; $799b: $f9
	nop                                              ; $799c: $00
	ld   [bc], a                                     ; $799d: $02
	rlca                                             ; $799e: $07
	ld   e, [hl]                                     ; $799f: $5e
	ld   bc, $0302                                   ; $79a0: $01 $02 $03
	ld   bc, $2000                                   ; $79a3: $01 $00 $20
	nop                                              ; $79a6: $00
	rlca                                             ; $79a7: $07
	sbc  b                                           ; $79a8: $98
	ld   bc, $0302                                   ; $79a9: $01 $02 $03
	ld   bc, $2001                                   ; $79ac: $01 $01 $20
	nop                                              ; $79af: $00
	rlca                                             ; $79b0: $07
	jp   hl                                          ; $79b1: $e9


	ld   bc, $0302                                   ; $79b2: $01 $02 $03
	ld   bc, $2002                                   ; $79b5: $01 $02 $20
	nop                                              ; $79b8: $00
	ld   b, $28                                      ; $79b9: $06 $28
	ld   [bc], a                                     ; $79bb: $02
	rrca                                             ; $79bc: $0f
	nop                                              ; $79bd: $00
	ld   bc, $5001                                   ; $79be: $01 $01 $50
	ld   a, h                                        ; $79c1: $7c
	inc  b                                           ; $79c2: $04
	inc  de                                          ; $79c3: $13
	ld   h, [hl]                                     ; $79c4: $66
	ld   e, l                                        ; $79c5: $5d
	ld   a, c                                        ; $79c6: $79
	ld   [bc], a                                     ; $79c7: $02
	ld   a, a                                        ; $79c8: $7f
	ld   e, l                                        ; $79c9: $5d
	dec  b                                           ; $79ca: $05
	jr   nz, jr_04c_7a42                             ; $79cb: $20 $75

	ld   h, a                                        ; $79cd: $67
	ld   e, c                                        ; $79ce: $59
	ld   sp, hl                                      ; $79cf: $f9
	dec  c                                           ; $79d0: $0d
	nop                                              ; $79d1: $00
	ld   a, [bc]                                     ; $79d2: $0a
	inc  e                                           ; $79d3: $1c
	inc  bc                                          ; $79d4: $03
	inc  bc                                          ; $79d5: $03

jr_04c_79d6:
	inc  bc                                          ; $79d6: $03
	dec  e                                           ; $79d7: $1d
	ld   b, b                                        ; $79d8: $40
	inc  de                                          ; $79d9: $13
	inc  bc                                          ; $79da: $03
	inc  de                                          ; $79db: $13
	ld   bc, $2802                                   ; $79dc: $01 $02 $28
	nop                                              ; $79df: $00
	ld   bc, $546b                                   ; $79e0: $01 $6b $54
	sub  [hl]                                        ; $79e3: $96
	sbc  a                                           ; $79e4: $9f
	dec  c                                           ; $79e5: $0d
	sub  [hl]                                        ; $79e6: $96
	ld   e, l                                        ; $79e7: $5d
	inc  b                                           ; $79e8: $04
	dec  hl                                          ; $79e9: $2b
	ld   [hl], c                                     ; $79ea: $71
	ld   [hl], h                                     ; $79eb: $74
	sbc  c                                           ; $79ec: $99
	sbc  l                                           ; $79ed: $9d
	ld   a, e                                        ; $79ee: $7b

jr_04c_79ef:
	sbc  a                                           ; $79ef: $9f
	dec  c                                           ; $79f0: $0d
	nop                                              ; $79f1: $00
	ld   a, [bc]                                     ; $79f2: $0a
	ld   b, $28                                      ; $79f3: $06 $28
	ld   [bc], a                                     ; $79f5: $02
	rrca                                             ; $79f6: $0f
	nop                                              ; $79f7: $00
	ld   bc, $5001                                   ; $79f8: $01 $01 $50
	ld   a, h                                        ; $79fb: $7c
	inc  b                                           ; $79fc: $04
	inc  de                                          ; $79fd: $13
	ld   [bc], a                                     ; $79fe: $02
	adc  a                                           ; $79ff: $8f
	ld   a, c                                        ; $7a00: $79

jr_04c_7a01:
	ld   [bc], a                                     ; $7a01: $02
	ld   a, a                                        ; $7a02: $7f
	ld   e, l                                        ; $7a03: $5d
	dec  b                                           ; $7a04: $05
	jr   nz, @+$77                                   ; $7a05: $20 $75

	ld   h, a                                        ; $7a07: $67
	ld   e, c                                        ; $7a08: $59
	ld   sp, hl                                      ; $7a09: $f9
	dec  c                                           ; $7a0a: $0d
	nop                                              ; $7a0b: $00
	ld   a, [bc]                                     ; $7a0c: $0a
	inc  e                                           ; $7a0d: $1c
	inc  bc                                          ; $7a0e: $03

jr_04c_7a0f:
	inc  b                                           ; $7a0f: $04
	inc  b                                           ; $7a10: $04
	dec  e                                           ; $7a11: $1d
	ld   b, b                                        ; $7a12: $40
	inc  de                                          ; $7a13: $13
	inc  bc                                          ; $7a14: $03
	inc  de                                          ; $7a15: $13
	ld   bc, $2901                                   ; $7a16: $01 $01 $29
	nop                                              ; $7a19: $00
	ld   bc, $1304                                   ; $7a1a: $01 $04 $13
	ld   [bc], a                                     ; $7a1d: $02
	adc  a                                           ; $7a1e: $8f
	ld   a, c                                        ; $7a1f: $79
	ld   [bc], a                                     ; $7a20: $02
	ld   a, a                                        ; $7a21: $7f
	ld   [hl], c                                     ; $7a22: $71
	ld   [hl], h                                     ; $7a23: $74
	ld   [hl], a                                     ; $7a24: $77
	ld   d, h                                        ; $7a25: $54
	ld   h, a                                        ; $7a26: $67
	sbc  c                                           ; $7a27: $99
	ld   a, h                                        ; $7a28: $7c
	rst  $38                                         ; $7a29: $ff
	rst  $38                                         ; $7a2a: $ff
	dec  c                                           ; $7a2b: $0d
	inc  b                                           ; $7a2c: $04
	ld   c, e                                        ; $7a2d: $4b
	inc  b                                           ; $7a2e: $04
	ldh  a, [c]                                      ; $7a2f: $f2
	ld   [bc], a                                     ; $7a30: $02
	sub  a                                           ; $7a31: $97
	ld   a, l                                        ; $7a32: $7d
	inc  b                                           ; $7a33: $04
	inc  de                                          ; $7a34: $13
	ld   h, [hl]                                     ; $7a35: $66
	ld   e, l                                        ; $7a36: $5d
	and  b                                           ; $7a37: $a0
	inc  b                                           ; $7a38: $04
	call nc, $2a03                                   ; $7a39: $d4 $03 $2a
	ld   h, a                                        ; $7a3c: $67
	dec  b                                           ; $7a3d: $05
	jr   nz, jr_04c_79d6                             ; $7a3e: $20 $96

	sbc  a                                           ; $7a40: $9f
	dec  c                                           ; $7a41: $0d

jr_04c_7a42:
	nop                                              ; $7a42: $00
	ld   a, [bc]                                     ; $7a43: $0a
	ld   b, $28                                      ; $7a44: $06 $28
	ld   [bc], a                                     ; $7a46: $02
	rrca                                             ; $7a47: $0f
	nop                                              ; $7a48: $00
	ld   bc, $7701                                   ; $7a49: $01 $01 $77
	and  c                                           ; $7a4c: $a1
	ld   a, b                                        ; $7a4d: $78
	dec  b                                           ; $7a4e: $05
	jr   nz, jr_04c_7ac9                             ; $7a4f: $20 $78

	and  c                                           ; $7a51: $a1
	ld   [hl], l                                     ; $7a52: $75
	ld   h, a                                        ; $7a53: $67
	ld   e, c                                        ; $7a54: $59
	ld   sp, hl                                      ; $7a55: $f9
	dec  c                                           ; $7a56: $0d
	nop                                              ; $7a57: $00
	ld   a, [bc]                                     ; $7a58: $0a
	inc  e                                           ; $7a59: $1c
	inc  bc                                          ; $7a5a: $03
	nop                                              ; $7a5b: $00
	nop                                              ; $7a5c: $00
	ld   bc, $3303                                   ; $7a5d: $01 $03 $33
	dec  b                                           ; $7a60: $05
	db   $ec                                         ; $7a61: $ec
	inc  b                                           ; $7a62: $04
	ld   h, h                                        ; $7a63: $64
	inc  bc                                          ; $7a64: $03
	ld   [hl-], a                                    ; $7a65: $32
	halt                                             ; $7a66: $76
	ld   d, d                                        ; $7a67: $52
	ld   d, h                                        ; $7a68: $54
	ld   e, b                                        ; $7a69: $58
	dec  b                                           ; $7a6a: $05
	ld   d, a                                        ; $7a6b: $57
	ld   h, e                                        ; $7a6c: $63
	and  c                                           ; $7a6d: $a1
	ld   e, d                                        ; $7a6e: $5a
	dec  c                                           ; $7a6f: $0d
	inc  b                                           ; $7a70: $04
	inc  de                                          ; $7a71: $13
	ld   h, [hl]                                     ; $7a72: $66
	ld   e, l                                        ; $7a73: $5d
	halt                                             ; $7a74: $76
	ld   d, d                                        ; $7a75: $52
	ld   d, h                                        ; $7a76: $54
	inc  bc                                          ; $7a77: $03
	ld   c, e                                        ; $7a78: $4b
	and  b                                           ; $7a79: $a0
	inc  b                                           ; $7a7a: $04
	call nc, $2a03                                   ; $7a7b: $d4 $03 $2a
	ld   h, a                                        ; $7a7e: $67
	dec  b                                           ; $7a7f: $05
	jr   nz, @-$68                                   ; $7a80: $20 $96

	sbc  a                                           ; $7a82: $9f
	dec  c                                           ; $7a83: $0d
	nop                                              ; $7a84: $00
	ld   a, [bc]                                     ; $7a85: $0a
	inc  e                                           ; $7a86: $1c
	inc  bc                                          ; $7a87: $03
	nop                                              ; $7a88: $00
	nop                                              ; $7a89: $00
	ld   bc, $9e63                                   ; $7a8a: $01 $63 $9e
	ld   e, b                                        ; $7a8d: $58
	ld   h, l                                        ; $7a8e: $65
	sub  c                                           ; $7a8f: $91
	add  a                                           ; $7a90: $87
	sbc  b                                           ; $7a91: $98
	ld   a, l                                        ; $7a92: $7d
	ld   e, b                                        ; $7a93: $58
	ld   h, l                                        ; $7a94: $65
	adc  h                                           ; $7a95: $8c
	ld   d, d                                        ; $7a96: $52
	sub  [hl]                                        ; $7a97: $96
	sbc  a                                           ; $7a98: $9f
	dec  c                                           ; $7a99: $0d
	inc  bc                                          ; $7a9a: $03
	ld   [hl], b                                     ; $7a9b: $70
	ld   e, l                                        ; $7a9c: $5d
	sbc  [hl]                                        ; $7a9d: $9e
	inc  bc                                          ; $7a9e: $03
	ld   l, l                                        ; $7a9f: $6d
	dec  b                                           ; $7aa0: $05
	add  hl, de                                      ; $7aa1: $19
	ld   a, h                                        ; $7aa2: $7c
	ld   h, l                                        ; $7aa3: $65
	ld   l, l                                        ; $7aa4: $6d
	ld   e, l                                        ; $7aa5: $5d
	and  b                                           ; $7aa6: $a0
	dec  c                                           ; $7aa7: $0d
	ld   h, l                                        ; $7aa8: $65
	ld   [hl], h                                     ; $7aa9: $74
	ld   e, e                                        ; $7aaa: $5b
	ld   a, b                                        ; $7aab: $78
	ld   h, e                                        ; $7aac: $63
	ld   d, d                                        ; $7aad: $52
	sbc  a                                           ; $7aae: $9f
	dec  c                                           ; $7aaf: $0d
	nop                                              ; $7ab0: $00
	ld   a, [bc]                                     ; $7ab1: $0a
	dec  c                                           ; $7ab2: $0d
	nop                                              ; $7ab3: $00
	nop                                              ; $7ab4: $00
	rrca                                             ; $7ab5: $0f
	nop                                              ; $7ab6: $00
	ld   bc, $1e09                                   ; $7ab7: $01 $09 $1e
	nop                                              ; $7aba: $00
	rrca                                             ; $7abb: $0f
	nop                                              ; $7abc: $00
	ld   bc, $df01                                   ; $7abd: $01 $01 $df
	db   $ec                                         ; $7ac0: $ec
	and  e                                           ; $7ac1: $a3
	ld   h, e                                        ; $7ac2: $63
	and  c                                           ; $7ac3: $a1
	ld   a, l                                        ; $7ac4: $7d
	dec  c                                           ; $7ac5: $0d
	inc  b                                           ; $7ac6: $04
	ld   c, c                                        ; $7ac7: $49
	ld   a, h                                        ; $7ac8: $7c

jr_04c_7ac9:
	inc  b                                           ; $7ac9: $04
	db   $ec                                         ; $7aca: $ec
	ld   a, b                                        ; $7acb: $78
	and  c                                           ; $7acc: $a1
	ld   [hl], l                                     ; $7acd: $75
	ld   h, a                                        ; $7ace: $67
	ld   e, c                                        ; $7acf: $59
	ld   sp, hl                                      ; $7ad0: $f9
	dec  c                                           ; $7ad1: $0d
	nop                                              ; $7ad2: $00
	ld   a, [bc]                                     ; $7ad3: $0a
	inc  e                                           ; $7ad4: $1c
	inc  bc                                          ; $7ad5: $03
	nop                                              ; $7ad6: $00
	nop                                              ; $7ad7: $00
	ld   bc, $3303                                   ; $7ad8: $01 $03 $33
	dec  b                                           ; $7adb: $05
	db   $ec                                         ; $7adc: $ec
	inc  b                                           ; $7add: $04
	ld   h, h                                        ; $7ade: $64
	inc  bc                                          ; $7adf: $03
	ld   [hl-], a                                    ; $7ae0: $32
	halt                                             ; $7ae1: $76
	ld   d, d                                        ; $7ae2: $52
	ld   d, h                                        ; $7ae3: $54
	dec  c                                           ; $7ae4: $0d
	ld   e, b                                        ; $7ae5: $58
	dec  b                                           ; $7ae6: $05
	ld   d, a                                        ; $7ae7: $57
	ld   h, e                                        ; $7ae8: $63
	and  c                                           ; $7ae9: $a1
	ld   a, h                                        ; $7aea: $7c
	inc  b                                           ; $7aeb: $04
	db   $ec                                         ; $7aec: $ec
	sub  [hl]                                        ; $7aed: $96
	sbc  a                                           ; $7aee: $9f
	dec  c                                           ; $7aef: $0d
	nop                                              ; $7af0: $00
	ld   a, [bc]                                     ; $7af1: $0a
	add  hl, de                                      ; $7af2: $19
	dec  b                                           ; $7af3: $05
	inc  bc                                          ; $7af4: $03
	ld   e, b                                        ; $7af5: $58
	inc  b                                           ; $7af6: $04
	ld   c, l                                        ; $7af7: $4d
	ld   [bc], a                                     ; $7af8: $02
	ld   a, e                                        ; $7af9: $7b
	ld   d, d                                        ; $7afa: $52
	ld   [hl], l                                     ; $7afb: $75
	ld   h, a                                        ; $7afc: $67
	ld   a, e                                        ; $7afd: $7b
	nop                                              ; $7afe: $00
	nop                                              ; $7aff: $00
	ld   e, d                                        ; $7b00: $5a
	and  c                                           ; $7b01: $a1
	ld   a, [hl]                                     ; $7b02: $7e
	ld   [hl], c                                     ; $7b03: $71
	ld   [hl], h                                     ; $7b04: $74
	ld   [bc], a                                     ; $7b05: $02
	inc  [hl]                                        ; $7b06: $34
	ld   h, e                                        ; $7b07: $63
	ld   d, d                                        ; $7b08: $52
	ld   a, e                                        ; $7b09: $7b
	nop                                              ; $7b0a: $00
	ld   bc, $4d04                                   ; $7b0b: $01 $04 $4d
	ld   [bc], a                                     ; $7b0e: $02
	ld   a, e                                        ; $7b0f: $7b
	ld   d, d                                        ; $7b10: $52
	adc  h                                           ; $7b11: $8c
	ld   l, c                                        ; $7b12: $69
	and  c                                           ; $7b13: $a1
	ld   a, e                                        ; $7b14: $7b
	nop                                              ; $7b15: $00
	ld   [bc], a                                     ; $7b16: $02
	rlca                                             ; $7b17: $07
	rst  $10                                         ; $7b18: $d7
	ld   [bc], a                                     ; $7b19: $02
	ld   [bc], a                                     ; $7b1a: $02
	inc  bc                                          ; $7b1b: $03
	ld   bc, $2000                                   ; $7b1c: $01 $00 $20
	nop                                              ; $7b1f: $00
	rlca                                             ; $7b20: $07
	ld   a, [hl+]                                    ; $7b21: $2a
	inc  bc                                          ; $7b22: $03
	ld   [bc], a                                     ; $7b23: $02
	inc  bc                                          ; $7b24: $03
	ld   bc, $2001                                   ; $7b25: $01 $01 $20
	nop                                              ; $7b28: $00
	rlca                                             ; $7b29: $07
	ld   h, d                                        ; $7b2a: $62
	inc  bc                                          ; $7b2b: $03
	ld   [bc], a                                     ; $7b2c: $02
	inc  bc                                          ; $7b2d: $03
	ld   bc, $2002                                   ; $7b2e: $01 $02 $20
	nop                                              ; $7b31: $00
	ld   b, $b8                                      ; $7b32: $06 $b8
	inc  bc                                          ; $7b34: $03
	rrca                                             ; $7b35: $0f
	nop                                              ; $7b36: $00
	ld   bc, $5801                                   ; $7b37: $01 $01 $58
	inc  b                                           ; $7b3a: $04
	ld   c, l                                        ; $7b3b: $4d
	ld   [bc], a                                     ; $7b3c: $02
	ld   a, e                                        ; $7b3d: $7b
	ld   d, d                                        ; $7b3e: $52
	ld   [hl], l                                     ; $7b3f: $75
	ld   h, a                                        ; $7b40: $67
	ld   a, e                                        ; $7b41: $7b
	sbc  a                                           ; $7b42: $9f
	dec  c                                           ; $7b43: $0d
	adc  h                                           ; $7b44: $8c
	ld   h, [hl]                                     ; $7b45: $66
	adc  a                                           ; $7b46: $8f
	ld   a, b                                        ; $7b47: $78
	rst  JumpTable                                         ; $7b48: $df
	db   $ec                                         ; $7b49: $ec
	and  e                                           ; $7b4a: $a3
	ld   h, e                                        ; $7b4b: $63
	and  c                                           ; $7b4c: $a1
	ld   a, c                                        ; $7b4d: $79
	dec  c                                           ; $7b4e: $0d
	push de                                          ; $7b4f: $d5
	call nz, $ecc0                                   ; $7b50: $c4 $c0 $ec
	ld   [hl], l                                     ; $7b53: $75
	ld   h, a                                        ; $7b54: $67
	sbc  a                                           ; $7b55: $9f
	dec  c                                           ; $7b56: $0d
	nop                                              ; $7b57: $00
	ld   a, [bc]                                     ; $7b58: $0a
	inc  e                                           ; $7b59: $1c
	inc  bc                                          ; $7b5a: $03
	nop                                              ; $7b5b: $00
	nop                                              ; $7b5c: $00
	dec  e                                           ; $7b5d: $1d
	ld   b, b                                        ; $7b5e: $40
	inc  de                                          ; $7b5f: $13
	inc  bc                                          ; $7b60: $03
	inc  de                                          ; $7b61: $13
	ld   bc, $2801                                   ; $7b62: $01 $01 $28
	nop                                              ; $7b65: $00
	ld   bc, $546b                                   ; $7b66: $01 $6b $54
	ld   e, c                                        ; $7b69: $59
	ld   h, l                                        ; $7b6a: $65
	sub  a                                           ; $7b6b: $97
	ld   sp, hl                                      ; $7b6c: $f9
	dec  c                                           ; $7b6d: $0d
	adc  h                                           ; $7b6e: $8c
	ld   d, b                                        ; $7b6f: $50
	ld   [bc], a                                     ; $7b70: $02
	inc  d                                           ; $7b71: $14
	dec  b                                           ; $7b72: $05
	ld   hl, $3702                                   ; $7b73: $21 $02 $37
	ld   a, l                                        ; $7b76: $7d
	ld   a, b                                        ; $7b77: $78
	ld   d, d                                        ; $7b78: $52
	ld   [hl], l                                     ; $7b79: $75
	ld   h, l                                        ; $7b7a: $65
	sub  l                                           ; $7b7b: $95
	ld   d, h                                        ; $7b7c: $54
	dec  c                                           ; $7b7d: $0d
	ld   e, a                                        ; $7b7e: $5f
	ld   [hl], a                                     ; $7b7f: $77
	rst  $38                                         ; $7b80: $ff
	rst  $38                                         ; $7b81: $ff
	dec  c                                           ; $7b82: $0d
	nop                                              ; $7b83: $00
	ld   a, [bc]                                     ; $7b84: $0a
	ld   b, $b8                                      ; $7b85: $06 $b8
	inc  bc                                          ; $7b87: $03
	rrca                                             ; $7b88: $0f
	nop                                              ; $7b89: $00
	ld   bc, $5a01                                   ; $7b8a: $01 $01 $5a
	and  c                                           ; $7b8d: $a1
	ld   a, [hl]                                     ; $7b8e: $7e
	ld   [hl], c                                     ; $7b8f: $71
	ld   [hl], h                                     ; $7b90: $74
	ld   [bc], a                                     ; $7b91: $02
	inc  [hl]                                        ; $7b92: $34
	ld   h, e                                        ; $7b93: $63
	ld   d, d                                        ; $7b94: $52
	ld   a, e                                        ; $7b95: $7b
	sbc  a                                           ; $7b96: $9f
	dec  c                                           ; $7b97: $0d
	ld   [bc], a                                     ; $7b98: $02
	add  hl, bc                                      ; $7b99: $09
	ld   [bc], a                                     ; $7b9a: $02
	ld   [$7465], sp                                 ; $7b9b: $08 $65 $74
	adc  h                                           ; $7b9e: $8c
	ld   h, a                                        ; $7b9f: $67
	ld   e, c                                        ; $7ba0: $59
	sub  a                                           ; $7ba1: $97
	sbc  a                                           ; $7ba2: $9f
	dec  c                                           ; $7ba3: $0d
	nop                                              ; $7ba4: $00
	ld   a, [bc]                                     ; $7ba5: $0a
	inc  e                                           ; $7ba6: $1c
	inc  bc                                          ; $7ba7: $03
	inc  bc                                          ; $7ba8: $03
	inc  bc                                          ; $7ba9: $03
	dec  e                                           ; $7baa: $1d
	ld   b, b                                        ; $7bab: $40
	inc  de                                          ; $7bac: $13
	inc  bc                                          ; $7bad: $03
	inc  de                                          ; $7bae: $13
	ld   bc, $2803                                   ; $7baf: $01 $03 $28
	nop                                              ; $7bb2: $00
	ld   bc, $9850                                   ; $7bb3: $01 $50 $98
	ld   e, d                                        ; $7bb6: $5a
	halt                                             ; $7bb7: $76
	ld   d, h                                        ; $7bb8: $54
	sbc  a                                           ; $7bb9: $9f
	dec  c                                           ; $7bba: $0d
	nop                                              ; $7bbb: $00
	ld   a, [bc]                                     ; $7bbc: $0a
	ld   b, $b8                                      ; $7bbd: $06 $b8
	inc  bc                                          ; $7bbf: $03
	rrca                                             ; $7bc0: $0f
	nop                                              ; $7bc1: $00
	ld   bc, $0401                                   ; $7bc2: $01 $01 $04
	ld   c, l                                        ; $7bc5: $4d
	ld   [bc], a                                     ; $7bc6: $02
	ld   a, e                                        ; $7bc7: $7b
	ld   d, d                                        ; $7bc8: $52
	adc  h                                           ; $7bc9: $8c
	ld   l, c                                        ; $7bca: $69
	and  c                                           ; $7bcb: $a1
	ld   a, e                                        ; $7bcc: $7b
	rst  $38                                         ; $7bcd: $ff
	rst  $38                                         ; $7bce: $ff
	dec  c                                           ; $7bcf: $0d
	rst  JumpTable                                         ; $7bd0: $df
	db   $ec                                         ; $7bd1: $ec
	and  e                                           ; $7bd2: $a3
	ld   h, e                                        ; $7bd3: $63
	and  c                                           ; $7bd4: $a1
	ld   e, d                                        ; $7bd5: $5a
	db   $dd                                         ; $7bd6: $dd
	and  a                                           ; $7bd7: $a7
	cp   e                                           ; $7bd8: $bb
	ld   l, [hl]                                     ; $7bd9: $6e
	ld   a, b                                        ; $7bda: $78
	and  c                                           ; $7bdb: $a1
	ld   [hl], h                                     ; $7bdc: $74
	sbc  a                                           ; $7bdd: $9f
	dec  c                                           ; $7bde: $0d
	nop                                              ; $7bdf: $00
	ld   a, [bc]                                     ; $7be0: $0a
	inc  e                                           ; $7be1: $1c
	inc  bc                                          ; $7be2: $03
	inc  bc                                          ; $7be3: $03
	inc  bc                                          ; $7be4: $03
	dec  e                                           ; $7be5: $1d
	ld   b, b                                        ; $7be6: $40
	inc  de                                          ; $7be7: $13
	inc  bc                                          ; $7be8: $03
	inc  de                                          ; $7be9: $13
	ld   bc, $2802                                   ; $7bea: $01 $02 $28
	nop                                              ; $7bed: $00
	ld   bc, $d6d6                                   ; $7bee: $01 $d6 $d6
	rst  $38                                         ; $7bf1: $ff
	rst  $38                                         ; $7bf2: $ff
	dec  c                                           ; $7bf3: $0d
	db   $dd                                         ; $7bf4: $dd
	and  a                                           ; $7bf5: $a7
	cp   e                                           ; $7bf6: $bb
	ld   a, b                                        ; $7bf7: $78
	sbc  l                                           ; $7bf8: $9d
	ld   e, a                                        ; $7bf9: $5f
	ld   h, [hl]                                     ; $7bfa: $66
	sub  c                                           ; $7bfb: $91
	ld   a, b                                        ; $7bfc: $78
	ld   d, d                                        ; $7bfd: $52
	ld   a, h                                        ; $7bfe: $7c
	sub  [hl]                                        ; $7bff: $96
	sbc  a                                           ; $7c00: $9f
	dec  c                                           ; $7c01: $0d
	inc  b                                           ; $7c02: $04
	ret  c                                           ; $7c03: $d8

	inc  b                                           ; $7c04: $04
	xor  h                                           ; $7c05: $ac
	ld   d, d                                        ; $7c06: $52
	ld   h, c                                        ; $7c07: $61
	halt                                             ; $7c08: $76
	ld   [bc], a                                     ; $7c09: $02
	sbc  l                                           ; $7c0a: $9d
	ld   d, h                                        ; $7c0b: $54
	sbc  l                                           ; $7c0c: $9d
	ld   a, e                                        ; $7c0d: $7b
	rst  $38                                         ; $7c0e: $ff
	rst  $38                                         ; $7c0f: $ff
	dec  c                                           ; $7c10: $0d
	nop                                              ; $7c11: $00
	ld   a, [bc]                                     ; $7c12: $0a
	ld   b, $b8                                      ; $7c13: $06 $b8
	inc  bc                                          ; $7c15: $03
	inc  e                                           ; $7c16: $1c
	inc  bc                                          ; $7c17: $03
	nop                                              ; $7c18: $00
	nop                                              ; $7c19: $00
	ld   bc, $9e63                                   ; $7c1a: $01 $63 $9e
	ld   e, b                                        ; $7c1d: $58
	ld   h, l                                        ; $7c1e: $65
	sub  c                                           ; $7c1f: $91
	add  a                                           ; $7c20: $87
	sbc  b                                           ; $7c21: $98
	ld   a, l                                        ; $7c22: $7d
	ld   e, b                                        ; $7c23: $58
	ld   h, l                                        ; $7c24: $65
	adc  h                                           ; $7c25: $8c
	ld   d, d                                        ; $7c26: $52
	sub  [hl]                                        ; $7c27: $96
	sbc  a                                           ; $7c28: $9f
	dec  c                                           ; $7c29: $0d
	inc  bc                                          ; $7c2a: $03
	ld   [hl], b                                     ; $7c2b: $70
	ld   e, l                                        ; $7c2c: $5d
	sbc  [hl]                                        ; $7c2d: $9e
	inc  bc                                          ; $7c2e: $03
	ld   l, l                                        ; $7c2f: $6d
	dec  b                                           ; $7c30: $05
	add  hl, de                                      ; $7c31: $19
	ld   a, h                                        ; $7c32: $7c
	ld   h, l                                        ; $7c33: $65
	ld   l, l                                        ; $7c34: $6d
	ld   e, l                                        ; $7c35: $5d
	and  b                                           ; $7c36: $a0
	dec  c                                           ; $7c37: $0d
	ld   h, l                                        ; $7c38: $65
	ld   [hl], h                                     ; $7c39: $74
	ld   e, e                                        ; $7c3a: $5b
	ld   a, b                                        ; $7c3b: $78
	ld   h, e                                        ; $7c3c: $63
	ld   d, d                                        ; $7c3d: $52
	sbc  a                                           ; $7c3e: $9f
	dec  c                                           ; $7c3f: $0d
	nop                                              ; $7c40: $00
	ld   a, [bc]                                     ; $7c41: $0a
	dec  c                                           ; $7c42: $0d
	nop                                              ; $7c43: $00
	nop                                              ; $7c44: $00
	rrca                                             ; $7c45: $0f
	nop                                              ; $7c46: $00
	ld   bc, $1e09                                   ; $7c47: $01 $09 $1e
	nop                                              ; $7c4a: $00
	rrca                                             ; $7c4b: $0f
	nop                                              ; $7c4c: $00
	ld   bc, $df01                                   ; $7c4d: $01 $01 $df
	db   $ec                                         ; $7c50: $ec
	and  e                                           ; $7c51: $a3
	ld   h, e                                        ; $7c52: $63
	and  c                                           ; $7c53: $a1
	ld   a, l                                        ; $7c54: $7d
	sbc  [hl]                                        ; $7c55: $9e
	dec  c                                           ; $7c56: $0d
	inc  b                                           ; $7c57: $04
	adc  [hl]                                        ; $7c58: $8e
	inc  b                                           ; $7c59: $04
	inc  c                                           ; $7c5a: $0c
	ld   a, h                                        ; $7c5b: $7c
	ld   h, c                                        ; $7c5c: $61
	halt                                             ; $7c5d: $76
	and  b                                           ; $7c5e: $a0
	ld   [hl], a                                     ; $7c5f: $77
	ld   d, h                                        ; $7c60: $54
	dec  b                                           ; $7c61: $05
	pop  de                                          ; $7c62: $d1
	ld   [hl], c                                     ; $7c63: $71
	ld   [hl], h                                     ; $7c64: $74
	ld   d, d                                        ; $7c65: $52
	sbc  c                                           ; $7c66: $99
	and  c                                           ; $7c67: $a1
	dec  c                                           ; $7c68: $0d
	ld   [hl], l                                     ; $7c69: $75
	ld   h, a                                        ; $7c6a: $67
	ld   e, c                                        ; $7c6b: $59
	ld   sp, hl                                      ; $7c6c: $f9
	dec  c                                           ; $7c6d: $0d
	nop                                              ; $7c6e: $00
	ld   a, [bc]                                     ; $7c6f: $0a
	inc  e                                           ; $7c70: $1c
	inc  bc                                          ; $7c71: $03
	nop                                              ; $7c72: $00
	nop                                              ; $7c73: $00
	ld   bc, $546b                                   ; $7c74: $01 $6b $54
	ld   a, e                                        ; $7c77: $7b
	rst  $38                                         ; $7c78: $ff
	rst  $38                                         ; $7c79: $ff
	dec  c                                           ; $7c7a: $0d
	ld   d, b                                        ; $7c7b: $50
	sbc  c                                           ; $7c7c: $99
	ld   [bc], a                                     ; $7c7d: $02
	ld   b, $04                                      ; $7c7e: $06 $04
	jp   nc, $039e                                   ; $7c80: $d2 $9e $03

	ld   h, $7a                                      ; $7c83: $26 $7a
	ld   e, e                                        ; $7c85: $5b
	ld   a, c                                        ; $7c86: $79
	ld   a, b                                        ; $7c87: $78
	sbc  c                                           ; $7c88: $99
	dec  c                                           ; $7c89: $0d
	dec  b                                           ; $7c8a: $05
	inc  de                                          ; $7c8b: $13
	ld   h, l                                        ; $7c8c: $65
	ld   d, d                                        ; $7c8d: $52
	ld   h, c                                        ; $7c8e: $61
	halt                                             ; $7c8f: $76
	rst  $38                                         ; $7c90: $ff
	rst  $38                                         ; $7c91: $ff
	dec  c                                           ; $7c92: $0d
	nop                                              ; $7c93: $00
	ld   a, [bc]                                     ; $7c94: $0a
	inc  e                                           ; $7c95: $1c
	inc  bc                                          ; $7c96: $03
	inc  bc                                          ; $7c97: $03
	inc  bc                                          ; $7c98: $03
	ld   bc, $9075                                   ; $7c99: $01 $75 $90
	sbc  [hl]                                        ; $7c9c: $9e
	inc  b                                           ; $7c9d: $04
	db   $ec                                         ; $7c9e: $ec
	inc  bc                                          ; $7c9f: $03
	or   b                                           ; $7ca0: $b0
	halt                                             ; $7ca1: $76
	ld   h, l                                        ; $7ca2: $65
	ld   [hl], h                                     ; $7ca3: $74
	ld   a, h                                        ; $7ca4: $7c
	sub  d                                           ; $7ca5: $92
	sbc  b                                           ; $7ca6: $98
	ld   e, d                                        ; $7ca7: $5a
	ld   d, d                                        ; $7ca8: $52
	sub  b                                           ; $7ca9: $90
	dec  c                                           ; $7caa: $0d
	ld   [bc], a                                     ; $7cab: $02
	sub  l                                           ; $7cac: $95
	ld   [hl], d                                     ; $7cad: $72
	ld   e, a                                        ; $7cae: $5f
	ld   l, l                                        ; $7caf: $6d
	ld   h, l                                        ; $7cb0: $65
	sbc  [hl]                                        ; $7cb1: $9e
	ld   [bc], a                                     ; $7cb2: $02
	and  l                                           ; $7cb3: $a5
	ld   [hl], l                                     ; $7cb4: $75
	ld   a, l                                        ; $7cb5: $7d
	ld   h, a                                        ; $7cb6: $67
	ld   h, d                                        ; $7cb7: $62
	ld   e, l                                        ; $7cb8: $5d
	dec  c                                           ; $7cb9: $0d
	inc  b                                           ; $7cba: $04
	ld   c, $03                                      ; $7cbb: $0e $03
	dec  de                                          ; $7cbd: $1b
	ld   a, b                                        ; $7cbe: $78
	ld   h, c                                        ; $7cbf: $61
	halt                                             ; $7cc0: $76
	ld   l, [hl]                                     ; $7cc1: $6e
	sbc  l                                           ; $7cc2: $9d
	rst  $38                                         ; $7cc3: $ff
	rst  $38                                         ; $7cc4: $ff
	dec  c                                           ; $7cc5: $0d
	nop                                              ; $7cc6: $00
	ld   a, [bc]                                     ; $7cc7: $0a
	inc  e                                           ; $7cc8: $1c
	inc  bc                                          ; $7cc9: $03
	nop                                              ; $7cca: $00
	nop                                              ; $7ccb: $00
	ld   bc, $9e63                                   ; $7ccc: $01 $63 $9e
	ld   e, b                                        ; $7ccf: $58
	ld   h, l                                        ; $7cd0: $65
	sub  c                                           ; $7cd1: $91
	add  a                                           ; $7cd2: $87
	sbc  b                                           ; $7cd3: $98
	ld   a, l                                        ; $7cd4: $7d
	ld   e, b                                        ; $7cd5: $58
	ld   h, l                                        ; $7cd6: $65
	adc  h                                           ; $7cd7: $8c
	ld   d, d                                        ; $7cd8: $52
	sub  [hl]                                        ; $7cd9: $96
	sbc  a                                           ; $7cda: $9f
	dec  c                                           ; $7cdb: $0d
	inc  bc                                          ; $7cdc: $03
	ld   [hl], b                                     ; $7cdd: $70
	ld   e, l                                        ; $7cde: $5d
	sbc  [hl]                                        ; $7cdf: $9e
	inc  bc                                          ; $7ce0: $03
	ld   l, l                                        ; $7ce1: $6d
	dec  b                                           ; $7ce2: $05
	add  hl, de                                      ; $7ce3: $19
	ld   a, h                                        ; $7ce4: $7c
	ld   h, l                                        ; $7ce5: $65
	ld   l, l                                        ; $7ce6: $6d
	ld   e, l                                        ; $7ce7: $5d
	and  b                                           ; $7ce8: $a0
	dec  c                                           ; $7ce9: $0d
	ld   h, l                                        ; $7cea: $65
	ld   [hl], h                                     ; $7ceb: $74
	ld   e, e                                        ; $7cec: $5b
	ld   a, b                                        ; $7ced: $78
	ld   h, e                                        ; $7cee: $63
	ld   d, d                                        ; $7cef: $52
	sbc  a                                           ; $7cf0: $9f
	dec  c                                           ; $7cf1: $0d
	nop                                              ; $7cf2: $00
	ld   a, [bc]                                     ; $7cf3: $0a
	dec  c                                           ; $7cf4: $0d
	nop                                              ; $7cf5: $00
	nop                                              ; $7cf6: $00
	rrca                                             ; $7cf7: $0f
	nop                                              ; $7cf8: $00
	ld   bc, $1e09                                   ; $7cf9: $01 $09 $1e
	nop                                              ; $7cfc: $00
	ld   bc, $7d58                                   ; $7cfd: $01 $58 $7d
	sub  [hl]                                        ; $7d00: $96
	ld   d, h                                        ; $7d01: $54
	ld   h, d                                        ; $7d02: $62
	ld   h, h                                        ; $7d03: $64
	ld   d, d                                        ; $7d04: $52
	adc  h                                           ; $7d05: $8c
	ld   h, a                                        ; $7d06: $67
	sbc  a                                           ; $7d07: $9f
	dec  c                                           ; $7d08: $0d
	rst  JumpTable                                         ; $7d09: $df
	db   $ec                                         ; $7d0a: $ec
	and  e                                           ; $7d0b: $a3
	ld   h, e                                        ; $7d0c: $63
	and  c                                           ; $7d0d: $a1
	sbc  a                                           ; $7d0e: $9f
	dec  c                                           ; $7d0f: $0d
	nop                                              ; $7d10: $00
	ld   a, [bc]                                     ; $7d11: $0a
	rrca                                             ; $7d12: $0f
	inc  bc                                          ; $7d13: $03
	nop                                              ; $7d14: $00
	ld   bc, $0008                                   ; $7d15: $01 $08 $00
	ld   e, l                                        ; $7d18: $5d
	and  c                                           ; $7d19: $a1
	sbc  a                                           ; $7d1a: $9f
	dec  c                                           ; $7d1b: $0d
	ld   e, b                                        ; $7d1c: $58
	ld   a, l                                        ; $7d1d: $7d
	sub  [hl]                                        ; $7d1e: $96
	ld   d, h                                        ; $7d1f: $54
	sbc  a                                           ; $7d20: $9f
	dec  c                                           ; $7d21: $0d
	nop                                              ; $7d22: $00
	ld   a, [bc]                                     ; $7d23: $0a
	rrca                                             ; $7d24: $0f
	nop                                              ; $7d25: $00
	ld   bc, $0301                                   ; $7d26: $01 $01 $03
	ld   l, e                                        ; $7d29: $6b
	ld   a, c                                        ; $7d2a: $79
	inc  bc                                          ; $7d2b: $03
	and  b                                           ; $7d2c: $a0
	ld   [hl], c                                     ; $7d2d: $71
	ld   [hl], h                                     ; $7d2e: $74
	sbc  c                                           ; $7d2f: $99
	ld   a, h                                        ; $7d30: $7c
	ld   a, l                                        ; $7d31: $7d
	inc  b                                           ; $7d32: $04
	inc  c                                           ; $7d33: $0c
	inc  b                                           ; $7d34: $04
	adc  a                                           ; $7d35: $8f
	ld   [hl], l                                     ; $7d36: $75
	ld   h, a                                        ; $7d37: $67
	ld   a, e                                        ; $7d38: $7b
	sbc  a                                           ; $7d39: $9f
	dec  c                                           ; $7d3a: $0d
	ld   b, $04                                      ; $7d3b: $06 $04
	inc  bc                                          ; $7d3d: $03
	ld   [hl], l                                     ; $7d3e: $75
	ld   [hl], l                                     ; $7d3f: $75
	ld   h, a                                        ; $7d40: $67
	ld   a, e                                        ; $7d41: $7b
	sbc  a                                           ; $7d42: $9f
	dec  c                                           ; $7d43: $0d
	nop                                              ; $7d44: $00
	ld   a, [bc]                                     ; $7d45: $0a
	inc  e                                           ; $7d46: $1c
	inc  bc                                          ; $7d47: $03
	inc  bc                                          ; $7d48: $03
	inc  bc                                          ; $7d49: $03
	ld   bc, $9a6b                                   ; $7d4a: $01 $6b $9a
	adc  c                                           ; $7d4d: $89
	ld   [hl], a                                     ; $7d4e: $77
	ld   [hl], l                                     ; $7d4f: $75
	sub  b                                           ; $7d50: $90
	ld   a, b                                        ; $7d51: $78
	ld   d, d                                        ; $7d52: $52
	sbc  l                                           ; $7d53: $9d
	sub  [hl]                                        ; $7d54: $96
	sbc  a                                           ; $7d55: $9f
	dec  c                                           ; $7d56: $0d
	nop                                              ; $7d57: $00
	ld   a, [bc]                                     ; $7d58: $0a
	rrca                                             ; $7d59: $0f
	nop                                              ; $7d5a: $00
	ld   bc, $0101                                   ; $7d5b: $01 $01 $01
	inc  bc                                          ; $7d5e: $03
	inc  b                                           ; $7d5f: $04
	ld   c, c                                        ; $7d60: $49
	and  b                                           ; $7d61: $a0
	ld   [bc], a                                     ; $7d62: $02
	jp   nz, Jump_04c_5461                           ; $7d63: $c2 $61 $54

	ld   e, c                                        ; $7d66: $59
	ld   a, b                                        ; $7d67: $78
	rst  $38                                         ; $7d68: $ff
	rst  $38                                         ; $7d69: $ff
	ld   bc, $0d04                                   ; $7d6a: $01 $04 $0d
	nop                                              ; $7d6d: $00
	ld   a, [bc]                                     ; $7d6e: $0a
	add  hl, de                                      ; $7d6f: $19
	dec  b                                           ; $7d70: $05
	inc  bc                                          ; $7d71: $03
	ld   [bc], a                                     ; $7d72: $02
	rra                                              ; $7d73: $1f
	inc  b                                           ; $7d74: $04
	call nc, Call_04c_7279                           ; $7d75: $d4 $79 $72
	ld   d, d                                        ; $7d78: $52

Jump_04c_7d79:
	ld   [hl], h                                     ; $7d79: $74
	ld   [bc], a                                     ; $7d7a: $02
	jp   nz, $005d                                   ; $7d7b: $c2 $5d $00

	nop                                              ; $7d7e: $00
	inc  b                                           ; $7d7f: $04
	db   $ec                                         ; $7d80: $ec
	ld   a, c                                        ; $7d81: $79
	ld   [hl], d                                     ; $7d82: $72
	ld   d, d                                        ; $7d83: $52
	ld   [hl], h                                     ; $7d84: $74
	ld   [bc], a                                     ; $7d85: $02
	jp   nz, $005d                                   ; $7d86: $c2 $5d $00

	ld   bc, $8e04                                   ; $7d89: $01 $04 $8e
	inc  b                                           ; $7d8c: $04
	inc  c                                           ; $7d8d: $0c
	ld   a, c                                        ; $7d8e: $79
	ld   [hl], d                                     ; $7d8f: $72
	ld   d, d                                        ; $7d90: $52
	ld   [hl], h                                     ; $7d91: $74
	ld   [bc], a                                     ; $7d92: $02
	jp   nz, $005d                                   ; $7d93: $c2 $5d $00

	ld   [bc], a                                     ; $7d96: $02
	rlca                                             ; $7d97: $07
	add  l                                           ; $7d98: $85
	dec  b                                           ; $7d99: $05
	ld   [bc], a                                     ; $7d9a: $02
	inc  bc                                          ; $7d9b: $03
	ld   bc, $2000                                   ; $7d9c: $01 $00 $20
	nop                                              ; $7d9f: $00

Jump_04c_7da0:
	rlca                                             ; $7da0: $07
	ld   hl, sp+$06                                  ; $7da1: $f8 $06
	ld   [bc], a                                     ; $7da3: $02
	inc  bc                                          ; $7da4: $03
	ld   bc, $2001                                   ; $7da5: $01 $01 $20
	nop                                              ; $7da8: $00
	rlca                                             ; $7da9: $07
	ld   a, c                                        ; $7daa: $79
	ld   [$0302], sp                                 ; $7dab: $08 $02 $03
	ld   bc, $2002                                   ; $7dae: $01 $02 $20
	nop                                              ; $7db1: $00
	ld   b, $57                                      ; $7db2: $06 $57
	dec  b                                           ; $7db4: $05
	inc  e                                           ; $7db5: $1c
	inc  bc                                          ; $7db6: $03
	nop                                              ; $7db7: $00
	nop                                              ; $7db8: $00
	ld   bc, $5063                                   ; $7db9: $01 $63 $50
	sbc  [hl]                                        ; $7dbc: $9e
	inc  bc                                          ; $7dbd: $03
	ld   l, l                                        ; $7dbe: $6d
	dec  b                                           ; $7dbf: $05
	add  hl, de                                      ; $7dc0: $19
	ld   a, h                                        ; $7dc1: $7c
	inc  bc                                          ; $7dc2: $03
	ld   l, a                                        ; $7dc3: $6f
	ld   [bc], a                                     ; $7dc4: $02
	xor  c                                           ; $7dc5: $a9
	sub  [hl]                                        ; $7dc6: $96
	sbc  a                                           ; $7dc7: $9f
	dec  c                                           ; $7dc8: $0d
	inc  bc                                          ; $7dc9: $03
	ld   [hl], b                                     ; $7dca: $70
	ld   e, l                                        ; $7dcb: $5d
	sbc  [hl]                                        ; $7dcc: $9e
	ld   h, l                                        ; $7dcd: $65
	ld   l, l                                        ; $7dce: $6d
	ld   e, l                                        ; $7dcf: $5d
	ld   h, l                                        ; $7dd0: $65
	ld   [hl], h                                     ; $7dd1: $74
	ld   e, e                                        ; $7dd2: $5b
	ld   a, b                                        ; $7dd3: $78
	ld   h, e                                        ; $7dd4: $63
	ld   d, d                                        ; $7dd5: $52
	sbc  a                                           ; $7dd6: $9f
	dec  c                                           ; $7dd7: $0d
	nop                                              ; $7dd8: $00
	ld   a, [bc]                                     ; $7dd9: $0a
	dec  c                                           ; $7dda: $0d
	nop                                              ; $7ddb: $00
	nop                                              ; $7ddc: $00
	rrca                                             ; $7ddd: $0f
	nop                                              ; $7dde: $00
	ld   bc, $1e09                                   ; $7ddf: $01 $09 $1e
	nop                                              ; $7de2: $00
	rrca                                             ; $7de3: $0f
	nop                                              ; $7de4: $00
	ld   bc, $0201                                   ; $7de5: $01 $01 $02
	rra                                              ; $7de8: $1f
	inc  b                                           ; $7de9: $04
	call nc, $047d                                   ; $7dea: $d4 $7d $04
	ld   c, e                                        ; $7ded: $4b
	inc  b                                           ; $7dee: $04
	ldh  a, [c]                                      ; $7def: $f2
	ld   [bc], a                                     ; $7df0: $02
	sub  a                                           ; $7df1: $97
	ld   [hl], l                                     ; $7df2: $75
	ld   h, l                                        ; $7df3: $65
	ld   l, l                                        ; $7df4: $6d
	sub  [hl]                                        ; $7df5: $96
	ld   a, e                                        ; $7df6: $7b
	sbc  a                                           ; $7df7: $9f
	dec  c                                           ; $7df8: $0d
	nop                                              ; $7df9: $00
	ld   a, [bc]                                     ; $7dfa: $0a
	inc  e                                           ; $7dfb: $1c
	inc  bc                                          ; $7dfc: $03
	nop                                              ; $7dfd: $00
	nop                                              ; $7dfe: $00
	ld   bc, $546b                                   ; $7dff: $01 $6b $54
	sub  [hl]                                        ; $7e02: $96
	sbc  a                                           ; $7e03: $9f
	dec  c                                           ; $7e04: $0d
	nop                                              ; $7e05: $00
	ld   a, [bc]                                     ; $7e06: $0a
	add  hl, de                                      ; $7e07: $19
	dec  b                                           ; $7e08: $05
	inc  bc                                          ; $7e09: $03
	inc  b                                           ; $7e0a: $04
	inc  de                                          ; $7e0b: $13
	ld   h, [hl]                                     ; $7e0c: $66
	ld   e, l                                        ; $7e0d: $5d
	ld   a, c                                        ; $7e0e: $79
	ld   [bc], a                                     ; $7e0f: $02
	ld   a, a                                        ; $7e10: $7f
	ld   e, l                                        ; $7e11: $5d
	dec  b                                           ; $7e12: $05
	jr   nz, jr_04c_7e8a                             ; $7e13: $20 $75

	ld   h, l                                        ; $7e15: $65
	ld   l, l                                        ; $7e16: $6d
	sub  [hl]                                        ; $7e17: $96
	ld   a, e                                        ; $7e18: $7b
	nop                                              ; $7e19: $00
	nop                                              ; $7e1a: $00
	inc  b                                           ; $7e1b: $04
	inc  de                                          ; $7e1c: $13
	ld   [bc], a                                     ; $7e1d: $02
	adc  a                                           ; $7e1e: $8f
	ld   a, c                                        ; $7e1f: $79
	ld   [bc], a                                     ; $7e20: $02
	ld   a, a                                        ; $7e21: $7f
	ld   e, l                                        ; $7e22: $5d
	dec  b                                           ; $7e23: $05
	jr   nz, jr_04c_7e9b                             ; $7e24: $20 $75

	ld   h, l                                        ; $7e26: $65
	ld   l, l                                        ; $7e27: $6d
	sub  [hl]                                        ; $7e28: $96
	ld   a, e                                        ; $7e29: $7b
	nop                                              ; $7e2a: $00
	ld   bc, $a177                                   ; $7e2b: $01 $77 $a1
	ld   a, b                                        ; $7e2e: $78
	dec  b                                           ; $7e2f: $05
	jr   nz, jr_04c_7ea7                             ; $7e30: $20 $75

	ld   h, l                                        ; $7e32: $65
	ld   l, l                                        ; $7e33: $6d
	ld   [hl], c                                     ; $7e34: $71
	ld   e, a                                        ; $7e35: $5f
	rst  $38                                         ; $7e36: $ff
	rst  $38                                         ; $7e37: $ff
	nop                                              ; $7e38: $00
	ld   [bc], a                                     ; $7e39: $02
	rlca                                             ; $7e3a: $07
	ld   a, [$0205]                                  ; $7e3b: $fa $05 $02
	inc  bc                                          ; $7e3e: $03
	ld   bc, $2000                                   ; $7e3f: $01 $00 $20
	nop                                              ; $7e42: $00
	rlca                                             ; $7e43: $07
	inc  [hl]                                        ; $7e44: $34
	ld   b, $02                                      ; $7e45: $06 $02
	inc  bc                                          ; $7e47: $03
	ld   bc, $2001                                   ; $7e48: $01 $01 $20
	nop                                              ; $7e4b: $00
	rlca                                             ; $7e4c: $07
	add  e                                           ; $7e4d: $83
	ld   b, $02                                      ; $7e4e: $06 $02
	inc  bc                                          ; $7e50: $03
	ld   bc, $2002                                   ; $7e51: $01 $02 $20
	nop                                              ; $7e54: $00
	ld   b, $c3                                      ; $7e55: $06 $c3
	ld   b, $0f                                      ; $7e57: $06 $0f
	nop                                              ; $7e59: $00
	ld   bc, $0401                                   ; $7e5a: $01 $01 $04
	inc  de                                          ; $7e5d: $13
	ld   h, [hl]                                     ; $7e5e: $66
	ld   e, l                                        ; $7e5f: $5d
	ld   a, c                                        ; $7e60: $79
	ld   [bc], a                                     ; $7e61: $02
	ld   a, a                                        ; $7e62: $7f
	ld   e, l                                        ; $7e63: $5d
	dec  b                                           ; $7e64: $05
	jr   nz, jr_04c_7edc                             ; $7e65: $20 $75

	ld   h, l                                        ; $7e67: $65
	ld   l, l                                        ; $7e68: $6d
	sub  [hl]                                        ; $7e69: $96
	ld   a, e                                        ; $7e6a: $7b
	sbc  a                                           ; $7e6b: $9f
	dec  c                                           ; $7e6c: $0d
	nop                                              ; $7e6d: $00
	ld   a, [bc]                                     ; $7e6e: $0a
	inc  e                                           ; $7e6f: $1c

jr_04c_7e70:
	inc  bc                                          ; $7e70: $03
	inc  bc                                          ; $7e71: $03
	inc  bc                                          ; $7e72: $03
	dec  e                                           ; $7e73: $1d
	ld   b, b                                        ; $7e74: $40
	inc  de                                          ; $7e75: $13
	inc  bc                                          ; $7e76: $03
	inc  de                                          ; $7e77: $13
	ld   bc, $2802                                   ; $7e78: $01 $02 $28
	nop                                              ; $7e7b: $00
	ld   bc, $546b                                   ; $7e7c: $01 $6b $54
	sub  [hl]                                        ; $7e7f: $96
	sbc  a                                           ; $7e80: $9f
	dec  c                                           ; $7e81: $0d
	sub  [hl]                                        ; $7e82: $96
	ld   e, l                                        ; $7e83: $5d
	inc  b                                           ; $7e84: $04
	dec  hl                                          ; $7e85: $2b
	ld   [hl], c                                     ; $7e86: $71
	ld   [hl], h                                     ; $7e87: $74
	sbc  c                                           ; $7e88: $99
	sbc  l                                           ; $7e89: $9d

jr_04c_7e8a:
	ld   a, e                                        ; $7e8a: $7b
	sbc  a                                           ; $7e8b: $9f
	dec  c                                           ; $7e8c: $0d
	nop                                              ; $7e8d: $00
	ld   a, [bc]                                     ; $7e8e: $0a
	ld   b, $c3                                      ; $7e8f: $06 $c3
	ld   b, $0f                                      ; $7e91: $06 $0f
	nop                                              ; $7e93: $00
	ld   bc, $0401                                   ; $7e94: $01 $01 $04
	inc  de                                          ; $7e97: $13
	ld   [bc], a                                     ; $7e98: $02
	adc  a                                           ; $7e99: $8f
	ld   a, c                                        ; $7e9a: $79

jr_04c_7e9b:
	ld   [bc], a                                     ; $7e9b: $02
	ld   a, a                                        ; $7e9c: $7f
	ld   e, l                                        ; $7e9d: $5d
	dec  b                                           ; $7e9e: $05
	jr   nz, jr_04c_7f16                             ; $7e9f: $20 $75

	ld   h, a                                        ; $7ea1: $67
	sub  [hl]                                        ; $7ea2: $96
	ld   a, e                                        ; $7ea3: $7b
	sbc  a                                           ; $7ea4: $9f
	dec  c                                           ; $7ea5: $0d
	nop                                              ; $7ea6: $00

jr_04c_7ea7:
	ld   a, [bc]                                     ; $7ea7: $0a
	inc  e                                           ; $7ea8: $1c
	inc  bc                                          ; $7ea9: $03
	inc  b                                           ; $7eaa: $04
	inc  b                                           ; $7eab: $04
	dec  e                                           ; $7eac: $1d
	ld   b, b                                        ; $7ead: $40
	inc  de                                          ; $7eae: $13
	inc  bc                                          ; $7eaf: $03
	inc  de                                          ; $7eb0: $13
	ld   bc, $2901                                   ; $7eb1: $01 $01 $29
	nop                                              ; $7eb4: $00
	ld   bc, $1304                                   ; $7eb5: $01 $04 $13
	ld   [bc], a                                     ; $7eb8: $02
	adc  a                                           ; $7eb9: $8f
	ld   a, c                                        ; $7eba: $79
	ld   [bc], a                                     ; $7ebb: $02
	ld   a, a                                        ; $7ebc: $7f
	ld   [hl], c                                     ; $7ebd: $71
	ld   [hl], h                                     ; $7ebe: $74
	ld   [hl], a                                     ; $7ebf: $77
	ld   d, h                                        ; $7ec0: $54
	ld   h, a                                        ; $7ec1: $67
	sbc  c                                           ; $7ec2: $99
	ld   a, h                                        ; $7ec3: $7c
	sbc  a                                           ; $7ec4: $9f
	dec  c                                           ; $7ec5: $0d
	inc  b                                           ; $7ec6: $04
	ld   c, e                                        ; $7ec7: $4b
	inc  b                                           ; $7ec8: $04
	ldh  a, [c]                                      ; $7ec9: $f2
	ld   [bc], a                                     ; $7eca: $02
	sub  a                                           ; $7ecb: $97
	ld   a, l                                        ; $7ecc: $7d
	inc  b                                           ; $7ecd: $04
	inc  de                                          ; $7ece: $13
	ld   h, [hl]                                     ; $7ecf: $66
	ld   e, l                                        ; $7ed0: $5d
	and  b                                           ; $7ed1: $a0
	inc  b                                           ; $7ed2: $04
	call nc, $2a03                                   ; $7ed3: $d4 $03 $2a
	ld   h, a                                        ; $7ed6: $67
	dec  b                                           ; $7ed7: $05
	jr   nz, jr_04c_7e70                             ; $7ed8: $20 $96

	sbc  a                                           ; $7eda: $9f
	dec  c                                           ; $7edb: $0d

jr_04c_7edc:
	nop                                              ; $7edc: $00
	ld   a, [bc]                                     ; $7edd: $0a
	ld   b, $c3                                      ; $7ede: $06 $c3
	ld   b, $0f                                      ; $7ee0: $06 $0f
	nop                                              ; $7ee2: $00
	ld   bc, $7701                                   ; $7ee3: $01 $01 $77
	and  c                                           ; $7ee6: $a1
	ld   a, b                                        ; $7ee7: $78
	dec  b                                           ; $7ee8: $05
	jr   nz, jr_04c_7f60                             ; $7ee9: $20 $75

	ld   h, l                                        ; $7eeb: $65
	ld   l, l                                        ; $7eec: $6d
	ld   [hl], c                                     ; $7eed: $71
	ld   e, a                                        ; $7eee: $5f
	rst  $38                                         ; $7eef: $ff
	rst  $38                                         ; $7ef0: $ff
	dec  c                                           ; $7ef1: $0d
	nop                                              ; $7ef2: $00
	ld   a, [bc]                                     ; $7ef3: $0a
	inc  e                                           ; $7ef4: $1c
	inc  bc                                          ; $7ef5: $03
	nop                                              ; $7ef6: $00
	nop                                              ; $7ef7: $00
	ld   bc, $3303                                   ; $7ef8: $01 $03 $33
	dec  b                                           ; $7efb: $05
	db   $ec                                         ; $7efc: $ec
	inc  b                                           ; $7efd: $04
	ld   h, h                                        ; $7efe: $64
	inc  bc                                          ; $7eff: $03
	ld   [hl-], a                                    ; $7f00: $32
	halt                                             ; $7f01: $76
	ld   d, d                                        ; $7f02: $52
	ld   d, h                                        ; $7f03: $54
	ld   e, b                                        ; $7f04: $58
	dec  b                                           ; $7f05: $05
	ld   d, a                                        ; $7f06: $57
	ld   h, e                                        ; $7f07: $63
	and  c                                           ; $7f08: $a1
	ld   e, d                                        ; $7f09: $5a
	dec  c                                           ; $7f0a: $0d
	inc  b                                           ; $7f0b: $04
	inc  de                                          ; $7f0c: $13
	ld   h, [hl]                                     ; $7f0d: $66
	ld   e, l                                        ; $7f0e: $5d
	halt                                             ; $7f0f: $76
	ld   d, d                                        ; $7f10: $52
	ld   d, h                                        ; $7f11: $54
	inc  bc                                          ; $7f12: $03
	ld   c, e                                        ; $7f13: $4b
	and  b                                           ; $7f14: $a0
	inc  b                                           ; $7f15: $04

jr_04c_7f16:
	call nc, $2a03                                   ; $7f16: $d4 $03 $2a
	ld   h, a                                        ; $7f19: $67
	dec  b                                           ; $7f1a: $05
	jr   nz, @-$68                                   ; $7f1b: $20 $96

	sbc  a                                           ; $7f1d: $9f
	dec  c                                           ; $7f1e: $0d
	nop                                              ; $7f1f: $00
	ld   a, [bc]                                     ; $7f20: $0a
	inc  e                                           ; $7f21: $1c
	inc  bc                                          ; $7f22: $03
	nop                                              ; $7f23: $00
	nop                                              ; $7f24: $00
	ld   bc, $9e63                                   ; $7f25: $01 $63 $9e
	ld   e, b                                        ; $7f28: $58
	ld   h, l                                        ; $7f29: $65
	sub  c                                           ; $7f2a: $91
	add  a                                           ; $7f2b: $87
	sbc  b                                           ; $7f2c: $98
	ld   a, l                                        ; $7f2d: $7d
	ld   e, b                                        ; $7f2e: $58
	ld   h, l                                        ; $7f2f: $65
	adc  h                                           ; $7f30: $8c
	ld   d, d                                        ; $7f31: $52
	sub  [hl]                                        ; $7f32: $96
	sbc  a                                           ; $7f33: $9f
	dec  c                                           ; $7f34: $0d
	inc  bc                                          ; $7f35: $03
	ld   [hl], b                                     ; $7f36: $70
	ld   e, l                                        ; $7f37: $5d
	sbc  [hl]                                        ; $7f38: $9e
	inc  bc                                          ; $7f39: $03
	ld   l, l                                        ; $7f3a: $6d
	dec  b                                           ; $7f3b: $05
	add  hl, de                                      ; $7f3c: $19
	ld   a, h                                        ; $7f3d: $7c
	ld   h, l                                        ; $7f3e: $65
	ld   l, l                                        ; $7f3f: $6d
	ld   e, l                                        ; $7f40: $5d
	and  b                                           ; $7f41: $a0
	dec  c                                           ; $7f42: $0d
	ld   h, l                                        ; $7f43: $65
	ld   [hl], h                                     ; $7f44: $74
	ld   e, e                                        ; $7f45: $5b
	ld   a, b                                        ; $7f46: $78
	ld   h, e                                        ; $7f47: $63
	ld   d, d                                        ; $7f48: $52
	sbc  a                                           ; $7f49: $9f
	dec  c                                           ; $7f4a: $0d
	nop                                              ; $7f4b: $00
	ld   a, [bc]                                     ; $7f4c: $0a
	dec  c                                           ; $7f4d: $0d
	nop                                              ; $7f4e: $00
	nop                                              ; $7f4f: $00
	rrca                                             ; $7f50: $0f
	nop                                              ; $7f51: $00
	ld   bc, $1e09                                   ; $7f52: $01 $09 $1e
	nop                                              ; $7f55: $00
	rrca                                             ; $7f56: $0f
	nop                                              ; $7f57: $00
	ld   bc, $df01                                   ; $7f58: $01 $01 $df
	db   $ec                                         ; $7f5b: $ec
	and  e                                           ; $7f5c: $a3
	ld   h, e                                        ; $7f5d: $63
	and  c                                           ; $7f5e: $a1
	ld   a, l                                        ; $7f5f: $7d

jr_04c_7f60:
	dec  c                                           ; $7f60: $0d
	inc  bc                                          ; $7f61: $03
	inc  sp                                          ; $7f62: $33
	dec  b                                           ; $7f63: $05
	db   $ec                                         ; $7f64: $ec
	inc  b                                           ; $7f65: $04
	ld   h, h                                        ; $7f66: $64
	inc  bc                                          ; $7f67: $03
	ld   [hl-], a                                    ; $7f68: $32
	ld   [hl], l                                     ; $7f69: $75
	ld   h, l                                        ; $7f6a: $65
	ld   l, l                                        ; $7f6b: $6d
	sub  [hl]                                        ; $7f6c: $96
	ld   a, e                                        ; $7f6d: $7b
	sbc  a                                           ; $7f6e: $9f
	dec  c                                           ; $7f6f: $0d
	nop                                              ; $7f70: $00
	ld   a, [bc]                                     ; $7f71: $0a
	inc  e                                           ; $7f72: $1c
	inc  bc                                          ; $7f73: $03
	nop                                              ; $7f74: $00
	nop                                              ; $7f75: $00
	ld   bc, $546b                                   ; $7f76: $01 $6b $54
	sub  [hl]                                        ; $7f79: $96
	sbc  a                                           ; $7f7a: $9f
	dec  c                                           ; $7f7b: $0d
	nop                                              ; $7f7c: $00
	ld   a, [bc]                                     ; $7f7d: $0a
	add  hl, de                                      ; $7f7e: $19
	dec  b                                           ; $7f7f: $05
	inc  bc                                          ; $7f80: $03
	ld   e, b                                        ; $7f81: $58
	inc  b                                           ; $7f82: $04
	ld   c, l                                        ; $7f83: $4d
	ld   [bc], a                                     ; $7f84: $02
	ld   a, e                                        ; $7f85: $7b
	ld   d, d                                        ; $7f86: $52
	ld   [hl], l                                     ; $7f87: $75
	ld   h, a                                        ; $7f88: $67
	ld   a, e                                        ; $7f89: $7b
	nop                                              ; $7f8a: $00
	nop                                              ; $7f8b: $00
	ld   e, d                                        ; $7f8c: $5a
	and  c                                           ; $7f8d: $a1
	ld   a, [hl]                                     ; $7f8e: $7e
	ld   [hl], c                                     ; $7f8f: $71
	ld   [hl], h                                     ; $7f90: $74
	ld   [bc], a                                     ; $7f91: $02
	inc  [hl]                                        ; $7f92: $34
	ld   h, e                                        ; $7f93: $63
	ld   d, d                                        ; $7f94: $52
	ld   a, e                                        ; $7f95: $7b
	nop                                              ; $7f96: $00
	ld   bc, $4d04                                   ; $7f97: $01 $04 $4d
	ld   [bc], a                                     ; $7f9a: $02
	ld   a, e                                        ; $7f9b: $7b
	ld   d, d                                        ; $7f9c: $52
	adc  h                                           ; $7f9d: $8c
	ld   l, c                                        ; $7f9e: $69
	and  c                                           ; $7f9f: $a1
	ld   a, e                                        ; $7fa0: $7b
	nop                                              ; $7fa1: $00
	ld   [bc], a                                     ; $7fa2: $02
	rlca                                             ; $7fa3: $07
	ld   h, e                                        ; $7fa4: $63
	rlca                                             ; $7fa5: $07
	ld   [bc], a                                     ; $7fa6: $02
	inc  bc                                          ; $7fa7: $03
	ld   bc, $2000                                   ; $7fa8: $01 $00 $20
	nop                                              ; $7fab: $00
	rlca                                             ; $7fac: $07
	or   [hl]                                        ; $7fad: $b6
	rlca                                             ; $7fae: $07
	ld   [bc], a                                     ; $7faf: $02
	inc  bc                                          ; $7fb0: $03
	ld   bc, $2001                                   ; $7fb1: $01 $01 $20
	nop                                              ; $7fb4: $00
	rlca                                             ; $7fb5: $07
	xor  $07                                         ; $7fb6: $ee $07
	ld   [bc], a                                     ; $7fb8: $02
	inc  bc                                          ; $7fb9: $03
	ld   bc, $2002                                   ; $7fba: $01 $02 $20
	nop                                              ; $7fbd: $00
	ld   b, $44                                      ; $7fbe: $06 $44
	ld   [$000f], sp                                 ; $7fc0: $08 $0f $00
	ld   bc, $5801                                   ; $7fc3: $01 $01 $58
	inc  b                                           ; $7fc6: $04
	ld   c, l                                        ; $7fc7: $4d
	ld   [bc], a                                     ; $7fc8: $02
	ld   a, e                                        ; $7fc9: $7b
	ld   d, d                                        ; $7fca: $52
	ld   [hl], l                                     ; $7fcb: $75
	ld   h, a                                        ; $7fcc: $67
	ld   a, e                                        ; $7fcd: $7b
	sbc  a                                           ; $7fce: $9f
	dec  c                                           ; $7fcf: $0d
	adc  h                                           ; $7fd0: $8c
	ld   h, [hl]                                     ; $7fd1: $66
	adc  a                                           ; $7fd2: $8f
	ld   a, b                                        ; $7fd3: $78
	rst  JumpTable                                         ; $7fd4: $df
	db   $ec                                         ; $7fd5: $ec
	and  e                                           ; $7fd6: $a3
	ld   h, e                                        ; $7fd7: $63
	and  c                                           ; $7fd8: $a1
	ld   a, c                                        ; $7fd9: $79
	dec  c                                           ; $7fda: $0d
	push de                                          ; $7fdb: $d5
	call nz, $ecc0                                   ; $7fdc: $c4 $c0 $ec
	ld   [hl], l                                     ; $7fdf: $75
	ld   h, a                                        ; $7fe0: $67
	sbc  a                                           ; $7fe1: $9f
	dec  c                                           ; $7fe2: $0d
	nop                                              ; $7fe3: $00
	ld   a, [bc]                                     ; $7fe4: $0a
	inc  e                                           ; $7fe5: $1c
	inc  bc                                          ; $7fe6: $03
	nop                                              ; $7fe7: $00
	nop                                              ; $7fe8: $00
	dec  e                                           ; $7fe9: $1d
	ld   b, b                                        ; $7fea: $40
	inc  de                                          ; $7feb: $13
	inc  bc                                          ; $7fec: $03
	inc  de                                          ; $7fed: $13
	ld   bc, $2801                                   ; $7fee: $01 $01 $28
	nop                                              ; $7ff1: $00
	ld   bc, $546b                                   ; $7ff2: $01 $6b $54
	ld   e, c                                        ; $7ff5: $59
	ld   h, l                                        ; $7ff6: $65
	sub  a                                           ; $7ff7: $97
	ld   sp, hl                                      ; $7ff8: $f9
	dec  c                                           ; $7ff9: $0d
	adc  h                                           ; $7ffa: $8c
	ld   d, b                                        ; $7ffb: $50
	ld   [bc], a                                     ; $7ffc: $02
	inc  d                                           ; $7ffd: $14
	dec  b                                           ; $7ffe: $05
	db   $21                                         ; $7fff: $21
