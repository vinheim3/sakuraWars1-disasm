; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $089", ROMX[$4000], BANK[$89]

Call_089_4000:
	ld   hl, sp+$00                                  ; $4000: $f8 $00
	adc  h                                           ; $4002: $8c
	nop                                              ; $4003: $00

jr_089_4004:
	add  b                                           ; $4004: $80
	ld   bc, $0082                                   ; $4005: $01 $82 $00

jr_089_4008:
	add  b                                           ; $4008: $80
	inc  bc                                          ; $4009: $03
	add  b                                           ; $400a: $80

jr_089_400b:
	ld   c, $80                                      ; $400b: $0e $80
	ld   sp, $4f80                                   ; $400d: $31 $80 $4f
	add  b                                           ; $4010: $80

jr_089_4011:
	cp   d                                           ; $4011: $ba
	add  b                                           ; $4012: $80
	ld   d, h                                        ; $4013: $54

jr_089_4014:
	add  b                                           ; $4014: $80
	nop                                              ; $4015: $00
	add  b                                           ; $4016: $80
	ld   a, b                                        ; $4017: $78
	add  b                                           ; $4018: $80
	add  a                                           ; $4019: $87
	add  b                                           ; $401a: $80
	ld   a, b                                        ; $401b: $78
	add  b                                           ; $401c: $80
	rst  $28                                         ; $401d: $ef
	add  h                                           ; $401e: $84
	dec  b                                           ; $401f: $05
	add  h                                           ; $4020: $84
	nop                                              ; $4021: $00
	add  b                                           ; $4022: $80
	ret  nz                                          ; $4023: $c0

	add  b                                           ; $4024: $80
	db   $20, $80                                    ; $4025: $20 $80
	and  b                                           ; $4027: $a0
	add  d                                           ; $4028: $82
	ld   d, b                                        ; $4029: $50
	sbc  [hl]                                        ; $402a: $9e
	nop                                              ; $402b: $00
	add  d                                           ; $402c: $82
	ld   [bc], a                                     ; $402d: $02
	add  d                                           ; $402e: $82
	dec  b                                           ; $402f: $05
	add  b                                           ; $4030: $80
	ld   a, [bc]                                     ; $4031: $0a
	add  b                                           ; $4032: $80
	dec  bc                                          ; $4033: $0b
	add  b                                           ; $4034: $80
	dec  d                                           ; $4035: $15
	add  b                                           ; $4036: $80
	ld   d, $80                                      ; $4037: $16 $80
	xor  b                                           ; $4039: $a8
	add  b                                           ; $403a: $80
	ret  nc                                          ; $403b: $d0

	add  b                                           ; $403c: $80
	ld   d, b                                        ; $403d: $50
	add  d                                           ; $403e: $82
	and  c                                           ; $403f: $a1
	rlca                                             ; $4040: $07
	ld   e, a                                        ; $4041: $5f
	ld   e, [hl]                                     ; $4042: $5e
	ld   h, d                                        ; $4043: $62
	ld   h, e                                        ; $4044: $63
	rst  JumpTable                                         ; $4045: $df
	db   $dd                                         ; $4046: $dd
	rlca                                             ; $4047: $07
	dec  b                                           ; $4048: $05
	add  b                                           ; $4049: $80
	ld   a, a                                        ; $404a: $7f
	nop                                              ; $404b: $00
	rst  $38                                         ; $404c: $ff
	add  b                                           ; $404d: $80
	add  b                                           ; $404e: $80
	inc  b                                           ; $404f: $04
	inc  e                                           ; $4050: $1c
	nop                                              ; $4051: $00
	ld   h, e                                        ; $4052: $63
	ld   e, $9e                                      ; $4053: $1e $9e
	add  b                                           ; $4055: $80
	ld   h, d                                        ; $4056: $62
	add  b                                           ; $4057: $80
	ld   e, a                                        ; $4058: $5f
	add  b                                           ; $4059: $80
	ld   d, b                                        ; $405a: $50
	add  c                                           ; $405b: $81
	rst  $38                                         ; $405c: $ff
	add  b                                           ; $405d: $80
	nop                                              ; $405e: $00
	ld   [bc], a                                     ; $405f: $02
	ld   a, [hl]                                     ; $4060: $7e
	jr   nz, jr_089_4004                             ; $4061: $20 $a1

	add  b                                           ; $4063: $80
	cp   $01                                         ; $4064: $fe $01
	sbc  l                                           ; $4066: $9d
	sub  l                                           ; $4067: $95
	add  b                                           ; $4068: $80
	push af                                          ; $4069: $f5
	ld   bc, $0008                                   ; $406a: $01 $08 $00
	add  b                                           ; $406d: $80
	add  b                                           ; $406e: $80
	ld   [bc], a                                     ; $406f: $02
	ret  nz                                          ; $4070: $c0

	ld   b, b                                        ; $4071: $40
	ld   h, b                                        ; $4072: $60
	add  c                                           ; $4073: $81
	jr   nz, jr_089_407c                             ; $4074: $20 $06

	jr   nc, jr_089_4008                             ; $4076: $30 $90

	db   $10                                         ; $4078: $10
	ld   d, b                                        ; $4079: $50
	ld   e, b                                        ; $407a: $58
	ld   c, b                                        ; $407b: $48

jr_089_407c:
	jr   nc, jr_089_400b                             ; $407c: $30 $8d

	nop                                              ; $407e: $00
	add  d                                           ; $407f: $82
	ld   a, [hl+]                                    ; $4080: $2a

Call_089_4081:
	add  b                                           ; $4081: $80
	dec  l                                           ; $4082: $2d
	add  h                                           ; $4083: $84
	ld   d, l                                        ; $4084: $55
	add  d                                           ; $4085: $82
	ld   e, e                                        ; $4086: $5b
	ld   b, $a7                                      ; $4087: $06 $a7
	and  l                                           ; $4089: $a5
	db   $fd                                         ; $408a: $fd
	ld   sp, hl                                      ; $408b: $f9
	adc  c                                           ; $408c: $89
	adc  b                                           ; $408d: $88
	jr   jr_089_4011                                 ; $408e: $18 $81

	db   $10                                         ; $4090: $10
	add  d                                           ; $4091: $82
	jr   nc, jr_089_4014                             ; $4092: $30 $80

	ret  nc                                          ; $4094: $d0

	ld   bc, $5453                                   ; $4095: $01 $53 $54
	add  b                                           ; $4098: $80
	ld   d, a                                        ; $4099: $57
	dec  c                                           ; $409a: $0d
	or   d                                           ; $409b: $b2
	cp   d                                           ; $409c: $ba
	push bc                                          ; $409d: $c5
	ld   b, l                                        ; $409e: $45
	ld   a, a                                        ; $409f: $7f
	ld   a, $3c                                      ; $40a0: $3e $3c
	dec  b                                           ; $40a2: $05
	ld   b, $02                                      ; $40a3: $06 $02
	inc  bc                                          ; $40a5: $03
	ld   bc, $ad53                                   ; $40a6: $01 $53 $ad
	add  b                                           ; $40a9: $80
	or   c                                           ; $40aa: $b1
	add  b                                           ; $40ab: $80
	adc  $05                                         ; $40ac: $ce $05
	pop  af                                          ; $40ae: $f1
	ld   [hl], c                                     ; $40af: $71
	ld   a, a                                        ; $40b0: $7f
	ld   l, [hl]                                     ; $40b1: $6e
	ld   l, $a0                                      ; $40b2: $2e $a0
	add  b                                           ; $40b4: $80
	ld   h, b                                        ; $40b5: $60
	ld   [$c0e0], sp                                 ; $40b6: $08 $e0 $c0
	ld   b, a                                        ; $40b9: $47

jr_089_40ba:
	ld   c, b                                        ; $40ba: $48
	ld   c, h                                        ; $40bb: $4c
	ld   b, h                                        ; $40bc: $44
	call nz, $8284                                   ; $40bd: $c4 $84 $82
	add  a                                           ; $40c0: $87
	ld   [bc], a                                     ; $40c1: $02
	nop                                              ; $40c2: $00
	ld   hl, sp-$73                                  ; $40c3: $f8 $8d
	nop                                              ; $40c5: $00
	add  b                                           ; $40c6: $80
	ld   e, d                                        ; $40c7: $5a
	add  b                                           ; $40c8: $80
	dec  hl                                          ; $40c9: $2b
	add  b                                           ; $40ca: $80
	ld   a, [hl+]                                    ; $40cb: $2a
	add  b                                           ; $40cc: $80
	rla                                              ; $40cd: $17
	add  b                                           ; $40ce: $80
	ld   [$0f80], sp                                 ; $40cf: $08 $80 $0f
	add  b                                           ; $40d2: $80
	ld   a, [bc]                                     ; $40d3: $0a
	add  b                                           ; $40d4: $80
	dec  b                                           ; $40d5: $05
	ld   bc, $505f                                   ; $40d6: $01 $5f $50
	add  d                                           ; $40d9: $82
	ret  nc                                          ; $40da: $d0

	inc  bc                                          ; $40db: $03
	ld   sp, $d130                                   ; $40dc: $31 $30 $d1
	ret  nc                                          ; $40df: $d0

	add  b                                           ; $40e0: $80
	db   $10                                         ; $40e1: $10
	inc  b                                           ; $40e2: $04
	ld   [hl-], a                                    ; $40e3: $32
	jr   nc, jr_089_40ba                             ; $40e4: $30 $d4

	ret  nc                                          ; $40e6: $d0

	or   $81                                         ; $40e7: $f6 $81
	nop                                              ; $40e9: $00
	ld   [$0003], sp                                 ; $40ea: $08 $03 $00
	ld   bc, $0200                                   ; $40ed: $01 $00 $02
	nop                                              ; $40f0: $00
	ld   bc, $0100                                   ; $40f1: $01 $00 $01
	add  c                                           ; $40f4: $81
	nop                                              ; $40f5: $00
	ld   [$0080], sp                                 ; $40f6: $08 $80 $00
	ld   b, b                                        ; $40f9: $40
	nop                                              ; $40fa: $00
	jr   nz, jr_089_40fd                             ; $40fb: $20 $00

jr_089_40fd:
	add  b                                           ; $40fd: $80
	nop                                              ; $40fe: $00
	and  b                                           ; $40ff: $a0
	add  c                                           ; $4100: $81
	nop                                              ; $4101: $00
	ld   b, $a0                                      ; $4102: $06 $a0
	nop                                              ; $4104: $00
	and  b                                           ; $4105: $a0
	nop                                              ; $4106: $00
	ld   b, l                                        ; $4107: $45
	ld   [bc], a                                     ; $4108: $02
	add  d                                           ; $4109: $82
	add  c                                           ; $410a: $81
	ld   [bc], a                                     ; $410b: $02
	ld   b, $9a                                      ; $410c: $06 $9a
	ld   [bc], a                                     ; $410e: $02
	add  d                                           ; $410f: $82
	ld   [bc], a                                     ; $4110: $02
	ld   a, [de]                                     ; $4111: $1a
	ld   [bc], a                                     ; $4112: $02
	ld   h, d                                        ; $4113: $62
	add  c                                           ; $4114: $81
	ld   [bc], a                                     ; $4115: $02
	nop                                              ; $4116: $00
	sbc  b                                           ; $4117: $98
	adc  l                                           ; $4118: $8d
	nop                                              ; $4119: $00
	add  b                                           ; $411a: $80
	ld   [bc], a                                     ; $411b: $02
	add  b                                           ; $411c: $80
	ld   bc, $008a                                   ; $411d: $01 $8a $00
	ld   bc, $303f                                   ; $4120: $01 $3f $30
	add  b                                           ; $4123: $80
	ret  nc                                          ; $4124: $d0

	nop                                              ; $4125: $00
	ld   d, $81                                      ; $4126: $16 $81
	stop                                             ; $4128: $10 $00
	dec  d                                           ; $412a: $15
	add  b                                           ; $412b: $80
	ld   de, $1002                                   ; $412c: $11 $02 $10
	ld   [de], a                                     ; $412f: $12
	db   $10                                         ; $4130: $10
	add  b                                           ; $4131: $80
	ld   [de], a                                     ; $4132: $12
	dec  c                                           ; $4133: $0d
	jr   nc, jr_089_4136                             ; $4134: $30 $00

jr_089_4136:
	add  c                                           ; $4136: $81
	nop                                              ; $4137: $00
	ld   b, b                                        ; $4138: $40
	nop                                              ; $4139: $00
	ldh  [$80], a                                    ; $413a: $e0 $80
	add  c                                           ; $413c: $81
	add  b                                           ; $413d: $80
	ld   h, b                                        ; $413e: $60
	nop                                              ; $413f: $00
	ld   hl, $8020                                   ; $4140: $21 $20 $80
	ld   h, b                                        ; $4143: $60
	nop                                              ; $4144: $00
	add  e                                           ; $4145: $83

jr_089_4146:
	add  c                                           ; $4146: $81
	nop                                              ; $4147: $00
	rrca                                             ; $4148: $0f
	jp   $8000                                       ; $4149: $c3 $00 $80


	nop                                              ; $414c: $00
	ld   b, c                                        ; $414d: $41
	ld   bc, $0141                                   ; $414e: $01 $41 $01
	ld   h, b                                        ; $4151: $60
	nop                                              ; $4152: $00
	add  b                                           ; $4153: $80
	nop                                              ; $4154: $00
	dec  h                                           ; $4155: $25
	ld   [bc], a                                     ; $4156: $02
	ld   a, [hl+]                                    ; $4157: $2a
	ld   a, [bc]                                     ; $4158: $0a
	add  b                                           ; $4159: $80
	ld   a, [de]                                     ; $415a: $1a
	add  d                                           ; $415b: $82
	ld   [bc], a                                     ; $415c: $02
	ld   bc, $82e2                                   ; $415d: $01 $e2 $82
	add  b                                           ; $4160: $80
	ld   [de], a                                     ; $4161: $12
	add  b                                           ; $4162: $80
	ld   [hl-], a                                    ; $4163: $32
	nop                                              ; $4164: $00
	cp   b                                           ; $4165: $b8
	sbc  l                                           ; $4166: $9d
	nop                                              ; $4167: $00
	inc  bc                                          ; $4168: $03
	inc  e                                           ; $4169: $1c
	inc  de                                          ; $416a: $13
	ld   de, $8010                                   ; $416b: $11 $10 $80
	inc  d                                           ; $416e: $14
	add  b                                           ; $416f: $80
	ld   d, $80                                      ; $4170: $16 $80
	db   $10                                         ; $4172: $10
	ld   bc, $0806                                   ; $4173: $01 $06 $08
	add  b                                           ; $4176: $80
	rlca                                             ; $4177: $07
	add  b                                           ; $4178: $80
	nop                                              ; $4179: $00
	nop                                              ; $417a: $00
	rst  $38                                         ; $417b: $ff
	add  c                                           ; $417c: $81

jr_089_417d:
	nop                                              ; $417d: $00
	rlca                                             ; $417e: $07
	jp   $83c0                                       ; $417f: $c3 $c0 $83


	add  b                                           ; $4182: $80
	ld   bc, $fe00                                   ; $4183: $01 $00 $fe
	nop                                              ; $4186: $00
	add  b                                           ; $4187: $80
	rst  $38                                         ; $4188: $ff
	add  b                                           ; $4189: $80
	nop                                              ; $418a: $00
	dec  bc                                          ; $418b: $0b
	cp   [hl]                                        ; $418c: $be
	ld   bc, $01a1                                   ; $418d: $01 $a1 $01
	sub  b                                           ; $4190: $90
	nop                                              ; $4191: $00
	jr   nc, jr_089_4194                             ; $4192: $30 $00

jr_089_4194:
	or   b                                           ; $4194: $b0
	nop                                              ; $4195: $00
	rrca                                             ; $4196: $0f
	nop                                              ; $4197: $00
	add  b                                           ; $4198: $80
	rst  $38                                         ; $4199: $ff
	add  b                                           ; $419a: $80
	nop                                              ; $419b: $00
	ld   bc, $02b2                                   ; $419c: $01 $b2 $02
	add  b                                           ; $419f: $80
	add  d                                           ; $41a0: $82
	nop                                              ; $41a1: $00
	or   d                                           ; $41a2: $b2
	add  b                                           ; $41a3: $80
	ld   [hl+], a                                    ; $41a4: $22
	add  b                                           ; $41a5: $80
	ld   h, d                                        ; $41a6: $62
	nop                                              ; $41a7: $00
	ld   [bc], a                                     ; $41a8: $02
	add  b                                           ; $41a9: $80
	inc  b                                           ; $41aa: $04
	add  b                                           ; $41ab: $80
	ld   hl, sp-$5d                                  ; $41ac: $f8 $a3
	nop                                              ; $41ae: $00
	add  b                                           ; $41af: $80
	ld   bc, $0282                                   ; $41b0: $01 $82 $02
	add  d                                           ; $41b3: $82
	inc  b                                           ; $41b4: $04
	add  b                                           ; $41b5: $80
	ld   [$0980], sp                                 ; $41b6: $08 $80 $09
	adc  d                                           ; $41b9: $8a
	nop                                              ; $41ba: $00
	add  b                                           ; $41bb: $80
	inc  b                                           ; $41bc: $04
	add  b                                           ; $41bd: $80
	ld   [$1080], sp                                 ; $41be: $08 $80 $10
	add  d                                           ; $41c1: $82
	jr   nz, jr_089_4146                             ; $41c2: $20 $82

	ld   b, b                                        ; $41c4: $40
	add  d                                           ; $41c5: $82
	add  b                                           ; $41c6: $80
	adc  d                                           ; $41c7: $8a
	nop                                              ; $41c8: $00
	add  [hl]                                        ; $41c9: $86
	ld   [bc], a                                     ; $41ca: $02
	adc  b                                           ; $41cb: $88
	nop                                              ; $41cc: $00
	add  b                                           ; $41cd: $80
	dec  e                                           ; $41ce: $1d
	add  b                                           ; $41cf: $80
	jr   nz, @-$64                                   ; $41d0: $20 $9a

	nop                                              ; $41d2: $00
	add  b                                           ; $41d3: $80
	ld   b, d                                        ; $41d4: $42
	add  b                                           ; $41d5: $80
	ld   [bc], a                                     ; $41d6: $02
	cp   [hl]                                        ; $41d7: $be
	nop                                              ; $41d8: $00
	add  d                                           ; $41d9: $82
	ld   de, $1280                                   ; $41da: $11 $80 $12
	add  h                                           ; $41dd: $84
	ld   [hl+], a                                    ; $41de: $22
	add  h                                           ; $41df: $84
	inc  h                                           ; $41e0: $24
	add  d                                           ; $41e1: $82
	inc  b                                           ; $41e2: $04
	add  h                                           ; $41e3: $84
	nop                                              ; $41e4: $00
	add  b                                           ; $41e5: $80
	inc  b                                           ; $41e6: $04
	add  b                                           ; $41e7: $80

jr_089_41e8:
	nop                                              ; $41e8: $00
	add  b                                           ; $41e9: $80
	jr   jr_089_417d                                 ; $41ea: $18 $91

	nop                                              ; $41ec: $00
	add  b                                           ; $41ed: $80
	ld   bc, $0082                                   ; $41ee: $01 $82 $00
	add  b                                           ; $41f1: $80
	ld   [bc], a                                     ; $41f2: $02
	add  b                                           ; $41f3: $80
	ld   b, $93                                      ; $41f4: $06 $93
	nop                                              ; $41f6: $00
	add  b                                           ; $41f7: $80
	inc  bc                                          ; $41f8: $03
	add  b                                           ; $41f9: $80
	ld   [bc], a                                     ; $41fa: $02
	add  b                                           ; $41fb: $80
	nop                                              ; $41fc: $00
	add  b                                           ; $41fd: $80
	ld   bc, $0092                                   ; $41fe: $01 $92 $00
	add  b                                           ; $4201: $80
	add  b                                           ; $4202: $80
	add  b                                           ; $4203: $80
	ret  nz                                          ; $4204: $c0

	add  b                                           ; $4205: $80
	ldh  [$80], a                                    ; $4206: $e0 $80
	ld   h, b                                        ; $4208: $60
	add  d                                           ; $4209: $82
	ret  nz                                          ; $420a: $c0

	add  b                                           ; $420b: $80
	ld   h, b                                        ; $420c: $60
	add  b                                           ; $420d: $80
	ret  nz                                          ; $420e: $c0

	add  e                                           ; $420f: $83
	nop                                              ; $4210: $00
	nop                                              ; $4211: $00
	inc  b                                           ; $4212: $04
	add  a                                           ; $4213: $87
	nop                                              ; $4214: $00
	add  b                                           ; $4215: $80
	add  b                                           ; $4216: $80
	add  d                                           ; $4217: $82
	nop                                              ; $4218: $00
	add  b                                           ; $4219: $80
	sbc  b                                           ; $421a: $98
	add  b                                           ; $421b: $80
	jr   @-$7e                                       ; $421c: $18 $80

	nop                                              ; $421e: $00
	add  d                                           ; $421f: $82
	ld   h, b                                        ; $4220: $60
	nop                                              ; $4221: $00
	inc  b                                           ; $4222: $04
	pop  bc                                          ; $4223: $c1
	nop                                              ; $4224: $00
	add  d                                           ; $4225: $82
	ld   b, $04                                      ; $4226: $06 $04
	ld   [bc], a                                     ; $4228: $02
	nop                                              ; $4229: $00
	ld   bc, $0200                                   ; $422a: $01 $00 $02
	add  c                                           ; $422d: $81

jr_089_422e:
	nop                                              ; $422e: $00
	ld   [bc], a                                     ; $422f: $02
	ld   bc, $0100                                   ; $4230: $01 $00 $01
	add  l                                           ; $4233: $85
	nop                                              ; $4234: $00
	nop                                              ; $4235: $00
	ld   bc, $0780                                   ; $4236: $01 $80 $07
	add  c                                           ; $4239: $81
	nop                                              ; $423a: $00
	inc  bc                                          ; $423b: $03
	ret  nz                                          ; $423c: $c0

	pop  bc                                          ; $423d: $c1
	ld   b, c                                        ; $423e: $41
	ld   b, b                                        ; $423f: $40
	add  b                                           ; $4240: $80
	nop                                              ; $4241: $00
	add  c                                           ; $4242: $81
	ld   h, b                                        ; $4243: $60
	nop                                              ; $4244: $00
	ld   h, c                                        ; $4245: $61
	add  c                                           ; $4246: $81
	ld   bc, $0086                                   ; $4247: $01 $86 $00
	add  b                                           ; $424a: $80
	inc  bc                                          ; $424b: $03
	add  b                                           ; $424c: $80
	nop                                              ; $424d: $00
	inc  bc                                          ; $424e: $03
	ld   bc, $00fe                                   ; $424f: $01 $fe $00
	rst  $38                                         ; $4252: $ff
	add  c                                           ; $4253: $81
	nop                                              ; $4254: $00
	nop                                              ; $4255: $00
	inc  bc                                          ; $4256: $03
	add  c                                           ; $4257: $81
	add  e                                           ; $4258: $83
	nop                                              ; $4259: $00
	add  b                                           ; $425a: $80
	add  b                                           ; $425b: $80
	ld   b, b                                        ; $425c: $40
	add  b                                           ; $425d: $80
	ret  nz                                          ; $425e: $c0

	add  b                                           ; $425f: $80
	add  b                                           ; $4260: $80
	add  b                                           ; $4261: $80
	ret  nz                                          ; $4262: $c0

	add  b                                           ; $4263: $80
	and  b                                           ; $4264: $a0
	add  b                                           ; $4265: $80
	jr   nz, jr_089_41e8                             ; $4266: $20 $80

	ld   b, b                                        ; $4268: $40
	add  b                                           ; $4269: $80
	ldh  [$80], a                                    ; $426a: $e0 $80
	ld   [hl], b                                     ; $426c: $70
	add  b                                           ; $426d: $80
	ld   b, b                                        ; $426e: $40
	inc  bc                                          ; $426f: $03
	ldh  a, [rIF]                                    ; $4270: $f0 $0f
	nop                                              ; $4272: $00
	rst  $38                                         ; $4273: $ff
	add  c                                           ; $4274: $81
	nop                                              ; $4275: $00
	add  b                                           ; $4276: $80
	inc  b                                           ; $4277: $04
	nop                                              ; $4278: $00
	inc  h                                           ; $4279: $24
	add  l                                           ; $427a: $85
	inc  b                                           ; $427b: $04
	nop                                              ; $427c: $00
	ld   h, h                                        ; $427d: $64
	add  e                                           ; $427e: $83
	inc  b                                           ; $427f: $04
	add  d                                           ; $4280: $82
	inc  c                                           ; $4281: $0c
	inc  bc                                          ; $4282: $03
	sbc  h                                           ; $4283: $9c
	inc  e                                           ; $4284: $1c
	ld   e, h                                        ; $4285: $5c
	inc  e                                           ; $4286: $1c
	add  b                                           ; $4287: $80
	ld   a, h                                        ; $4288: $7c
	ld   bc, $f878                                   ; $4289: $01 $78 $f8
	rst  $38                                         ; $428c: $ff
	nop                                              ; $428d: $00
	rst  $38                                         ; $428e: $ff
	nop                                              ; $428f: $00
	rst  $38                                         ; $4290: $ff
	nop                                              ; $4291: $00
	rst  $38                                         ; $4292: $ff
	nop                                              ; $4293: $00
	rst  $38                                         ; $4294: $ff
	nop                                              ; $4295: $00
	sbc  l                                           ; $4296: $9d
	nop                                              ; $4297: $00
	or   [hl]                                        ; $4298: $b6
	nop                                              ; $4299: $00
	sub  [hl]                                        ; $429a: $96
	nop                                              ; $429b: $00
	add  b                                           ; $429c: $80
	inc  a                                           ; $429d: $3c
	ld   b, $3b                                      ; $429e: $06 $3b
	inc  hl                                          ; $42a0: $23
	ld   hl, $7038                                   ; $42a1: $21 $38 $70
	ld   e, c                                        ; $42a4: $59
	jr   z, jr_089_422e                              ; $42a5: $28 $87

	nop                                              ; $42a7: $00
	add  b                                           ; $42a8: $80
	ret  nz                                          ; $42a9: $c0

	inc  b                                           ; $42aa: $04
	db   $fc                                         ; $42ab: $fc
	inc  a                                           ; $42ac: $3c
	ccf                                              ; $42ad: $3f
	jp   $8b3c                                       ; $42ae: $c3 $3c $8b


	nop                                              ; $42b1: $00
	add  b                                           ; $42b2: $80
	ret  nz                                          ; $42b3: $c0

	xor  b                                           ; $42b4: $a8
	nop                                              ; $42b5: $00
	add  h                                           ; $42b6: $84
	ld   bc, $7000                                   ; $42b7: $01 $00 $70
	add  c                                           ; $42ba: $81
	ld   d, b                                        ; $42bb: $50
	nop                                              ; $42bc: $00
	ret  nz                                          ; $42bd: $c0

	add  d                                           ; $42be: $82
	and  b                                           ; $42bf: $a0
	ld   bc, $81a1                                   ; $42c0: $01 $a1 $81
	add  b                                           ; $42c3: $80
	ld   h, c                                        ; $42c4: $61
	add  b                                           ; $42c5: $80
	ld   h, e                                        ; $42c6: $63
	add  hl, bc                                      ; $42c7: $09
	ld   b, [hl]                                     ; $42c8: $46
	cp   c                                           ; $42c9: $b9
	db   $fc                                         ; $42ca: $fc
	ret  nz                                          ; $42cb: $c0

	ccf                                              ; $42cc: $3f
	inc  a                                           ; $42cd: $3c
	rra                                              ; $42ce: $1f
	inc  de                                          ; $42cf: $13
	rrca                                             ; $42d0: $0f
	inc  bc                                          ; $42d1: $03
	add  b                                           ; $42d2: $80
	inc  d                                           ; $42d3: $14
	add  hl, bc                                      ; $42d4: $09
	db   $10                                         ; $42d5: $10
	ld   de, $3731                                   ; $42d6: $11 $31 $37
	ld   [hl], $cd                                   ; $42d9: $36 $cd
	inc  a                                           ; $42db: $3c
	ccf                                              ; $42dc: $3f
	jp   $8003                                       ; $42dd: $c3 $03 $80


	db   $ec                                         ; $42e0: $ec
	dec  c                                           ; $42e1: $0d
	rst  $28                                         ; $42e2: $ef
	jr   z, @-$22                                    ; $42e3: $28 $dc

	ld   e, h                                        ; $42e5: $5c
	ret  c                                           ; $42e6: $d8

	ld   d, b                                        ; $42e7: $50
	sbc  b                                           ; $42e8: $98
	sub  b                                           ; $42e9: $90
	ld   c, c                                        ; $42ea: $49
	or   c                                           ; $42eb: $b1
	nop                                              ; $42ec: $00

jr_089_42ed:
	ret  nz                                          ; $42ed: $c0

	call nz, $80e4                                   ; $42ee: $c4 $e4 $80
	dec  l                                           ; $42f1: $2d
	ld   b, $c9                                      ; $42f2: $06 $c9
	ld   hl, $c6c2                                   ; $42f4: $21 $c2 $c6
	add  h                                           ; $42f7: $84
	sub  c                                           ; $42f8: $91
	nop                                              ; $42f9: $00
	add  b                                           ; $42fa: $80
	ld   [$1900], sp                                 ; $42fb: $08 $00 $19
	add  d                                           ; $42fe: $82
	nop                                              ; $42ff: $00
	add  c                                           ; $4300: $81
	ld   b, b                                        ; $4301: $40
	ld   [$9c5c], sp                                 ; $4302: $08 $5c $9c
	cp   h                                           ; $4305: $bc
	or   h                                           ; $4306: $b4
	db   $f4                                         ; $4307: $f4
	ld   a, h                                        ; $4308: $7c
	db   $fc                                         ; $4309: $fc
	db   $ec                                         ; $430a: $ec
	inc  de                                          ; $430b: $13
	add  e                                           ; $430c: $83
	ld   [bc], a                                     ; $430d: $02
	nop                                              ; $430e: $00
	ld   b, $83                                      ; $430f: $06 $83
	dec  b                                           ; $4311: $05
	nop                                              ; $4312: $00
	inc  c                                           ; $4313: $0c
	add  b                                           ; $4314: $80
	dec  bc                                          ; $4315: $0b
	dec  b                                           ; $4316: $05
	ld   a, [bc]                                     ; $4317: $0a
	add  h                                           ; $4318: $84
	call z, $ffb0                                    ; $4319: $cc $b0 $ff
	db   $fc                                         ; $431c: $fc
	add  b                                           ; $431d: $80
	rrca                                             ; $431e: $0f
	add  b                                           ; $431f: $80
	ldh  a, [rAUD2HIGH]                              ; $4320: $f0 $19
	cp   $0e                                         ; $4322: $fe $0e
	rst  $38                                         ; $4324: $ff
	pop  af                                          ; $4325: $f1
	adc  a                                           ; $4326: $8f
	adc  [hl]                                        ; $4327: $8e
	inc  bc                                          ; $4328: $03
	sbc  h                                           ; $4329: $9c
	ld   a, c                                        ; $432a: $79
	sbc  b                                           ; $432b: $98
	rst  $20                                         ; $432c: $e7
	ld   h, c                                        ; $432d: $61
	sbc  a                                           ; $432e: $9f
	add  a                                           ; $432f: $87
	ld   a, h                                        ; $4330: $7c
	inc  d                                           ; $4331: $14
	ret  nz                                          ; $4332: $c0

	add  b                                           ; $4333: $80
	ld   b, b                                        ; $4334: $40
	ld   e, a                                        ; $4335: $5f
	ld   l, b                                        ; $4336: $68
	ld   e, b                                        ; $4337: $58
	cp   b                                           ; $4338: $b8
	rst  $20                                         ; $4339: $e7
	ld   [$814e], a                                  ; $433a: $ea $4e $81
	call nc, $c715                                   ; $433d: $d4 $15 $c7
	xor  d                                           ; $4340: $aa
	ld   a, [hl-]                                    ; $4341: $3a
	ld   a, [bc]                                     ; $4342: $0a
	ld   [bc], a                                     ; $4343: $02
	dec  c                                           ; $4344: $0d
	db   $fd                                         ; $4345: $fd
	add  l                                           ; $4346: $85
	push bc                                          ; $4347: $c5
	ld   [bc], a                                     ; $4348: $02
	inc  d                                           ; $4349: $14
	ld   [$105a], sp                                 ; $434a: $08 $5a $10
	dec  d                                           ; $434d: $15
	ld   bc, $01a1                                   ; $434e: $01 $a1 $01
	ld   c, e                                        ; $4351: $4b
	ld   b, e                                        ; $4352: $43
	di                                               ; $4353: $f3
	jp   $e780                                       ; $4354: $c3 $80 $e7


	ld   [bc], a                                     ; $4357: $02
	rrca                                             ; $4358: $0f
	rst  $38                                         ; $4359: $ff
	inc  sp                                          ; $435a: $33
	add  c                                           ; $435b: $81
	db   $ec                                         ; $435c: $ec
	nop                                              ; $435d: $00
	and  h                                           ; $435e: $a4
	add  e                                           ; $435f: $83
	call c, Call_089_4000                            ; $4360: $dc $00 $40
	add  e                                           ; $4363: $83
	cp   b                                           ; $4364: $b8
	ld   [bc], a                                     ; $4365: $02
	ld   e, [hl]                                     ; $4366: $5e
	ld   a, [bc]                                     ; $4367: $0a
	jr   jr_089_42ed                                 ; $4368: $18 $83

	inc  d                                           ; $436a: $14
	nop                                              ; $436b: $00
	jr   nc, @-$7d                                   ; $436c: $30 $81

	inc  l                                           ; $436e: $2c
	inc  b                                           ; $436f: $04
	jr   z, jr_089_43b0                              ; $4370: $28 $3e

	ld   a, l                                        ; $4372: $7d
	ld   b, e                                        ; $4373: $43
	inc  a                                           ; $4374: $3c
	add  b                                           ; $4375: $80
	inc  bc                                          ; $4376: $03
	add  d                                           ; $4377: $82
	ld   [$0085], sp                                 ; $4378: $08 $85 $00
	add  b                                           ; $437b: $80
	ret  nz                                          ; $437c: $c0

	jr   nz, @-$1c                                   ; $437d: $20 $e2

	or   c                                           ; $437f: $b1
	ld   hl, $ddd1                                   ; $4380: $21 $d1 $dd
	ld   d, c                                        ; $4383: $51
	rla                                              ; $4384: $17
	cpl                                              ; $4385: $2f
	inc  l                                           ; $4386: $2c
	cpl                                              ; $4387: $2f
	ld   c, e                                        ; $4388: $4b
	inc  [hl]                                        ; $4389: $34
	or   h                                           ; $438a: $b4
	inc  sp                                          ; $438b: $33
	ld   [hl-], a                                    ; $438c: $32
	scf                                              ; $438d: $37
	jp   nc, $f206                                   ; $438e: $d2 $06 $f2

	inc  a                                           ; $4391: $3c
	call z, $30f3                                    ; $4392: $cc $f3 $30
	call z, $38c1                                    ; $4395: $cc $c1 $38
	ld   [$33f8], sp                                 ; $4398: $08 $f8 $33
	add  b                                           ; $439b: $80
	add  d                                           ; $439c: $82
	add  b                                           ; $439d: $80
	ld   [hl], a                                     ; $439e: $77
	add  b                                           ; $439f: $80
	rrca                                             ; $43a0: $0f
	inc  bc                                          ; $43a1: $03
	ldh  a, [rP1]                                    ; $43a2: $f0 $00
	ccf                                              ; $43a4: $3f
	or   e                                           ; $43a5: $b3
	add  b                                           ; $43a6: $80
	ld   a, $04                                      ; $43a7: $3e $04
	ld   c, $be                                      ; $43a9: $0e $be
	ld   b, $12                                      ; $43ab: $06 $12
	dec  b                                           ; $43ad: $05
	add  b                                           ; $43ae: $80
	dec  c                                           ; $43af: $0d

jr_089_43b0:
	nop                                              ; $43b0: $00
	ldh  a, [c]                                      ; $43b1: $f2
	add  e                                           ; $43b2: $83
	ld   [hl], b                                     ; $43b3: $70
	nop                                              ; $43b4: $00
	nop                                              ; $43b5: $00
	add  e                                           ; $43b6: $83
	ldh  [rP1], a                                    ; $43b7: $e0 $00
	nop                                              ; $43b9: $00
	add  c                                           ; $43ba: $81
	ret  nz                                          ; $43bb: $c0

	inc  b                                           ; $43bc: $04
	rst  $38                                         ; $43bd: $ff
	ld   a, h                                        ; $43be: $7c
	ld   b, h                                        ; $43bf: $44
	ld   a, a                                        ; $43c0: $7f
	ld   a, b                                        ; $43c1: $78
	add  e                                           ; $43c2: $83
	ld   a, a                                        ; $43c3: $7f
	inc  bc                                          ; $43c4: $03
	ld   b, a                                        ; $43c5: $47
	ld   a, a                                        ; $43c6: $7f
	nop                                              ; $43c7: $00
	rlca                                             ; $43c8: $07
	add  b                                           ; $43c9: $80
	nop                                              ; $43ca: $00
	ld   [$78f8], sp                                 ; $43cb: $08 $f8 $78
	ld   a, a                                        ; $43ce: $7f
	add  a                                           ; $43cf: $87
	rlca                                             ; $43d0: $07
	ld   hl, sp-$80                                  ; $43d1: $f8 $80
	rst  $38                                         ; $43d3: $ff
	ld   hl, sp-$7f                                  ; $43d4: $f8 $81
	rst  $38                                         ; $43d6: $ff
	db   $10                                         ; $43d7: $10
	ld   a, a                                        ; $43d8: $7f
	rst  $38                                         ; $43d9: $ff
	rlca                                             ; $43da: $07
	ld   a, a                                        ; $43db: $7f
	add  hl, de                                      ; $43dc: $19
	halt                                             ; $43dd: $76
	call nc, $acec                                   ; $43de: $d4 $ec $ac
	ld   l, h                                        ; $43e1: $6c
	ld   l, a                                        ; $43e2: $6f
	add  a                                           ; $43e3: $87
	rlca                                             ; $43e4: $07
	ld   hl, sp-$80                                  ; $43e5: $f8 $80
	rst  $38                                         ; $43e7: $ff
	ld   hl, sp-$7f                                  ; $43e8: $f8 $81
	rst  $38                                         ; $43ea: $ff
	dec  d                                           ; $43eb: $15
	ld   h, a                                        ; $43ec: $67
	ld   [bc], a                                     ; $43ed: $02
	ld   l, b                                        ; $43ee: $68
	nop                                              ; $43ef: $00
	ld   d, b                                        ; $43f0: $50
	ld   b, b                                        ; $43f1: $40
	ld   a, h                                        ; $43f2: $7c
	pop  hl                                          ; $43f3: $e1
	add  e                                           ; $43f4: $83
	ld   a, e                                        ; $43f5: $7b
	ld   a, b                                        ; $43f6: $78
	add  a                                           ; $43f7: $87
	rlca                                             ; $43f8: $07
	ld   hl, sp-$80                                  ; $43f9: $f8 $80
	rst  $38                                         ; $43fb: $ff
	or   a                                           ; $43fc: $b7
	dec  c                                           ; $43fd: $0d
	inc  c                                           ; $43fe: $0c
	dec  bc                                          ; $43ff: $0b
	rrc  e                                           ; $4400: $cb $0b
	add  b                                           ; $4402: $80
	dec  de                                          ; $4403: $1b
	nop                                              ; $4404: $00
	sbc  b                                           ; $4405: $98
	add  c                                           ; $4406: $81
	rst  $30                                         ; $4407: $f7
	ld   b, $17                                      ; $4408: $06 $17
	ld   [hl], a                                     ; $440a: $77
	ld   [hl], b                                     ; $440b: $70
	adc  [hl]                                        ; $440c: $8e
	inc  [hl]                                        ; $440d: $34
	ret  nz                                          ; $440e: $c0

	nop                                              ; $440f: $00
	add  e                                           ; $4410: $83
	add  b                                           ; $4411: $80
	sub  [hl]                                        ; $4412: $96
	nop                                              ; $4413: $00
	add  b                                           ; $4414: $80
	rlca                                             ; $4415: $07
	adc  h                                           ; $4416: $8c
	nop                                              ; $4417: $00
	dec  b                                           ; $4418: $05
	add  b                                           ; $4419: $80
	rst  $38                                         ; $441a: $ff
	rlca                                             ; $441b: $07
	ld   a, a                                        ; $441c: $7f
	nop                                              ; $441d: $00
	rlca                                             ; $441e: $07
	adc  c                                           ; $441f: $89
	nop                                              ; $4420: $00
	add  c                                           ; $4421: $81
	rst  $38                                         ; $4422: $ff
	dec  b                                           ; $4423: $05
	ld   a, a                                        ; $4424: $7f
	rst  $38                                         ; $4425: $ff
	rlca                                             ; $4426: $07
	ld   a, a                                        ; $4427: $7f
	nop                                              ; $4428: $00
	rlca                                             ; $4429: $07
	add  h                                           ; $442a: $84
	nop                                              ; $442b: $00
	inc  b                                           ; $442c: $04
	ld   a, d                                        ; $442d: $7a
	cp   $8e                                         ; $442e: $fe $8e
	cp   $f8                                         ; $4430: $fe $f8
	add  c                                           ; $4432: $81
	db   $fc                                         ; $4433: $fc
	inc  bc                                          ; $4434: $03
	ld   a, h                                        ; $4435: $7c
	db   $fc                                         ; $4436: $fc
	inc  c                                           ; $4437: $0c
	ld   a, h                                        ; $4438: $7c
	cp   h                                           ; $4439: $bc
	nop                                              ; $443a: $00
	ld   [bc], a                                     ; $443b: $02
	inc  b                                           ; $443c: $04
	nop                                              ; $443d: $00
	ld   [bc], a                                     ; $443e: $02
	add  c                                           ; $443f: $81
	nop                                              ; $4440: $00
	ld   bc, $020b                                   ; $4441: $01 $0b $02
	add  b                                           ; $4444: $80
	inc  bc                                          ; $4445: $03
	nop                                              ; $4446: $00
	rla                                              ; $4447: $17
	add  c                                           ; $4448: $81
	rlca                                             ; $4449: $07
	dec  b                                           ; $444a: $05

jr_089_444b:
	add  hl, bc                                      ; $444b: $09
	ld   c, $06                                      ; $444c: $0e $06

jr_089_444e:
	ld   c, $0c                                      ; $444e: $0e $0c
	inc  e                                           ; $4450: $1c
	add  b                                           ; $4451: $80
	add  hl, sp                                      ; $4452: $39
	sub  c                                           ; $4453: $91
	nop                                              ; $4454: $00
	add  b                                           ; $4455: $80
	ret  nz                                          ; $4456: $c0

	add  b                                           ; $4457: $80
	ldh  [rDIV], a                                   ; $4458: $e0 $04
	ldh  a, [$93]                                    ; $445a: $f0 $93
	db   $eb                                         ; $445c: $eb
	ld   l, a                                        ; $445d: $6f
	rst  $28                                         ; $445e: $ef
	add  b                                           ; $445f: $80
	adc  $80                                         ; $4460: $ce $80
	ret  z                                           ; $4462: $c8

	nop                                              ; $4463: $00
	ld   [$0096], sp                                 ; $4464: $08 $96 $00
	add  b                                           ; $4467: $80
	inc  bc                                          ; $4468: $03
	add  d                                           ; $4469: $82
	rlca                                             ; $446a: $07
	add  b                                           ; $446b: $80
	ld   b, $8f                                      ; $446c: $06 $8f
	nop                                              ; $446e: $00
	add  b                                           ; $446f: $80
	ld   a, [de]                                     ; $4470: $1a
	add  b                                           ; $4471: $80
	ld   [de], a                                     ; $4472: $12
	add  b                                           ; $4473: $80
	ld   d, $04                                      ; $4474: $16 $04
	dec  [hl]                                        ; $4476: $35
	dec  b                                           ; $4477: $05
	ld   b, e                                        ; $4478: $43
	ld   bc, $8194                                   ; $4479: $01 $94 $81
	nop                                              ; $447c: $00
	nop                                              ; $447d: $00
	and  $91                                         ; $447e: $e6 $91

Call_089_4480:
	nop                                              ; $4480: $00
	add  b                                           ; $4481: $80
	add  b                                           ; $4482: $80
	add  b                                           ; $4483: $80
	and  b                                           ; $4484: $a0
	add  b                                           ; $4485: $80
	ld   h, b                                        ; $4486: $60
	add  b                                           ; $4487: $80
	ld   b, b                                        ; $4488: $40
	add  b                                           ; $4489: $80
	add  b                                           ; $448a: $80
	sub  [hl]                                        ; $448b: $96
	nop                                              ; $448c: $00
	nop                                              ; $448d: $00
	ld   [bc], a                                     ; $448e: $02
	add  c                                           ; $448f: $81
	nop                                              ; $4490: $00
	dec  b                                           ; $4491: $05
	ld   bc, $0200                                   ; $4492: $01 $00 $02
	nop                                              ; $4495: $00
	ld   bc, $8000                                   ; $4496: $01 $00 $80
	inc  sp                                          ; $4499: $33

jr_089_449a:
	adc  [hl]                                        ; $449a: $8e
	nop                                              ; $449b: $00
	add  d                                           ; $449c: $82
	db   $10                                         ; $449d: $10
	add  d                                           ; $449e: $82
	nop                                              ; $449f: $00
	ld   b, $80                                      ; $44a0: $06 $80
	nop                                              ; $44a2: $00
	ld   [hl], d                                     ; $44a3: $72
	nop                                              ; $44a4: $00
	call $3f00                                       ; $44a5: $cd $00 $3f
	add  e                                           ; $44a8: $83
	nop                                              ; $44a9: $00
	inc  bc                                          ; $44aa: $03
	inc  bc                                          ; $44ab: $03
	nop                                              ; $44ac: $00
	dec  [hl]                                        ; $44ad: $35
	ld   bc, $1780                                   ; $44ae: $01 $80 $17
	nop                                              ; $44b1: $00
	scf                                              ; $44b2: $37
	add  c                                           ; $44b3: $81
	nop                                              ; $44b4: $00
	add  d                                           ; $44b5: $82
	inc  c                                           ; $44b6: $0c
	add  b                                           ; $44b7: $80
	nop                                              ; $44b8: $00
	add  d                                           ; $44b9: $82
	ld   b, b                                        ; $44ba: $40
	add  b                                           ; $44bb: $80
	add  b                                           ; $44bc: $80
	add  d                                           ; $44bd: $82
	nop                                              ; $44be: $00
	ld   [bc], a                                     ; $44bf: $02
	ld   bc, $0604                                   ; $44c0: $01 $04 $06
	add  c                                           ; $44c3: $81
	jr   nz, jr_089_44c8                             ; $44c4: $20 $02

	inc  hl                                          ; $44c6: $23
	ld   d, b                                        ; $44c7: $50

jr_089_44c8:
	jr   nc, jr_089_444b                             ; $44c8: $30 $81

	ld   h, b                                        ; $44ca: $60
	add  b                                           ; $44cb: $80
	jr   jr_089_444e                                 ; $44cc: $18 $80

	ret  c                                           ; $44ce: $d8

	add  b                                           ; $44cf: $80
	ret  nz                                          ; $44d0: $c0

	add  d                                           ; $44d1: $82
	nop                                              ; $44d2: $00
	add  b                                           ; $44d3: $80
	inc  bc                                          ; $44d4: $03
	add  d                                           ; $44d5: $82
	ld   b, $0e                                      ; $44d6: $06 $0e
	ld   [hl], h                                     ; $44d8: $74
	dec  b                                           ; $44d9: $05
	ld   bc, $b107                                   ; $44da: $01 $07 $b1
	nop                                              ; $44dd: $00
	ld   c, d                                        ; $44de: $4a
	nop                                              ; $44df: $00
	inc  d                                           ; $44e0: $14
	nop                                              ; $44e1: $00
	and  b                                           ; $44e2: $a0
	nop                                              ; $44e3: $00
	ld   [rROMB1], sp                                 ; $44e4: $08 $00 $30
	add  a                                           ; $44e7: $87
	nop                                              ; $44e8: $00
	add  b                                           ; $44e9: $80
	ret  nz                                          ; $44ea: $c0

	ld   bc, $4000                                   ; $44eb: $01 $00 $40
	add  b                                           ; $44ee: $80
	ld   [hl], b                                     ; $44ef: $70
	ld   [bc], a                                     ; $44f0: $02
	nop                                              ; $44f1: $00
	ret  z                                           ; $44f2: $c8

	ld   c, b                                        ; $44f3: $48
	add  b                                           ; $44f4: $80
	ret  c                                           ; $44f5: $d8

	ld   bc, $10d0                                   ; $44f6: $01 $d0 $10
	cp   l                                           ; $44f9: $bd
	nop                                              ; $44fa: $00
	ld   [bc], a                                     ; $44fb: $02
	rlca                                             ; $44fc: $07
	nop                                              ; $44fd: $00
	rlca                                             ; $44fe: $07
	sbc  e                                           ; $44ff: $9b
	nop                                              ; $4500: $00
	ld   [bc], a                                     ; $4501: $02
	add  c                                           ; $4502: $81
	ld   bc, $8183                                   ; $4503: $01 $83 $81
	inc  bc                                          ; $4506: $03
	sbc  b                                           ; $4507: $98
	nop                                              ; $4508: $00
	ld   b, $65                                      ; $4509: $06 $65
	ld   bc, $0169                                   ; $450b: $01 $69 $01
	ld   de, $1c01                                   ; $450e: $11 $01 $1c
	sub  a                                           ; $4511: $97
	nop                                              ; $4512: $00
	nop                                              ; $4513: $00
	add  b                                           ; $4514: $80
	add  c                                           ; $4515: $81
	or   b                                           ; $4516: $b0
	nop                                              ; $4517: $00
	jr   nc, jr_089_449a                             ; $4518: $30 $80

	ld   [hl], b                                     ; $451a: $70
	add  b                                           ; $451b: $80
	ld   h, b                                        ; $451c: $60
	rst  $38                                         ; $451d: $ff
	nop                                              ; $451e: $00
	rst  $38                                         ; $451f: $ff
	nop                                              ; $4520: $00
	rst  $38                                         ; $4521: $ff
	nop                                              ; $4522: $00
	rst  $38                                         ; $4523: $ff
	nop                                              ; $4524: $00
	rst  $38                                         ; $4525: $ff

jr_089_4526:
	nop                                              ; $4526: $00
	or   b                                           ; $4527: $b0
	nop                                              ; $4528: $00
	call nz, $ba00                                   ; $4529: $c4 $00 $ba
	nop                                              ; $452c: $00
	add  b                                           ; $452d: $80
	inc  b                                           ; $452e: $04
	add  b                                           ; $452f: $80
	ld   e, $b8                                      ; $4530: $1e $b8
	nop                                              ; $4532: $00
	add  b                                           ; $4533: $80
	ld   bc, $0680                                   ; $4534: $01 $80 $06
	add  b                                           ; $4537: $80
	add  hl, de                                      ; $4538: $19
	add  b                                           ; $4539: $80
	nop                                              ; $453a: $00
	add  b                                           ; $453b: $80
	ld   bc, $0680                                   ; $453c: $01 $80 $06
	add  b                                           ; $453f: $80
	add  hl, de                                      ; $4540: $19
	ld   bc, $6667                                   ; $4541: $01 $67 $66
	add  b                                           ; $4544: $80
	sbc  [hl]                                        ; $4545: $9e
	dec  d                                           ; $4546: $15
	ld   [hl], d                                     ; $4547: $72
	ld   h, e                                        ; $4548: $63
	res  0, c                                        ; $4549: $cb $81
	ccf                                              ; $454b: $3f

jr_089_454c:
	ld   h, l                                        ; $454c: $65
	sbc  [hl]                                        ; $454d: $9e
	sbc  d                                           ; $454e: $9a
	ld   [hl], a                                     ; $454f: $77
	ld   h, c                                        ; $4550: $61
	pop  bc                                          ; $4551: $c1
	add  b                                           ; $4552: $80
	inc  c                                           ; $4553: $0c
	ld   b, $40                                      ; $4554: $06 $40
	add  hl, de                                      ; $4556: $19
	and  [hl]                                        ; $4557: $a6
	ld   h, $35                                      ; $4558: $26 $35
	sub  l                                           ; $455a: $95
	jr   nz, jr_089_455d                             ; $455b: $20 $00

jr_089_455d:
	add  b                                           ; $455d: $80
	add  b                                           ; $455e: $80
	add  b                                           ; $455f: $80
	ld   b, b                                        ; $4560: $40
	add  b                                           ; $4561: $80
	and  b                                           ; $4562: $a0
	add  b                                           ; $4563: $80
	ld   d, b                                        ; $4564: $50
	add  b                                           ; $4565: $80
	jr   z, jr_089_456b                              ; $4566: $28 $03

	db   $f4                                         ; $4568: $f4
	sub  h                                           ; $4569: $94
	ld   a, [hl+]                                    ; $456a: $2a

jr_089_456b:
	ld   c, d                                        ; $456b: $4a
	sub  b                                           ; $456c: $90
	nop                                              ; $456d: $00
	add  b                                           ; $456e: $80
	ld   bc, $0680                                   ; $456f: $01 $80 $06
	add  b                                           ; $4572: $80
	add  hl, de                                      ; $4573: $19
	add  b                                           ; $4574: $80
	ld   h, [hl]                                     ; $4575: $66
	dec  b                                           ; $4576: $05
	ld   a, h                                        ; $4577: $7c
	ld   a, b                                        ; $4578: $78
	ld   d, d                                        ; $4579: $52
	ld   d, h                                        ; $457a: $54
	ld   c, b                                        ; $457b: $48
	ld   c, d                                        ; $457c: $4a
	add  b                                           ; $457d: $80
	ld   h, [hl]                                     ; $457e: $66
	dec  [hl]                                        ; $457f: $35
	sbc  a                                           ; $4580: $9f
	sbc  h                                           ; $4581: $9c
	ld   a, h                                        ; $4582: $7c
	ld   h, [hl]                                     ; $4583: $66
	sub  $83                                         ; $4584: $d6 $83
	di                                               ; $4586: $f3
	add  hl, de                                      ; $4587: $19
	ld   b, c                                        ; $4588: $41
	ld   h, h                                        ; $4589: $64
	jr   jr_089_4526                                 ; $458a: $18 $9a

	call c, $ce5d                                    ; $458c: $dc $5d $ce
	inc  c                                           ; $458f: $0c
	ld   [hl], b                                     ; $4590: $70
	ld   [hl-], a                                    ; $4591: $32
	ret                                              ; $4592: $c9


	ld   c, c                                        ; $4593: $49
	xor  [hl]                                        ; $4594: $ae
	ld   l, $f2                                      ; $4595: $2e $f2
	sub  d                                           ; $4597: $92
	xor  c                                           ; $4598: $a9
	ret                                              ; $4599: $c9


	ld   [hl], l                                     ; $459a: $75
	ld   h, l                                        ; $459b: $65
	ld   h, [hl]                                     ; $459c: $66
	ld   [hl-], a                                    ; $459d: $32
	cp   l                                           ; $459e: $bd
	ret                                              ; $459f: $c9


	ld   b, h                                        ; $45a0: $44
	ld   h, h                                        ; $45a1: $64
	ldh  [c], a                                      ; $45a2: $e2
	ld   [hl-], a                                    ; $45a3: $32
	ld   e, e                                        ; $45a4: $5b
	sbc  c                                           ; $45a5: $99
	ld   e, h                                        ; $45a6: $5c
	ld   c, h                                        ; $45a7: $4c
	inc  [hl]                                        ; $45a8: $34
	ld   h, $df                                      ; $45a9: $26 $df
	db   $d3                                         ; $45ab: $d3
	add  e                                           ; $45ac: $83
	adc  c                                           ; $45ad: $89
	dec  hl                                          ; $45ae: $2b
	dec  h                                           ; $45af: $25
	sub  $d2                                         ; $45b0: $d6 $d2

jr_089_45b2:
	pop  bc                                          ; $45b2: $c1
	ret                                              ; $45b3: $c9


	ld   bc, $8004                                   ; $45b4: $01 $04 $80
	add  [hl]                                        ; $45b7: $86
	rlca                                             ; $45b8: $07
	ld   e, a                                        ; $45b9: $5f
	ld   e, b                                        ; $45ba: $58
	cp   $20                                         ; $45bb: $fe $20
	ld   de, $4881                                   ; $45bd: $11 $81 $48
	nop                                              ; $45c0: $00
	add  b                                           ; $45c1: $80
	add  b                                           ; $45c2: $80
	add  b                                           ; $45c3: $80
	ld   b, b                                        ; $45c4: $40
	add  b                                           ; $45c5: $80
	and  b                                           ; $45c6: $a0
	add  b                                           ; $45c7: $80
	ld   d, b                                        ; $45c8: $50
	add  b                                           ; $45c9: $80
	jr   z, jr_089_454c                              ; $45ca: $28 $80

	ld   [hl], h                                     ; $45cc: $74
	inc  bc                                          ; $45cd: $03
	sbc  [hl]                                        ; $45ce: $9e
	adc  [hl]                                        ; $45cf: $8e
	ld   d, l                                        ; $45d0: $55
	ld   b, l                                        ; $45d1: $45
	add  b                                           ; $45d2: $80
	ld   b, d                                        ; $45d3: $42
	add  b                                           ; $45d4: $80
	ld   b, c                                        ; $45d5: $41
	add  b                                           ; $45d6: $80
	jr   nz, @-$7e                                   ; $45d7: $20 $80

	db   $10                                         ; $45d9: $10
	add  b                                           ; $45da: $80
	ld   [$0480], sp                                 ; $45db: $08 $80 $04
	add  b                                           ; $45de: $80
	ld   [bc], a                                     ; $45df: $02
	inc  bc                                          ; $45e0: $03
	xor  b                                           ; $45e1: $a8
	jr   z, jr_089_4616                              ; $45e2: $28 $32

	sub  d                                           ; $45e4: $92
	add  b                                           ; $45e5: $80
	ld   c, e                                        ; $45e6: $4b

jr_089_45e7:
	dec  [hl]                                        ; $45e7: $35
	add  h                                           ; $45e8: $84
	and  h                                           ; $45e9: $a4
	ld   e, d                                        ; $45ea: $5a
	ld   d, d                                        ; $45eb: $52
	inc  hl                                          ; $45ec: $23
	add  hl, hl                                      ; $45ed: $29
	dec  d                                           ; $45ee: $15

jr_089_45ef:
	inc  d                                           ; $45ef: $14
	ld   [$dc0a], sp                                 ; $45f0: $08 $0a $dc
	sbc  c                                           ; $45f3: $99
	add  hl, de                                      ; $45f4: $19
	ld   c, h                                        ; $45f5: $4c
	ld   [hl], $26                                   ; $45f6: $36 $26
	sbc  [hl]                                        ; $45f8: $9e
	sub  e                                           ; $45f9: $93
	rlca                                             ; $45fa: $07
	add  hl, bc                                      ; $45fb: $09
	jr   c, jr_089_462e                              ; $45fc: $38 $30

	jp   nc, Jump_089_51c0                           ; $45fe: $d2 $c0 $51

	ld   bc, $044f                                   ; $4601: $01 $4f $04
	sbc  l                                           ; $4604: $9d
	sbc  b                                           ; $4605: $98
	db   $fc                                         ; $4606: $fc
	ld   h, b                                        ; $4607: $60
	dec  de                                          ; $4608: $1b
	ld   bc, $8647                                   ; $4609: $01 $47 $86
	sbc  l                                           ; $460c: $9d

jr_089_460d:
	ret  c                                           ; $460d: $d8

	ld   [hl], e                                     ; $460e: $73
	ld   h, e                                        ; $460f: $63
	add  sp, -$44                                    ; $4610: $e8 $bc
	add  a                                           ; $4612: $87
	add  $7d                                         ; $4613: $c6 $7d
	ld   a, b                                        ; $4615: $78

jr_089_4616:
	ld   a, e                                        ; $4616: $7b
	ld   [hl], e                                     ; $4617: $73
	ldh  a, [$9c]                                    ; $4618: $f0 $9c
	inc  de                                          ; $461a: $13
	inc  sp                                          ; $461b: $33
	adc  h                                           ; $461c: $8c
	call z, $3080                                    ; $461d: $cc $80 $30
	add  b                                           ; $4620: $80
	ret  nz                                          ; $4621: $c0

	inc  bc                                          ; $4622: $03
	ld   [hl], d                                     ; $4623: $72
	ld   [hl-], a                                    ; $4624: $32
	adc  [hl]                                        ; $4625: $8e
	adc  $80                                         ; $4626: $ce $80
	ld   [hl-], a                                    ; $4628: $32
	add  b                                           ; $4629: $80
	jp   nz, $0282                                   ; $462a: $c2 $82 $02

	add  b                                           ; $462d: $80

jr_089_462e:
	ld   b, $80                                      ; $462e: $06 $80
	jr   jr_089_45b2                                 ; $4630: $18 $80

	ld   bc, $008c                                   ; $4632: $01 $8c $00
	add  b                                           ; $4635: $80
	dec  b                                           ; $4636: $05
	add  b                                           ; $4637: $80
	add  d                                           ; $4638: $82
	add  b                                           ; $4639: $80
	ld   b, c                                        ; $463a: $41
	add  b                                           ; $463b: $80
	jr   nz, @-$7e                                   ; $463c: $20 $80

	db   $10                                         ; $463e: $10
	add  b                                           ; $463f: $80
	ld   [$0480], sp                                 ; $4640: $08 $80 $04
	add  b                                           ; $4643: $80
	ld   [bc], a                                     ; $4644: $02
	ld   bc, $0607                                   ; $4645: $01 $07 $06
	add  b                                           ; $4648: $80
	sbc  b                                           ; $4649: $98
	dec  b                                           ; $464a: $05
	ld   a, d                                        ; $464b: $7a
	ld   h, e                                        ; $464c: $63

jr_089_464d:
	and  h                                           ; $464d: $a4
	xor  h                                           ; $464e: $ac
	ld   b, e                                        ; $464f: $43
	ld   d, e                                        ; $4650: $53

jr_089_4651:
	add  b                                           ; $4651: $80
	inc  a                                           ; $4652: $3c
	add  d                                           ; $4653: $82
	db   $10                                         ; $4654: $10
	inc  bc                                          ; $4655: $03
	ld   [hl], e                                     ; $4656: $73
	inc  sp                                          ; $4657: $33
	adc  h                                           ; $4658: $8c
	call z, $3080                                    ; $4659: $cc $80 $30
	add  b                                           ; $465c: $80
	ret  nz                                          ; $465d: $c0

	add  b                                           ; $465e: $80
	nop                                              ; $465f: $00
	add  b                                           ; $4660: $80
	ld   bc, $0680                                   ; $4661: $01 $80 $06
	add  b                                           ; $4664: $80
	jr   jr_089_45e7                                 ; $4665: $18 $80

	nop                                              ; $4667: $00
	add  b                                           ; $4668: $80
	ld   bc, $0680                                   ; $4669: $01 $80 $06
	add  b                                           ; $466c: $80
	jr   jr_089_45ef                                 ; $466d: $18 $80

	ld   h, b                                        ; $466f: $60
	add  b                                           ; $4670: $80
	add  b                                           ; $4671: $80
	add  d                                           ; $4672: $82
	nop                                              ; $4673: $00
	add  b                                           ; $4674: $80
	ld   h, b                                        ; $4675: $60
	add  b                                           ; $4676: $80
	add  b                                           ; $4677: $80
	sbc  d                                           ; $4678: $9a
	nop                                              ; $4679: $00
	add  b                                           ; $467a: $80
	ld   bc, $008c                                   ; $467b: $01 $8c $00
	add  b                                           ; $467e: $80
	db   $10                                         ; $467f: $10
	add  b                                           ; $4680: $80
	sub  c                                           ; $4681: $91
	add  b                                           ; $4682: $80
	ld   d, [hl]                                     ; $4683: $56
	add  b                                           ; $4684: $80
	jr   c, jr_089_460d                              ; $4685: $38 $86

	nop                                              ; $4687: $00
	add  b                                           ; $4688: $80
	ld   h, b                                        ; $4689: $60
	add  b                                           ; $468a: $80
	add  b                                           ; $468b: $80
	rst  $38                                         ; $468c: $ff
	nop                                              ; $468d: $00
	add  l                                           ; $468e: $85
	nop                                              ; $468f: $00
	add  b                                           ; $4690: $80
	inc  c                                           ; $4691: $0c
	add  b                                           ; $4692: $80
	inc  h                                           ; $4693: $24
	sub  d                                           ; $4694: $92
	nop                                              ; $4695: $00

jr_089_4696:
	add  b                                           ; $4696: $80
	inc  c                                           ; $4697: $0c
	add  b                                           ; $4698: $80
	inc  l                                           ; $4699: $2c
	add  b                                           ; $469a: $80
	and  b                                           ; $469b: $a0
	add  b                                           ; $469c: $80
	ldh  [$82], a                                    ; $469d: $e0 $82
	ld   b, b                                        ; $469f: $40
	sub  [hl]                                        ; $46a0: $96
	nop                                              ; $46a1: $00
	add  b                                           ; $46a2: $80
	add  b                                           ; $46a3: $80
	add  b                                           ; $46a4: $80
	ret  nz                                          ; $46a5: $c0

	add  b                                           ; $46a6: $80
	nop                                              ; $46a7: $00
	add  b                                           ; $46a8: $80
	jr   nc, jr_089_4651                             ; $46a9: $30 $a6

	nop                                              ; $46ab: $00
	add  b                                           ; $46ac: $80

jr_089_46ad:
	ld   bc, $0380                                   ; $46ad: $01 $80 $03
	ld   [de], a                                     ; $46b0: $12
	ld   hl, $1101                                   ; $46b1: $21 $01 $11
	ld   bc, $0008                                   ; $46b4: $01 $08 $00
	inc  b                                           ; $46b7: $04
	nop                                              ; $46b8: $00
	ld   [bc], a                                     ; $46b9: $02
	nop                                              ; $46ba: $00
	ld   hl, $1000                                   ; $46bb: $21 $00 $10
	nop                                              ; $46be: $00
	ld   [$0400], sp                                 ; $46bf: $08 $00 $04
	nop                                              ; $46c2: $00
	ld   [bc], a                                     ; $46c3: $02
	add  b                                           ; $46c4: $80
	nop                                              ; $46c5: $00
	nop                                              ; $46c6: $00
	ld   bc, $0082                                   ; $46c7: $01 $82 $00
	add  b                                           ; $46ca: $80
	jr   nc, jr_089_464d                             ; $46cb: $30 $80

	ld   b, b                                        ; $46cd: $40
	add  h                                           ; $46ce: $84
	nop                                              ; $46cf: $00
	add  d                                           ; $46d0: $82
	ld   b, b                                        ; $46d1: $40
	add  b                                           ; $46d2: $80
	db   $10                                         ; $46d3: $10
	add  b                                           ; $46d4: $80
	jr   jr_089_46e0                                 ; $46d5: $18 $09

	add  h                                           ; $46d7: $84
	inc  b                                           ; $46d8: $04
	ld   b, h                                        ; $46d9: $44
	inc  b                                           ; $46da: $04
	jr   nz, jr_089_46dd                             ; $46db: $20 $00

jr_089_46dd:
	stop                                             ; $46dd: $10 $00
	ld   b, c                                        ; $46df: $41

jr_089_46e0:
	or   c                                           ; $46e0: $b1
	add  b                                           ; $46e1: $80
	pop  bc                                          ; $46e2: $c1
	add  b                                           ; $46e3: $80
	nop                                              ; $46e4: $00
	add  b                                           ; $46e5: $80
	ret  nz                                          ; $46e6: $c0

	add  b                                           ; $46e7: $80
	nop                                              ; $46e8: $00
	add  b                                           ; $46e9: $80
	jr   nc, @-$7c                                   ; $46ea: $30 $82

	adc  b                                           ; $46ec: $88
	add  d                                           ; $46ed: $82
	ld   [hl+], a                                    ; $46ee: $22
	add  b                                           ; $46ef: $80
	jr   @+$07                                       ; $46f0: $18 $05

	nop                                              ; $46f2: $00
	ld   b, b                                        ; $46f3: $40
	ld   b, h                                        ; $46f4: $44
	call nz, $05c5                                   ; $46f5: $c4 $c5 $05
	add  b                                           ; $46f8: $80
	ld   h, $80                                      ; $46f9: $26 $80
	or   b                                           ; $46fb: $b0
	add  b                                           ; $46fc: $80
	nop                                              ; $46fd: $00
	add  b                                           ; $46fe: $80
	adc  b                                           ; $46ff: $88
	add  b                                           ; $4700: $80
	inc  c                                           ; $4701: $0c
	add  b                                           ; $4702: $80
	ld   h, h                                        ; $4703: $64
	add  b                                           ; $4704: $80
	ld   hl, $1980                                   ; $4705: $21 $80 $19
	add  c                                           ; $4708: $81
	nop                                              ; $4709: $00

jr_089_470a:
	add  c                                           ; $470a: $81
	ld   h, b                                        ; $470b: $60
	ld   bc, $0161                                   ; $470c: $01 $61 $01
	add  b                                           ; $470f: $80
	inc  b                                           ; $4710: $04
	add  b                                           ; $4711: $80
	ld   a, b                                        ; $4712: $78
	add  b                                           ; $4713: $80
	jr   nz, jr_089_4696                             ; $4714: $20 $80

	inc  bc                                          ; $4716: $03
	add  b                                           ; $4717: $80
	ld   [$0080], sp                                 ; $4718: $08 $80 $00
	add  b                                           ; $471b: $80
	db   $10                                         ; $471c: $10
	add  b                                           ; $471d: $80
	nop                                              ; $471e: $00
	add  c                                           ; $471f: $81
	ld   [bc], a                                     ; $4720: $02
	nop                                              ; $4721: $00
	ld   [hl-], a                                    ; $4722: $32
	add  b                                           ; $4723: $80
	jr   nc, jr_089_4727                             ; $4724: $30 $01

	or   c                                           ; $4726: $b1

jr_089_4727:
	add  c                                           ; $4727: $81
	add  b                                           ; $4728: $80
	ld   b, $80                                      ; $4729: $06 $80
	jr   nc, jr_089_46ad                             ; $472b: $30 $80

	jr   nz, @-$7e                                   ; $472d: $20 $80

	add  e                                           ; $472f: $83
	add  d                                           ; $4730: $82
	nop                                              ; $4731: $00
	add  b                                           ; $4732: $80
	add  b                                           ; $4733: $80
	ld   b, $03                                      ; $4734: $06 $03
	nop                                              ; $4736: $00
	inc  c                                           ; $4737: $0c
	nop                                              ; $4738: $00
	jr   nc, jr_089_473b                             ; $4739: $30 $00

jr_089_473b:
	ccf                                              ; $473b: $3f
	add  l                                           ; $473c: $85
	nop                                              ; $473d: $00
	add  d                                           ; $473e: $82
	add  b                                           ; $473f: $80
	add  b                                           ; $4740: $80
	nop                                              ; $4741: $00
	add  b                                           ; $4742: $80
	ld   h, b                                        ; $4743: $60
	add  b                                           ; $4744: $80
	add  b                                           ; $4745: $80
	add  b                                           ; $4746: $80
	nop                                              ; $4747: $00
	inc  b                                           ; $4748: $04
	inc  c                                           ; $4749: $0c
	nop                                              ; $474a: $00
	jr   nc, jr_089_474d                             ; $474b: $30 $00

jr_089_474d:
	ret  nz                                          ; $474d: $c0

	add  c                                           ; $474e: $81
	nop                                              ; $474f: $00
	inc  b                                           ; $4750: $04
	inc  b                                           ; $4751: $04
	nop                                              ; $4752: $00
	jr   jr_089_4755                                 ; $4753: $18 $00

jr_089_4755:
	ldh  [$9d], a                                    ; $4755: $e0 $9d
	nop                                              ; $4757: $00
	db   $10                                         ; $4758: $10
	ld   hl, sp+$00                                  ; $4759: $f8 $00
	add  h                                           ; $475b: $84
	nop                                              ; $475c: $00
	ld   b, d                                        ; $475d: $42
	nop                                              ; $475e: $00
	ld   hl, $1000                                   ; $475f: $21 $00 $10
	nop                                              ; $4762: $00
	ld   [$0400], sp                                 ; $4763: $08 $00 $04
	nop                                              ; $4766: $00
	ld   [bc], a                                     ; $4767: $02
	nop                                              ; $4768: $00
	ld   bc, $008d                                   ; $4769: $01 $8d $00
	add  b                                           ; $476c: $80
	ldh  [$80], a                                    ; $476d: $e0 $80
	ld   b, $80                                      ; $476f: $06 $80
	inc  b                                           ; $4771: $04
	add  b                                           ; $4772: $80
	nop                                              ; $4773: $00
	inc  b                                           ; $4774: $04
	add  b                                           ; $4775: $80
	nop                                              ; $4776: $00
	ld   b, e                                        ; $4777: $43
	nop                                              ; $4778: $00
	inc  l                                           ; $4779: $2c
	add  e                                           ; $477a: $83
	nop                                              ; $477b: $00
	inc  b                                           ; $477c: $04

jr_089_477d:
	add  c                                           ; $477d: $81
	nop                                              ; $477e: $00
	ld   b, [hl]                                     ; $477f: $46
	nop                                              ; $4780: $00
	jr   z, jr_089_470a                              ; $4781: $28 $87

	nop                                              ; $4783: $00
	add  b                                           ; $4784: $80
	add  b                                           ; $4785: $80
	db   $10                                         ; $4786: $10
	inc  bc                                          ; $4787: $03
	nop                                              ; $4788: $00
	inc  c                                           ; $4789: $0c
	nop                                              ; $478a: $00
	jr   nc, jr_089_478d                             ; $478b: $30 $00

jr_089_478d:
	ret  nz                                          ; $478d: $c0

	nop                                              ; $478e: $00
	ld   bc, $0600                                   ; $478f: $01 $00 $06
	nop                                              ; $4792: $00
	jr   jr_089_4795                                 ; $4793: $18 $00

jr_089_4795:
	ld   h, b                                        ; $4795: $60
	nop                                              ; $4796: $00
	add  b                                           ; $4797: $80
	adc  e                                           ; $4798: $8b
	nop                                              ; $4799: $00
	ld   a, [bc]                                     ; $479a: $0a
	rst  $38                                         ; $479b: $ff
	nop                                              ; $479c: $00
	ld   bc, $0600                                   ; $479d: $01 $00 $06
	nop                                              ; $47a0: $00
	jr   jr_089_47a3                                 ; $47a1: $18 $00

jr_089_47a3:
	ld   h, b                                        ; $47a3: $60
	nop                                              ; $47a4: $00
	add  b                                           ; $47a5: $80
	sub  e                                           ; $47a6: $93
	nop                                              ; $47a7: $00
	ld   [bc], a                                     ; $47a8: $02
	add  b                                           ; $47a9: $80
	nop                                              ; $47aa: $00
	add  b                                           ; $47ab: $80
	rst  $38                                         ; $47ac: $ff
	nop                                              ; $47ad: $00
	rst  $38                                         ; $47ae: $ff
	nop                                              ; $47af: $00
	rst  $38                                         ; $47b0: $ff
	nop                                              ; $47b1: $00
	rst  $38                                         ; $47b2: $ff
	nop                                              ; $47b3: $00
	rst  $38                                         ; $47b4: $ff
	nop                                              ; $47b5: $00
	sub  [hl]                                        ; $47b6: $96
	nop                                              ; $47b7: $00
	ld   [hl], l                                     ; $47b8: $75
	nop                                              ; $47b9: $00
	xor  b                                           ; $47ba: $a8
	nop                                              ; $47bb: $00
	add  b                                           ; $47bc: $80
	ld   bc, $0304                                   ; $47bd: $01 $04 $03
	ld   [bc], a                                     ; $47c0: $02
	ld   b, $04                                      ; $47c1: $06 $04
	inc  bc                                          ; $47c3: $03
	add  a                                           ; $47c4: $87
	nop                                              ; $47c5: $00
	add  b                                           ; $47c6: $80
	add  b                                           ; $47c7: $80
	inc  bc                                          ; $47c8: $03
	ret  nz                                          ; $47c9: $c0

	ld   b, b                                        ; $47ca: $40
	jr   nc, jr_089_477d                             ; $47cb: $30 $b0

	cp   b                                           ; $47cd: $b8
	nop                                              ; $47ce: $00
	add  b                                           ; $47cf: $80
	ld   bc, $0324                                   ; $47d0: $01 $24 $03
	ld   [bc], a                                     ; $47d3: $02
	ld   b, $04                                      ; $47d4: $06 $04
	inc  c                                           ; $47d6: $0c
	add  hl, bc                                      ; $47d7: $09
	jr   @+$14                                       ; $47d8: $18 $12

	ld   sp, $6324                                   ; $47da: $31 $24 $63
	ld   c, b                                        ; $47dd: $48
	add  $90                                         ; $47de: $c6 $90
	adc  l                                           ; $47e0: $8d
	jr   nz, @+$1c                                   ; $47e1: $20 $1a

	ld   b, b                                        ; $47e3: $40
	inc  [hl]                                        ; $47e4: $34
	add  b                                           ; $47e5: $80
	ld   e, e                                        ; $47e6: $5b
	inc  c                                           ; $47e7: $0c
	adc  a                                           ; $47e8: $8f
	inc  bc                                          ; $47e9: $03
	jp   $3000                                       ; $47ea: $c3 $00 $30


	nop                                              ; $47ed: $00
	call z, $3300                                    ; $47ee: $cc $00 $33
	nop                                              ; $47f1: $00
	inc  c                                           ; $47f2: $0c
	nop                                              ; $47f3: $00
	inc  bc                                          ; $47f4: $03
	nop                                              ; $47f5: $00
	rst  $38                                         ; $47f6: $ff
	add  c                                           ; $47f7: $81
	nop                                              ; $47f8: $00
	add  b                                           ; $47f9: $80
	ret  nz                                          ; $47fa: $c0

	ld   a, [bc]                                     ; $47fb: $0a
	ldh  a, [$30]                                    ; $47fc: $f0 $30
	inc  a                                           ; $47fe: $3c
	inc  c                                           ; $47ff: $0c
	rrca                                             ; $4800: $0f
	inc  bc                                          ; $4801: $03
	jp   $3000                                       ; $4802: $c3 $00 $30


	nop                                              ; $4805: $00
	rrca                                             ; $4806: $0f
	adc  c                                           ; $4807: $89
	nop                                              ; $4808: $00
	add  b                                           ; $4809: $80
	ret  nz                                          ; $480a: $c0

	ld   [bc], a                                     ; $480b: $02
	ldh  a, [$30]                                    ; $480c: $f0 $30
	ret  nz                                          ; $480e: $c0

	add  a                                           ; $480f: $87
	nop                                              ; $4810: $00
	add  b                                           ; $4811: $80
	ld   bc, $031c                                   ; $4812: $01 $1c $03
	ld   [bc], a                                     ; $4815: $02
	ld   b, $04                                      ; $4816: $06 $04
	inc  c                                           ; $4818: $0c
	add  hl, bc                                      ; $4819: $09
	jr   jr_089_482e                                 ; $481a: $18 $12

	ld   sp, $6324                                   ; $481c: $31 $24 $63
	ld   c, b                                        ; $481f: $48
	add  $90                                         ; $4820: $c6 $90

jr_089_4822:
	adc  l                                           ; $4822: $8d
	jr   nz, jr_089_483f                             ; $4823: $20 $1a

	ld   b, b                                        ; $4825: $40
	inc  [hl]                                        ; $4826: $34
	add  b                                           ; $4827: $80
	ld   l, b                                        ; $4828: $68
	nop                                              ; $4829: $00
	ret  nc                                          ; $482a: $d0

	nop                                              ; $482b: $00
	and  b                                           ; $482c: $a0
	nop                                              ; $482d: $00

jr_089_482e:
	ld   b, b                                        ; $482e: $40
	nop                                              ; $482f: $00
	add  b                                           ; $4830: $80
	sub  l                                           ; $4831: $95
	nop                                              ; $4832: $00
	dec  l                                           ; $4833: $2d
	inc  a                                           ; $4834: $3c
	nop                                              ; $4835: $00
	inc  sp                                          ; $4836: $33
	nop                                              ; $4837: $00
	inc  c                                           ; $4838: $0c
	nop                                              ; $4839: $00
	inc  bc                                          ; $483a: $03
	nop                                              ; $483b: $00
	ld   bc, $0200                                   ; $483c: $01 $00 $02

jr_089_483f:
	nop                                              ; $483f: $00
	dec  b                                           ; $4840: $05
	nop                                              ; $4841: $00
	ld   a, [bc]                                     ; $4842: $0a
	nop                                              ; $4843: $00
	rrca                                             ; $4844: $0f
	inc  c                                           ; $4845: $0c
	ld   c, $02                                      ; $4846: $0e $02
	jp   nz, $0002                                   ; $4848: $c2 $02 $00

	inc  b                                           ; $484b: $04
	ld   b, h                                        ; $484c: $44
	inc  c                                           ; $484d: $0c
	add  h                                           ; $484e: $84
	inc  d                                           ; $484f: $14
	ld   b, $26                                      ; $4850: $06 $26
	ld   b, $46                                      ; $4852: $06 $46
	adc  a                                           ; $4854: $8f
	add  hl, bc                                      ; $4855: $09
	jr   jr_089_486a                                 ; $4856: $18 $12

	ld   sp, $6224                                   ; $4858: $31 $24 $62
	ld   a, b                                        ; $485b: $78
	ld   e, h                                        ; $485c: $5c
	ld   e, b                                        ; $485d: $58
	ld   d, b                                        ; $485e: $50
	ld   d, [hl]                                     ; $485f: $56
	ld   d, b                                        ; $4860: $50
	ld   d, c                                        ; $4861: $51
	add  b                                           ; $4862: $80
	ld   d, b                                        ; $4863: $50
	db   $10                                         ; $4864: $10
	ld   c, a                                        ; $4865: $4f
	nop                                              ; $4866: $00
	ret  nc                                          ; $4867: $d0

	nop                                              ; $4868: $00
	add  b                                           ; $4869: $80

jr_089_486a:
	nop                                              ; $486a: $00
	sbc  b                                           ; $486b: $98
	nop                                              ; $486c: $00
	ld   h, [hl]                                     ; $486d: $66
	nop                                              ; $486e: $00
	add  hl, de                                      ; $486f: $19
	nop                                              ; $4870: $00

jr_089_4871:
	ld   b, $80                                      ; $4871: $06 $80
	ld   bc, $e060                                   ; $4873: $01 $60 $e0
	add  a                                           ; $4876: $87
	nop                                              ; $4877: $00
	ld   b, $80                                      ; $4878: $06 $80
	nop                                              ; $487a: $00
	ld   h, b                                        ; $487b: $60
	nop                                              ; $487c: $00
	sbc  b                                           ; $487d: $98
	nop                                              ; $487e: $00
	ld   a, b                                        ; $487f: $78
	add  l                                           ; $4880: $85
	nop                                              ; $4881: $00
	add  hl, de                                      ; $4882: $19
	ld   bc, $0200                                   ; $4883: $01 $00 $02
	nop                                              ; $4886: $00
	dec  b                                           ; $4887: $05
	nop                                              ; $4888: $00
	ld   a, [bc]                                     ; $4889: $0a
	nop                                              ; $488a: $00
	inc  d                                           ; $488b: $14
	nop                                              ; $488c: $00
	jr   z, jr_089_4890                              ; $488d: $28 $01

	ld   d, b                                        ; $488f: $50

jr_089_4890:
	ld   [bc], a                                     ; $4890: $02
	and  b                                           ; $4891: $a0
	inc  b                                           ; $4892: $04
	ld   b, b                                        ; $4893: $40
	ld   [$1181], sp                                 ; $4894: $08 $81 $11
	ld   [bc], a                                     ; $4897: $02
	ld   [hl+], a                                    ; $4898: $22
	dec  b                                           ; $4899: $05
	ld   b, l                                        ; $489a: $45
	ld   a, [bc]                                     ; $489b: $0a
	adc  d                                           ; $489c: $8a
	add  b                                           ; $489d: $80
	inc  d                                           ; $489e: $14
	add  b                                           ; $489f: $80
	jr   z, jr_089_4822                              ; $48a0: $28 $80

	ld   d, b                                        ; $48a2: $50
	add  b                                           ; $48a3: $80
	and  b                                           ; $48a4: $a0
	add  b                                           ; $48a5: $80
	ld   b, b                                        ; $48a6: $40
	add  b                                           ; $48a7: $80
	add  b                                           ; $48a8: $80
	add  b                                           ; $48a9: $80
	nop                                              ; $48aa: $00
	dec  b                                           ; $48ab: $05
	ld   e, b                                        ; $48ac: $58
	ld   e, e                                        ; $48ad: $5b
	ld   h, l                                        ; $48ae: $65
	ld   h, a                                        ; $48af: $67
	jr   jr_089_48cb                                 ; $48b0: $18 $19

	add  b                                           ; $48b2: $80
	ld   b, $80                                      ; $48b3: $06 $80
	ld   bc, $0084                                   ; $48b5: $01 $84 $00
	dec  c                                           ; $48b8: $0d
	rra                                              ; $48b9: $1f
	sbc  b                                           ; $48ba: $98
	add  b                                           ; $48bb: $80
	cp   $78                                         ; $48bc: $fe $78
	rst  $38                                         ; $48be: $ff
	ld   e, $7f                                      ; $48bf: $1e $7f
	add  a                                           ; $48c1: $87
	sbc  a                                           ; $48c2: $9f
	ld   h, c                                        ; $48c3: $61
	ld   h, a                                        ; $48c4: $67
	jr   jr_089_48e0                                 ; $48c5: $18 $19

	add  b                                           ; $48c7: $80
	ld   b, $1f                                      ; $48c8: $06 $1f
	pop  hl                                          ; $48ca: $e1

jr_089_48cb:
	nop                                              ; $48cb: $00
	add  hl, de                                      ; $48cc: $19
	nop                                              ; $48cd: $00
	ld   b, $80                                      ; $48ce: $06 $80
	ld   bc, $80e0                                   ; $48d0: $01 $e0 $80
	ld   hl, sp-$20                                  ; $48d3: $f8 $e0
	cp   $78                                         ; $48d5: $fe $78
	rst  $38                                         ; $48d7: $ff
	ld   e, $7f                                      ; $48d8: $1e $7f
	ld   hl, sp+$00                                  ; $48da: $f8 $00
	xor  b                                           ; $48dc: $a8
	ld   bc, $0250                                   ; $48dd: $01 $50 $02

jr_089_48e0:
	and  b                                           ; $48e0: $a0
	inc  b                                           ; $48e1: $04
	ld   b, b                                        ; $48e2: $40
	ld   [$1101], sp                                 ; $48e3: $08 $01 $11
	ld   [bc], a                                     ; $48e6: $02
	and  d                                           ; $48e7: $a2
	add  l                                           ; $48e8: $85

jr_089_48e9:
	push bc                                          ; $48e9: $c5
	add  b                                           ; $48ea: $80
	adc  d                                           ; $48eb: $8a
	add  b                                           ; $48ec: $80
	inc  d                                           ; $48ed: $14
	add  b                                           ; $48ee: $80
	jr   z, jr_089_4871                              ; $48ef: $28 $80

	ld   d, b                                        ; $48f1: $50
	add  b                                           ; $48f2: $80
	and  b                                           ; $48f3: $a0
	add  b                                           ; $48f4: $80
	ld   b, b                                        ; $48f5: $40
	add  b                                           ; $48f6: $80
	add  b                                           ; $48f7: $80
	and  b                                           ; $48f8: $a0
	nop                                              ; $48f9: $00

jr_089_48fa:
	add  b                                           ; $48fa: $80
	ld   bc, $008c                                   ; $48fb: $01 $8c $00
	dec  b                                           ; $48fe: $05
	sbc  b                                           ; $48ff: $98
	sbc  a                                           ; $4900: $9f
	ld   h, c                                        ; $4901: $61
	ld   h, a                                        ; $4902: $67
	jr   jr_089_491e                                 ; $4903: $18 $19

	add  b                                           ; $4905: $80
	ld   b, $80                                      ; $4906: $06 $80
	ld   bc, $0084                                   ; $4908: $01 $84 $00
	add  b                                           ; $490b: $80
	adc  d                                           ; $490c: $8a
	add  b                                           ; $490d: $80
	sub  h                                           ; $490e: $94
	add  b                                           ; $490f: $80
	xor  b                                           ; $4910: $a8
	add  b                                           ; $4911: $80
	ld   d, b                                        ; $4912: $50
	add  b                                           ; $4913: $80
	and  b                                           ; $4914: $a0
	add  b                                           ; $4915: $80
	ld   b, b                                        ; $4916: $40
	db   $f4                                         ; $4917: $f4
	nop                                              ; $4918: $00
	ld   c, $01                                      ; $4919: $0e $01
	nop                                              ; $491b: $00
	inc  bc                                          ; $491c: $03
	nop                                              ; $491d: $00

jr_089_491e:
	ld   b, $01                                      ; $491e: $06 $01
	inc  c                                           ; $4920: $0c
	inc  bc                                          ; $4921: $03
	jr   jr_089_492a                                 ; $4922: $18 $06

	jr   nc, jr_089_4932                             ; $4924: $30 $0c

	ld   h, b                                        ; $4926: $60

jr_089_4927:
	jr   @+$52                                       ; $4927: $18 $50

	adc  e                                           ; $4929: $8b

jr_089_492a:
	nop                                              ; $492a: $00
	inc  b                                           ; $492b: $04
	ld   b, b                                        ; $492c: $40
	nop                                              ; $492d: $00
	ret  nz                                          ; $492e: $c0

	nop                                              ; $492f: $00
	add  b                                           ; $4930: $80
	add  b                                           ; $4931: $80

jr_089_4932:
	nop                                              ; $4932: $00
	ld   [$00c0], sp                                 ; $4933: $08 $c0 $00
	ldh  a, [rP1]                                    ; $4936: $f0 $00
	inc  a                                           ; $4938: $3c
	nop                                              ; $4939: $00
	rrca                                             ; $493a: $0f
	nop                                              ; $493b: $00
	inc  bc                                          ; $493c: $03
	sbc  l                                           ; $493d: $9d
	nop                                              ; $493e: $00
	inc  bc                                          ; $493f: $03
	ret  nz                                          ; $4940: $c0

	nop                                              ; $4941: $00
	ldh  a, [$30]                                    ; $4942: $f0 $30
	xor  a                                           ; $4944: $af
	nop                                              ; $4945: $00
	ld   b, $01                                      ; $4946: $06 $01
	nop                                              ; $4948: $00
	inc  bc                                          ; $4949: $03
	nop                                              ; $494a: $00
	ld   b, $00                                      ; $494b: $06 $00
	inc  h                                           ; $494d: $24
	add  b                                           ; $494e: $80
	nop                                              ; $494f: $00
	add  b                                           ; $4950: $80
	ld   [$0e80], sp                                 ; $4951: $08 $80 $0e
	dec  e                                           ; $4954: $1d
	rrca                                             ; $4955: $0f
	cpl                                              ; $4956: $2f
	nop                                              ; $4957: $00
	ld   bc, $0300                                   ; $4958: $01 $00 $03
	nop                                              ; $495b: $00
	ld   b, $01                                      ; $495c: $06 $01
	inc  c                                           ; $495e: $0c
	inc  bc                                          ; $495f: $03
	jr   @+$08                                       ; $4960: $18 $06

	jr   nc, @+$0e                                   ; $4962: $30 $0c

	ld   h, b                                        ; $4964: $60
	jr   jr_089_4927                                 ; $4965: $18 $c0

	jr   nc, jr_089_48e9                             ; $4967: $30 $80

	ld   h, b                                        ; $4969: $60
	jr   nz, @-$1e                                   ; $496a: $20 $e0

	sbc  b                                           ; $496c: $98
	ld   a, b                                        ; $496d: $78
	ld   h, [hl]                                     ; $496e: $66
	ld   e, $19                                      ; $496f: $1e $19
	rlca                                             ; $4971: $07
	ld   b, $80                                      ; $4972: $06 $80
	ld   bc, $8008                                   ; $4974: $01 $08 $80
	db   $10                                         ; $4977: $10
	jr   nc, jr_089_48fa                             ; $4978: $30 $80

	ld   h, b                                        ; $497a: $60
	nop                                              ; $497b: $00
	ret  nz                                          ; $497c: $c0

	nop                                              ; $497d: $00
	add  b                                           ; $497e: $80
	sub  b                                           ; $497f: $90
	nop                                              ; $4980: $00
	add  b                                           ; $4981: $80
	add  b                                           ; $4982: $80
	inc  b                                           ; $4983: $04
	ld   h, b                                        ; $4984: $60
	ldh  [$98], a                                    ; $4985: $e0 $98
	ld   a, b                                        ; $4987: $78
	ld   h, b                                        ; $4988: $60
	sub  l                                           ; $4989: $95
	nop                                              ; $498a: $00
	add  b                                           ; $498b: $80
	ld   bc, $020b                                   ; $498c: $01 $0b $02
	inc  bc                                          ; $498f: $03
	dec  b                                           ; $4990: $05
	ld   b, $0a                                      ; $4991: $06 $0a
	inc  c                                           ; $4993: $0c
	inc  [hl]                                        ; $4994: $34
	inc  a                                           ; $4995: $3c
	nop                                              ; $4996: $00
	rrca                                             ; $4997: $0f
	nop                                              ; $4998: $00
	inc  bc                                          ; $4999: $03
	add  b                                           ; $499a: $80
	nop                                              ; $499b: $00
	add  b                                           ; $499c: $80
	ld   bc, $020e                                   ; $499d: $01 $0e $02
	inc  bc                                          ; $49a0: $03
	dec  b                                           ; $49a1: $05
	ld   b, $0a                                      ; $49a2: $06 $0a
	inc  c                                           ; $49a4: $0c
	inc  d                                           ; $49a5: $14
	jr   jr_089_49d0                                 ; $49a6: $18 $28

	jr   nc, jr_089_49fa                             ; $49a8: $30 $50

	ld   h, c                                        ; $49aa: $61
	and  c                                           ; $49ab: $a1
	jp   $8043                                       ; $49ac: $c3 $43 $80


	add  a                                           ; $49af: $87
	dec  b                                           ; $49b0: $05
	ld   c, $0f                                      ; $49b1: $0e $0f
	inc  e                                           ; $49b3: $1c
	rra                                              ; $49b4: $1f
	jr   c, @+$3c                                    ; $49b5: $38 $3a

jr_089_49b7:
	add  d                                           ; $49b7: $82
	nop                                              ; $49b8: $00
	inc  bc                                          ; $49b9: $03
	ret  nz                                          ; $49ba: $c0

	ld   b, b                                        ; $49bb: $40
	ret  nz                                          ; $49bc: $c0

	ld   b, b                                        ; $49bd: $40
	add  b                                           ; $49be: $80
	add  b                                           ; $49bf: $80
	add  b                                           ; $49c0: $80
	ld   [$1880], sp                                 ; $49c1: $08 $80 $18
	dec  c                                           ; $49c4: $0d
	jr   c, jr_089_4a03                              ; $49c5: $38 $3c

	ld   [hl], b                                     ; $49c7: $70
	ld   a, h                                        ; $49c8: $7c
	ldh  [$f8], a                                    ; $49c9: $e0 $f8
	ret  nz                                          ; $49cb: $c0

	ldh  a, [$80]                                    ; $49cc: $f0 $80
	ldh  [rP1], a                                    ; $49ce: $e0 $00

jr_089_49d0:
	ret  nz                                          ; $49d0: $c0

	nop                                              ; $49d1: $00
	add  b                                           ; $49d2: $80
	add  c                                           ; $49d3: $81
	nop                                              ; $49d4: $00
	ld   [$0420], sp                                 ; $49d5: $08 $20 $04
	inc  a                                           ; $49d8: $3c
	nop                                              ; $49d9: $00
	ld   e, $00                                      ; $49da: $1e $00
	rlca                                             ; $49dc: $07
	nop                                              ; $49dd: $00
	ld   bc, $0096                                   ; $49de: $01 $96 $00
	add  b                                           ; $49e1: $80
	ld   h, b                                        ; $49e2: $60
	add  c                                           ; $49e3: $81
	nop                                              ; $49e4: $00
	ld   a, [bc]                                     ; $49e5: $0a
	add  b                                           ; $49e6: $80

jr_089_49e7:
	nop                                              ; $49e7: $00
	ldh  [rP1], a                                    ; $49e8: $e0 $00
	ld   a, b                                        ; $49ea: $78
	nop                                              ; $49eb: $00
	ld   e, $00                                      ; $49ec: $1e $00
	rlca                                             ; $49ee: $07
	nop                                              ; $49ef: $00
	ld   bc, $008d                                   ; $49f0: $01 $8d $00
	inc  b                                           ; $49f3: $04
	ld   b, $1e                                      ; $49f4: $06 $1e
	add  hl, de                                      ; $49f6: $19
	rlca                                             ; $49f7: $07
	ld   b, $80                                      ; $49f8: $06 $80

jr_089_49fa:
	ld   bc, $0085                                   ; $49fa: $01 $85 $00
	ld   a, [bc]                                     ; $49fd: $0a
	add  b                                           ; $49fe: $80
	nop                                              ; $49ff: $00
	ldh  [rP1], a                                    ; $4a00: $e0 $00
	ld   a, b                                        ; $4a02: $78

jr_089_4a03:
	nop                                              ; $4a03: $00
	ld   e, $00                                      ; $4a04: $1e $00
	rlca                                             ; $4a06: $07

jr_089_4a07:
	nop                                              ; $4a07: $00
	ld   bc, $0085                                   ; $4a08: $01 $85 $00
	ld   b, $10                                      ; $4a0b: $06 $10
	jr   jr_089_49b7                                 ; $4a0d: $18 $a8

	or   b                                           ; $4a0f: $b0
	ld   d, b                                        ; $4a10: $50

jr_089_4a11:
	pop  hl                                          ; $4a11: $e1
	and  c                                           ; $4a12: $a1

jr_089_4a13:
	add  b                                           ; $4a13: $80
	ld   b, e                                        ; $4a14: $43
	add  b                                           ; $4a15: $80
	rlca                                             ; $4a16: $07
	rrca                                             ; $4a17: $0f
	ld   c, $0f                                      ; $4a18: $0e $0f
	inc  e                                           ; $4a1a: $1c
	rra                                              ; $4a1b: $1f
	jr   c, jr_089_4a5c                              ; $4a1c: $38 $3e

	ld   [hl], b                                     ; $4a1e: $70
	ld   a, h                                        ; $4a1f: $7c
	ld   h, b                                        ; $4a20: $60
	ld   a, b                                        ; $4a21: $78
	ld   b, b                                        ; $4a22: $40
	ldh  a, [rP1]                                    ; $4a23: $f0 $00
	ldh  [rP1], a                                    ; $4a25: $e0 $00
	ld   b, b                                        ; $4a27: $40
	add  e                                           ; $4a28: $83
	nop                                              ; $4a29: $00
	inc  c                                           ; $4a2a: $0c
	inc  b                                           ; $4a2b: $04
	ld   [hl], b                                     ; $4a2c: $70
	ld   a, h                                        ; $4a2d: $7c
	ldh  [$f8], a                                    ; $4a2e: $e0 $f8
	ret  nz                                          ; $4a30: $c0

	ldh  a, [$80]                                    ; $4a31: $f0 $80
	ldh  [rP1], a                                    ; $4a33: $e0 $00
	ret  nz                                          ; $4a35: $c0

	nop                                              ; $4a36: $00
	add  b                                           ; $4a37: $80
	rst  $38                                         ; $4a38: $ff
	nop                                              ; $4a39: $00
	rst  $38                                         ; $4a3a: $ff
	nop                                              ; $4a3b: $00
	rst  $38                                         ; $4a3c: $ff
	nop                                              ; $4a3d: $00
	rst  $38                                         ; $4a3e: $ff
	nop                                              ; $4a3f: $00
	rst  $38                                         ; $4a40: $ff
	nop                                              ; $4a41: $00
	xor  h                                           ; $4a42: $ac
	nop                                              ; $4a43: $00
	call z, $a200                                    ; $4a44: $cc $00 $a2
	nop                                              ; $4a47: $00
	add  b                                           ; $4a48: $80

jr_089_4a49:
	ld   bc, $0780                                   ; $4a49: $01 $80 $07
	add  b                                           ; $4a4c: $80
	ld   [$1084], sp                                 ; $4a4d: $08 $84 $10
	add  b                                           ; $4a50: $80
	ld   a, b                                        ; $4a51: $78
	add  b                                           ; $4a52: $80
	adc  l                                           ; $4a53: $8d
	add  b                                           ; $4a54: $80
	ld   b, $80                                      ; $4a55: $06 $80
	inc  b                                           ; $4a57: $04
	add  d                                           ; $4a58: $82
	nop                                              ; $4a59: $00
	add  b                                           ; $4a5a: $80
	inc  bc                                          ; $4a5b: $03

jr_089_4a5c:
	add  b                                           ; $4a5c: $80
	inc  b                                           ; $4a5d: $04
	add  b                                           ; $4a5e: $80
	nop                                              ; $4a5f: $00
	add  b                                           ; $4a60: $80
	ret  nz                                          ; $4a61: $c0

	add  b                                           ; $4a62: $80
	jr   nz, jr_089_49e7                             ; $4a63: $20 $82

	db   $10                                         ; $4a65: $10
	add  b                                           ; $4a66: $80
	cp   h                                           ; $4a67: $bc
	add  b                                           ; $4a68: $80
	ld   h, d                                        ; $4a69: $62
	add  b                                           ; $4a6a: $80
	rra                                              ; $4a6b: $1f
	adc  h                                           ; $4a6c: $8c
	nop                                              ; $4a6d: $00
	add  b                                           ; $4a6e: $80
	ld   [hl], b                                     ; $4a6f: $70
	sbc  [hl]                                        ; $4a70: $9e
	nop                                              ; $4a71: $00
	add  d                                           ; $4a72: $82
	ld   [$1082], sp                                 ; $4a73: $08 $82 $10
	add  b                                           ; $4a76: $80
	inc  c                                           ; $4a77: $0c
	add  b                                           ; $4a78: $80
	rlca                                             ; $4a79: $07
	add  b                                           ; $4a7a: $80
	inc  b                                           ; $4a7b: $04
	add  b                                           ; $4a7c: $80
	dec  b                                           ; $4a7d: $05
	add  d                                           ; $4a7e: $82
	ld   [$0c82], sp                                 ; $4a7f: $08 $82 $0c
	add  b                                           ; $4a82: $80
	ld   [de], a                                     ; $4a83: $12
	add  [hl]                                        ; $4a84: $86
	jr   nz, jr_089_4a07                             ; $4a85: $20 $80

	nop                                              ; $4a87: $00
	add  b                                           ; $4a88: $80
	ld   b, c                                        ; $4a89: $41
	add  b                                           ; $4a8a: $80
	ld   h, b                                        ; $4a8b: $60
	add  b                                           ; $4a8c: $80
	jr   nz, jr_089_4a11                             ; $4a8d: $20 $82

	ld   b, b                                        ; $4a8f: $40
	add  b                                           ; $4a90: $80
	jr   nz, jr_089_4a13                             ; $4a91: $20 $80

	adc  b                                           ; $4a93: $88
	add  b                                           ; $4a94: $80
	db   $e4                                         ; $4a95: $e4
	add  b                                           ; $4a96: $80
	inc  d                                           ; $4a97: $14
	add  b                                           ; $4a98: $80
	inc  c                                           ; $4a99: $0c
	add  d                                           ; $4a9a: $82
	ld   a, [bc]                                     ; $4a9b: $0a
	add  b                                           ; $4a9c: $80
	ld   a, [de]                                     ; $4a9d: $1a
	add  b                                           ; $4a9e: $80
	ld   a, h                                        ; $4a9f: $7c
	sub  d                                           ; $4aa0: $92
	nop                                              ; $4aa1: $00
	add  b                                           ; $4aa2: $80
	inc  bc                                          ; $4aa3: $03
	add  b                                           ; $4aa4: $80
	inc  b                                           ; $4aa5: $04
	add  b                                           ; $4aa6: $80
	ld   [$1000], sp                                 ; $4aa7: $08 $00 $10
	add  b                                           ; $4aaa: $80
	inc  de                                          ; $4aab: $13
	nop                                              ; $4aac: $00
	rla                                              ; $4aad: $17
	add  b                                           ; $4aae: $80
	daa                                              ; $4aaf: $27
	ld   bc, $0a0d                                   ; $4ab0: $01 $0d $0a
	add  b                                           ; $4ab3: $80
	db   $f4                                         ; $4ab4: $f4
	add  b                                           ; $4ab5: $80
	add  hl, bc                                      ; $4ab6: $09
	add  b                                           ; $4ab7: $80
	ld   [bc], a                                     ; $4ab8: $02
	add  hl, bc                                      ; $4ab9: $09
	ld   a, [de]                                     ; $4aba: $1a
	ldh  [c], a                                      ; $4abb: $e2
	add  a                                           ; $4abc: $87
	add  c                                           ; $4abd: $81
	pop  bc                                          ; $4abe: $c1
	jp   $ccc0                                       ; $4abf: $c3 $c0 $cc


	and  b                                           ; $4ac2: $a0
	ld   d, b                                        ; $4ac3: $50

jr_089_4ac4:
	add  b                                           ; $4ac4: $80
	ldh  a, [$80]                                    ; $4ac5: $f0 $80
	jr   nz, jr_089_4a49                             ; $4ac7: $20 $80

	ld   a, [de]                                     ; $4ac9: $1a
	add  b                                           ; $4aca: $80
	dec  d                                           ; $4acb: $15
	add  b                                           ; $4acc: $80
	dec  de                                          ; $4acd: $1b
	add  b                                           ; $4ace: $80
	di                                               ; $4acf: $f3
	ld   [bc], a                                     ; $4ad0: $02
	ld   [hl], $34                                   ; $4ad1: $36 $34
	ld   [bc], a                                     ; $4ad3: $02
	add  c                                           ; $4ad4: $81
	nop                                              ; $4ad5: $00
	add  b                                           ; $4ad6: $80
	inc  b                                           ; $4ad7: $04
	add  b                                           ; $4ad8: $80
	inc  bc                                          ; $4ad9: $03
	add  b                                           ; $4ada: $80
	ldh  [$80], a                                    ; $4adb: $e0 $80
	ld   a, h                                        ; $4add: $7c
	add  b                                           ; $4ade: $80
	xor  e                                           ; $4adf: $ab
	add  b                                           ; $4ae0: $80
	ld   d, b                                        ; $4ae1: $50
	add  b                                           ; $4ae2: $80
	inc  l                                           ; $4ae3: $2c
	add  b                                           ; $4ae4: $80
	ld   l, b                                        ; $4ae5: $68
	add  b                                           ; $4ae6: $80
	ld   hl, sp-$80                                  ; $4ae7: $f8 $80
	sub  b                                           ; $4ae9: $90
	add  b                                           ; $4aea: $80
	ld   d, b                                        ; $4aeb: $50
	add  b                                           ; $4aec: $80
	ldh  [$8a], a                                    ; $4aed: $e0 $8a
	nop                                              ; $4aef: $00
	add  d                                           ; $4af0: $82
	ld   bc, $0200                                   ; $4af1: $01 $00 $02
	add  c                                           ; $4af4: $81
	inc  bc                                          ; $4af5: $03
	ld   [$6f61], sp                                 ; $4af6: $08 $61 $6f
	ld   c, a                                        ; $4af9: $4f

jr_089_4afa:
	ld   [hl], a                                     ; $4afa: $77
	or   a                                           ; $4afb: $b7
	ei                                               ; $4afc: $fb
	ld   a, [$7cfe]                                  ; $4afd: $fa $fe $7c

jr_089_4b00:
	add  c                                           ; $4b00: $81
	db   $fc                                         ; $4b01: $fc
	add  hl, de                                      ; $4b02: $19
	ld   hl, sp-$07                                  ; $4b03: $f8 $f9
	push af                                          ; $4b05: $f5
	pop  af                                          ; $4b06: $f1
	adc  d                                           ; $4b07: $8a
	sub  b                                           ; $4b08: $90
	nop                                              ; $4b09: $00
	inc  hl                                          ; $4b0a: $23
	ld   [hl+], a                                    ; $4b0b: $22
	ld   l, $0e                                      ; $4b0c: $2e $0e
	ld   e, [hl]                                     ; $4b0e: $5e
	ld   e, a                                        ; $4b0f: $5f
	ld   a, a                                        ; $4b10: $7f
	ld   a, $fe                                      ; $4b11: $3e $fe
	ld   a, h                                        ; $4b13: $7c
	db   $fc                                         ; $4b14: $fc

jr_089_4b15:
	cp   $fc                                         ; $4b15: $fe $fc
	ldh  a, [c]                                      ; $4b17: $f2
	ld   [$09c9], sp                                 ; $4b18: $08 $c9 $09
	ei                                               ; $4b1b: $fb
	res  0, b                                        ; $4b1c: $cb $80
	rrca                                             ; $4b1e: $0f
	nop                                              ; $4b1f: $00
	rlca                                             ; $4b20: $07
	add  c                                           ; $4b21: $81

jr_089_4b22:
	rra                                              ; $4b22: $1f
	ld   bc, $3e0e                                   ; $4b23: $01 $0e $3e

jr_089_4b26:
	add  b                                           ; $4b26: $80
	inc  a                                           ; $4b27: $3c
	inc  b                                           ; $4b28: $04
	rst  $28                                         ; $4b29: $ef
	jr   nc, jr_089_4ac4                             ; $4b2a: $30 $98

	jr   jr_089_4b26                                 ; $4b2c: $18 $f8

	add  c                                           ; $4b2e: $81
	adc  b                                           ; $4b2f: $88
	add  b                                           ; $4b30: $80
	ld   [$8006], sp                                 ; $4b31: $08 $06 $80
	db   $10                                         ; $4b34: $10
	ret  nc                                          ; $4b35: $d0

	db   $10                                         ; $4b36: $10
	ld   b, b                                        ; $4b37: $40
	jr   nz, jr_089_4afa                             ; $4b38: $20 $c0

	adc  l                                           ; $4b3a: $8d
	nop                                              ; $4b3b: $00
	nop                                              ; $4b3c: $00
	inc  b                                           ; $4b3d: $04
	add  c                                           ; $4b3e: $81
	rlca                                             ; $4b3f: $07
	nop                                              ; $4b40: $00
	dec  bc                                          ; $4b41: $0b
	add  c                                           ; $4b42: $81
	rrca                                             ; $4b43: $0f
	nop                                              ; $4b44: $00
	rla                                              ; $4b45: $17
	add  c                                           ; $4b46: $81
	rra                                              ; $4b47: $1f
	inc  b                                           ; $4b48: $04
	cpl                                              ; $4b49: $2f
	ld   a, $3f                                      ; $4b4a: $3e $3f
	ld   a, $01                                      ; $4b4c: $3e $01
	add  b                                           ; $4b4e: $80
	and  e                                           ; $4b4f: $a3
	rra                                              ; $4b50: $1f
	jp   $c7f1                                       ; $4b51: $c3 $f1 $c7


	rst  $10                                         ; $4b54: $d7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b55: $cf
	res  1, a                                        ; $4b56: $cb $8f
	ld   l, a                                        ; $4b58: $6f
	rra                                              ; $4b59: $1f
	scf                                              ; $4b5a: $37
	rra                                              ; $4b5b: $1f
	sbc  a                                           ; $4b5c: $9f
	ld   a, $48                                      ; $4b5d: $3e $48
	ld   hl, sp-$0f                                  ; $4b5f: $f8 $f1
	ldh  a, [$e8]                                    ; $4b61: $f0 $e8
	pop  hl                                          ; $4b63: $e1
	db   $ed                                         ; $4b64: $ed
	pop  hl                                          ; $4b65: $e1
	add  h                                           ; $4b66: $84
	add  e                                           ; $4b67: $83
	add  c                                           ; $4b68: $81
	add  a                                           ; $4b69: $87
	inc  hl                                          ; $4b6a: $23
	rrca                                             ; $4b6b: $0f
	ld   h, $1e                                      ; $4b6c: $26 $1e
	add  hl, hl                                      ; $4b6e: $29
	ld   a, b                                        ; $4b6f: $78
	ld   sp, $f080                                   ; $4b70: $31 $80 $f0
	ld   c, $e1                                      ; $4b73: $0e $e1
	ld   e, b                                        ; $4b75: $58
	jp   nz, $8488                                   ; $4b76: $c2 $88 $84

	jr   nz, jr_089_4b83                             ; $4b79: $20 $08

	jr   nz, jr_089_4b8d                             ; $4b7b: $20 $10

	add  b                                           ; $4b7d: $80
	jr   nz, jr_089_4b00                             ; $4b7e: $20 $80

	ld   b, b                                        ; $4b80: $40
	nop                                              ; $4b81: $00
	add  b                                           ; $4b82: $80

jr_089_4b83:
	sbc  d                                           ; $4b83: $9a
	nop                                              ; $4b84: $00
	add  hl, bc                                      ; $4b85: $09
	inc  hl                                          ; $4b86: $23
	inc  a                                           ; $4b87: $3c
	ld   d, b                                        ; $4b88: $50
	ld   [hl], b                                     ; $4b89: $70
	ld   b, b                                        ; $4b8a: $40
	ld   b, c                                        ; $4b8b: $41
	ld   b, b                                        ; $4b8c: $40

jr_089_4b8d:
	ld   b, [hl]                                     ; $4b8d: $46
	nop                                              ; $4b8e: $00
	jr   c, jr_089_4b15                              ; $4b8f: $38 $84

	nop                                              ; $4b91: $00
	dec  bc                                          ; $4b92: $0b
	db   $e3                                         ; $4b93: $e3
	ld   a, h                                        ; $4b94: $7c
	inc  a                                           ; $4b95: $3c
	cp   h                                           ; $4b96: $bc
	ld   e, d                                        ; $4b97: $5a
	ld   a, b                                        ; $4b98: $78
	ld   d, d                                        ; $4b99: $52
	ld   d, c                                        ; $4b9a: $51
	ld   b, b                                        ; $4b9b: $40
	ld   b, [hl]                                     ; $4b9c: $46
	nop                                              ; $4b9d: $00
	jr   c, jr_089_4b22                              ; $4b9e: $38 $82

	nop                                              ; $4ba0: $00
	dec  c                                           ; $4ba1: $0d
	ld   h, e                                        ; $4ba2: $63
	inc  a                                           ; $4ba3: $3c
	sbc  b                                           ; $4ba4: $98
	ld   a, b                                        ; $4ba5: $78
	ld   [hl], b                                     ; $4ba6: $70
	pop  af                                          ; $4ba7: $f1
	and  b                                           ; $4ba8: $a0
	ldh  [c], a                                      ; $4ba9: $e2
	add  b                                           ; $4baa: $80
	add  h                                           ; $4bab: $84
	add  b                                           ; $4bac: $80
	sbc  b                                           ; $4bad: $98
	nop                                              ; $4bae: $00
	ld   h, b                                        ; $4baf: $60
	add  b                                           ; $4bb0: $80
	nop                                              ; $4bb1: $00
	inc  bc                                          ; $4bb2: $03
	ret  nz                                          ; $4bb3: $c0

	ld   b, b                                        ; $4bb4: $40
	nop                                              ; $4bb5: $00
	add  b                                           ; $4bb6: $80
	di                                               ; $4bb7: $f3
	nop                                              ; $4bb8: $00
	add  b                                           ; $4bb9: $80
	ld   bc, $0780                                   ; $4bba: $01 $80 $07
	nop                                              ; $4bbd: $00
	rrca                                             ; $4bbe: $0f
	add  b                                           ; $4bbf: $80
	inc  c                                           ; $4bc0: $0c
	ld   bc, $060e                                   ; $4bc1: $01 $0e $06
	add  b                                           ; $4bc4: $80
	rlca                                             ; $4bc5: $07
	ld   bc, $0e06                                   ; $4bc6: $01 $06 $0e
	add  b                                           ; $4bc9: $80
	rrca                                             ; $4bca: $0f
	ld   [bc], a                                     ; $4bcb: $02
	ld   c, $02                                      ; $4bcc: $0e $02
	inc  bc                                          ; $4bce: $03
	add  b                                           ; $4bcf: $80
	nop                                              ; $4bd0: $00
	add  d                                           ; $4bd1: $82
	ld   [bc], a                                     ; $4bd2: $02
	add  b                                           ; $4bd3: $80
	nop                                              ; $4bd4: $00
	add  b                                           ; $4bd5: $80
	ld   [hl], b                                     ; $4bd6: $70
	inc  b                                           ; $4bd7: $04
	ld   a, c                                        ; $4bd8: $79
	ld   [hl], c                                     ; $4bd9: $71
	di                                               ; $4bda: $f3
	db   $ed                                         ; $4bdb: $ed
	jp   hl                                          ; $4bdc: $e9


	add  b                                           ; $4bdd: $80
	ld   a, b                                        ; $4bde: $78
	dec  b                                           ; $4bdf: $05
	ld   [hl], e                                     ; $4be0: $73
	ld   [hl], b                                     ; $4be1: $70
	inc  [hl]                                        ; $4be2: $34
	ld   [hl-], a                                    ; $4be3: $32
	ld   c, $03                                      ; $4be4: $0e $03
	add  b                                           ; $4be6: $80
	jp   $e701                                       ; $4be7: $c3 $01 $e7


	db   $e3                                         ; $4bea: $e3
	add  b                                           ; $4beb: $80
	ld   b, b                                        ; $4bec: $40
	inc  bc                                          ; $4bed: $03
	ld   [de], a                                     ; $4bee: $12
	inc  c                                           ; $4bef: $0c
	xor  l                                           ; $4bf0: $ad
	sbc  a                                           ; $4bf1: $9f
	add  d                                           ; $4bf2: $82
	dec  e                                           ; $4bf3: $1d
	nop                                              ; $4bf4: $00
	rst  JumpTable                                         ; $4bf5: $df
	add  c                                           ; $4bf6: $81
	nop                                              ; $4bf7: $00
	inc  bc                                          ; $4bf8: $03
	ret  nz                                          ; $4bf9: $c0

	nop                                              ; $4bfa: $00
	and  b                                           ; $4bfb: $a0
	add  b                                           ; $4bfc: $80
	add  b                                           ; $4bfd: $80
	nop                                              ; $4bfe: $00
	ld   [bc], a                                     ; $4bff: $02
	and  b                                           ; $4c00: $a0
	nop                                              ; $4c01: $00
	ld   b, b                                        ; $4c02: $40
	add  b                                           ; $4c03: $80
	sbc  h                                           ; $4c04: $9c
	add  b                                           ; $4c05: $80
	ldh  [$80], a                                    ; $4c06: $e0 $80
	rst  JumpTable                                         ; $4c08: $df
	ld   [$7bff], sp                                 ; $4c09: $08 $ff $7b
	ld   a, [hl-]                                    ; $4c0c: $3a
	ld   [hl-], a                                    ; $4c0d: $32
	inc  de                                          ; $4c0e: $13
	ld   d, [hl]                                     ; $4c0f: $56
	ld   d, $52                                      ; $4c10: $16 $52
	ld   [hl-], a                                    ; $4c12: $32
	add  c                                           ; $4c13: $81
	or   b                                           ; $4c14: $b0
	ld   bc, $dfd0                                   ; $4c15: $01 $d0 $df
	adc  l                                           ; $4c18: $8d

jr_089_4c19:
	nop                                              ; $4c19: $00
	db   $10                                         ; $4c1a: $10
	jr   nc, jr_089_4c1d                             ; $4c1b: $30 $00

jr_089_4c1d:
	jr   z, jr_089_4c1f                              ; $4c1d: $28 $00

jr_089_4c1f:
	db   $10                                         ; $4c1f: $10
	ldh  [$e8], a                                    ; $4c20: $e0 $e8
	or   b                                           ; $4c22: $b0
	and  h                                           ; $4c23: $a4
	and  b                                           ; $4c24: $a0
	nop                                              ; $4c25: $00
	ld   b, b                                        ; $4c26: $40
	stop                                             ; $4c27: $10 $00
	ld   h, h                                        ; $4c29: $64
	nop                                              ; $4c2a: $00
	add  b                                           ; $4c2b: $80
	xor  a                                           ; $4c2c: $af
	nop                                              ; $4c2d: $00
	add  b                                           ; $4c2e: $80

jr_089_4c2f:
	ld   [$0480], sp                                 ; $4c2f: $08 $80 $04
	add  [hl]                                        ; $4c32: $86
	nop                                              ; $4c33: $00
	add  b                                           ; $4c34: $80
	inc  b                                           ; $4c35: $04
	add  hl, bc                                      ; $4c36: $09
	ld   bc, $0604                                   ; $4c37: $01 $04 $06
	ld   [$302d], sp                                 ; $4c3a: $08 $2d $30
	ld   a, [bc]                                     ; $4c3d: $0a
	jr   jr_089_4c40                                 ; $4c3e: $18 $00

jr_089_4c40:
	inc  b                                           ; $4c40: $04

jr_089_4c41:
	sub  d                                           ; $4c41: $92
	nop                                              ; $4c42: $00
	add  b                                           ; $4c43: $80
	ld   [bc], a                                     ; $4c44: $02
	inc  de                                          ; $4c45: $13
	xor  a                                           ; $4c46: $af
	nop                                              ; $4c47: $00
	and  b                                           ; $4c48: $a0
	nop                                              ; $4c49: $00
	stop                                             ; $4c4a: $10 $00
	rra                                              ; $4c4c: $1f
	dec  b                                           ; $4c4d: $05
	rlca                                             ; $4c4e: $07
	ld   [$000e], sp                                 ; $4c4f: $08 $0e $00
	ld   [$8500], sp                                 ; $4c52: $08 $00 $85
	pop  bc                                          ; $4c55: $c1
	jr   c, jr_089_4cb8                              ; $4c56: $38 $60

	jr   nz, @+$32                                   ; $4c58: $20 $30

	adc  d                                           ; $4c5a: $8a
	nop                                              ; $4c5b: $00
	ld   bc, $d926                                   ; $4c5c: $01 $26 $d9
	add  b                                           ; $4c5f: $80
	ldh  [rIF], a                                    ; $4c60: $e0 $0f
	inc  b                                           ; $4c62: $04
	nop                                              ; $4c63: $00
	rlca                                             ; $4c64: $07
	nop                                              ; $4c65: $00
	db   $e3                                         ; $4c66: $e3
	nop                                              ; $4c67: $00
	inc  e                                           ; $4c68: $1c
	nop                                              ; $4c69: $00
	inc  de                                          ; $4c6a: $13
	ld   b, b                                        ; $4c6b: $40
	ldh  a, [$80]                                    ; $4c6c: $f0 $80
	ldh  [$80], a                                    ; $4c6e: $e0 $80
	jr   nz, @+$62                                   ; $4c70: $20 $60

	add  h                                           ; $4c72: $84
	nop                                              ; $4c73: $00
	add  b                                           ; $4c74: $80

jr_089_4c75:
	add  b                                           ; $4c75: $80
	add  b                                           ; $4c76: $80
	ld   b, b                                        ; $4c77: $40
	add  b                                           ; $4c78: $80
	nop                                              ; $4c79: $00
	ld   a, [bc]                                     ; $4c7a: $0a
	ret  nc                                          ; $4c7b: $d0

	nop                                              ; $4c7c: $00
	ld   b, b                                        ; $4c7d: $40
	nop                                              ; $4c7e: $00
	sub  b                                           ; $4c7f: $90
	nop                                              ; $4c80: $00
	ld   h, b                                        ; $4c81: $60
	nop                                              ; $4c82: $00
	ret  nz                                          ; $4c83: $c0

	nop                                              ; $4c84: $00
	and  b                                           ; $4c85: $a0
	sbc  a                                           ; $4c86: $9f
	nop                                              ; $4c87: $00
	add  b                                           ; $4c88: $80
	ld   bc, $0090                                   ; $4c89: $01 $90 $00
	add  b                                           ; $4c8c: $80
	ld   b, b                                        ; $4c8d: $40
	add  b                                           ; $4c8e: $80
	jr   nz, @-$7e                                   ; $4c8f: $20 $80

	db   $10                                         ; $4c91: $10
	add  b                                           ; $4c92: $80
	nop                                              ; $4c93: $00
	add  b                                           ; $4c94: $80
	ld   b, b                                        ; $4c95: $40
	add  b                                           ; $4c96: $80
	jr   nz, jr_089_4c19                             ; $4c97: $20 $80

	nop                                              ; $4c99: $00
	add  b                                           ; $4c9a: $80
	add  c                                           ; $4c9b: $81
	add  d                                           ; $4c9c: $82
	nop                                              ; $4c9d: $00
	add  b                                           ; $4c9e: $80
	ld   [bc], a                                     ; $4c9f: $02
	adc  b                                           ; $4ca0: $88
	nop                                              ; $4ca1: $00
	add  b                                           ; $4ca2: $80
	ld   bc, $0080                                   ; $4ca3: $01 $80 $00
	add  b                                           ; $4ca6: $80
	ld   [$0480], sp                                 ; $4ca7: $08 $80 $04
	add  d                                           ; $4caa: $82
	nop                                              ; $4cab: $00
	add  b                                           ; $4cac: $80
	jr   nz, jr_089_4c2f                             ; $4cad: $20 $80

	nop                                              ; $4caf: $00
	add  b                                           ; $4cb0: $80
	add  b                                           ; $4cb1: $80
	adc  h                                           ; $4cb2: $8c
	nop                                              ; $4cb3: $00
	add  b                                           ; $4cb4: $80
	ld   bc, $0080                                   ; $4cb5: $01 $80 $00

jr_089_4cb8:
	add  b                                           ; $4cb8: $80
	db   $10                                         ; $4cb9: $10
	add  b                                           ; $4cba: $80
	ld   [$0080], sp                                 ; $4cbb: $08 $80 $00
	add  b                                           ; $4cbe: $80
	jr   nz, jr_089_4c41                             ; $4cbf: $20 $80

	nop                                              ; $4cc1: $00
	add  b                                           ; $4cc2: $80
	add  b                                           ; $4cc3: $80
	rst  $38                                         ; $4cc4: $ff
	nop                                              ; $4cc5: $00
	rst  $38                                         ; $4cc6: $ff
	nop                                              ; $4cc7: $00
	rst  $38                                         ; $4cc8: $ff
	nop                                              ; $4cc9: $00
	rst  $38                                         ; $4cca: $ff
	nop                                              ; $4ccb: $00
	rst  $38                                         ; $4ccc: $ff
	nop                                              ; $4ccd: $00
	ret                                              ; $4cce: $c9


	nop                                              ; $4ccf: $00
	dec  bc                                          ; $4cd0: $0b
	ld   bc, $008a                                   ; $4cd1: $01 $8a $00
	add  b                                           ; $4cd4: $80
	rrca                                             ; $4cd5: $0f
	add  b                                           ; $4cd6: $80
	db   $10                                         ; $4cd7: $10
	adc  d                                           ; $4cd8: $8a
	nop                                              ; $4cd9: $00
	add  b                                           ; $4cda: $80
	rst  $38                                         ; $4cdb: $ff
	add  b                                           ; $4cdc: $80
	ld   [$008a], sp                                 ; $4cdd: $08 $8a $00
	add  b                                           ; $4ce0: $80
	rst  $38                                         ; $4ce1: $ff
	add  b                                           ; $4ce2: $80
	ld   bc, $008a                                   ; $4ce3: $01 $8a $00
	add  b                                           ; $4ce6: $80
	rst  $38                                         ; $4ce7: $ff
	adc  h                                           ; $4ce8: $8c
	nop                                              ; $4ce9: $00
	add  b                                           ; $4cea: $80
	rst  $38                                         ; $4ceb: $ff
	adc  h                                           ; $4cec: $8c
	nop                                              ; $4ced: $00
	add  b                                           ; $4cee: $80
	ldh  [$80], a                                    ; $4cef: $e0 $80
	db   $10                                         ; $4cf1: $10
	add  b                                           ; $4cf2: $80
	jr   nz, jr_089_4c75                             ; $4cf3: $20 $80

	daa                                              ; $4cf5: $27
	nop                                              ; $4cf6: $00
	inc  h                                           ; $4cf7: $24
	add  e                                           ; $4cf8: $83
	daa                                              ; $4cf9: $27
	add  b                                           ; $4cfa: $80
	ld   h, $82                                      ; $4cfb: $26 $82
	daa                                              ; $4cfd: $27
	ld   bc, $1013                                   ; $4cfe: $01 $13 $10
	add  b                                           ; $4d01: $80
	di                                               ; $4d02: $f3
	nop                                              ; $4d03: $00
	inc  de                                          ; $4d04: $13
	add  l                                           ; $4d05: $85
	di                                               ; $4d06: $f3
	add  b                                           ; $4d07: $80
	inc  sp                                          ; $4d08: $33
	add  b                                           ; $4d09: $80
	inc  de                                          ; $4d0a: $13
	ld   bc, $02e2                                   ; $4d0b: $01 $e2 $02
	add  d                                           ; $4d0e: $82
	cp   $80                                         ; $4d0f: $fe $80
	ldh  [c], a                                      ; $4d11: $e2
	add  b                                           ; $4d12: $80
	jp   nz, $f280                                   ; $4d13: $c2 $80 $f2

	add  d                                           ; $4d16: $82
	cp   $80                                         ; $4d17: $fe $80
	nop                                              ; $4d19: $00
	add  b                                           ; $4d1a: $80
	ld   a, a                                        ; $4d1b: $7f
	dec  c                                           ; $4d1c: $0d
	ld   b, e                                        ; $4d1d: $43
	ld   a, a                                        ; $4d1e: $7f
	ld   e, l                                        ; $4d1f: $5d
	ld   a, a                                        ; $4d20: $7f
	ld   c, [hl]                                     ; $4d21: $4e
	ld   a, a                                        ; $4d22: $7f
	ld   h, l                                        ; $4d23: $65
	ld   a, a                                        ; $4d24: $7f
	ld   [hl], c                                     ; $4d25: $71
	ld   a, a                                        ; $4d26: $7f
	ld   a, e                                        ; $4d27: $7b
	ld   a, a                                        ; $4d28: $7f
	ccf                                              ; $4d29: $3f
	nop                                              ; $4d2a: $00
	add  b                                           ; $4d2b: $80
	rst  $38                                         ; $4d2c: $ff
	dec  c                                           ; $4d2d: $0d
	ld   b, h                                        ; $4d2e: $44
	rst  $38                                         ; $4d2f: $ff
	di                                               ; $4d30: $f3
	rst  $38                                         ; $4d31: $ff
	and  a                                           ; $4d32: $a7
	rst  $38                                         ; $4d33: $ff
	xor  $ff                                         ; $4d34: $ee $ff
	ld   hl, sp-$01                                  ; $4d36: $f8 $ff
	ld   sp, hl                                      ; $4d38: $f9
	rst  $38                                         ; $4d39: $ff
	rst  $30                                         ; $4d3a: $f7
	ld   [$c880], sp                                 ; $4d3b: $08 $80 $c8
	nop                                              ; $4d3e: $00
	ld   c, b                                        ; $4d3f: $48
	add  c                                           ; $4d40: $81
	ret  z                                           ; $4d41: $c8

	ld   [bc], a                                     ; $4d42: $02
	ld   c, b                                        ; $4d43: $48
	ret  z                                           ; $4d44: $c8

	ld   c, b                                        ; $4d45: $48
	add  e                                           ; $4d46: $83
	ret  z                                           ; $4d47: $c8

	nop                                              ; $4d48: $00
	and  h                                           ; $4d49: $a4
	add  c                                           ; $4d4a: $81
	daa                                              ; $4d4b: $27
	add  b                                           ; $4d4c: $80
	ld   h, $82                                      ; $4d4d: $26 $82
	daa                                              ; $4d4f: $27
	add  b                                           ; $4d50: $80
	inc  h                                           ; $4d51: $24
	add  d                                           ; $4d52: $82
	daa                                              ; $4d53: $27
	ld   bc, $9271                                   ; $4d54: $01 $71 $92
	add  d                                           ; $4d57: $82
	jp   nc, $1380                                   ; $4d58: $d2 $80 $13

	add  b                                           ; $4d5b: $80
	sub  e                                           ; $4d5c: $93
	add  b                                           ; $4d5d: $80
	inc  de                                          ; $4d5e: $13
	add  d                                           ; $4d5f: $82
	sub  e                                           ; $4d60: $93
	ld   bc, $7e9e                                   ; $4d61: $01 $9e $7e
	add  b                                           ; $4d64: $80
	ld   c, $80                                      ; $4d65: $0e $80
	ld   e, $82                                      ; $4d67: $1e $82
	cp   $80                                         ; $4d69: $fe $80
	ld   a, [$8280]                                  ; $4d6b: $fa $80 $82
	add  b                                           ; $4d6e: $80
	ldh  [c], a                                      ; $4d6f: $e2
	nop                                              ; $4d70: $00
	ld   b, b                                        ; $4d71: $40
	adc  l                                           ; $4d72: $8d
	ld   a, a                                        ; $4d73: $7f
	inc  d                                           ; $4d74: $14
	ccf                                              ; $4d75: $3f
	rst  $38                                         ; $4d76: $ff
	db   $fc                                         ; $4d77: $fc
	rst  $38                                         ; $4d78: $ff
	ld   hl, sp-$01                                  ; $4d79: $f8 $ff
	ei                                               ; $4d7b: $fb
	rst  $38                                         ; $4d7c: $ff
	ei                                               ; $4d7d: $fb
	rst  $38                                         ; $4d7e: $ff
	cp   c                                           ; $4d7f: $b9
	rst  $38                                         ; $4d80: $ff
	db   $fc                                         ; $4d81: $fc
	rst  $38                                         ; $4d82: $ff
	cp   $ff                                         ; $4d83: $fe $ff
	rst  $30                                         ; $4d85: $f7
	ret  z                                           ; $4d86: $c8

	ld   c, b                                        ; $4d87: $48
	ret  z                                           ; $4d88: $c8

	ld   c, b                                        ; $4d89: $48
	add  a                                           ; $4d8a: $87
	ret  z                                           ; $4d8b: $c8

	inc  bc                                          ; $4d8c: $03
	ld   c, b                                        ; $4d8d: $48
	ret  z                                           ; $4d8e: $c8

	inc  h                                           ; $4d8f: $24
	daa                                              ; $4d90: $27
	add  b                                           ; $4d91: $80
	ld   h, $86                                      ; $4d92: $26 $86
	daa                                              ; $4d94: $27
	add  b                                           ; $4d95: $80
	ld   h, $80                                      ; $4d96: $26 $80
	daa                                              ; $4d98: $27
	ld   bc, $13f0                                   ; $4d99: $01 $f0 $13
	add  d                                           ; $4d9c: $82
	db   $d3                                         ; $4d9d: $d3
	add  b                                           ; $4d9e: $80
	sub  e                                           ; $4d9f: $93
	add  b                                           ; $4da0: $80
	inc  de                                          ; $4da1: $13
	add  b                                           ; $4da2: $80
	ld   [hl-], a                                    ; $4da3: $32
	add  b                                           ; $4da4: $80
	ldh  a, [c]                                      ; $4da5: $f2
	add  b                                           ; $4da6: $80
	di                                               ; $4da7: $f3
	nop                                              ; $4da8: $00
	ld   e, $85                                      ; $4da9: $1e $85
	cp   $80                                         ; $4dab: $fe $80
	ld   c, $80                                      ; $4dad: $0e $80
	ld   [bc], a                                     ; $4daf: $02
	add  b                                           ; $4db0: $80
	ld   [hl-], a                                    ; $4db1: $32
	add  b                                           ; $4db2: $80
	cp   $01                                         ; $4db3: $fe $01
	ld   h, b                                        ; $4db5: $60
	ld   e, a                                        ; $4db6: $5f
	add  b                                           ; $4db7: $80
	ld   c, c                                        ; $4db8: $49
	nop                                              ; $4db9: $00
	ld   b, b                                        ; $4dba: $40
	add  b                                           ; $4dbb: $80
	ld   b, h                                        ; $4dbc: $44
	add  b                                           ; $4dbd: $80
	ld   h, d                                        ; $4dbe: $62
	add  b                                           ; $4dbf: $80
	ld   [hl], e                                     ; $4dc0: $73
	add  b                                           ; $4dc1: $80
	ld   [hl], c                                     ; $4dc2: $71
	add  b                                           ; $4dc3: $80
	ld   e, b                                        ; $4dc4: $58
	ld   [bc], a                                     ; $4dc5: $02
	ld   b, [hl]                                     ; $4dc6: $46
	ld   a, b                                        ; $4dc7: $78
	cp   $80                                         ; $4dc8: $fe $80
	ld   hl, sp-$80                                  ; $4dca: $f8 $80
	ld   h, b                                        ; $4dcc: $60
	ld   bc, $3878                                   ; $4dcd: $01 $78 $38
	add  c                                           ; $4dd0: $81
	add  b                                           ; $4dd1: $80
	ld   bc, $1c9c                                   ; $4dd2: $01 $9c $1c
	add  b                                           ; $4dd5: $80
	ld   h, b                                        ; $4dd6: $60
	ld   bc, $3304                                   ; $4dd7: $01 $04 $33
	adc  d                                           ; $4dda: $8a
	ld   c, b                                        ; $4ddb: $48
	add  b                                           ; $4ddc: $80
	ret  z                                           ; $4ddd: $c8

	inc  b                                           ; $4dde: $04
	ld   c, b                                        ; $4ddf: $48
	and  h                                           ; $4de0: $a4
	daa                                              ; $4de1: $27
	inc  h                                           ; $4de2: $24
	daa                                              ; $4de3: $27
	add  b                                           ; $4de4: $80
	inc  h                                           ; $4de5: $24
	add  b                                           ; $4de6: $80
	dec  h                                           ; $4de7: $25
	add  d                                           ; $4de8: $82
	inc  h                                           ; $4de9: $24
	add  b                                           ; $4dea: $80
	daa                                              ; $4deb: $27
	add  b                                           ; $4dec: $80
	jr   nz, jr_089_4df2                             ; $4ded: $20 $03

	inc  de                                          ; $4def: $13
	di                                               ; $4df0: $f3
	inc  de                                          ; $4df1: $13

jr_089_4df2:
	di                                               ; $4df2: $f3
	add  b                                           ; $4df3: $80
	ld   [de], a                                     ; $4df4: $12
	add  b                                           ; $4df5: $80
	or   d                                           ; $4df6: $b2
	add  b                                           ; $4df7: $80
	jp   nc, $1280                                   ; $4df8: $d2 $80 $12

	add  b                                           ; $4dfb: $80
	di                                               ; $4dfc: $f3
	add  b                                           ; $4dfd: $80
	db   $10                                         ; $4dfe: $10
	add  d                                           ; $4dff: $82
	cp   $80                                         ; $4e00: $fe $80
	ld   [bc], a                                     ; $4e02: $02
	add  b                                           ; $4e03: $80
	xor  [hl]                                        ; $4e04: $ae
	add  b                                           ; $4e05: $80
	jp   c, $0280                                    ; $4e06: $da $80 $02

	add  b                                           ; $4e09: $80
	cp   $80                                         ; $4e0a: $fe $80
	ld   [bc], a                                     ; $4e0c: $02
	nop                                              ; $4e0d: $00
	ld   a, a                                        ; $4e0e: $7f
	add  b                                           ; $4e0f: $80
	ld   b, b                                        ; $4e10: $40
	nop                                              ; $4e11: $00
	ld   a, a                                        ; $4e12: $7f
	add  b                                           ; $4e13: $80

jr_089_4e14:
	ld   b, b                                        ; $4e14: $40
	add  b                                           ; $4e15: $80
	ld   b, a                                        ; $4e16: $47
	add  b                                           ; $4e17: $80
	ld   b, d                                        ; $4e18: $42
	add  b                                           ; $4e19: $80
	ld   b, b                                        ; $4e1a: $40
	add  b                                           ; $4e1b: $80
	ld   a, a                                        ; $4e1c: $7f
	add  b                                           ; $4e1d: $80
	nop                                              ; $4e1e: $00
	inc  bc                                          ; $4e1f: $03
	push de                                          ; $4e20: $d5
	ld   a, [hl+]                                    ; $4e21: $2a
	nop                                              ; $4e22: $00
	rst  $38                                         ; $4e23: $ff
	add  b                                           ; $4e24: $80
	nop                                              ; $4e25: $00
	add  b                                           ; $4e26: $80
	ld   [hl+], a                                    ; $4e27: $22
	add  b                                           ; $4e28: $80
	ld   [$0080], a                                  ; $4e29: $ea $80 $00
	add  b                                           ; $4e2c: $80
	rst  $38                                         ; $4e2d: $ff
	add  b                                           ; $4e2e: $80
	nop                                              ; $4e2f: $00
	inc  bc                                          ; $4e30: $03
	ld   c, b                                        ; $4e31: $48
	ret  z                                           ; $4e32: $c8

	ld   c, b                                        ; $4e33: $48
	ret  z                                           ; $4e34: $c8

	add  [hl]                                        ; $4e35: $86
	ld   c, b                                        ; $4e36: $48
	add  b                                           ; $4e37: $80
	ret  z                                           ; $4e38: $c8

	add  b                                           ; $4e39: $80
	ld   [$1080], sp                                 ; $4e3a: $08 $80 $10
	add  b                                           ; $4e3d: $80
	rrca                                             ; $4e3e: $0f
	adc  d                                           ; $4e3f: $8a
	nop                                              ; $4e40: $00
	add  b                                           ; $4e41: $80
	ld   [$ff80], sp                                 ; $4e42: $08 $80 $ff
	adc  d                                           ; $4e45: $8a
	nop                                              ; $4e46: $00
	add  b                                           ; $4e47: $80
	ld   bc, $ff80                                   ; $4e48: $01 $80 $ff
	adc  h                                           ; $4e4b: $8c
	nop                                              ; $4e4c: $00
	add  b                                           ; $4e4d: $80
	rst  $38                                         ; $4e4e: $ff
	adc  h                                           ; $4e4f: $8c
	nop                                              ; $4e50: $00
	add  b                                           ; $4e51: $80
	rst  $38                                         ; $4e52: $ff
	adc  d                                           ; $4e53: $8a
	nop                                              ; $4e54: $00
	add  b                                           ; $4e55: $80
	db   $10                                         ; $4e56: $10
	add  b                                           ; $4e57: $80
	ldh  [$9f], a                                    ; $4e58: $e0 $9f
	nop                                              ; $4e5a: $00
	add  e                                           ; $4e5b: $83
	inc  bc                                          ; $4e5c: $03
	add  b                                           ; $4e5d: $80
	ld   [bc], a                                     ; $4e5e: $02
	add  e                                           ; $4e5f: $83

jr_089_4e60:
	inc  bc                                          ; $4e60: $03
	sub  c                                           ; $4e61: $91
	nop                                              ; $4e62: $00
	nop                                              ; $4e63: $00
	ld   bc, $e185                                   ; $4e64: $01 $85 $e1
	add  b                                           ; $4e67: $80
	ld   hl, $0180                                   ; $4e68: $21 $80 $01
	nop                                              ; $4e6b: $00
	ldh  [$91], a                                    ; $4e6c: $e0 $91
	nop                                              ; $4e6e: $00
	add  b                                           ; $4e6f: $80
	db   $fc                                         ; $4e70: $fc
	add  b                                           ; $4e71: $80
	ldh  [$80], a                                    ; $4e72: $e0 $80
	ret  nz                                          ; $4e74: $c0

jr_089_4e75:
	add  b                                           ; $4e75: $80
	ldh  a, [$82]                                    ; $4e76: $f0 $82
	db   $fc                                         ; $4e78: $fc
	sub  d                                           ; $4e79: $92
	nop                                              ; $4e7a: $00
	add  b                                           ; $4e7b: $80
	ld   [bc], a                                     ; $4e7c: $02
	add  b                                           ; $4e7d: $80
	ld   hl, $1080                                   ; $4e7e: $21 $80 $10
	add  b                                           ; $4e81: $80
	ld   a, [bc]                                     ; $4e82: $0a
	add  b                                           ; $4e83: $80
	inc  b                                           ; $4e84: $04
	sub  h                                           ; $4e85: $94
	nop                                              ; $4e86: $00
	add  b                                           ; $4e87: $80
	ld   b, h                                        ; $4e88: $44
	add  b                                           ; $4e89: $80
	ld   c, b                                        ; $4e8a: $48
	ld   b, $10                                      ; $4e8b: $06 $10
	ldh  a, [$e1]                                    ; $4e8d: $f0 $e1
	add  hl, sp                                      ; $4e8f: $39
	ld   a, $1e                                      ; $4e90: $3e $1e
	jr   jr_089_4e14                                 ; $4e92: $18 $80

	inc  e                                           ; $4e94: $1c
	sub  l                                           ; $4e95: $95
	nop                                              ; $4e96: $00
	add  b                                           ; $4e97: $80
	add  b                                           ; $4e98: $80
	add  l                                           ; $4e99: $85
	nop                                              ; $4e9a: $00
	add  c                                           ; $4e9b: $81
	inc  bc                                          ; $4e9c: $03
	add  b                                           ; $4e9d: $80
	ld   [bc], a                                     ; $4e9e: $02
	add  d                                           ; $4e9f: $82
	inc  bc                                          ; $4ea0: $03
	add  b                                           ; $4ea1: $80
	nop                                              ; $4ea2: $00
	add  h                                           ; $4ea3: $84
	inc  bc                                          ; $4ea4: $03
	add  b                                           ; $4ea5: $80
	ld   [bc], a                                     ; $4ea6: $02
	add  [hl]                                        ; $4ea7: $86
	inc  bc                                          ; $4ea8: $03
	add  b                                           ; $4ea9: $80
	ld   [bc], a                                     ; $4eaa: $02
	add  b                                           ; $4eab: $80
	inc  bc                                          ; $4eac: $03
	ld   bc, $8063                                   ; $4ead: $01 $63 $80
	add  d                                           ; $4eb0: $82
	ret  nz                                          ; $4eb1: $c0

	add  b                                           ; $4eb2: $80
	ld   bc, $8180                                   ; $4eb3: $01 $80 $81
	add  b                                           ; $4eb6: $80
	ld   bc, $8182                                   ; $4eb7: $01 $82 $81
	add  b                                           ; $4eba: $80
	ld   bc, $c182                                   ; $4ebb: $01 $82 $c1
	add  b                                           ; $4ebe: $80
	add  c                                           ; $4ebf: $81
	add  b                                           ; $4ec0: $80
	ld   bc, $2080                                   ; $4ec1: $01 $80 $20
	add  b                                           ; $4ec4: $80
	ldh  [$80], a                                    ; $4ec5: $e0 $80
	pop  hl                                          ; $4ec7: $e1
	ld   bc, $7c9c                                   ; $4ec8: $01 $9c $7c
	add  b                                           ; $4ecb: $80
	inc  c                                           ; $4ecc: $0c
	add  b                                           ; $4ecd: $80
	inc  e                                           ; $4ece: $1c
	add  d                                           ; $4ecf: $82
	db   $fc                                         ; $4ed0: $fc
	add  b                                           ; $4ed1: $80
	ld   hl, sp-$80                                  ; $4ed2: $f8 $80
	add  b                                           ; $4ed4: $80
	add  b                                           ; $4ed5: $80
	ldh  [$86], a                                    ; $4ed6: $e0 $86
	db   $fc                                         ; $4ed8: $fc
	add  b                                           ; $4ed9: $80
	inc  c                                           ; $4eda: $0c
	add  b                                           ; $4edb: $80
	nop                                              ; $4edc: $00
	add  b                                           ; $4edd: $80
	jr   nc, jr_089_4e60                             ; $4ede: $30 $80

	db   $fc                                         ; $4ee0: $fc
	nop                                              ; $4ee1: $00
	nop                                              ; $4ee2: $00
	add  b                                           ; $4ee3: $80
	inc  b                                           ; $4ee4: $04
	add  b                                           ; $4ee5: $80
	inc  a                                           ; $4ee6: $3c
	add  b                                           ; $4ee7: $80
	nop                                              ; $4ee8: $00
	add  b                                           ; $4ee9: $80
	ld   [bc], a                                     ; $4eea: $02
	add  b                                           ; $4eeb: $80
	dec  b                                           ; $4eec: $05
	add  b                                           ; $4eed: $80
	ld   [$1080], sp                                 ; $4eee: $08 $80 $10
	add  b                                           ; $4ef1: $80
	jr   nz, jr_089_4e75                             ; $4ef2: $20 $81

	nop                                              ; $4ef4: $00
	add  b                                           ; $4ef5: $80
	inc  b                                           ; $4ef6: $04
	add  b                                           ; $4ef7: $80
	ld   [hl+], a                                    ; $4ef8: $22
	add  b                                           ; $4ef9: $80
	inc  sp                                          ; $4efa: $33
	add  b                                           ; $4efb: $80
	ld   sp, $1880                                   ; $4efc: $31 $80 $18
	inc  bc                                          ; $4eff: $03
	rlca                                             ; $4f00: $07
	ld   b, $01                                      ; $4f01: $06 $01
	inc  e                                           ; $4f03: $1c
	add  b                                           ; $4f04: $80
	rra                                              ; $4f05: $1f
	rlca                                             ; $4f06: $07
	jr   jr_089_4f25                                 ; $4f07: $18 $1c

	jr   jr_089_4f43                                 ; $4f09: $18 $38

	inc  a                                           ; $4f0b: $3c
	db   $f4                                         ; $4f0c: $f4
	or   d                                           ; $4f0d: $b2
	ld   b, d                                        ; $4f0e: $42
	add  b                                           ; $4f0f: $80
	ld   b, c                                        ; $4f10: $41
	add  [hl]                                        ; $4f11: $86
	ld   b, b                                        ; $4f12: $40
	add  b                                           ; $4f13: $80
	nop                                              ; $4f14: $00
	add  hl, bc                                      ; $4f15: $09
	ld   bc, $1e00                                   ; $4f16: $01 $00 $1e
	inc  e                                           ; $4f19: $1c
	ld   a, h                                        ; $4f1a: $7c
	ld   h, b                                        ; $4f1b: $60
	ldh  [rDIV], a                                   ; $4f1c: $e0 $04
	ei                                               ; $4f1e: $fb
	nop                                              ; $4f1f: $00
	add  b                                           ; $4f20: $80
	add  b                                           ; $4f21: $80
	adc  b                                           ; $4f22: $88
	nop                                              ; $4f23: $00
	add  b                                           ; $4f24: $80

jr_089_4f25:
	add  b                                           ; $4f25: $80
	add  [hl]                                        ; $4f26: $86
	nop                                              ; $4f27: $00
	nop                                              ; $4f28: $00
	add  b                                           ; $4f29: $80
	add  d                                           ; $4f2a: $82
	nop                                              ; $4f2b: $00
	add  b                                           ; $4f2c: $80
	add  b                                           ; $4f2d: $80
	ld   bc, $8000                                   ; $4f2e: $01 $00 $80
	add  b                                           ; $4f31: $80
	inc  bc                                          ; $4f32: $03
	sbc  e                                           ; $4f33: $9b
	nop                                              ; $4f34: $00
	ld   [bc], a                                     ; $4f35: $02
	ld   bc, $e0e1                                   ; $4f36: $01 $e1 $e0
	sbc  e                                           ; $4f39: $9b
	nop                                              ; $4f3a: $00
	add  b                                           ; $4f3b: $80
	db   $fc                                         ; $4f3c: $fc
	cp   h                                           ; $4f3d: $bc
	nop                                              ; $4f3e: $00
	ld   [bc], a                                     ; $4f3f: $02
	ld   d, l                                        ; $4f40: $55
	ld   a, [hl+]                                    ; $4f41: $2a
	ld   a, a                                        ; $4f42: $7f

jr_089_4f43:
	sbc  h                                           ; $4f43: $9c
	nop                                              ; $4f44: $00
	add  b                                           ; $4f45: $80
	add  b                                           ; $4f46: $80
	rst  $38                                         ; $4f47: $ff
	nop                                              ; $4f48: $00
	rst  $38                                         ; $4f49: $ff
	nop                                              ; $4f4a: $00
	rst  $38                                         ; $4f4b: $ff
	nop                                              ; $4f4c: $00
	rst  $38                                         ; $4f4d: $ff
	nop                                              ; $4f4e: $00
	rst  $38                                         ; $4f4f: $ff
	nop                                              ; $4f50: $00
	sub  [hl]                                        ; $4f51: $96
	nop                                              ; $4f52: $00
	rst  $10                                         ; $4f53: $d7
	nop                                              ; $4f54: $00
	adc  d                                           ; $4f55: $8a
	nop                                              ; $4f56: $00
	add  b                                           ; $4f57: $80
	inc  bc                                          ; $4f58: $03
	add  b                                           ; $4f59: $80
	inc  b                                           ; $4f5a: $04
	adc  b                                           ; $4f5b: $88
	nop                                              ; $4f5c: $00
	add  b                                           ; $4f5d: $80
	inc  bc                                          ; $4f5e: $03
	ld   bc, $1f1c                                   ; $4f5f: $01 $1c $1f
	add  b                                           ; $4f62: $80
	db   $e3                                         ; $4f63: $e3
	nop                                              ; $4f64: $00
	inc  bc                                          ; $4f65: $03
	add  a                                           ; $4f66: $87
	nop                                              ; $4f67: $00
	add  b                                           ; $4f68: $80
	ldh  [rDIV], a                                   ; $4f69: $e0 $04
	rra                                              ; $4f6b: $1f
	rst  $38                                         ; $4f6c: $ff
	call nz, $c3e7                                   ; $4f6d: $c4 $e7 $c3
	add  a                                           ; $4f70: $87
	nop                                              ; $4f71: $00
	add  b                                           ; $4f72: $80
	rrca                                             ; $4f73: $0f
	ld   [bc], a                                     ; $4f74: $02
	ldh  a, [$f1]                                    ; $4f75: $f0 $f1
	ld   bc, $0089                                   ; $4f77: $01 $89 $00
	add  b                                           ; $4f7a: $80
	db   $fc                                         ; $4f7b: $fc
	ld   [bc], a                                     ; $4f7c: $02
	inc  bc                                          ; $4f7d: $03
	rst  $38                                         ; $4f7e: $ff
	db   $fc                                         ; $4f7f: $fc
	add  b                                           ; $4f80: $80
	rst  $38                                         ; $4f81: $ff
	adc  e                                           ; $4f82: $8b
	nop                                              ; $4f83: $00
	add  b                                           ; $4f84: $80
	ret  nz                                          ; $4f85: $c0

	ld   [bc], a                                     ; $4f86: $02
	ld   [$080b], sp                                 ; $4f87: $08 $0b $08
	add  b                                           ; $4f8a: $80
	rrca                                             ; $4f8b: $0f
	dec  b                                           ; $4f8c: $05
	ld   c, $01                                      ; $4f8d: $0e $01
	rlca                                             ; $4f8f: $07
	dec  b                                           ; $4f90: $05
	rlca                                             ; $4f91: $07
	dec  b                                           ; $4f92: $05
	add  c                                           ; $4f93: $81
	rlca                                             ; $4f94: $07
	add  b                                           ; $4f95: $80
	inc  b                                           ; $4f96: $04
	dec  b                                           ; $4f97: $05
	ld   b, e                                        ; $4f98: $43
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f99: $cf
	adc  a                                           ; $4f9a: $8f
	rst  JumpTable                                         ; $4f9b: $df
	rst  $10                                         ; $4f9c: $d7
	rst  $30                                         ; $4f9d: $f7
	add  b                                           ; $4f9e: $80
	push de                                          ; $4f9f: $d5
	add  b                                           ; $4fa0: $80
	ld   d, l                                        ; $4fa1: $55
	ld   [$fd9c], sp                                 ; $4fa2: $08 $9c $fd
	ld   l, l                                        ; $4fa5: $6d
	ld   e, $9e                                      ; $4fa6: $1e $9e
	cp   a                                           ; $4fa8: $bf
	adc  [hl]                                        ; $4fa9: $8e
	rst  JumpTable                                         ; $4faa: $df
	add  a                                           ; $4fab: $87
	add  b                                           ; $4fac: $80
	rst  $38                                         ; $4fad: $ff
	dec  bc                                          ; $4fae: $0b
	rst  $30                                         ; $4faf: $f7
	set  3, a                                        ; $4fb0: $cb $df
	ld   l, [hl]                                     ; $4fb2: $6e
	ld   l, d                                        ; $4fb3: $6a
	ld   h, d                                        ; $4fb4: $62
	ldh  [$b0], a                                    ; $4fb5: $e0 $b0
	jr   nc, jr_089_5009                             ; $4fb7: $30 $50

	ld   d, e                                        ; $4fb9: $53
	db   $fc                                         ; $4fba: $fc
	add  b                                           ; $4fbb: $80
	ld   b, a                                        ; $4fbc: $47
	add  b                                           ; $4fbd: $80
	db   $e3                                         ; $4fbe: $e3
	add  b                                           ; $4fbf: $80
	ei                                               ; $4fc0: $fb
	add  e                                           ; $4fc1: $83
	rst  $38                                         ; $4fc2: $ff
	nop                                              ; $4fc3: $00
	ld   a, a                                        ; $4fc4: $7f
	add  c                                           ; $4fc5: $81
	rst  $38                                         ; $4fc6: $ff
	nop                                              ; $4fc7: $00
	ld   a, a                                        ; $4fc8: $7f
	adc  l                                           ; $4fc9: $8d
	rst  $38                                         ; $4fca: $ff
	inc  bc                                          ; $4fcb: $03
	rst  JumpTable                                         ; $4fcc: $df
	ldh  [$d0], a                                    ; $4fcd: $e0 $d0
	ldh  a, [$80]                                    ; $4fcf: $f0 $80
	or   b                                           ; $4fd1: $b0
	ld   bc, $d8c8                                   ; $4fd2: $01 $c8 $d8
	add  b                                           ; $4fd5: $80
	add  sp, $01                                     ; $4fd6: $e8 $01
	call c, $80d4                                    ; $4fd8: $dc $d4 $80
	call nz, Call_089_6480                           ; $4fdb: $c4 $80 $64
	ld   [bc], a                                     ; $4fde: $02

jr_089_4fdf:
	rst  $38                                         ; $4fdf: $ff
	inc  b                                           ; $4fe0: $04
	nop                                              ; $4fe1: $00
	add  c                                           ; $4fe2: $81
	ld   [bc], a                                     ; $4fe3: $02
	ld   bc, $0100                                   ; $4fe4: $01 $00 $01
	add  e                                           ; $4fe7: $83
	ld   [bc], a                                     ; $4fe8: $02
	inc  b                                           ; $4fe9: $04
	inc  bc                                          ; $4fea: $03
	nop                                              ; $4feb: $00
	ld   bc, rAUD1ENV                                   ; $4fec: $01 $12 $ff
	add  b                                           ; $4fef: $80
	di                                               ; $4ff0: $f3
	inc  c                                           ; $4ff1: $0c
	sub  d                                           ; $4ff2: $92
	rst  $38                                         ; $4ff3: $ff
	rlca                                             ; $4ff4: $07
	add  b                                           ; $4ff5: $80
	ld   [de], a                                     ; $4ff6: $12
	ld   a, [hl-]                                    ; $4ff7: $3a
	ccf                                              ; $4ff8: $3f
	rst  $38                                         ; $4ff9: $ff
	or   $fe                                         ; $4ffa: $f6 $fe
	jp   nc, $d1da                                   ; $4ffc: $d2 $da $d1

	add  b                                           ; $4fff: $80
	jp   $c701                                       ; $5000: $c3 $01 $c7


	inc  b                                           ; $5003: $04
	add  b                                           ; $5004: $80
	ld   b, $0a                                      ; $5005: $06 $0a
	adc  $09                                         ; $5007: $ce $09

jr_089_5009:
	db   $fd                                         ; $5009: $fd
	pop  de                                          ; $500a: $d1
	ld   sp, hl                                      ; $500b: $f9
	and  a                                           ; $500c: $a7
	or   a                                           ; $500d: $b7
	add  b                                           ; $500e: $80
	add  e                                           ; $500f: $83
	cp   h                                           ; $5010: $bc
	rst  $38                                         ; $5011: $ff
	add  b                                           ; $5012: $80
	rst  $30                                         ; $5013: $f7
	add  b                                           ; $5014: $80
	push af                                          ; $5015: $f5
	add  hl, bc                                      ; $5016: $09
	call nc, $0cb4                                   ; $5017: $d4 $b4 $0c
	inc  a                                           ; $501a: $3c
	ld   e, c                                        ; $501b: $59
	ld   a, c                                        ; $501c: $79
	jr   nc, jr_089_4fdf                             ; $501d: $30 $c0

	ldh  a, [c]                                      ; $501f: $f2
	ld   [hl-], a                                    ; $5020: $32
	add  d                                           ; $5021: $82
	rst  $38                                         ; $5022: $ff
	add  d                                           ; $5023: $82
	cp   a                                           ; $5024: $bf
	add  b                                           ; $5025: $80
	ld   a, [hl]                                     ; $5026: $7e
	add  b                                           ; $5027: $80
	ld   e, [hl]                                     ; $5028: $5e
	add  b                                           ; $5029: $80
	ld   e, $80                                      ; $502a: $1e $80
	cp   [hl]                                        ; $502c: $be
	ld   bc, $5453                                   ; $502d: $01 $53 $54
	add  b                                           ; $5030: $80
	inc  b                                           ; $5031: $04
	add  b                                           ; $5032: $80
	add  h                                           ; $5033: $84
	add  b                                           ; $5034: $80
	and  h                                           ; $5035: $a4
	nop                                              ; $5036: $00
	add  b                                           ; $5037: $80
	add  c                                           ; $5038: $81
	adc  b                                           ; $5039: $88
	nop                                              ; $503a: $00
	nop                                              ; $503b: $00
	add  c                                           ; $503c: $81
	stop                                             ; $503d: $10 $00
	ldh  [$85], a                                    ; $503f: $e0 $85
	nop                                              ; $5041: $00
	add  b                                           ; $5042: $80
	inc  bc                                          ; $5043: $03
	add  b                                           ; $5044: $80
	inc  b                                           ; $5045: $04
	nop                                              ; $5046: $00
	inc  c                                           ; $5047: $0c
	add  b                                           ; $5048: $80
	dec  c                                           ; $5049: $0d
	ld   [hl+], a                                    ; $504a: $22
	rrca                                             ; $504b: $0f
	xor  $b2                                         ; $504c: $ee $b2
	jr   nz, @+$62                                   ; $504e: $20 $60

	add  b                                           ; $5050: $80
	rst  $38                                         ; $5051: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5052: $cf
	ret  nc                                          ; $5053: $d0

	ld   d, b                                        ; $5054: $50
	ld   d, l                                        ; $5055: $55
	dec  h                                           ; $5056: $25
	and  [hl]                                        ; $5057: $a6
	add  $c4                                         ; $5058: $c6 $c4
	add  h                                           ; $505a: $84
	adc  b                                           ; $505b: $88
	add  hl, bc                                      ; $505c: $09
	dec  c                                           ; $505d: $0d
	rrca                                             ; $505e: $0f
	ld   [hl], e                                     ; $505f: $73
	ld   a, a                                        ; $5060: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5061: $cf
	rst  JumpTable                                         ; $5062: $df
	rra                                              ; $5063: $1f
	rrca                                             ; $5064: $0f
	rst  $38                                         ; $5065: $ff
	cp   $16                                         ; $5066: $fe $16
	rla                                              ; $5068: $17
	scf                                              ; $5069: $37
	inc  b                                           ; $506a: $04
	ld   b, h                                        ; $506b: $44
	xor  b                                           ; $506c: $a8
	ret  nc                                          ; $506d: $d0

	add  b                                           ; $506e: $80
	ret  nz                                          ; $506f: $c0

	add  b                                           ; $5070: $80
	ld   b, b                                        ; $5071: $40
	inc  b                                           ; $5072: $04
	nop                                              ; $5073: $00
	rrca                                             ; $5074: $0f
	adc  a                                           ; $5075: $8f
	sub  d                                           ; $5076: $92
	ld   [de], a                                     ; $5077: $12
	add  e                                           ; $5078: $83
	ld   [hl+], a                                    ; $5079: $22
	ld   bc, $ae8c                                   ; $507a: $01 $8c $ae
	add  d                                           ; $507d: $82
	ld   l, $80                                      ; $507e: $2e $80
	ld   c, $00                                      ; $5080: $0e $00
	rlca                                             ; $5082: $07
	add  b                                           ; $5083: $80
	rst  ToBoot                                         ; $5084: $c7
	ld   [bc], a                                     ; $5085: $02
	daa                                              ; $5086: $27
	cpl                                              ; $5087: $2f
	ccf                                              ; $5088: $3f
	add  b                                           ; $5089: $80
	ld   l, $00                                      ; $508a: $2e $00
	cpl                                              ; $508c: $2f
	add  l                                           ; $508d: $85
	jr   nz, @+$03                                   ; $508e: $20 $01

	jr   nc, jr_089_50a2                             ; $5090: $30 $10

	add  c                                           ; $5092: $81
	ld   e, $80                                      ; $5093: $1e $80
	ld   [hl+], a                                    ; $5095: $22
	dec  b                                           ; $5096: $05
	ld   h, $cf                                      ; $5097: $26 $cf
	rra                                              ; $5099: $1f
	jr   @+$21                                       ; $509a: $18 $1f

	cpl                                              ; $509c: $2f
	add  c                                           ; $509d: $81
	ccf                                              ; $509e: $3f
	ld   bc, $7f60                                   ; $509f: $01 $60 $7f

jr_089_50a2:
	add  b                                           ; $50a2: $80
	ld   b, b                                        ; $50a3: $40
	nop                                              ; $50a4: $00
	ld   b, e                                        ; $50a5: $43
	add  c                                           ; $50a6: $81
	ld   a, b                                        ; $50a7: $78
	ld   [bc], a                                     ; $50a8: $02
	call nz, $07f8                                   ; $50a9: $c4 $f8 $07
	add  e                                           ; $50ac: $83
	rst  $38                                         ; $50ad: $ff
	ld   bc, $ff00                                   ; $50ae: $01 $00 $ff
	add  b                                           ; $50b1: $80
	nop                                              ; $50b2: $00
	dec  c                                           ; $50b3: $0d
	ld   b, b                                        ; $50b4: $40
	ld   a, $26                                      ; $50b5: $3e $26
	ld   b, $9f                                      ; $50b7: $06 $9f
	ld   e, [hl]                                     ; $50b9: $5e
	call c, $c0fc                                    ; $50ba: $dc $fc $c0
	rst  $38                                         ; $50bd: $ff
	add  b                                           ; $50be: $80
	rst  $38                                         ; $50bf: $ff
	nop                                              ; $50c0: $00

jr_089_50c1:
	rst  $38                                         ; $50c1: $ff
	add  b                                           ; $50c2: $80
	nop                                              ; $50c3: $00
	ld   bc, $39c2                                   ; $50c4: $01 $c2 $39
	add  b                                           ; $50c7: $80
	add  hl, bc                                      ; $50c8: $09
	nop                                              ; $50c9: $00
	inc  b                                           ; $50ca: $04
	add  b                                           ; $50cb: $80
	ld   a, h                                        ; $50cc: $7c
	add  b                                           ; $50cd: $80

jr_089_50ce:
	ld   b, b                                        ; $50ce: $40
	inc  b                                           ; $50cf: $04
	add  b                                           ; $50d0: $80
	ld   a, a                                        ; $50d1: $7f
	rst  $38                                         ; $50d2: $ff
	nop                                              ; $50d3: $00

jr_089_50d4:
	rst  $38                                         ; $50d4: $ff
	add  b                                           ; $50d5: $80
	nop                                              ; $50d6: $00
	dec  b                                           ; $50d7: $05
	jr   jr_089_50c1                                 ; $50d8: $18 $e7

	add  a                                           ; $50da: $87
	rlca                                             ; $50db: $07
	cp   [hl]                                        ; $50dc: $be
	ld   e, [hl]                                     ; $50dd: $5e
	add  b                                           ; $50de: $80
	ld   e, h                                        ; $50df: $5c
	dec  b                                           ; $50e0: $05
	ld   h, b                                        ; $50e1: $60
	ld   a, a                                        ; $50e2: $7f
	add  b                                           ; $50e3: $80
	rst  $38                                         ; $50e4: $ff
	nop                                              ; $50e5: $00
	rst  $38                                         ; $50e6: $ff
	add  b                                           ; $50e7: $80

jr_089_50e8:
	nop                                              ; $50e8: $00
	ld   bc, $c116                                   ; $50e9: $01 $16 $c1
	add  b                                           ; $50ec: $80
	ld   bc, $2900                                   ; $50ed: $01 $00 $29
	add  b                                           ; $50f0: $80
	ld   b, [hl]                                     ; $50f1: $46
	ld   b, $4a                                      ; $50f2: $06 $4a
	ld   a, d                                        ; $50f4: $7a
	ld   a, [$f22a]                                  ; $50f5: $fa $2a $f2
	ld   [de], a                                     ; $50f8: $12
	ldh  a, [c]                                      ; $50f9: $f2
	add  b                                           ; $50fa: $80
	ld   [de], a                                     ; $50fb: $12
	nop                                              ; $50fc: $00
	db   $10                                         ; $50fd: $10
	add  c                                           ; $50fe: $81
	db   $f4                                         ; $50ff: $f4
	nop                                              ; $5100: $00
	xor  e                                           ; $5101: $ab
	add  c                                           ; $5102: $81
	ld   a, b                                        ; $5103: $78
	inc  bc                                          ; $5104: $03
	ld   a, e                                        ; $5105: $7b
	ld   a, a                                        ; $5106: $7f
	ld   b, b                                        ; $5107: $40
	ld   a, a                                        ; $5108: $7f
	add  [hl]                                        ; $5109: $86
	nop                                              ; $510a: $00
	rlca                                             ; $510b: $07
	ld   e, [hl]                                     ; $510c: $5e
	ld   bc, $3e1f                                   ; $510d: $01 $1f $3e
	ld   a, [hl]                                     ; $5110: $7e
	cp   $01                                         ; $5111: $fe $01
	rst  $38                                         ; $5113: $ff
	add  a                                           ; $5114: $87
	nop                                              ; $5115: $00
	ld   [bc], a                                     ; $5116: $02
	rst  $38                                         ; $5117: $ff
	dec  c                                           ; $5118: $0d
	add  hl, bc                                      ; $5119: $09
	add  b                                           ; $511a: $80
	add  hl, sp                                      ; $511b: $39
	ld   bc, $ff04                                   ; $511c: $01 $04 $ff
	add  [hl]                                        ; $511f: $86
	nop                                              ; $5120: $00
	rlca                                             ; $5121: $07
	inc  bc                                          ; $5122: $03
	ld   hl, sp-$7d                                  ; $5123: $f8 $83
	rlca                                             ; $5125: $07
	ld   h, a                                        ; $5126: $67
	rst  $20                                         ; $5127: $e7
	nop                                              ; $5128: $00
	rst  $38                                         ; $5129: $ff
	add  [hl]                                        ; $512a: $86
	nop                                              ; $512b: $00
	ld   bc, $01d6                                   ; $512c: $01 $d6 $01
	add  b                                           ; $512f: $80
	pop  bc                                          ; $5130: $c1
	inc  bc                                          ; $5131: $03
	rst  $10                                         ; $5132: $d7
	rst  $38                                         ; $5133: $ff
	nop                                              ; $5134: $00
	rst  $38                                         ; $5135: $ff

jr_089_5136:
	add  [hl]                                        ; $5136: $86
	nop                                              ; $5137: $00
	nop                                              ; $5138: $00
	jr   @-$7d                                       ; $5139: $18 $81

	ld   hl, sp-$80                                  ; $513b: $f8 $80
	ldh  a, [rSB]                                    ; $513d: $f0 $01
	db   $10                                         ; $513f: $10
	ldh  a, [$94]                                    ; $5140: $f0 $94
	nop                                              ; $5142: $00
	add  b                                           ; $5143: $80
	inc  bc                                          ; $5144: $03
	add  b                                           ; $5145: $80
	inc  b                                           ; $5146: $04
	sbc  d                                           ; $5147: $9a
	nop                                              ; $5148: $00
	add  b                                           ; $5149: $80
	inc  e                                           ; $514a: $1c
	add  b                                           ; $514b: $80

jr_089_514c:
	jr   nc, jr_089_50ce                             ; $514c: $30 $80

	jr   nz, jr_089_50e8                             ; $514e: $20 $98

	nop                                              ; $5150: $00
	add  b                                           ; $5151: $80
	jr   jr_089_50d4                                 ; $5152: $18 $80

	jr   nz, @-$66                                   ; $5154: $20 $98

	nop                                              ; $5156: $00
	add  b                                           ; $5157: $80
	ld   c, $80                                      ; $5158: $0e $80
	rst  $38                                         ; $515a: $ff
	add  b                                           ; $515b: $80
	cp   b                                           ; $515c: $b8
	add  b                                           ; $515d: $80
	inc  e                                           ; $515e: $1c
	add  b                                           ; $515f: $80
	inc  b                                           ; $5160: $04
	ret  nc                                          ; $5161: $d0

	nop                                              ; $5162: $00
	add  d                                           ; $5163: $82
	ld   bc, $008c                                   ; $5164: $01 $8c $00
	add  b                                           ; $5167: $80
	inc  bc                                          ; $5168: $03
	add  b                                           ; $5169: $80
	ld   [bc], a                                     ; $516a: $02
	add  [hl]                                        ; $516b: $86
	nop                                              ; $516c: $00
	add  b                                           ; $516d: $80
	ld   a, b                                        ; $516e: $78
	add  b                                           ; $516f: $80
	ret  nz                                          ; $5170: $c0

	adc  h                                           ; $5171: $8c
	nop                                              ; $5172: $00
	add  b                                           ; $5173: $80
	add  b                                           ; $5174: $80
	sbc  [hl]                                        ; $5175: $9e
	nop                                              ; $5176: $00
	add  d                                           ; $5177: $82
	ld   [$3880], sp                                 ; $5178: $08 $80 $38
	cp   h                                           ; $517b: $bc
	nop                                              ; $517c: $00
	add  b                                           ; $517d: $80
	db   $10                                         ; $517e: $10
	xor  b                                           ; $517f: $a8
	nop                                              ; $5180: $00
	add  b                                           ; $5181: $80
	ccf                                              ; $5182: $3f
	add  [hl]                                        ; $5183: $86
	inc  b                                           ; $5184: $04
	sub  h                                           ; $5185: $94
	nop                                              ; $5186: $00
	add  b                                           ; $5187: $80
	rst  $38                                         ; $5188: $ff
	add  b                                           ; $5189: $80
	add  c                                           ; $518a: $81
	add  b                                           ; $518b: $80
	and  c                                           ; $518c: $a1
	add  b                                           ; $518d: $80
	and  b                                           ; $518e: $a0
	add  b                                           ; $518f: $80
	add  c                                           ; $5190: $81
	add  b                                           ; $5191: $80
	ld   bc, $0088                                   ; $5192: $01 $88 $00
	add  b                                           ; $5195: $80
	jr   nz, @-$78                                   ; $5196: $20 $86

	nop                                              ; $5198: $00
	add  b                                           ; $5199: $80
	rst  $38                                         ; $519a: $ff
	add  d                                           ; $519b: $82
	inc  b                                           ; $519c: $04
	add  b                                           ; $519d: $80
	nop                                              ; $519e: $00
	add  d                                           ; $519f: $82
	inc  b                                           ; $51a0: $04
	sub  d                                           ; $51a1: $92
	nop                                              ; $51a2: $00
	add  b                                           ; $51a3: $80
	rst  $38                                         ; $51a4: $ff
	add  b                                           ; $51a5: $80
	nop                                              ; $51a6: $00
	add  b                                           ; $51a7: $80
	add  b                                           ; $51a8: $80
	add  b                                           ; $51a9: $80
	inc  b                                           ; $51aa: $04
	add  b                                           ; $51ab: $80
	add  b                                           ; $51ac: $80
	adc  d                                           ; $51ad: $8a
	nop                                              ; $51ae: $00
	add  d                                           ; $51af: $82
	jr   nz, jr_089_5136                             ; $51b0: $20 $84

	nop                                              ; $51b2: $00
	add  b                                           ; $51b3: $80
	rst  $38                                         ; $51b4: $ff
	add  [hl]                                        ; $51b5: $86
	jr   z, jr_089_514c                              ; $51b6: $28 $94

	nop                                              ; $51b8: $00
	add  b                                           ; $51b9: $80
	ldh  [rIE], a                                    ; $51ba: $e0 $ff
	nop                                              ; $51bc: $00
	rst  $38                                         ; $51bd: $ff
	nop                                              ; $51be: $00
	rst  $38                                         ; $51bf: $ff

Jump_089_51c0:
	nop                                              ; $51c0: $00
	rst  $38                                         ; $51c1: $ff
	nop                                              ; $51c2: $00
	rst  $38                                         ; $51c3: $ff
	nop                                              ; $51c4: $00
	adc  l                                           ; $51c5: $8d
	nop                                              ; $51c6: $00
	sbc  e                                           ; $51c7: $9b
	nop                                              ; $51c8: $00
	sbc  b                                           ; $51c9: $98
	nop                                              ; $51ca: $00
	add  b                                           ; $51cb: $80
	inc  bc                                          ; $51cc: $03
	inc  b                                           ; $51cd: $04
	rrca                                             ; $51ce: $0f
	inc  c                                           ; $51cf: $0c
	inc  a                                           ; $51d0: $3c
	jr   nc, jr_089_51e2                             ; $51d1: $30 $0f

	add  e                                           ; $51d3: $83
	nop                                              ; $51d4: $00
	add  b                                           ; $51d5: $80
	inc  e                                           ; $51d6: $1c
	ld   [$6367], sp                                 ; $51d7: $08 $67 $63
	rst  $38                                         ; $51da: $ff
	pop  bc                                          ; $51db: $c1
	push bc                                          ; $51dc: $c5
	ld   [hl], c                                     ; $51dd: $71
	ld   d, b                                        ; $51de: $50
	ld   c, [hl]                                     ; $51df: $4e
	sub  b                                           ; $51e0: $90
	add  l                                           ; $51e1: $85

jr_089_51e2:
	nop                                              ; $51e2: $00
	add  b                                           ; $51e3: $80
	ld   hl, sp+$00                                  ; $51e4: $f8 $00
	rst  $38                                         ; $51e6: $ff
	add  b                                           ; $51e7: $80
	rlca                                             ; $51e8: $07
	inc  bc                                          ; $51e9: $03
	ret  nz                                          ; $51ea: $c0

	ld   b, b                                        ; $51eb: $40
	jr   nz, jr_089_524d                             ; $51ec: $20 $5f

	adc  c                                           ; $51ee: $89
	nop                                              ; $51ef: $00
	add  b                                           ; $51f0: $80
	ret  nz                                          ; $51f1: $c0

	ld   [bc], a                                     ; $51f2: $02
	ldh  a, [$30]                                    ; $51f3: $f0 $30
	ret  nz                                          ; $51f5: $c0

	sub  c                                           ; $51f6: $91
	nop                                              ; $51f7: $00
	add  b                                           ; $51f8: $80
	ld   bc, $0381                                   ; $51f9: $01 $81 $03
	nop                                              ; $51fc: $00
	ld   [bc], a                                     ; $51fd: $02
	add  c                                           ; $51fe: $81
	ld   b, $00                                      ; $51ff: $06 $00
	inc  b                                           ; $5201: $04
	add  b                                           ; $5202: $80
	inc  c                                           ; $5203: $0c
	ld   h, $7c                                      ; $5204: $26 $7c
	ld   c, [hl]                                     ; $5206: $4e
	jp   z, $9d91                                    ; $5207: $ca $91 $9d

	ld   hl, $2220                                   ; $520a: $21 $20 $22
	ld   a, [hl-]                                    ; $520d: $3a
	ld   b, [hl]                                     ; $520e: $46
	ld   d, e                                        ; $520f: $53
	ld   a, [hl]                                     ; $5210: $7e
	ld   h, d                                        ; $5211: $62
	ld   c, [hl]                                     ; $5212: $4e
	halt                                             ; $5213: $76
	adc  [hl]                                        ; $5214: $8e
	sbc  [hl]                                        ; $5215: $9e
	add  h                                           ; $5216: $84
	sub  h                                           ; $5217: $94
	add  a                                           ; $5218: $87
	sub  l                                           ; $5219: $95
	adc  h                                           ; $521a: $8c
	sbc  a                                           ; $521b: $9f
	call z, $dee5                                    ; $521c: $cc $e5 $de
	adc  $fd                                         ; $521f: $ce $fd
	push af                                          ; $5221: $f5
	rst  $38                                         ; $5222: $ff
	jp   $fd91                                       ; $5223: $c3 $91 $fd


	inc  de                                          ; $5226: $13
	ld   d, e                                        ; $5227: $53
	inc  e                                           ; $5228: $1c
	add  hl, de                                      ; $5229: $19
	jp   c, $82df                                    ; $522a: $da $df $82

	dec  hl                                          ; $522d: $2b
	ld   bc, $26ae                                   ; $522e: $01 $ae $26
	add  b                                           ; $5231: $80
	db   $ec                                         ; $5232: $ec
	rlca                                             ; $5233: $07
	sbc  h                                           ; $5234: $9c
	inc  de                                          ; $5235: $13
	adc  b                                           ; $5236: $88
	adc  h                                           ; $5237: $8c
	ld   b, h                                        ; $5238: $44
	ld   b, [hl]                                     ; $5239: $46
	ld   b, d                                        ; $523a: $42
	ld   b, e                                        ; $523b: $43
	add  b                                           ; $523c: $80
	ld   sp, hl                                      ; $523d: $f9
	rlca                                             ; $523e: $07
	push hl                                          ; $523f: $e5
	db   $fd                                         ; $5240: $fd
	ld   b, d                                        ; $5241: $42
	sub  $42                                         ; $5242: $d6 $42
	ld   b, [hl]                                     ; $5244: $46
	ld   [hl+], a                                    ; $5245: $22
	ld   d, l                                        ; $5246: $55
	add  a                                           ; $5247: $87
	nop                                              ; $5248: $00
	add  d                                           ; $5249: $82
	add  b                                           ; $524a: $80
	ld   [bc], a                                     ; $524b: $02
	ret  nz                                          ; $524c: $c0

jr_089_524d:
	ld   b, b                                        ; $524d: $40
	adc  a                                           ; $524e: $8f
	add  e                                           ; $524f: $83
	dec  c                                           ; $5250: $0d
	nop                                              ; $5251: $00
	add  hl, bc                                      ; $5252: $09
	add  c                                           ; $5253: $81
	rrca                                             ; $5254: $0f
	nop                                              ; $5255: $00
	dec  c                                           ; $5256: $0d
	add  c                                           ; $5257: $81
	rrca                                             ; $5258: $0f
	jr   nz, jr_089_5269                             ; $5259: $20 $0e

	rrca                                             ; $525b: $0f
	xor  h                                           ; $525c: $ac
	inc  bc                                          ; $525d: $03
	ccf                                              ; $525e: $3f
	ld   bc, $c141                                   ; $525f: $01 $41 $c1
	add  b                                           ; $5262: $80
	jp   $c75b                                       ; $5263: $c3 $5b $c7


	sub  $f5                                         ; $5266: $d6 $f5
	ld   h, l                                        ; $5268: $65

jr_089_5269:
	db   $fd                                         ; $5269: $fd
	push af                                          ; $526a: $f5
	cp   $c4                                         ; $526b: $fe $c4
	db   $10                                         ; $526d: $10
	ld   d, e                                        ; $526e: $53
	jr   c, jr_089_529a                              ; $526f: $38 $29

	ld   l, a                                        ; $5271: $6f
	add  hl, sp                                      ; $5272: $39
	rst  $28                                         ; $5273: $ef
	db   $ed                                         ; $5274: $ed
	xor  $ae                                         ; $5275: $ee $ae
	ld   l, [hl]                                     ; $5277: $6e
	ld   a, d                                        ; $5278: $7a
	ccf                                              ; $5279: $3f
	ld   l, $80                                      ; $527a: $2e $80
	di                                               ; $527c: $f3
	rrca                                             ; $527d: $0f
	call z, Call_089_5dc5                            ; $527e: $cc $c5 $5d
	ld   [hl], h                                     ; $5281: $74
	rst  $38                                         ; $5282: $ff
	sbc  $23                                         ; $5283: $de $23
	ld   [hl+], a                                    ; $5285: $22
	inc  sp                                          ; $5286: $33
	ld   [hl-], a                                    ; $5287: $32
	ld   a, l                                        ; $5288: $7d
	inc  l                                           ; $5289: $2c
	rst  $28                                         ; $528a: $ef
	db   $fc                                         ; $528b: $fc
	rst  $28                                         ; $528c: $ef
	xor  l                                           ; $528d: $ad
	add  b                                           ; $528e: $80
	cp   e                                           ; $528f: $bb
	add  e                                           ; $5290: $83
	cp   a                                           ; $5291: $bf
	ld   [$ffef], sp                                 ; $5292: $08 $ef $ff
	rrca                                             ; $5295: $0f
	cp   $0e                                         ; $5296: $fe $0e
	cp   $0e                                         ; $5298: $fe $0e

jr_089_529a:
	db   $fc                                         ; $529a: $fc
	ld   h, e                                        ; $529b: $63
	add  b                                           ; $529c: $80
	ld   b, b                                        ; $529d: $40
	add  d                                           ; $529e: $82
	ret  nz                                          ; $529f: $c0

	add  a                                           ; $52a0: $87
	ld   b, b                                        ; $52a1: $40
	inc  bc                                          ; $52a2: $03
	adc  b                                           ; $52a3: $88
	rrca                                             ; $52a4: $0f
	dec  bc                                          ; $52a5: $0b
	rrca                                             ; $52a6: $0f
	add  b                                           ; $52a7: $80
	rlca                                             ; $52a8: $07
	inc  b                                           ; $52a9: $04
	ld   bc, $0203                                   ; $52aa: $01 $03 $02
	inc  bc                                          ; $52ad: $03
	ld   [bc], a                                     ; $52ae: $02
	add  c                                           ; $52af: $81
	inc  bc                                          ; $52b0: $03
	ld   [$0100], sp                                 ; $52b1: $08 $00 $01
	ld   l, e                                        ; $52b4: $6b
	cp   $8d                                         ; $52b5: $fe $8d
	rst  $38                                         ; $52b7: $ff
	ldh  [rIE], a                                    ; $52b8: $e0 $ff
	ld   hl, sp-$7f                                  ; $52ba: $f8 $81
	rst  $38                                         ; $52bc: $ff
	ld   c, $7f                                      ; $52bd: $0e $7f
	rst  $38                                         ; $52bf: $ff
	rra                                              ; $52c0: $1f
	rst  $38                                         ; $52c1: $ff
	add  e                                           ; $52c2: $83

jr_089_52c3:
	ei                                               ; $52c3: $fb
	ld   c, b                                        ; $52c4: $48
	ei                                               ; $52c5: $fb
	jp   nz, $4ffb                                   ; $52c6: $c2 $fb $4f

	rst  $38                                         ; $52c9: $ff
	ld   [hl+], a                                    ; $52ca: $22
	rst  $38                                         ; $52cb: $ff
	nop                                              ; $52cc: $00
	add  l                                           ; $52cd: $85
	rst  $38                                         ; $52ce: $ff
	ld   [$ef85], sp                                 ; $52cf: $08 $85 $ef
	jr   nz, jr_089_52c3                             ; $52d2: $20 $ef

	dec  c                                           ; $52d4: $0d
	rst  $38                                         ; $52d5: $ff
	ld   d, [hl]                                     ; $52d6: $56
	db   $fd                                         ; $52d7: $fd
	inc  bc                                          ; $52d8: $03
	add  e                                           ; $52d9: $83
	rst  $38                                         ; $52da: $ff
	add  b                                           ; $52db: $80
	cp   $02                                         ; $52dc: $fe $02
	ld   b, b                                        ; $52de: $40
	ld   hl, sp-$48                                  ; $52df: $f8 $b8
	add  b                                           ; $52e1: $80
	ldh  [$80], a                                    ; $52e2: $e0 $80
	add  b                                           ; $52e4: $80
	add  b                                           ; $52e5: $80
	ld   bc, $0380                                   ; $52e6: $01 $80 $03
	add  b                                           ; $52e9: $80
	rlca                                             ; $52ea: $07
	inc  bc                                          ; $52eb: $03
	add  hl, de                                      ; $52ec: $19
	jr   jr_089_5351                                 ; $52ed: $18 $62

	ld   e, h                                        ; $52ef: $5c
	add  b                                           ; $52f0: $80
	ld   b, b                                        ; $52f1: $40
	nop                                              ; $52f2: $00
	ret  nz                                          ; $52f3: $c0

	add  b                                           ; $52f4: $80
	add  b                                           ; $52f5: $80
	adc  b                                           ; $52f6: $88
	nop                                              ; $52f7: $00
	add  d                                           ; $52f8: $82
	ld   bc, $008a                                   ; $52f9: $01 $8a $00
	inc  b                                           ; $52fc: $04
	rlca                                             ; $52fd: $07
	rst  $38                                         ; $52fe: $ff
	ei                                               ; $52ff: $fb
	db   $fc                                         ; $5300: $fc
	ld   a, a                                        ; $5301: $7f
	add  c                                           ; $5302: $81
	rst  $38                                         ; $5303: $ff
	nop                                              ; $5304: $00
	ccf                                              ; $5305: $3f
	add  c                                           ; $5306: $81
	ld   a, a                                        ; $5307: $7f
	ld   b, $1b                                      ; $5308: $06 $1b
	ccf                                              ; $530a: $3f
	dec  [hl]                                        ; $530b: $35
	ccf                                              ; $530c: $3f
	sub  c                                           ; $530d: $91
	ld   a, a                                        ; $530e: $7f
	nop                                              ; $530f: $00
	add  b                                           ; $5310: $80
	rst  $38                                         ; $5311: $ff
	nop                                              ; $5312: $00
	nop                                              ; $5313: $00
	add  b                                           ; $5314: $80
	ret  nz                                          ; $5315: $c0

	add  [hl]                                        ; $5316: $86
	rst  $38                                         ; $5317: $ff
	ld   [bc], a                                     ; $5318: $02
	db   $fc                                         ; $5319: $fc
	rst  $38                                         ; $531a: $ff
	inc  bc                                          ; $531b: $03
	add  b                                           ; $531c: $80
	db   $fc                                         ; $531d: $fc
	add  c                                           ; $531e: $81
	nop                                              ; $531f: $00
	add  h                                           ; $5320: $84
	ld   hl, sp+$02                                  ; $5321: $f8 $02
	ldh  a, [$f1]                                    ; $5323: $f0 $f1
	nop                                              ; $5325: $00
	add  b                                           ; $5326: $80
	add  d                                           ; $5327: $82
	ld   bc, $0002                                   ; $5328: $01 $02 $00
	add  c                                           ; $532b: $81
	inc  b                                           ; $532c: $04
	nop                                              ; $532d: $00
	nop                                              ; $532e: $00
	add  c                                           ; $532f: $81
	ld   [rRAMG], sp                                 ; $5330: $08 $00 $00
	add  b                                           ; $5333: $80
	sub  b                                           ; $5334: $90
	ld   bc, $20d0                                   ; $5335: $01 $d0 $20
	sbc  l                                           ; $5338: $9d
	nop                                              ; $5339: $00
	add  b                                           ; $533a: $80
	rra                                              ; $533b: $1f
	add  b                                           ; $533c: $80
	inc  bc                                          ; $533d: $03
	adc  e                                           ; $533e: $8b
	nop                                              ; $533f: $00
	ld   bc, $7fff                                   ; $5340: $01 $ff $7f
	add  c                                           ; $5343: $81
	rst  $38                                         ; $5344: $ff
	inc  bc                                          ; $5345: $03
	rra                                              ; $5346: $1f
	ld   a, a                                        ; $5347: $7f
	nop                                              ; $5348: $00
	rra                                              ; $5349: $1f
	add  h                                           ; $534a: $84
	nop                                              ; $534b: $00
	nop                                              ; $534c: $00
	rrca                                             ; $534d: $0f
	add  b                                           ; $534e: $80
	di                                               ; $534f: $f3
	nop                                              ; $5350: $00

jr_089_5351:
	rst  $30                                         ; $5351: $f7
	add  b                                           ; $5352: $80
	db   $f4                                         ; $5353: $f4
	inc  bc                                          ; $5354: $03
	ldh  [$f8], a                                    ; $5355: $e0 $f8
	nop                                              ; $5357: $00
	ldh  [$84], a                                    ; $5358: $e0 $84
	nop                                              ; $535a: $00
	add  b                                           ; $535b: $80
	ldh  [$ce], a                                    ; $535c: $e0 $ce
	nop                                              ; $535e: $00
	ld   c, $0e                                      ; $535f: $0e $0e
	inc  b                                           ; $5361: $04
	inc  d                                           ; $5362: $14
	ld   [$090b], sp                                 ; $5363: $08 $0b $09
	dec  l                                           ; $5366: $2d
	ld   de, $0429                                   ; $5367: $11 $29 $04
	inc  [hl]                                        ; $536a: $34
	jr   jr_089_53c5                                 ; $536b: $18 $58

	jr   nz, jr_089_53c0                             ; $536d: $20 $51

	add  l                                           ; $536f: $85
	nop                                              ; $5370: $00
	jr   @+$1e                                       ; $5371: $18 $1c

	jr   @+$3c                                       ; $5373: $18 $3a

	inc  b                                           ; $5375: $04
	inc  [hl]                                        ; $5376: $34
	nop                                              ; $5377: $00
	ccf                                              ; $5378: $3f
	ld   hl, $306b                                   ; $5379: $21 $6b $30
	inc  sp                                          ; $537c: $33
	jr   nz, jr_089_53aa                             ; $537d: $20 $2b

	ld   [hl-], a                                    ; $537f: $32
	ld   [hl], d                                     ; $5380: $72
	ld   hl, $0833                                   ; $5381: $21 $33 $08
	dec  hl                                          ; $5384: $2b
	jr   jr_089_53a1                                 ; $5385: $18 $1a

	db   $10                                         ; $5387: $10
	ld   a, [hl]                                     ; $5388: $7e
	inc  l                                           ; $5389: $2c
	ld   b, d                                        ; $538a: $42
	adc  e                                           ; $538b: $8b
	nop                                              ; $538c: $00
	ld   [$80c0], sp                                 ; $538d: $08 $c0 $80
	and  b                                           ; $5390: $a0
	ld   b, b                                        ; $5391: $40
	ld   b, e                                        ; $5392: $43
	nop                                              ; $5393: $00
	add  $05                                         ; $5394: $c6 $05
	db   $e4                                         ; $5396: $e4
	add  c                                           ; $5397: $81
	nop                                              ; $5398: $00
	ld   [bc], a                                     ; $5399: $02
	add  l                                           ; $539a: $85
	nop                                              ; $539b: $00
	ld   b, d                                        ; $539c: $42
	add  c                                           ; $539d: $81
	adc  b                                           ; $539e: $88
	nop                                              ; $539f: $00
	adc  e                                           ; $53a0: $8b

jr_089_53a1:
	adc  a                                           ; $53a1: $8f
	nop                                              ; $53a2: $00
	nop                                              ; $53a3: $00
	add  b                                           ; $53a4: $80
	add  c                                           ; $53a5: $81
	nop                                              ; $53a6: $00
	inc  b                                           ; $53a7: $04
	add  b                                           ; $53a8: $80
	nop                                              ; $53a9: $00

jr_089_53aa:
	jr   jr_089_53ac                                 ; $53aa: $18 $00

jr_089_53ac:
	and  h                                           ; $53ac: $a4
	add  b                                           ; $53ad: $80
	jr   jr_089_53b3                                 ; $53ae: $18 $03

	adc  h                                           ; $53b0: $8c
	db   $ec                                         ; $53b1: $ec
	adc  b                                           ; $53b2: $88

jr_089_53b3:
	ld   d, h                                        ; $53b3: $54
	cp   l                                           ; $53b4: $bd
	nop                                              ; $53b5: $00
	ld   c, $fc                                      ; $53b6: $0e $fc
	ld   d, h                                        ; $53b8: $54
	ld   d, [hl]                                     ; $53b9: $56
	ld   l, b                                        ; $53ba: $68
	xor  b                                           ; $53bb: $a8
	jr   z, jr_089_53e8                              ; $53bc: $28 $2a

	ld   l, c                                        ; $53be: $69
	ld   l, l                                        ; $53bf: $6d

jr_089_53c0:
	pop  af                                          ; $53c0: $f1
	jp   $e8e0                                       ; $53c1: $c3 $e0 $e8


	ld   [hl], b                                     ; $53c4: $70

jr_089_53c5:
	ld   [hl], e                                     ; $53c5: $73
	add  b                                           ; $53c6: $80
	ld   a, b                                        ; $53c7: $78
	ld   bc, $1514                                   ; $53c8: $01 $14 $15
	add  b                                           ; $53cb: $80
	rlca                                             ; $53cc: $07
	adc  c                                           ; $53cd: $89
	nop                                              ; $53ce: $00
	db   $10                                         ; $53cf: $10
	rst  $28                                         ; $53d0: $ef
	ld   b, d                                        ; $53d1: $42
	ld   l, d                                        ; $53d2: $6a
	ld   bc, $1056                                   ; $53d3: $01 $56 $10
	sub  b                                           ; $53d6: $90
	ld   b, [hl]                                     ; $53d7: $46
	ld   b, a                                        ; $53d8: $47
	ld   b, h                                        ; $53d9: $44
	call nz, Call_089_5504                           ; $53da: $c4 $04 $55
	db   $10                                         ; $53dd: $10
	call c, $0901                                    ; $53de: $dc $01 $09
	add  b                                           ; $53e1: $80
	ld   d, b                                        ; $53e2: $50
	ld   bc, $6d69                                   ; $53e3: $01 $69 $6d
	add  b                                           ; $53e6: $80
	db   $dd                                         ; $53e7: $dd

jr_089_53e8:
	add  a                                           ; $53e8: $87
	nop                                              ; $53e9: $00
	inc  c                                           ; $53ea: $0c
	inc  bc                                          ; $53eb: $03
	ld   bc, $0880                                   ; $53ec: $01 $80 $08
	adc  d                                           ; $53ef: $8a
	ld   hl, $00fd                                   ; $53f0: $21 $fd $00
	db   $10                                         ; $53f3: $10
	ld   bc, $004f                                   ; $53f4: $01 $4f $00
	sub  d                                           ; $53f7: $92
	add  b                                           ; $53f8: $80
	ld   d, c                                        ; $53f9: $51
	add  b                                           ; $53fa: $80
	ld   b, d                                        ; $53fb: $42
	add  b                                           ; $53fc: $80
	add  l                                           ; $53fd: $85
	ld   bc, $5a4a                                   ; $53fe: $01 $4a $5a
	add  b                                           ; $5401: $80
	xor  b                                           ; $5402: $a8
	add  a                                           ; $5403: $87
	nop                                              ; $5404: $00
	ld   [bc], a                                     ; $5405: $02
	ld   b, h                                        ; $5406: $44

jr_089_5407:
	nop                                              ; $5407: $00
	inc  b                                           ; $5408: $04
	add  e                                           ; $5409: $83
	nop                                              ; $540a: $00
	nop                                              ; $540b: $00
	ld   b, b                                        ; $540c: $40
	add  b                                           ; $540d: $80
	ld   d, b                                        ; $540e: $50
	add  b                                           ; $540f: $80
	and  b                                           ; $5410: $a0
	add  b                                           ; $5411: $80
	ld   d, b                                        ; $5412: $50
	add  b                                           ; $5413: $80
	and  b                                           ; $5414: $a0
	add  b                                           ; $5415: $80
	ld   b, b                                        ; $5416: $40
	rst  $38                                         ; $5417: $ff
	nop                                              ; $5418: $00
	rst  $38                                         ; $5419: $ff
	nop                                              ; $541a: $00
	rst  $38                                         ; $541b: $ff
	nop                                              ; $541c: $00
	rst  $38                                         ; $541d: $ff
	nop                                              ; $541e: $00
	rst  $38                                         ; $541f: $ff
	nop                                              ; $5420: $00
	rst  $38                                         ; $5421: $ff
	nop                                              ; $5422: $00
	push hl                                          ; $5423: $e5
	nop                                              ; $5424: $00
	sbc  h                                           ; $5425: $9c
	nop                                              ; $5426: $00
	sub  b                                           ; $5427: $90
	nop                                              ; $5428: $00
	add  b                                           ; $5429: $80
	rst  $38                                         ; $542a: $ff
	dec  c                                           ; $542b: $0d
	db   $dd                                         ; $542c: $dd
	add  b                                           ; $542d: $80
	rst  $30                                         ; $542e: $f7
	add  b                                           ; $542f: $80
	rst  $30                                         ; $5430: $f7
	add  b                                           ; $5431: $80
	xor  d                                           ; $5432: $aa
	add  b                                           ; $5433: $80
	db   $dd                                         ; $5434: $dd
	add  b                                           ; $5435: $80
	push de                                          ; $5436: $d5
	sbc  a                                           ; $5437: $9f
	ld   h, b                                        ; $5438: $60
	nop                                              ; $5439: $00
	add  b                                           ; $543a: $80
	rst  $38                                         ; $543b: $ff
	dec  bc                                          ; $543c: $0b
	db   $dd                                         ; $543d: $dd
	nop                                              ; $543e: $00
	ld   [hl], a                                     ; $543f: $77
	nop                                              ; $5440: $00
	ld   [hl], a                                     ; $5441: $77
	nop                                              ; $5442: $00
	xor  d                                           ; $5443: $aa
	nop                                              ; $5444: $00
	db   $dd                                         ; $5445: $dd
	nop                                              ; $5446: $00
	ld   d, l                                        ; $5447: $55
	rst  $38                                         ; $5448: $ff
	add  b                                           ; $5449: $80
	nop                                              ; $544a: $00
	add  b                                           ; $544b: $80
	rst  $38                                         ; $544c: $ff
	dec  bc                                          ; $544d: $0b
	db   $dd                                         ; $544e: $dd
	nop                                              ; $544f: $00
	ld   [hl], a                                     ; $5450: $77
	nop                                              ; $5451: $00
	ld   [hl], a                                     ; $5452: $77
	nop                                              ; $5453: $00
	xor  d                                           ; $5454: $aa
	nop                                              ; $5455: $00
	db   $dd                                         ; $5456: $dd
	nop                                              ; $5457: $00
	ld   d, l                                        ; $5458: $55
	rst  $38                                         ; $5459: $ff
	add  b                                           ; $545a: $80
	nop                                              ; $545b: $00
	add  b                                           ; $545c: $80
	rst  $38                                         ; $545d: $ff
	inc  c                                           ; $545e: $0c
	db   $dd                                         ; $545f: $dd
	ld   bc, $0177                                   ; $5460: $01 $77 $01
	ld   [hl], a                                     ; $5463: $77
	ld   bc, $01ab                                   ; $5464: $01 $ab $01
	db   $dd                                         ; $5467: $dd
	ld   bc, $f955                                   ; $5468: $01 $55 $f9
	ld   b, $9d                                      ; $546b: $06 $9d
	nop                                              ; $546d: $00
	db   $10                                         ; $546e: $10
	ret  nc                                          ; $546f: $d0

	sub  b                                           ; $5470: $90
	ldh  a, [$90]                                    ; $5471: $f0 $90
	ldh  a, [$90]                                    ; $5473: $f0 $90
	or   b                                           ; $5475: $b0
	sub  b                                           ; $5476: $90
	ret  nc                                          ; $5477: $d0

	sub  c                                           ; $5478: $91
	pop  de                                          ; $5479: $d1
	sub  c                                           ; $547a: $91
	or   c                                           ; $547b: $b1
	sub  d                                           ; $547c: $92
	ldh  a, [c]                                      ; $547d: $f2
	sub  b                                           ; $547e: $90
	jr   nz, jr_089_5407                             ; $547f: $20 $86

	nop                                              ; $5481: $00
	ld   [bc], a                                     ; $5482: $02
	add  b                                           ; $5483: $80
	adc  h                                           ; $5484: $8c
	call z, $de80                                    ; $5485: $cc $80 $de
	ld   [bc], a                                     ; $5488: $02
	ld   [$143e], a                                  ; $5489: $ea $3e $14
	adc  b                                           ; $548c: $88
	nop                                              ; $548d: $00
	add  c                                           ; $548e: $81
	jr   jr_089_54a3                                 ; $548f: $18 $12

	ld   a, [de]                                     ; $5491: $1a
	ld   a, [hl+]                                    ; $5492: $2a
	dec  h                                           ; $5493: $25
	add  hl, bc                                      ; $5494: $09
	rrca                                             ; $5495: $0f
	add  hl, bc                                      ; $5496: $09
	rrca                                             ; $5497: $0f
	add  hl, bc                                      ; $5498: $09
	dec  bc                                          ; $5499: $0b
	add  hl, bc                                      ; $549a: $09
	dec  c                                           ; $549b: $0d
	add  hl, bc                                      ; $549c: $09
	dec  c                                           ; $549d: $0d
	add  hl, bc                                      ; $549e: $09
	adc  e                                           ; $549f: $8b
	adc  c                                           ; $54a0: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54a1: $cf
	ret                                              ; $54a2: $c9


jr_089_54a3:
	ld   [bc], a                                     ; $54a3: $02
	sbc  l                                           ; $54a4: $9d
	nop                                              ; $54a5: $00
	inc  e                                           ; $54a6: $1c
	ret  nc                                          ; $54a7: $d0

	sub  d                                           ; $54a8: $92
	or   d                                           ; $54a9: $b2
	sub  a                                           ; $54aa: $97
	rst  $10                                         ; $54ab: $d7
	sub  a                                           ; $54ac: $97
	rst  $10                                         ; $54ad: $d7
	sub  h                                           ; $54ae: $94
	or   h                                           ; $54af: $b4
	sub  b                                           ; $54b0: $90
	ldh  a, [$90]                                    ; $54b1: $f0 $90
	ldh  a, [$91]                                    ; $54b3: $f0 $91
	or   c                                           ; $54b5: $b1
	sub  [hl]                                        ; $54b6: $96
	daa                                              ; $54b7: $27
	ld   h, a                                        ; $54b8: $67
	ld   a, $59                                      ; $54b9: $3e $59
	ld   a, l                                        ; $54bb: $7d
	inc  a                                           ; $54bc: $3c
	inc  l                                           ; $54bd: $2c
	db   $fc                                         ; $54be: $fc
	adc  d                                           ; $54bf: $8a
	ld   a, [hl]                                     ; $54c0: $7e
	or   h                                           ; $54c1: $b4

jr_089_54c2:
	rst  $30                                         ; $54c2: $f7
	ld   h, a                                        ; $54c3: $67
	add  b                                           ; $54c4: $80
	or   e                                           ; $54c5: $b3
	ld   a, [bc]                                     ; $54c6: $0a
	jr   nz, jr_089_54ec                             ; $54c7: $20 $23

	inc  bc                                          ; $54c9: $03
	ld   a, [bc]                                     ; $54ca: $0a
	adc  e                                           ; $54cb: $8b
	adc  l                                           ; $54cc: $8d
	ld   c, a                                        ; $54cd: $4f
	ld   e, e                                        ; $54ce: $5b
	ld   e, $10                                      ; $54cf: $1e $10
	ld   e, $80                                      ; $54d1: $1e $80

jr_089_54d3:
	dec  a                                           ; $54d3: $3d
	inc  d                                           ; $54d4: $14
	inc  hl                                          ; $54d5: $23
	cp   e                                           ; $54d6: $bb
	ld   d, d                                        ; $54d7: $52
	di                                               ; $54d8: $f3
	inc  e                                           ; $54d9: $1c
	jp   hl                                          ; $54da: $e9


	set  5, c                                        ; $54db: $cb $e9
	db   $ed                                         ; $54dd: $ed
	ld   l, c                                        ; $54de: $69
	ld   l, l                                        ; $54df: $6d
	ld   c, c                                        ; $54e0: $49
	ld   c, e                                        ; $54e1: $4b
	ld   l, c                                        ; $54e2: $69
	rst  $28                                         ; $54e3: $ef
	adc  c                                           ; $54e4: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54e5: $cf
	ret                                              ; $54e6: $c9


	db   $eb                                         ; $54e7: $eb
	jp   hl                                          ; $54e8: $e9


	ld   b, $9d                                      ; $54e9: $06 $9d
	nop                                              ; $54eb: $00

jr_089_54ec:
	ld   de, $90b0                                   ; $54ec: $11 $b0 $90
	pop  de                                          ; $54ef: $d1
	sub  c                                           ; $54f0: $91
	or   e                                           ; $54f1: $b3
	sub  e                                           ; $54f2: $93
	pop  af                                          ; $54f3: $f1
	sub  c                                           ; $54f4: $91
	ldh  a, [c]                                      ; $54f5: $f2
	sub  d                                           ; $54f6: $92
	or   c                                           ; $54f7: $b1
	sub  c                                           ; $54f8: $91
	pop  de                                          ; $54f9: $d1
	sub  c                                           ; $54fa: $91
	ret  nc                                          ; $54fb: $d0

	sub  b                                           ; $54fc: $90
	ld   h, a                                        ; $54fd: $67
	rlca                                             ; $54fe: $07
	add  d                                           ; $54ff: $82
	nop                                              ; $5500: $00
	add  b                                           ; $5501: $80
	add  b                                           ; $5502: $80
	add  b                                           ; $5503: $80

Call_089_5504:
	nop                                              ; $5504: $00
	add  b                                           ; $5505: $80
	add  b                                           ; $5506: $80
	add  d                                           ; $5507: $82
	nop                                              ; $5508: $00
	dec  b                                           ; $5509: $05
	dec  b                                           ; $550a: $05
	push bc                                          ; $550b: $c5
	ret  z                                           ; $550c: $c8

	jr   jr_089_5520                                 ; $550d: $18 $11

	ld   bc, $0d80                                   ; $550f: $01 $80 $0d
	add  b                                           ; $5512: $80
	rlca                                             ; $5513: $07
	add  b                                           ; $5514: $80
	dec  e                                           ; $5515: $1d
	add  b                                           ; $5516: $80
	rlca                                             ; $5517: $07
	ld   [de], a                                     ; $5518: $12
	ld   a, [de]                                     ; $5519: $1a
	dec  de                                          ; $551a: $1b
	ld   a, [bc]                                     ; $551b: $0a
	jp   hl                                          ; $551c: $e9


	db   $ed                                         ; $551d: $ed
	add  hl, hl                                      ; $551e: $29
	dec  hl                                          ; $551f: $2b

jr_089_5520:
	add  hl, hl                                      ; $5520: $29
	xor  a                                           ; $5521: $af
	adc  c                                           ; $5522: $89
	rrca                                             ; $5523: $0f
	add  hl, bc                                      ; $5524: $09
	ld   c, e                                        ; $5525: $4b
	ld   c, c                                        ; $5526: $49
	call $edc9                                       ; $5527: $cd $c9 $ed
	jp   hl                                          ; $552a: $e9


	ld   b, $9d                                      ; $552b: $06 $9d
	nop                                              ; $552d: $00
	db   $10                                         ; $552e: $10
	pop  de                                          ; $552f: $d1
	sub  c                                           ; $5530: $91
	pop  af                                          ; $5531: $f1
	sub  c                                           ; $5532: $91
	ldh  a, [$90]                                    ; $5533: $f0 $90
	or   b                                           ; $5535: $b0
	sub  b                                           ; $5536: $90
	ret  nc                                          ; $5537: $d0

	sub  b                                           ; $5538: $90
	ret  nc                                          ; $5539: $d0

	sub  b                                           ; $553a: $90
	or   b                                           ; $553b: $b0
	sub  b                                           ; $553c: $90
	ldh  a, [$90]                                    ; $553d: $f0 $90
	jr   nz, jr_089_54c2                             ; $553f: $20 $81

	nop                                              ; $5541: $00
	add  b                                           ; $5542: $80
	inc  bc                                          ; $5543: $03
	adc  b                                           ; $5544: $88
	nop                                              ; $5545: $00
	ld   a, [bc]                                     ; $5546: $0a
	ld   a, $3f                                      ; $5547: $3e $3f
	adc  $ff                                         ; $5549: $ce $ff
	ld   [$1cff], a                                  ; $554b: $ea $ff $1c
	rst  $38                                         ; $554e: $ff
	pop  bc                                          ; $554f: $c1
	rra                                              ; $5550: $1f
	jr   jr_089_54d3                                 ; $5551: $18 $80

	ld   bc, $0081                                   ; $5553: $01 $81 $00
	db   $10                                         ; $5556: $10
	db   $ed                                         ; $5557: $ed
	jp   hl                                          ; $5558: $e9


	ld   c, a                                        ; $5559: $4f
	jp   hl                                          ; $555a: $e9


	ld   l, a                                        ; $555b: $6f
	jp   hl                                          ; $555c: $e9


	set  5, c                                        ; $555d: $cb $e9
	dec  c                                           ; $555f: $0d
	jp   hl                                          ; $5560: $e9


	db   $ed                                         ; $5561: $ed
	jp   hl                                          ; $5562: $e9


	db   $eb                                         ; $5563: $eb
	add  hl, bc                                      ; $5564: $09
	rrca                                             ; $5565: $0f
	add  hl, bc                                      ; $5566: $09
	ld   [bc], a                                     ; $5567: $02
	sbc  l                                           ; $5568: $9d
	nop                                              ; $5569: $00
	dec  c                                           ; $556a: $0d
	rst  JumpTable                                         ; $556b: $df
	sbc  a                                           ; $556c: $9f
	or   a                                           ; $556d: $b7
	add  b                                           ; $556e: $80
	db   $dd                                         ; $556f: $dd
	add  b                                           ; $5570: $80
	db   $dd                                         ; $5571: $dd
	add  b                                           ; $5572: $80
	xor  d                                           ; $5573: $aa
	add  b                                           ; $5574: $80
	rst  $30                                         ; $5575: $f7
	add  b                                           ; $5576: $80
	push de                                          ; $5577: $d5
	rst  $38                                         ; $5578: $ff
	add  b                                           ; $5579: $80
	nop                                              ; $557a: $00
	add  b                                           ; $557b: $80
	rst  $38                                         ; $557c: $ff
	dec  bc                                          ; $557d: $0b
	ld   [hl], a                                     ; $557e: $77
	nop                                              ; $557f: $00
	db   $dd                                         ; $5580: $dd
	nop                                              ; $5581: $00
	db   $dd                                         ; $5582: $dd
	nop                                              ; $5583: $00
	xor  d                                           ; $5584: $aa
	nop                                              ; $5585: $00
	ld   [hl], a                                     ; $5586: $77
	nop                                              ; $5587: $00
	ld   d, l                                        ; $5588: $55
	rst  $38                                         ; $5589: $ff
	add  b                                           ; $558a: $80
	nop                                              ; $558b: $00
	add  b                                           ; $558c: $80
	rst  $38                                         ; $558d: $ff
	dec  bc                                          ; $558e: $0b
	ld   [hl], a                                     ; $558f: $77
	nop                                              ; $5590: $00
	db   $dd                                         ; $5591: $dd
	nop                                              ; $5592: $00
	db   $dd                                         ; $5593: $dd
	nop                                              ; $5594: $00
	xor  d                                           ; $5595: $aa
	nop                                              ; $5596: $00
	ld   [hl], a                                     ; $5597: $77
	nop                                              ; $5598: $00
	ld   d, l                                        ; $5599: $55
	rst  $38                                         ; $559a: $ff
	add  b                                           ; $559b: $80
	nop                                              ; $559c: $00
	dec  c                                           ; $559d: $0d
	db   $fd                                         ; $559e: $fd
	ld   sp, hl                                      ; $559f: $f9
	ld   [hl], e                                     ; $55a0: $73
	ld   bc, $01dd                                   ; $55a1: $01 $dd $01
	db   $dd                                         ; $55a4: $dd
	ld   bc, $01ab                                   ; $55a5: $01 $ab $01
	ld   [hl], a                                     ; $55a8: $77
	ld   bc, $ff55                                   ; $55a9: $01 $55 $ff
	ret  nz                                          ; $55ac: $c0

	nop                                              ; $55ad: $00
	add  d                                           ; $55ae: $82
	rrca                                             ; $55af: $0f
	nop                                              ; $55b0: $00
	ld   [$0f82], sp                                 ; $55b1: $08 $82 $0f
	add  d                                           ; $55b4: $82
	ld   c, $80                                      ; $55b5: $0e $80
	dec  c                                           ; $55b7: $0d
	ld   bc, $070f                                   ; $55b8: $01 $0f $07
	adc  l                                           ; $55bb: $8d
	nop                                              ; $55bc: $00
	add  d                                           ; $55bd: $82
	rst  $38                                         ; $55be: $ff
	nop                                              ; $55bf: $00
	nop                                              ; $55c0: $00
	add  d                                           ; $55c1: $82
	rst  $38                                         ; $55c2: $ff
	add  b                                           ; $55c3: $80
	ld   a, a                                        ; $55c4: $7f
	add  b                                           ; $55c5: $80
	inc  sp                                          ; $55c6: $33
	add  b                                           ; $55c7: $80
	ld   hl, $c180                                   ; $55c8: $21 $80 $c1
	adc  l                                           ; $55cb: $8d
	nop                                              ; $55cc: $00
	add  d                                           ; $55cd: $82
	rst  $38                                         ; $55ce: $ff
	nop                                              ; $55cf: $00
	nop                                              ; $55d0: $00
	add  h                                           ; $55d1: $84
	rst  $38                                         ; $55d2: $ff
	add  d                                           ; $55d3: $82
	rst  $20                                         ; $55d4: $e7
	add  b                                           ; $55d5: $80
	push de                                          ; $55d6: $d5
	adc  l                                           ; $55d7: $8d
	nop                                              ; $55d8: $00
	add  d                                           ; $55d9: $82
	ldh  a, [rP1]                                    ; $55da: $f0 $00
	db   $10                                         ; $55dc: $10
	add  [hl]                                        ; $55dd: $86
	ldh  a, [$80]                                    ; $55de: $f0 $80
	ld   [hl], b                                     ; $55e0: $70
	ld   bc, $2030                                   ; $55e1: $01 $30 $20
	cp   l                                           ; $55e4: $bd
	nop                                              ; $55e5: $00
	nop                                              ; $55e6: $00
	ld   [$0d80], sp                                 ; $55e7: $08 $80 $0d
	add  d                                           ; $55ea: $82
	ld   [$0b80], sp                                 ; $55eb: $08 $80 $0b
	add  d                                           ; $55ee: $82
	rrca                                             ; $55ef: $0f
	add  b                                           ; $55f0: $80
	ld   c, $86                                      ; $55f1: $0e $86
	ld   [$0c81], sp                                 ; $55f3: $08 $81 $0c
	add  c                                           ; $55f6: $81
	ld   [$0a00], sp                                 ; $55f7: $08 $00 $0a
	add  b                                           ; $55fa: $80
	ld   [$0600], sp                                 ; $55fb: $08 $00 $06
	add  b                                           ; $55fe: $80
	sbc  b                                           ; $55ff: $98
	add  b                                           ; $5600: $80
	and  [hl]                                        ; $5601: $a6
	add  b                                           ; $5602: $80
	jp   $0380                                       ; $5603: $c3 $80 $03


	add  b                                           ; $5606: $80
	add  c                                           ; $5607: $81
	add  [hl]                                        ; $5608: $86
	nop                                              ; $5609: $00
	add  b                                           ; $560a: $80
	ld   a, [hl]                                     ; $560b: $7e
	add  b                                           ; $560c: $80
	ld   a, a                                        ; $560d: $7f
	add  b                                           ; $560e: $80
	ld   a, b                                        ; $560f: $78
	nop                                              ; $5610: $00

jr_089_5611:
	ld   a, a                                        ; $5611: $7f
	add  b                                           ; $5612: $80
	ccf                                              ; $5613: $3f
	ld   bc, $f070                                   ; $5614: $01 $70 $f0
	add  b                                           ; $5617: $80
	inc  a                                           ; $5618: $3c
	nop                                              ; $5619: $00
	rst  $38                                         ; $561a: $ff
	add  b                                           ; $561b: $80
	db   $fc                                         ; $561c: $fc
	add  b                                           ; $561d: $80
	ld   [hl], h                                     ; $561e: $74
	add  b                                           ; $561f: $80
	or   b                                           ; $5620: $b0
	add  d                                           ; $5621: $82
	ldh  [$80], a                                    ; $5622: $e0 $80
	ret  nz                                          ; $5624: $c0

	add  b                                           ; $5625: $80
	ld   b, b                                        ; $5626: $40
	adc  b                                           ; $5627: $88
	nop                                              ; $5628: $00
	add  b                                           ; $5629: $80
	ld   hl, sp-$80                                  ; $562a: $f8 $80
	ldh  [c], a                                      ; $562c: $e2
	inc  bc                                          ; $562d: $03
	ld   hl, sp+$1c                                  ; $562e: $f8 $1c
	nop                                              ; $5630: $00
	db   $f4                                         ; $5631: $f4
	sub  [hl]                                        ; $5632: $96
	db   $10                                         ; $5633: $10
	add  b                                           ; $5634: $80
	ldh  a, [$80]                                    ; $5635: $f0 $80
	or   b                                           ; $5637: $b0
	add  c                                           ; $5638: $81
	db   $10                                         ; $5639: $10
	cp   [hl]                                        ; $563a: $be
	nop                                              ; $563b: $00
	nop                                              ; $563c: $00
	ld   b, $81                                      ; $563d: $06 $81
	ld   [$0900], sp                                 ; $563f: $08 $00 $09
	add  b                                           ; $5642: $80
	dec  bc                                          ; $5643: $0b
	add  b                                           ; $5644: $80
	ld   a, [bc]                                     ; $5645: $0a
	add  b                                           ; $5646: $80
	dec  bc                                          ; $5647: $0b
	nop                                              ; $5648: $00
	ld   [$0f83], sp                                 ; $5649: $08 $83 $0f
	adc  l                                           ; $564c: $8d
	nop                                              ; $564d: $00
	nop                                              ; $564e: $00
	rst  $38                                         ; $564f: $ff
	add  c                                           ; $5650: $81
	nop                                              ; $5651: $00
	ld   [bc], a                                     ; $5652: $02
	inc  bc                                          ; $5653: $03
	add  b                                           ; $5654: $80
	add  e                                           ; $5655: $83
	add  d                                           ; $5656: $82
	add  b                                           ; $5657: $80
	nop                                              ; $5658: $00
	nop                                              ; $5659: $00
	add  e                                           ; $565a: $83
	rst  $38                                         ; $565b: $ff
	adc  l                                           ; $565c: $8d
	nop                                              ; $565d: $00
	ld   [bc], a                                     ; $565e: $02
	ret  nz                                          ; $565f: $c0

	nop                                              ; $5660: $00
	ret  nz                                          ; $5661: $c0

	add  e                                           ; $5662: $83
	nop                                              ; $5663: $00
	inc  b                                           ; $5664: $04
	ldh  [rP1], a                                    ; $5665: $e0 $00
	ld   e, $00                                      ; $5667: $1e $00
	cp   $82                                         ; $5669: $fe $82
	rst  $38                                         ; $566b: $ff
	adc  [hl]                                        ; $566c: $8e
	nop                                              ; $566d: $00
	adc  d                                           ; $566e: $8a
	db   $10                                         ; $566f: $10
	add  d                                           ; $5670: $82
	ldh  a, [rIE]                                    ; $5671: $f0 $ff
	nop                                              ; $5673: $00
	rst  $38                                         ; $5674: $ff
	nop                                              ; $5675: $00
	rst  $38                                         ; $5676: $ff
	nop                                              ; $5677: $00
	rst  $38                                         ; $5678: $ff
	nop                                              ; $5679: $00
	rst  $38                                         ; $567a: $ff
	nop                                              ; $567b: $00
	xor  b                                           ; $567c: $a8
	nop                                              ; $567d: $00
	and  $00                                         ; $567e: $e6 $00

jr_089_5680:
	sbc  h                                           ; $5680: $9c
	nop                                              ; $5681: $00
	add  b                                           ; $5682: $80
	rrca                                             ; $5683: $0f
	adc  h                                           ; $5684: $8c
	nop                                              ; $5685: $00
	add  b                                           ; $5686: $80
	ld   hl, sp-$42                                  ; $5687: $f8 $be
	nop                                              ; $5689: $00
	add  d                                           ; $568a: $82
	db   $10                                         ; $568b: $10
	add  d                                           ; $568c: $82
	jr   nz, jr_089_5611                             ; $568d: $20 $82

	ld   b, b                                        ; $568f: $40
	add  d                                           ; $5690: $82
	add  b                                           ; $5691: $80
	add  b                                           ; $5692: $80
	rlca                                             ; $5693: $07
	adc  e                                           ; $5694: $8b
	nop                                              ; $5695: $00
	add  b                                           ; $5696: $80
	ld   bc, $0000                                   ; $5697: $01 $00 $00
	add  b                                           ; $569a: $80
	ret  nz                                          ; $569b: $c0

	ld   bc, $6020                                   ; $569c: $01 $20 $60
	add  b                                           ; $569f: $80
	ld   h, a                                        ; $56a0: $67
	ld   [bc], a                                     ; $56a1: $02
	ld   e, b                                        ; $56a2: $58
	ld   a, [hl]                                     ; $56a3: $7e
	ld   b, [hl]                                     ; $56a4: $46
	add  b                                           ; $56a5: $80
	ld   a, h                                        ; $56a6: $7c
	inc  bc                                          ; $56a7: $03
	ld   hl, sp-$68                                  ; $56a8: $f8 $98
	ld   hl, sp-$48                                  ; $56aa: $f8 $b8
	add  e                                           ; $56ac: $83
	nop                                              ; $56ad: $00
	add  b                                           ; $56ae: $80
	ldh  a, [$80]                                    ; $56af: $f0 $80
	ld   c, $80                                      ; $56b1: $0e $80
	ld   bc, $008c                                   ; $56b3: $01 $8c $00
	add  b                                           ; $56b6: $80
	add  b                                           ; $56b7: $80
	add  b                                           ; $56b8: $80
	ld   h, b                                        ; $56b9: $60
	add  b                                           ; $56ba: $80
	db   $10                                         ; $56bb: $10
	add  d                                           ; $56bc: $82
	ld   bc, $0282                                   ; $56bd: $01 $82 $02
	add  d                                           ; $56c0: $82
	inc  b                                           ; $56c1: $04
	add  d                                           ; $56c2: $82
	ld   [$008f], sp                                 ; $56c3: $08 $8f $00
	add  b                                           ; $56c6: $80
	ld   bc, $0381                                   ; $56c7: $01 $81 $03
	nop                                              ; $56ca: $00
	ld   [bc], a                                     ; $56cb: $02
	add  c                                           ; $56cc: $81
	rlca                                             ; $56cd: $07
	nop                                              ; $56ce: $00
	inc  b                                           ; $56cf: $04
	add  c                                           ; $56d0: $81
	rrca                                             ; $56d1: $0f
	inc  b                                           ; $56d2: $04
	add  hl, bc                                      ; $56d3: $09
	rra                                              ; $56d4: $1f
	ld   e, e                                        ; $56d5: $5b
	ldh  a, [$30]                                    ; $56d6: $f0 $30
	add  b                                           ; $56d8: $80
	ldh  a, [rSB]                                    ; $56d9: $f0 $01
	ldh  [$60], a                                    ; $56db: $e0 $60
	add  b                                           ; $56dd: $80
	ldh  [$82], a                                    ; $56de: $e0 $82
	ret  nz                                          ; $56e0: $c0

	add  d                                           ; $56e1: $82
	add  b                                           ; $56e2: $80
	adc  h                                           ; $56e3: $8c
	nop                                              ; $56e4: $00
	ld   bc, $0901                                   ; $56e5: $01 $01 $09
	add  b                                           ; $56e8: $80
	jr   @+$03                                       ; $56e9: $18 $01

	jr   c, jr_089_5711                              ; $56eb: $38 $24

	add  b                                           ; $56ed: $80
	inc  a                                           ; $56ee: $3c
	ld   bc, $4e7c                                   ; $56ef: $01 $7c $4e
	add  b                                           ; $56f2: $80
	ld   a, [hl]                                     ; $56f3: $7e
	ld   bc, $96fe                                   ; $56f4: $01 $fe $96
	add  c                                           ; $56f7: $81
	ld   a, [$a400]                                  ; $56f8: $fa $00 $a4
	add  c                                           ; $56fb: $81
	db   $10                                         ; $56fc: $10
	add  b                                           ; $56fd: $80
	jr   nz, jr_089_5680                             ; $56fe: $20 $80

	ccf                                              ; $5700: $3f
	ld   [bc], a                                     ; $5701: $02
	ld   a, b                                        ; $5702: $78
	ld   a, a                                        ; $5703: $7f
	ld   a, b                                        ; $5704: $78
	add  b                                           ; $5705: $80
	ld   b, a                                        ; $5706: $47
	ld   [bc], a                                     ; $5707: $02
	ld   a, b                                        ; $5708: $78
	nop                                              ; $5709: $00
	rlca                                             ; $570a: $07
	add  e                                           ; $570b: $83
	nop                                              ; $570c: $00
	dec  c                                           ; $570d: $0d
	inc  bc                                          ; $570e: $03
	db   $e3                                         ; $570f: $e3
	rst  $38                                         ; $5710: $ff

jr_089_5711:
	inc  bc                                          ; $5711: $03
	rst  $38                                         ; $5712: $ff
	ld   h, b                                        ; $5713: $60
	rst  $38                                         ; $5714: $ff
	sbc  h                                           ; $5715: $9c
	rst  $38                                         ; $5716: $ff
	db   $e3                                         ; $5717: $e3
	sbc  a                                           ; $5718: $9f
	ld   h, a                                        ; $5719: $67
	ccf                                              ; $571a: $3f
	inc  sp                                          ; $571b: $33
	add  b                                           ; $571c: $80
	rra                                              ; $571d: $1f
	ld   bc, $667e                                   ; $571e: $01 $7e $66
	add  b                                           ; $5721: $80
	ld   a, [hl]                                     ; $5722: $7e
	rlca                                             ; $5723: $07
	db   $fc                                         ; $5724: $fc
	call z, Call_089_7cfc                            ; $5725: $cc $fc $7c
	db   $fc                                         ; $5728: $fc
	inc  de                                          ; $5729: $13
	rst  $38                                         ; $572a: $ff
	or   b                                           ; $572b: $b0
	adc  e                                           ; $572c: $8b
	nop                                              ; $572d: $00
	add  b                                           ; $572e: $80
	add  b                                           ; $572f: $80
	nop                                              ; $5730: $00
	nop                                              ; $5731: $00
	add  b                                           ; $5732: $80

jr_089_5733:
	ld   bc, $0301                                   ; $5733: $01 $01 $03
	ld   [bc], a                                     ; $5736: $02
	add  b                                           ; $5737: $80
	inc  bc                                          ; $5738: $03
	ld   bc, $0407                                   ; $5739: $01 $07 $04
	add  b                                           ; $573c: $80
	rlca                                             ; $573d: $07
	ld   bc, $090f                                   ; $573e: $01 $0f $09
	add  b                                           ; $5741: $80
	rrca                                             ; $5742: $0f
	ld   bc, $871f                                   ; $5743: $01 $1f $87
	add  c                                           ; $5746: $81
	db   $f4                                         ; $5747: $f4
	nop                                              ; $5748: $00
	ld   d, b                                        ; $5749: $50
	add  c                                           ; $574a: $81
	add  sp, $00                                     ; $574b: $e8 $00
	and  b                                           ; $574d: $a0
	add  c                                           ; $574e: $81
	ret  nc                                          ; $574f: $d0

	nop                                              ; $5750: $00
	ld   b, b                                        ; $5751: $40
	add  c                                           ; $5752: $81
	and  b                                           ; $5753: $a0
	nop                                              ; $5754: $00
	ld   b, b                                        ; $5755: $40
	adc  l                                           ; $5756: $8d
	nop                                              ; $5757: $00
	inc  bc                                          ; $5758: $03
	ld   a, a                                        ; $5759: $7f
	ld   [hl], e                                     ; $575a: $73
	inc  bc                                          ; $575b: $03
	rrca                                             ; $575c: $0f
	add  b                                           ; $575d: $80
	ld   bc, $0088                                   ; $575e: $01 $88 $00
	add  hl, bc                                      ; $5761: $09
	ld   a, b                                        ; $5762: $78

jr_089_5763:
	rst  $38                                         ; $5763: $ff
	ld   sp, hl                                      ; $5764: $f9
	rst  $38                                         ; $5765: $ff
	ld   a, [hl]                                     ; $5766: $7e
	pop  af                                          ; $5767: $f1
	ld   de, $001e                                   ; $5768: $11 $1e $00
	ld   bc, $0084                                   ; $576b: $01 $84 $00
	dec  c                                           ; $576e: $0d
	ld   a, b                                        ; $576f: $78
	ld   hl, sp-$7a                                  ; $5770: $f8 $86
	cp   $39                                         ; $5772: $fe $39
	rst  $38                                         ; $5774: $ff
	jp   nz, $3c3f                                   ; $5775: $c2 $3f $3c

	db   $e3                                         ; $5778: $e3
	inc  bc                                          ; $5779: $03
	inc  e                                           ; $577a: $1c
	nop                                              ; $577b: $00
	inc  bc                                          ; $577c: $03
	add  b                                           ; $577d: $80
	nop                                              ; $577e: $00
	nop                                              ; $577f: $00
	add  hl, bc                                      ; $5780: $09
	add  b                                           ; $5781: $80
	rra                                              ; $5782: $1f
	dec  c                                           ; $5783: $0d
	ccf                                              ; $5784: $3f
	and  l                                           ; $5785: $a5
	cp   $3e                                         ; $5786: $fe $3e
	cp   $1a                                         ; $5788: $fe $1a
	db   $fd                                         ; $578a: $fd
	cp   l                                           ; $578b: $bd
	ld   a, l                                        ; $578c: $7d
	ld   [hl], h                                     ; $578d: $74
	adc  d                                           ; $578e: $8a
	ld   a, [bc]                                     ; $578f: $0a
	ld   [hl], d                                     ; $5790: $72
	call z, Call_089_4081                            ; $5791: $cc $81 $40
	nop                                              ; $5794: $00
	nop                                              ; $5795: $00
	add  c                                           ; $5796: $81
	add  b                                           ; $5797: $80
	add  $00                                         ; $5798: $c6 $00
	add  b                                           ; $579a: $80
	inc  c                                           ; $579b: $0c
	adc  $00                                         ; $579c: $ce $00
	add  b                                           ; $579e: $80
	ld   b, $80                                      ; $579f: $06 $80
	ld   [bc], a                                     ; $57a1: $02
	add  b                                           ; $57a2: $80
	inc  c                                           ; $57a3: $0c
	add  b                                           ; $57a4: $80
	ld   [$0480], sp                                 ; $57a5: $08 $80 $04
	add  b                                           ; $57a8: $80
	ld   [$3c80], sp                                 ; $57a9: $08 $80 $3c
	sub  b                                           ; $57ac: $90
	nop                                              ; $57ad: $00
	add  b                                           ; $57ae: $80
	ld   h, b                                        ; $57af: $60
	add  b                                           ; $57b0: $80
	jr   nc, jr_089_5733                             ; $57b1: $30 $80

	ld   [hl-], a                                    ; $57b3: $32
	add  b                                           ; $57b4: $80
	ld   b, e                                        ; $57b5: $43
	add  b                                           ; $57b6: $80
	ld   h, l                                        ; $57b7: $65
	add  b                                           ; $57b8: $80
	ld   h, h                                        ; $57b9: $64
	add  b                                           ; $57ba: $80
	add  $96                                         ; $57bb: $c6 $96
	nop                                              ; $57bd: $00
	add  b                                           ; $57be: $80
	add  b                                           ; $57bf: $80
	add  b                                           ; $57c0: $80
	add  e                                           ; $57c1: $83
	add  b                                           ; $57c2: $80
	ld   bc, $0580                                   ; $57c3: $01 $80 $05
	sbc  d                                           ; $57c6: $9a
	nop                                              ; $57c7: $00
	add  b                                           ; $57c8: $80
	db   $10                                         ; $57c9: $10
	add  b                                           ; $57ca: $80
	inc  de                                          ; $57cb: $13
	xor  h                                           ; $57cc: $ac

jr_089_57cd:
	nop                                              ; $57cd: $00
	add  b                                           ; $57ce: $80
	ld   bc, $0080                                   ; $57cf: $01 $80 $00
	add  b                                           ; $57d2: $80
	inc  bc                                          ; $57d3: $03
	add  e                                           ; $57d4: $83
	nop                                              ; $57d5: $00
	ld   b, $07                                      ; $57d6: $06 $07
	ccf                                              ; $57d8: $3f
	nop                                              ; $57d9: $00
	ccf                                              ; $57da: $3f
	nop                                              ; $57db: $00
	rlca                                             ; $57dc: $07
	nop                                              ; $57dd: $00
	add  b                                           ; $57de: $80
	inc  b                                           ; $57df: $04
	add  b                                           ; $57e0: $80
	jr   jr_089_5763                                 ; $57e1: $18 $80

	db   $10                                         ; $57e3: $10
	add  b                                           ; $57e4: $80
	ld   h, d                                        ; $57e5: $62
	add  b                                           ; $57e6: $80
	ld   b, e                                        ; $57e7: $43
	add  b                                           ; $57e8: $80
	ld   b, c                                        ; $57e9: $41
	add  b                                           ; $57ea: $80
	jp   nz, $8480                                   ; $57eb: $c2 $80 $84

	add  b                                           ; $57ee: $80
	adc  [hl]                                        ; $57ef: $8e
	add  b                                           ; $57f0: $80
	ld   b, $80                                      ; $57f1: $06 $80
	ld   [$0081], sp                                 ; $57f3: $08 $81 $00
	add  b                                           ; $57f6: $80
	ldh  [$80], a                                    ; $57f7: $e0 $80
	ld   a, h                                        ; $57f9: $7c
	inc  b                                           ; $57fa: $04
	rra                                              ; $57fb: $1f
	ld   a, a                                        ; $57fc: $7f
	inc  bc                                          ; $57fd: $03
	push hl                                          ; $57fe: $e5
	add  [hl]                                        ; $57ff: $86

Jump_089_5800:
	add  b                                           ; $5800: $80
	ld   b, h                                        ; $5801: $44
	add  b                                           ; $5802: $80
	call c, $1082                                    ; $5803: $dc $82 $10
	add  b                                           ; $5806: $80
	jr   nc, @-$7e                                   ; $5807: $30 $80

	db   $10                                         ; $5809: $10
	add  b                                           ; $580a: $80
	ld   h, b                                        ; $580b: $60
	add  b                                           ; $580c: $80
	ld   b, b                                        ; $580d: $40
	add  b                                           ; $580e: $80
	ld   h, b                                        ; $580f: $60
	add  d                                           ; $5810: $82
	add  b                                           ; $5811: $80
	add  b                                           ; $5812: $80
	nop                                              ; $5813: $00
	add  b                                           ; $5814: $80
	ld   bc, $0081                                   ; $5815: $01 $81 $00
	ld   [bc], a                                     ; $5818: $02
	add  b                                           ; $5819: $80
	add  a                                           ; $581a: $87
	rlca                                             ; $581b: $07
	add  b                                           ; $581c: $80
	inc  b                                           ; $581d: $04
	add  b                                           ; $581e: $80
	ld   b, $80                                      ; $581f: $06 $80
	inc  c                                           ; $5821: $0c
	add  b                                           ; $5822: $80
	ld   [$0980], sp                                 ; $5823: $08 $80 $09
	add  b                                           ; $5826: $80
	ld   [hl], b                                     ; $5827: $70
	add  b                                           ; $5828: $80
	jr   nc, @-$7e                                   ; $5829: $30 $80

	inc  hl                                          ; $582b: $23
	add  b                                           ; $582c: $80
	ld   hl, $4380                                   ; $582d: $21 $80 $43
	add  b                                           ; $5830: $80
	ld   b, d                                        ; $5831: $42
	add  b                                           ; $5832: $80
	add  $80                                         ; $5833: $c6 $80
	ld   [bc], a                                     ; $5835: $02
	add  b                                           ; $5836: $80
	inc  b                                           ; $5837: $04
	add  b                                           ; $5838: $80
	nop                                              ; $5839: $00
	add  b                                           ; $583a: $80
	ld   [hl], c                                     ; $583b: $71
	add  b                                           ; $583c: $80
	ld   b, b                                        ; $583d: $40
	add  b                                           ; $583e: $80
	ld   h, c                                        ; $583f: $61
	add  b                                           ; $5840: $80
	ld   h, d                                        ; $5841: $62
	add  b                                           ; $5842: $80
	ld   [bc], a                                     ; $5843: $02
	add  b                                           ; $5844: $80
	adc  $80                                         ; $5845: $ce $80
	adc  [hl]                                        ; $5847: $8e
	add  d                                           ; $5848: $82
	add  h                                           ; $5849: $84
	add  b                                           ; $584a: $80
	jr   jr_089_57cd                                 ; $584b: $18 $80

	db   $10                                         ; $584d: $10
	add  b                                           ; $584e: $80
	ld   h, b                                        ; $584f: $60
	ld   bc, $3130                                   ; $5850: $01 $30 $31
	add  b                                           ; $5853: $80
	ld   b, c                                        ; $5854: $41
	ld   bc, $6361                                   ; $5855: $01 $61 $63
	add  b                                           ; $5858: $80
	ld   b, e                                        ; $5859: $43
	nop                                              ; $585a: $00
	add  e                                           ; $585b: $83
	add  c                                           ; $585c: $81
	add  b                                           ; $585d: $80
	nop                                              ; $585e: $00
	nop                                              ; $585f: $00
	add  d                                           ; $5860: $82
	ld   [$1881], sp                                 ; $5861: $08 $81 $18
	nop                                              ; $5864: $00
	inc  e                                           ; $5865: $1c
	add  c                                           ; $5866: $81
	jr   nc, jr_089_5869                             ; $5867: $30 $00

jr_089_5869:
	inc  a                                           ; $5869: $3c
	add  c                                           ; $586a: $81
	ld   h, b                                        ; $586b: $60
	nop                                              ; $586c: $00
	ld   a, b                                        ; $586d: $78
	add  c                                           ; $586e: $81
	ret  nz                                          ; $586f: $c0

	nop                                              ; $5870: $00
	ldh  a, [$81]                                    ; $5871: $f0 $81
	add  b                                           ; $5873: $80
	nop                                              ; $5874: $00
	ldh  [$81], a                                    ; $5875: $e0 $81
	nop                                              ; $5877: $00
	nop                                              ; $5878: $00
	ld   b, b                                        ; $5879: $40
	sbc  l                                           ; $587a: $9d
	nop                                              ; $587b: $00
	ld   [bc], a                                     ; $587c: $02
	inc  c                                           ; $587d: $0c
	nop                                              ; $587e: $00
	inc  c                                           ; $587f: $0c
	sbc  h                                           ; $5880: $9c
	nop                                              ; $5881: $00
	add  b                                           ; $5882: $80
	add  a                                           ; $5883: $87
	dec  b                                           ; $5884: $05
	add  c                                           ; $5885: $81
	adc  a                                           ; $5886: $8f
	nop                                              ; $5887: $00
	rrca                                             ; $5888: $0f
	nop                                              ; $5889: $00
	ld   bc, $0096                                   ; $588a: $01 $96 $00
	add  b                                           ; $588d: $80
	add  b                                           ; $588e: $80
	add  b                                           ; $588f: $80
	ld   hl, sp+$07                                  ; $5890: $f8 $07
	ld   a, $fe                                      ; $5892: $3e $fe
	inc  bc                                          ; $5894: $03
	rst  JumpTable                                         ; $5895: $df
	nop                                              ; $5896: $00
	rra                                              ; $5897: $1f
	nop                                              ; $5898: $00
	inc  bc                                          ; $5899: $03
	sub  c                                           ; $589a: $91
	nop                                              ; $589b: $00
	ld   bc, $8680                                   ; $589c: $01 $80 $86
	add  b                                           ; $589f: $80
	ld   b, $00                                      ; $58a0: $06 $00
	rlca                                             ; $58a2: $07
	add  b                                           ; $58a3: $80
	inc  c                                           ; $58a4: $0c
	add  hl, bc                                      ; $58a5: $09
	adc  h                                           ; $58a6: $8c
	adc  a                                           ; $58a7: $8f
	ld   c, b                                        ; $58a8: $48
	ret  z                                           ; $58a9: $c8

	ld   [$00fe], sp                                 ; $58aa: $08 $fe $00
	ld   a, b                                        ; $58ad: $78
	nop                                              ; $58ae: $00
	inc  c                                           ; $58af: $0c
	adc  l                                           ; $58b0: $8d
	nop                                              ; $58b1: $00
	nop                                              ; $58b2: $00
	add  b                                           ; $58b3: $80
	add  c                                           ; $58b4: $81
	nop                                              ; $58b5: $00
	nop                                              ; $58b6: $00
	add  b                                           ; $58b7: $80
	rst  $38                                         ; $58b8: $ff
	nop                                              ; $58b9: $00
	rst  $38                                         ; $58ba: $ff
	nop                                              ; $58bb: $00
	rst  $38                                         ; $58bc: $ff
	nop                                              ; $58bd: $00
	rst  $38                                         ; $58be: $ff
	nop                                              ; $58bf: $00
	rst  $38                                         ; $58c0: $ff
	nop                                              ; $58c1: $00
	sub  h                                           ; $58c2: $94
	nop                                              ; $58c3: $00
	call nz, $8c00                                   ; $58c4: $c4 $00 $8c
	nop                                              ; $58c7: $00
	add  b                                           ; $58c8: $80
	ld   bc, $0086                                   ; $58c9: $01 $86 $00
	add  b                                           ; $58cc: $80
	ld   bc, $0380                                   ; $58cd: $01 $80 $03
	add  b                                           ; $58d0: $80
	rra                                              ; $58d1: $1f
	ld   [bc], a                                     ; $58d2: $02
	pop  hl                                          ; $58d3: $e1
	rst  $38                                         ; $58d4: $ff
	ld   e, $85                                      ; $58d5: $1e $85
	nop                                              ; $58d7: $00
	add  b                                           ; $58d8: $80
	rst  $38                                         ; $58d9: $ff
	ld   b, $80                                      ; $58da: $06 $80
	rst  $38                                         ; $58dc: $ff
	ld   c, a                                        ; $58dd: $4f
	rst  $38                                         ; $58de: $ff
	xor  $ff                                         ; $58df: $ee $ff
	sbc  $85                                         ; $58e1: $de $85
	nop                                              ; $58e3: $00
	add  b                                           ; $58e4: $80
	rst  $38                                         ; $58e5: $ff
	ld   [bc], a                                     ; $58e6: $02
	nop                                              ; $58e7: $00
	rst  $38                                         ; $58e8: $ff
	ei                                               ; $58e9: $fb
	add  c                                           ; $58ea: $81
	rst  $38                                         ; $58eb: $ff
	nop                                              ; $58ec: $00
	ei                                               ; $58ed: $fb
	add  l                                           ; $58ee: $85
	nop                                              ; $58ef: $00
	add  b                                           ; $58f0: $80
	add  b                                           ; $58f1: $80
	add  b                                           ; $58f2: $80
	ret  nz                                          ; $58f3: $c0

	inc  b                                           ; $58f4: $04
	ld   a, b                                        ; $58f5: $78
	ld   hl, sp-$39                                  ; $58f6: $f8 $c7
	rst  $38                                         ; $58f8: $ff
	cp   b                                           ; $58f9: $b8
	adc  e                                           ; $58fa: $8b
	nop                                              ; $58fb: $00
	add  b                                           ; $58fc: $80
	add  b                                           ; $58fd: $80
	dec  de                                          ; $58fe: $1b
	ld   e, $1f                                      ; $58ff: $1e $1f
	ld   h, c                                        ; $5901: $61
	ld   a, a                                        ; $5902: $7f
	ld   d, e                                        ; $5903: $53
	ld   a, a                                        ; $5904: $7f
	ld   d, $3f                                      ; $5905: $16 $3f
	inc  a                                           ; $5907: $3c
	ccf                                              ; $5908: $3f
	dec  a                                           ; $5909: $3d
	ccf                                              ; $590a: $3f
	dec  sp                                          ; $590b: $3b
	ccf                                              ; $590c: $3f
	dec  c                                           ; $590d: $0d
	dec  e                                           ; $590e: $1d
	ld   c, $ff                                      ; $590f: $0e $ff
	ld   l, l                                        ; $5911: $6d
	rst  $38                                         ; $5912: $ff
	sub  c                                           ; $5913: $91
	rst  $38                                         ; $5914: $ff
	db   $e3                                         ; $5915: $e3
	rst  $38                                         ; $5916: $ff
	sbc  a                                           ; $5917: $9f
	rst  $38                                         ; $5918: $ff
	ld   [hl], a                                     ; $5919: $77
	rst  $30                                         ; $591a: $f7
	add  d                                           ; $591b: $82
	di                                               ; $591c: $f3
	inc  b                                           ; $591d: $04
	pop  de                                          ; $591e: $d1
	rst  $38                                         ; $591f: $ff
	set  7, a                                        ; $5920: $cb $ff
	db   $e4                                         ; $5922: $e4
	add  b                                           ; $5923: $80
	rst  $38                                         ; $5924: $ff
	add  d                                           ; $5925: $82
	db   $e4                                         ; $5926: $e4
	add  b                                           ; $5927: $80
	sub  l                                           ; $5928: $95
	add  b                                           ; $5929: $80
	adc  [hl]                                        ; $592a: $8e
	dec  b                                           ; $592b: $05
	rst  $38                                         ; $592c: $ff
	inc  hl                                          ; $592d: $23
	rst  $38                                         ; $592e: $ff
	ld   d, a                                        ; $592f: $57
	rst  $38                                         ; $5930: $ff
	adc  e                                           ; $5931: $8b
	add  h                                           ; $5932: $84
	rst  $38                                         ; $5933: $ff
	add  d                                           ; $5934: $82
	ccf                                              ; $5935: $3f
	dec  bc                                          ; $5936: $0b
	rst  $38                                         ; $5937: $ff
	xor  a                                           ; $5938: $af
	rst  $38                                         ; $5939: $ff
	sbc  $ff                                         ; $593a: $de $ff
	push hl                                          ; $593c: $e5
	rst  $38                                         ; $593d: $ff
	db   $d3                                         ; $593e: $d3
	rst  $38                                         ; $593f: $ff
	ld   hl, sp-$03                                  ; $5940: $f8 $fd
	db   $fc                                         ; $5942: $fc
	add  b                                           ; $5943: $80
	ret  c                                           ; $5944: $d8

	dec  c                                           ; $5945: $0d
	ret  z                                           ; $5946: $c8

	db   $eb                                         ; $5947: $eb
	ret                                              ; $5948: $c9


	db   $d3                                         ; $5949: $d3
	ld   hl, sp-$7a                                  ; $594a: $f8 $86
	cp   $fa                                         ; $594c: $fe $fa
	cp   $3a                                         ; $594e: $fe $3a
	cp   $4c                                         ; $5950: $fe $4c
	db   $fc                                         ; $5952: $fc
	adc  h                                           ; $5953: $8c
	add  c                                           ; $5954: $81
	db   $fc                                         ; $5955: $fc
	inc  bc                                          ; $5956: $03
	db   $f4                                         ; $5957: $f4
	db   $fc                                         ; $5958: $fc
	db   $e3                                         ; $5959: $e3
	inc  e                                           ; $595a: $1c
	add  d                                           ; $595b: $82
	ld   e, $00                                      ; $595c: $1e $00
	rlca                                             ; $595e: $07
	add  l                                           ; $595f: $85
	rrca                                             ; $5960: $0f
	inc  bc                                          ; $5961: $03
	inc  bc                                          ; $5962: $03
	rlca                                             ; $5963: $07
	adc  [hl]                                        ; $5964: $8e
	ld   [hl], e                                     ; $5965: $73
	add  b                                           ; $5966: $80
	ld   a, e                                        ; $5967: $7b
	add  d                                           ; $5968: $82
	dec  sp                                          ; $5969: $3b
	nop                                              ; $596a: $00
	cp   a                                           ; $596b: $bf
	add  c                                           ; $596c: $81
	cp   e                                           ; $596d: $bb
	nop                                              ; $596e: $00
	ei                                               ; $596f: $fb
	add  b                                           ; $5970: $80
	sbc  e                                           ; $5971: $9b
	inc  bc                                          ; $5972: $03
	db   $db                                         ; $5973: $db
	jp   c, $8a8e                                    ; $5974: $da $8e $8a

	add  b                                           ; $5977: $80
	sub  c                                           ; $5978: $91
	ld   bc, $e4e0                                   ; $5979: $01 $e0 $e4
	add  b                                           ; $597c: $80
	ldh  [rTAC], a                                   ; $597d: $e0 $07
	ei                                               ; $597f: $fb
	rst  $38                                         ; $5980: $ff
	sbc  d                                           ; $5981: $9a
	sbc  b                                           ; $5982: $98
	add  b                                           ; $5983: $80
	adc  b                                           ; $5984: $88
	pop  bc                                          ; $5985: $c1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5986: $cf
	add  d                                           ; $5987: $82
	ccf                                              ; $5988: $3f
	add  b                                           ; $5989: $80
	ret                                              ; $598a: $c9


	add  b                                           ; $598b: $80
	xor  d                                           ; $598c: $aa
	add  b                                           ; $598d: $80
	inc  e                                           ; $598e: $1c
	add  b                                           ; $598f: $80
	ld   a, a                                        ; $5990: $7f
	ld   a, [de]                                     ; $5991: $1a
	sbc  h                                           ; $5992: $9c
	sub  h                                           ; $5993: $94

jr_089_5994:
	and  d                                           ; $5994: $a2
	ld   hl, sp-$18                                  ; $5995: $f8 $e8
	xor  $e0                                         ; $5997: $ee $e0

jr_089_5999:
	ld   a, [$e5e0]                                  ; $5999: $fa $e0 $e5
	db   $e4                                         ; $599c: $e4
	rst  $38                                         ; $599d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $599e: $cf
	rst  ToBoot                                         ; $599f: $c7
	ret  nz                                          ; $59a0: $c0

	jp   hl                                          ; $59a1: $e9


	ret  nz                                          ; $59a2: $c0

	rst  $28                                         ; $59a3: $ef
	pop  bc                                          ; $59a4: $c1
	sub  a                                           ; $59a5: $97
	ld   a, b                                        ; $59a6: $78
	ld   e, b                                        ; $59a7: $58
	jr   jr_089_5a22                                 ; $59a8: $18 $78

	jr   c, jr_089_5994                              ; $59aa: $38 $e8

	ld   a, b                                        ; $59ac: $78
	add  b                                           ; $59ad: $80
	ldh  a, [$80]                                    ; $59ae: $f0 $80
	ld   [hl], b                                     ; $59b0: $70
	add  b                                           ; $59b1: $80
	ldh  a, [rSC]                                    ; $59b2: $f0 $02
	ret  nc                                          ; $59b4: $d0

	ldh  a, [$c4]                                    ; $59b5: $f0 $c4
	add  e                                           ; $59b7: $83
	rlca                                             ; $59b8: $07
	nop                                              ; $59b9: $00
	ld   bc, $0385                                   ; $59ba: $01 $85 $03
	nop                                              ; $59bd: $00
	nop                                              ; $59be: $00
	add  b                                           ; $59bf: $80
	ld   bc, $cb80                                   ; $59c0: $01 $80 $cb
	add  b                                           ; $59c3: $80
	db   $eb                                         ; $59c4: $eb
	dec  bc                                          ; $59c5: $0b
	add  hl, hl                                      ; $59c6: $29
	inc  hl                                          ; $59c7: $23
	pop  bc                                          ; $59c8: $c1
	rst  $38                                         ; $59c9: $ff
	jp   $81f7                                       ; $59ca: $c3 $f7 $81


	sbc  a                                           ; $59cd: $9f
	pop  bc                                          ; $59ce: $c1
	rst  JumpTable                                         ; $59cf: $df
	rst  $38                                         ; $59d0: $ff
	cp   $80                                         ; $59d1: $fe $80
	ei                                               ; $59d3: $fb
	ld   [$faf8], sp                                 ; $59d4: $08 $f8 $fa
	ret  nz                                          ; $59d7: $c0

	call nz, $e5e1                                   ; $59d8: $c4 $e1 $e5
	db   $fc                                         ; $59db: $fc
	rst  $38                                         ; $59dc: $ff
	cp   $82                                         ; $59dd: $fe $82
	rst  $38                                         ; $59df: $ff
	inc  c                                           ; $59e0: $0c
	rst  $30                                         ; $59e1: $f7
	ld   b, c                                        ; $59e2: $41
	ld   c, c                                        ; $59e3: $49
	ld   [hl], l                                     ; $59e4: $75
	ld   [hl], c                                     ; $59e5: $71
	pop  de                                          ; $59e6: $d1
	pop  hl                                          ; $59e7: $e1
	jp   $e1f7                                       ; $59e8: $c3 $f7 $e1


	db   $ed                                         ; $59eb: $ed
	jp   $81cf                                       ; $59ec: $c3 $cf $81


	rst  $38                                         ; $59ef: $ff
	rlca                                             ; $59f0: $07
	adc  a                                           ; $59f1: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59f2: $cf
	rst  JumpTable                                         ; $59f3: $df
	pop  de                                          ; $59f4: $d1
	db   $d3                                         ; $59f5: $d3
	pop  bc                                          ; $59f6: $c1
	rst  JumpTable                                         ; $59f7: $df
	jp   $df80                                       ; $59f8: $c3 $80 $df


	add  h                                           ; $59fb: $84
	rst  $38                                         ; $59fc: $ff
	nop                                              ; $59fd: $00
	sbc  a                                           ; $59fe: $9f
	add  e                                           ; $59ff: $83
	ldh  [rSB], a                                    ; $5a00: $e0 $01
	and  b                                           ; $5a02: $a0
	ldh  [$84], a                                    ; $5a03: $e0 $84
	ret  nz                                          ; $5a05: $c0

	ld   bc, $c040                                   ; $5a06: $01 $40 $c0
	add  h                                           ; $5a09: $84
	ld   bc, $0088                                   ; $5a0a: $01 $88 $00
	dec  b                                           ; $5a0d: $05
	rlca                                             ; $5a0e: $07
	rst  $38                                         ; $5a0f: $ff
	ret  nz                                          ; $5a10: $c0

	ld   hl, sp+$00                                  ; $5a11: $f8 $00
	ret  nz                                          ; $5a13: $c0

	add  h                                           ; $5a14: $84
	nop                                              ; $5a15: $00
	add  b                                           ; $5a16: $80
	jr   jr_089_5999                                 ; $5a17: $18 $80

	ld   bc, $ff80                                   ; $5a19: $01 $80 $ff
	add  h                                           ; $5a1c: $84
	nop                                              ; $5a1d: $00
	add  b                                           ; $5a1e: $80
	call z, $0080                                    ; $5a1f: $cc $80 $00

jr_089_5a22:
	add  b                                           ; $5a22: $80
	sub  c                                           ; $5a23: $91
	add  b                                           ; $5a24: $80
	db   $10                                         ; $5a25: $10
	add  b                                           ; $5a26: $80
	rst  $38                                         ; $5a27: $ff
	add  d                                           ; $5a28: $82
	nop                                              ; $5a29: $00
	add  b                                           ; $5a2a: $80
	ld   b, b                                        ; $5a2b: $40
	add  b                                           ; $5a2c: $80
	ld   e, d                                        ; $5a2d: $5a

jr_089_5a2e:
	add  b                                           ; $5a2e: $80
	ld   [bc], a                                     ; $5a2f: $02
	add  b                                           ; $5a30: $80
	sub  b                                           ; $5a31: $90
	add  b                                           ; $5a32: $80
	db   $10                                         ; $5a33: $10
	dec  b                                           ; $5a34: $05
	ldh  [rIE], a                                    ; $5a35: $e0 $ff
	inc  bc                                          ; $5a37: $03
	rra                                              ; $5a38: $1f
	nop                                              ; $5a39: $00
	inc  bc                                          ; $5a3a: $03

jr_089_5a3b:
	add  d                                           ; $5a3b: $82
	nop                                              ; $5a3c: $00
	add  b                                           ; $5a3d: $80
	ld   h, b                                        ; $5a3e: $60
	add  d                                           ; $5a3f: $82
	nop                                              ; $5a40: $00
	add  h                                           ; $5a41: $84
	add  b                                           ; $5a42: $80

jr_089_5a43:
	sbc  d                                           ; $5a43: $9a
	nop                                              ; $5a44: $00
	add  b                                           ; $5a45: $80
	inc  c                                           ; $5a46: $0c
	adc  d                                           ; $5a47: $8a
	nop                                              ; $5a48: $00
	add  b                                           ; $5a49: $80
	ld   bc, $1880                                   ; $5a4a: $01 $80 $18
	add  b                                           ; $5a4d: $80
	nop                                              ; $5a4e: $00
	add  b                                           ; $5a4f: $80
	ld   b, b                                        ; $5a50: $40
	add  b                                           ; $5a51: $80
	add  e                                           ; $5a52: $83
	add  h                                           ; $5a53: $84
	nop                                              ; $5a54: $00
	add  b                                           ; $5a55: $80
	add  d                                           ; $5a56: $82
	add  b                                           ; $5a57: $80
	ld   a, [de]                                     ; $5a58: $1a
	add  b                                           ; $5a59: $80
	ret  nz                                          ; $5a5a: $c0

	add  b                                           ; $5a5b: $80
	nop                                              ; $5a5c: $00

jr_089_5a5d:
	add  b                                           ; $5a5d: $80
	ld   b, $84                                      ; $5a5e: $06 $84
	nop                                              ; $5a60: $00
	add  b                                           ; $5a61: $80
	ld   h, b                                        ; $5a62: $60
	cp   d                                           ; $5a63: $ba
	nop                                              ; $5a64: $00
	ld   [bc], a                                     ; $5a65: $02
	ld   [bc], a                                     ; $5a66: $02

jr_089_5a67:
	nop                                              ; $5a67: $00
	ld   [bc], a                                     ; $5a68: $02
	sub  a                                           ; $5a69: $97
	nop                                              ; $5a6a: $00
	ld   [bc], a                                     ; $5a6b: $02
	ld   [$0400], sp                                 ; $5a6c: $08 $00 $04
	add  c                                           ; $5a6f: $81
	nop                                              ; $5a70: $00
	nop                                              ; $5a71: $00
	inc  c                                           ; $5a72: $0c
	sbc  d                                           ; $5a73: $9a
	nop                                              ; $5a74: $00
	add  d                                           ; $5a75: $82
	ld   c, $b5                                      ; $5a76: $0e $b5
	nop                                              ; $5a78: $00
	add  b                                           ; $5a79: $80
	ld   [bc], a                                     ; $5a7a: $02
	add  b                                           ; $5a7b: $80
	ld   h, $80                                      ; $5a7c: $26 $80
	ld   [hl], $80                                   ; $5a7e: $36 $80
	inc  d                                           ; $5a80: $14
	sbc  [hl]                                        ; $5a81: $9e
	nop                                              ; $5a82: $00
	ld   [bc], a                                     ; $5a83: $02
	inc  bc                                          ; $5a84: $03
	nop                                              ; $5a85: $00
	ld   [bc], a                                     ; $5a86: $02
	add  c                                           ; $5a87: $81
	nop                                              ; $5a88: $00
	nop                                              ; $5a89: $00
	ld   bc, $0097                                   ; $5a8a: $01 $97 $00
	dec  bc                                          ; $5a8d: $0b
	adc  h                                           ; $5a8e: $8c
	nop                                              ; $5a8f: $00
	ld   [$4000], sp                                 ; $5a90: $08 $00 $40
	nop                                              ; $5a93: $00
	inc  b                                           ; $5a94: $04
	nop                                              ; $5a95: $00
	add  h                                           ; $5a96: $84
	inc  b                                           ; $5a97: $04
	ld   b, h                                        ; $5a98: $44
	inc  b                                           ; $5a99: $04
	add  b                                           ; $5a9a: $80
	ld   h, h                                        ; $5a9b: $64
	add  b                                           ; $5a9c: $80
	inc  h                                           ; $5a9d: $24
	add  b                                           ; $5a9e: $80
	inc  [hl]                                        ; $5a9f: $34
	add  b                                           ; $5aa0: $80
	inc  d                                           ; $5aa1: $14
	add  b                                           ; $5aa2: $80
	sub  $80                                         ; $5aa3: $d6 $80
	inc  [hl]                                        ; $5aa5: $34
	add  b                                           ; $5aa6: $80
	ld   [$7e80], sp                                 ; $5aa7: $08 $80 $7e
	add  b                                           ; $5aaa: $80
	jr   nz, jr_089_5a2e                             ; $5aab: $20 $81

	nop                                              ; $5aad: $00
	add  b                                           ; $5aae: $80
	ld   c, $81                                      ; $5aaf: $0e $81
	nop                                              ; $5ab1: $00
	add  d                                           ; $5ab2: $82
	inc  b                                           ; $5ab3: $04
	add  b                                           ; $5ab4: $80
	ld   h, c                                        ; $5ab5: $61
	add  b                                           ; $5ab6: $80
	ld   a, c                                        ; $5ab7: $79
	add  b                                           ; $5ab8: $80
	jr   nc, jr_089_5a3b                             ; $5ab9: $30 $80

	inc  b                                           ; $5abb: $04
	add  b                                           ; $5abc: $80
	rlca                                             ; $5abd: $07
	add  b                                           ; $5abe: $80
	dec  a                                           ; $5abf: $3d
	add  b                                           ; $5ac0: $80
	jr   jr_089_5a43                                 ; $5ac1: $18 $80

	ld   bc, $008c                                   ; $5ac3: $01 $8c $00
	nop                                              ; $5ac6: $00
	add  b                                           ; $5ac7: $80
	add  c                                           ; $5ac8: $81
	sbc  h                                           ; $5ac9: $9c
	add  c                                           ; $5aca: $81
	inc  e                                           ; $5acb: $1c
	nop                                              ; $5acc: $00
	nop                                              ; $5acd: $00
	add  b                                           ; $5ace: $80
	add  b                                           ; $5acf: $80
	add  b                                           ; $5ad0: $80
	adc  d                                           ; $5ad1: $8a
	add  b                                           ; $5ad2: $80
	ld   a, [hl+]                                    ; $5ad3: $2a
	add  b                                           ; $5ad4: $80
	ld   [$1e80], sp                                 ; $5ad5: $08 $80 $1e
	add  b                                           ; $5ad8: $80
	jr   nc, jr_089_5a5d                             ; $5ad9: $30 $82

	nop                                              ; $5adb: $00
	add  b                                           ; $5adc: $80
	dec  b                                           ; $5add: $05
	add  b                                           ; $5ade: $80
	dec  bc                                          ; $5adf: $0b
	add  b                                           ; $5ae0: $80
	ld   de, $1080                                   ; $5ae1: $11 $80 $10
	add  b                                           ; $5ae4: $80
	jr   nz, jr_089_5a67                             ; $5ae5: $20 $80

	daa                                              ; $5ae7: $27
	add  b                                           ; $5ae8: $80
	ld   c, $80                                      ; $5ae9: $0e $80
	jr   nz, @-$7e                                   ; $5aeb: $20 $80

	nop                                              ; $5aed: $00
	add  b                                           ; $5aee: $80
	ld   c, $80                                      ; $5aef: $0e $80
	inc  e                                           ; $5af1: $1c
	adc  b                                           ; $5af2: $88
	nop                                              ; $5af3: $00
	add  b                                           ; $5af4: $80
	add  b                                           ; $5af5: $80
	add  b                                           ; $5af6: $80
	ret  nz                                          ; $5af7: $c0

	add  b                                           ; $5af8: $80
	add  b                                           ; $5af9: $80
	rst  $38                                         ; $5afa: $ff
	nop                                              ; $5afb: $00
	rst  $38                                         ; $5afc: $ff
	nop                                              ; $5afd: $00
	rst  $38                                         ; $5afe: $ff
	nop                                              ; $5aff: $00
	rst  $38                                         ; $5b00: $ff
	nop                                              ; $5b01: $00
	rst  $38                                         ; $5b02: $ff
	nop                                              ; $5b03: $00
	rst  $38                                         ; $5b04: $ff
	nop                                              ; $5b05: $00
	jp   nc, $8c00                                   ; $5b06: $d2 $00 $8c

	nop                                              ; $5b09: $00

jr_089_5b0a:
	xor  h                                           ; $5b0a: $ac
	nop                                              ; $5b0b: $00
	add  b                                           ; $5b0c: $80
	ccf                                              ; $5b0d: $3f
	adc  h                                           ; $5b0e: $8c
	nop                                              ; $5b0f: $00
	add  b                                           ; $5b10: $80
	rst  $38                                         ; $5b11: $ff

jr_089_5b12:
	adc  h                                           ; $5b12: $8c
	nop                                              ; $5b13: $00
	add  b                                           ; $5b14: $80
	pop  hl                                          ; $5b15: $e1
	adc  h                                           ; $5b16: $8c
	nop                                              ; $5b17: $00
	add  b                                           ; $5b18: $80
	ret  nz                                          ; $5b19: $c0

	add  [hl]                                        ; $5b1a: $86
	nop                                              ; $5b1b: $00
	add  b                                           ; $5b1c: $80
	ld   bc, $0220                                   ; $5b1d: $01 $20 $02
	inc  bc                                          ; $5b20: $03
	inc  b                                           ; $5b21: $04
	rlca                                             ; $5b22: $07
	add  hl, bc                                      ; $5b23: $09
	rrca                                             ; $5b24: $0f
	rlca                                             ; $5b25: $07
	inc  bc                                          ; $5b26: $03
	inc  c                                           ; $5b27: $0c
	rrca                                             ; $5b28: $0f
	jr   nc, jr_089_5b6a                             ; $5b29: $30 $3f

	jp   $0efe                                       ; $5b2b: $c3 $fe $0e


	ld   hl, sp+$38                                  ; $5b2e: $f8 $38
	rst  ToBoot                                         ; $5b30: $c7
	ret  nz                                          ; $5b31: $c0

	cp   b                                           ; $5b32: $b8
	add  b                                           ; $5b33: $80
	ret  nz                                          ; $5b34: $c0

	ldh  [rIE], a                                    ; $5b35: $e0 $ff
	jr   nz, @+$01                                   ; $5b37: $20 $ff

	ccf                                              ; $5b39: $3f
	db   $e3                                         ; $5b3a: $e3
	ldh  [rAUD3LEVEL], a                             ; $5b3b: $e0 $1c
	nop                                              ; $5b3d: $00
	ldh  [rP1], a                                    ; $5b3e: $e0 $00
	add  b                                           ; $5b40: $80
	ld   bc, $0f1d                                   ; $5b41: $01 $1d $0f
	inc  c                                           ; $5b44: $0c
	ld   a, a                                        ; $5b45: $7f
	ldh  a, [c]                                      ; $5b46: $f2
	cp   $80                                         ; $5b47: $fe $80
	ldh  a, [$80]                                    ; $5b49: $f0 $80
	add  c                                           ; $5b4b: $81
	ld   bc, $0e0f                                   ; $5b4c: $01 $0f $0e
	ld   a, a                                        ; $5b4f: $7f
	ld   [hl], b                                     ; $5b50: $70
	cp   $80                                         ; $5b51: $fe $80
	ldh  a, [rP1]                                    ; $5b53: $f0 $00
	add  b                                           ; $5b55: $80
	ld   e, $3f                                      ; $5b56: $1e $3f
	add  hl, hl                                      ; $5b58: $29
	ld   a, a                                        ; $5b59: $7f
	ld   a, h                                        ; $5b5a: $7c
	rst  $38                                         ; $5b5b: $ff
	jp   z, $06ff                                    ; $5b5c: $ca $ff $06

	rst  ToBoot                                         ; $5b5f: $c7
	ld   [bc], a                                     ; $5b60: $02
	add  b                                           ; $5b61: $80
	rlca                                             ; $5b62: $07
	ld   b, $1f                                      ; $5b63: $06 $1f
	ld   a, [de]                                     ; $5b65: $1a
	ei                                               ; $5b66: $fb
	cp   h                                           ; $5b67: $bc
	ret  nz                                          ; $5b68: $c0

	ld   b, b                                        ; $5b69: $40

jr_089_5b6a:
	ret  nz                                          ; $5b6a: $c0

	add  b                                           ; $5b6b: $80
	nop                                              ; $5b6c: $00
	add  b                                           ; $5b6d: $80
	ldh  a, [$0a]                                    ; $5b6e: $f0 $0a
	sub  b                                           ; $5b70: $90
	ldh  a, [$50]                                    ; $5b71: $f0 $50
	ldh  a, [rAUD4LEN]                               ; $5b73: $f0 $20
	ldh  [$d0], a                                    ; $5b75: $e0 $d0
	ldh  a, [$2f]                                    ; $5b77: $f0 $2f
	rrca                                             ; $5b79: $0f
	ld   d, $81                                      ; $5b7a: $16 $81
	ld   e, $06                                      ; $5b7c: $1e $06
	ld   h, $3a                                      ; $5b7e: $26 $3a
	dec  sp                                          ; $5b80: $3b
	add  hl, sp                                      ; $5b81: $39
	jr   z, jr_089_5bbe                              ; $5b82: $28 $3a

	ld   e, b                                        ; $5b84: $58
	add  c                                           ; $5b85: $81
	ld   [hl], h                                     ; $5b86: $74
	nop                                              ; $5b87: $00
	jr   z, jr_089_5b0a                              ; $5b88: $28 $80

	ld   bc, $0f07                                   ; $5b8a: $01 $07 $0f
	ld   [$403f], sp                                 ; $5b8d: $08 $3f $40
	jr   c, jr_089_5b12                              ; $5b90: $38 $80

	ret  nz                                          ; $5b92: $c0

	nop                                              ; $5b93: $00
	add  b                                           ; $5b94: $80
	ld   bc, $0f07                                   ; $5b95: $01 $07 $0f
	ld   [$4358], sp                                 ; $5b98: $08 $58 $43
	db   $fc                                         ; $5b9b: $fc
	nop                                              ; $5b9c: $00
	ldh  [rP1], a                                    ; $5b9d: $e0 $00
	add  b                                           ; $5b9f: $80
	ld   bc, $0f1f                                   ; $5ba0: $01 $1f $0f
	inc  c                                           ; $5ba3: $0c
	ld   a, h                                        ; $5ba4: $7c
	ld   h, b                                        ; $5ba5: $60
	db   $e3                                         ; $5ba6: $e3
	nop                                              ; $5ba7: $00
	inc  e                                           ; $5ba8: $1c
	nop                                              ; $5ba9: $00
	ldh  [rP1], a                                    ; $5baa: $e0 $00
	inc  bc                                          ; $5bac: $03
	ld   [bc], a                                     ; $5bad: $02
	ld   a, $30                                      ; $5bae: $3e $30
	pop  af                                          ; $5bb0: $f1
	add  b                                           ; $5bb1: $80
	adc  [hl]                                        ; $5bb2: $8e
	nop                                              ; $5bb3: $00
	ld   [hl], b                                     ; $5bb4: $70
	nop                                              ; $5bb5: $00
	add  b                                           ; $5bb6: $80
	nop                                              ; $5bb7: $00
	rlca                                             ; $5bb8: $07
	ld   b, $7e                                      ; $5bb9: $06 $7e
	ld   b, b                                        ; $5bbb: $40
	rst  ToBoot                                         ; $5bbc: $c7
	rlca                                             ; $5bbd: $07

jr_089_5bbe:
	ld   a, $06                                      ; $5bbe: $3e $06
	rst  ToBoot                                         ; $5bc0: $c7
	ld   [bc], a                                     ; $5bc1: $02
	add  b                                           ; $5bc2: $80
	rlca                                             ; $5bc3: $07
	inc  de                                          ; $5bc4: $13
	rra                                              ; $5bc5: $1f
	ld   a, [de]                                     ; $5bc6: $1a
	dec  sp                                          ; $5bc7: $3b
	inc  bc                                          ; $5bc8: $03
	rst  ToBoot                                         ; $5bc9: $c7

jr_089_5bca:
	rlca                                             ; $5bca: $07
	ld   a, $11                                      ; $5bcb: $3e $11
	ld   [hl], b                                     ; $5bcd: $70
	ld   e, b                                        ; $5bce: $58
	ld   a, b                                        ; $5bcf: $78
	jr   jr_089_5bca                                 ; $5bd0: $18 $f8

	ld   d, h                                        ; $5bd2: $54
	db   $fc                                         ; $5bd3: $fc
	inc  a                                           ; $5bd4: $3c
	db   $fc                                         ; $5bd5: $fc
	db   $f4                                         ; $5bd6: $f4
	sbc  h                                           ; $5bd7: $9c
	sbc  d                                           ; $5bd8: $9a
	add  b                                           ; $5bd9: $80
	ld   c, $17                                      ; $5bda: $0e $17
	ld   a, $98                                      ; $5bdc: $3e $98
	ld   [hl], h                                     ; $5bde: $74
	ld   d, [hl]                                     ; $5bdf: $56
	ld   [hl], l                                     ; $5be0: $75
	ld   d, h                                        ; $5be1: $54
	ld   [hl], e                                     ; $5be2: $73
	ld   [hl], d                                     ; $5be3: $72
	ld   h, d                                        ; $5be4: $62
	nop                                              ; $5be5: $00
	inc  a                                           ; $5be6: $3c
	inc  l                                           ; $5be7: $2c
	inc  a                                           ; $5be8: $3c
	inc  [hl]                                        ; $5be9: $34
	inc  a                                           ; $5bea: $3c
	ld   c, $1d                                      ; $5beb: $0e $1d
	inc  [hl]                                        ; $5bed: $34
	ld   b, a                                        ; $5bee: $47
	adc  b                                           ; $5bef: $88
	jr   nc, jr_089_5bf2                             ; $5bf0: $30 $00

jr_089_5bf2:
	ret  nz                                          ; $5bf2: $c0

	nop                                              ; $5bf3: $00
	add  b                                           ; $5bf4: $80
	ld   bc, $4707                                   ; $5bf5: $01 $07 $47
	ld   b, b                                        ; $5bf8: $40
	ld   a, b                                        ; $5bf9: $78
	ld   b, d                                        ; $5bfa: $42
	push bc                                          ; $5bfb: $c5
	nop                                              ; $5bfc: $00
	jr   c, @-$3e                                    ; $5bfd: $38 $c0

	add  b                                           ; $5bff: $80
	inc  bc                                          ; $5c00: $03
	ld   [$1c1f], sp                                 ; $5c01: $08 $1f $1c
	ld   a, h                                        ; $5c04: $7c
	ld   h, b                                        ; $5c05: $60
	db   $e3                                         ; $5c06: $e3
	nop                                              ; $5c07: $00
	inc  e                                           ; $5c08: $1c
	nop                                              ; $5c09: $00
	ldh  [$81], a                                    ; $5c0a: $e0 $81
	nop                                              ; $5c0c: $00
	add  hl, bc                                      ; $5c0d: $09
	rrca                                             ; $5c0e: $0f
	nop                                              ; $5c0f: $00
	pop  af                                          ; $5c10: $f1
	add  b                                           ; $5c11: $80
	adc  [hl]                                        ; $5c12: $8e
	nop                                              ; $5c13: $00
	ld   [hl], b                                     ; $5c14: $70
	nop                                              ; $5c15: $00

jr_089_5c16:
	add  b                                           ; $5c16: $80
	nop                                              ; $5c17: $00
	add  b                                           ; $5c18: $80
	rlca                                             ; $5c19: $07
	rrca                                             ; $5c1a: $0f
	ccf                                              ; $5c1b: $3f
	jr   c, jr_089_5c16                              ; $5c1c: $38 $f8

	ret  nz                                          ; $5c1e: $c0

	pop  bc                                          ; $5c1f: $c1
	dec  a                                           ; $5c20: $3d
	jp   $0701                                       ; $5c21: $c3 $01 $07


	dec  b                                           ; $5c24: $05
	dec  c                                           ; $5c25: $0d
	ld   bc, $81b1                                   ; $5c26: $01 $b1 $81
	jp   $8003                                       ; $5c29: $c3 $03 $80


	rrca                                             ; $5c2c: $0f
	add  b                                           ; $5c2d: $80
	inc  a                                           ; $5c2e: $3c
	ld   a, [de]                                     ; $5c2f: $1a
	ldh  a, [$c1]                                    ; $5c30: $f0 $c1
	cp   $2a                                         ; $5c32: $fe $2a
	cp   $9e                                         ; $5c34: $fe $9e
	cp   $7e                                         ; $5c36: $fe $7e
	adc  $c0                                         ; $5c38: $ce $c0
	sbc  h                                           ; $5c3a: $9c
	cp   h                                           ; $5c3b: $bc
	inc  a                                           ; $5c3c: $3c
	ld   c, h                                        ; $5c3d: $4c
	ld   a, h                                        ; $5c3e: $7c
	ldh  a, [$f8]                                    ; $5c3f: $f0 $f8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c41: $cf
	rra                                              ; $5c42: $1f
	dec  bc                                          ; $5c43: $0b
	rrca                                             ; $5c44: $0f

jr_089_5c45:
	dec  c                                           ; $5c45: $0d
	rrca                                             ; $5c46: $0f
	inc  bc                                          ; $5c47: $03
	rlca                                             ; $5c48: $07
	ld   bc, $8003                                   ; $5c49: $01 $03 $80
	ld   bc, $0082                                   ; $5c4c: $01 $82 $00
	add  b                                           ; $5c4f: $80
	ldh  [$80], a                                    ; $5c50: $e0 $80
	add  b                                           ; $5c52: $80
	add  hl, bc                                      ; $5c53: $09
	nop                                              ; $5c54: $00
	inc  de                                          ; $5c55: $13
	db   $10                                         ; $5c56: $10
	inc  e                                           ; $5c57: $1c
	db   $10                                         ; $5c58: $10
	jr   nc, @-$7e                                   ; $5c59: $30 $80

	rst  ToBoot                                         ; $5c5b: $c7
	add  b                                           ; $5c5c: $80
	rst  $38                                         ; $5c5d: $ff
	add  b                                           ; $5c5e: $80
	jr   c, jr_089_5c67                              ; $5c5f: $38 $06

	ld   b, $36                                      ; $5c61: $06 $36
	jr   c, jr_089_5c45                              ; $5c63: $38 $e0

	sub  b                                           ; $5c65: $90
	add  e                                           ; $5c66: $83

jr_089_5c67:
	inc  bc                                          ; $5c67: $03
	add  b                                           ; $5c68: $80
	rra                                              ; $5c69: $1f
	rlca                                             ; $5c6a: $07
	ld   hl, sp-$05                                  ; $5c6b: $f8 $fb
	jp   $ff40                                       ; $5c6d: $c3 $40 $ff


	ld   b, d                                        ; $5c70: $42
	ld   a, a                                        ; $5c71: $7f
	ld   b, d                                        ; $5c72: $42
	add  b                                           ; $5c73: $80
	rrca                                             ; $5c74: $0f
	add  b                                           ; $5c75: $80
	ld   a, h                                        ; $5c76: $7c
	ld   [bc], a                                     ; $5c77: $02
	ldh  [$e1], a                                    ; $5c78: $e0 $e1
	ld   bc, $1f80                                   ; $5c7a: $01 $80 $1f
	rra                                              ; $5c7d: $1f
	cp   $ff                                         ; $5c7e: $fe $ff
	nop                                              ; $5c80: $00
	rst  $38                                         ; $5c81: $ff
	ld   de, $13ff                                   ; $5c82: $11 $ff $13
	add  e                                           ; $5c85: $83
	adc  a                                           ; $5c86: $8f
	rrca                                             ; $5c87: $0f
	ld   a, $3f                                      ; $5c88: $3e $3f
	ld   hl, sp-$01                                  ; $5c8a: $f8 $ff
	ret  nz                                          ; $5c8c: $c0

	rst  $38                                         ; $5c8d: $ff
	ld   bc, $40f9                                   ; $5c8e: $01 $f9 $40
	and  $60                                         ; $5c91: $e6 $60
	jr   c, @-$46                                    ; $5c93: $38 $b8

	ld   hl, sp+$10                                  ; $5c95: $f8 $10
	ldh  a, [rAUD1SWEEP]                             ; $5c97: $f0 $10
	sub  b                                           ; $5c99: $90
	nop                                              ; $5c9a: $00
	jr   nz, jr_089_5c9d                             ; $5c9b: $20 $00

jr_089_5c9d:
	ret  nz                                          ; $5c9d: $c0

	add  b                                           ; $5c9e: $80
	add  b                                           ; $5c9f: $80
	sub  d                                           ; $5ca0: $92
	nop                                              ; $5ca1: $00
	add  b                                           ; $5ca2: $80
	rlca                                             ; $5ca3: $07
	adc  h                                           ; $5ca4: $8c
	nop                                              ; $5ca5: $00
	inc  bc                                          ; $5ca6: $03
	rst  $38                                         ; $5ca7: $ff
	and  c                                           ; $5ca8: $a1
	ld   hl, $8a7f                                   ; $5ca9: $21 $7f $8a
	nop                                              ; $5cac: $00
	inc  bc                                          ; $5cad: $03
	rst  $38                                         ; $5cae: $ff
	add  hl, bc                                      ; $5caf: $09
	ld   [$8afe], sp                                 ; $5cb0: $08 $fe $8a
	nop                                              ; $5cb3: $00
	add  b                                           ; $5cb4: $80
	ret  nz                                          ; $5cb5: $c0

	ret  c                                           ; $5cb6: $d8

	nop                                              ; $5cb7: $00
	add  b                                           ; $5cb8: $80
	rlca                                             ; $5cb9: $07
	add  b                                           ; $5cba: $80
	ld   c, $94                                      ; $5cbb: $0e $94
	nop                                              ; $5cbd: $00
	add  b                                           ; $5cbe: $80
	inc  bc                                          ; $5cbf: $03
	add  b                                           ; $5cc0: $80
	rra                                              ; $5cc1: $1f
	add  b                                           ; $5cc2: $80
	ret  z                                           ; $5cc3: $c8

	add  b                                           ; $5cc4: $80
	ret  nz                                          ; $5cc5: $c0

	sub  d                                           ; $5cc6: $92
	nop                                              ; $5cc7: $00
	add  b                                           ; $5cc8: $80
	rlca                                             ; $5cc9: $07
	add  b                                           ; $5cca: $80
	ld   a, [bc]                                     ; $5ccb: $0a
	add  b                                           ; $5ccc: $80
	ld   b, b                                        ; $5ccd: $40
	add  b                                           ; $5cce: $80
	add  b                                           ; $5ccf: $80
	add  b                                           ; $5cd0: $80
	ld   bc, $0f80                                   ; $5cd1: $01 $80 $0f
	add  b                                           ; $5cd4: $80
	ld   e, l                                        ; $5cd5: $5d
	sbc  b                                           ; $5cd6: $98
	nop                                              ; $5cd7: $00
	add  d                                           ; $5cd8: $82
	add  b                                           ; $5cd9: $80
	add  $00                                         ; $5cda: $c6 $00
	add  b                                           ; $5cdc: $80
	dec  b                                           ; $5cdd: $05
	add  b                                           ; $5cde: $80
	dec  sp                                          ; $5cdf: $3b
	add  b                                           ; $5ce0: $80
	jr   c, jr_089_5c67                              ; $5ce1: $38 $84

	nop                                              ; $5ce3: $00
	add  b                                           ; $5ce4: $80
	dec  c                                           ; $5ce5: $0d
	add  b                                           ; $5ce6: $80
	ld   a, $80                                      ; $5ce7: $3e $80
	ld   [hl], b                                     ; $5ce9: $70
	add  d                                           ; $5cea: $82
	nop                                              ; $5ceb: $00
	add  b                                           ; $5cec: $80
	ld   [bc], a                                     ; $5ced: $02
	add  b                                           ; $5cee: $80
	rlca                                             ; $5cef: $07
	add  b                                           ; $5cf0: $80
	nop                                              ; $5cf1: $00
	add  b                                           ; $5cf2: $80
	ld   e, $80                                      ; $5cf3: $1e $80
	ld   hl, sp-$80                                  ; $5cf5: $f8 $80
	ret  nz                                          ; $5cf7: $c0

	add  h                                           ; $5cf8: $84
	nop                                              ; $5cf9: $00
	add  b                                           ; $5cfa: $80
	ld   a, [de]                                     ; $5cfb: $1a
	add  b                                           ; $5cfc: $80
	inc  a                                           ; $5cfd: $3c
	add  b                                           ; $5cfe: $80
	ld   h, b                                        ; $5cff: $60
	add  d                                           ; $5d00: $82
	nop                                              ; $5d01: $00
	add  b                                           ; $5d02: $80
	inc  bc                                          ; $5d03: $03
	add  b                                           ; $5d04: $80
	rra                                              ; $5d05: $1f
	add  b                                           ; $5d06: $80
	ldh  a, [$80]                                    ; $5d07: $f0 $80
	ldh  [$80], a                                    ; $5d09: $e0 $80
	ld   a, h                                        ; $5d0b: $7c
	add  d                                           ; $5d0c: $82
	nop                                              ; $5d0d: $00
	add  b                                           ; $5d0e: $80
	ld   bc, $0780                                   ; $5d0f: $01 $80 $07
	add  b                                           ; $5d12: $80
	ld   a, $84                                      ; $5d13: $3e $84
	nop                                              ; $5d15: $00
	add  b                                           ; $5d16: $80
	ld   bc, $0780                                   ; $5d17: $01 $80 $07
	add  b                                           ; $5d1a: $80
	ld   a, $80                                      ; $5d1b: $3e $80
	ret  nz                                          ; $5d1d: $c0

	adc  d                                           ; $5d1e: $8a
	nop                                              ; $5d1f: $00
	add  b                                           ; $5d20: $80
	ret  nz                                          ; $5d21: $c0

	add  b                                           ; $5d22: $80
	add  b                                           ; $5d23: $80
	add  b                                           ; $5d24: $80
	ret  nz                                          ; $5d25: $c0

	add  d                                           ; $5d26: $82
	nop                                              ; $5d27: $00
	add  b                                           ; $5d28: $80
	jr   nc, @-$7e                                   ; $5d29: $30 $80

	ld   hl, sp-$80                                  ; $5d2b: $f8 $80

jr_089_5d2d:
	ld   d, b                                        ; $5d2d: $50
	add  b                                           ; $5d2e: $80
	ld   b, b                                        ; $5d2f: $40
	add  $00                                         ; $5d30: $c6 $00
	add  b                                           ; $5d32: $80
	ld   d, $80                                      ; $5d33: $16 $80
	ld   [bc], a                                     ; $5d35: $02
	add  b                                           ; $5d36: $80
	inc  b                                           ; $5d37: $04
	sbc  b                                           ; $5d38: $98
	nop                                              ; $5d39: $00
	add  b                                           ; $5d3a: $80
	adc  b                                           ; $5d3b: $88
	add  b                                           ; $5d3c: $80
	db   $10                                         ; $5d3d: $10
	rst  $38                                         ; $5d3e: $ff
	nop                                              ; $5d3f: $00
	rst  $38                                         ; $5d40: $ff
	nop                                              ; $5d41: $00
	rst  $38                                         ; $5d42: $ff
	nop                                              ; $5d43: $00
	rst  $38                                         ; $5d44: $ff
	nop                                              ; $5d45: $00
	rst  $38                                         ; $5d46: $ff
	nop                                              ; $5d47: $00
	push af                                          ; $5d48: $f5
	nop                                              ; $5d49: $00
	pop  de                                          ; $5d4a: $d1
	nop                                              ; $5d4b: $00
	sbc  b                                           ; $5d4c: $98
	nop                                              ; $5d4d: $00
	add  b                                           ; $5d4e: $80
	ld   bc, $0080                                   ; $5d4f: $01 $80 $00
	add  b                                           ; $5d52: $80
	dec  bc                                          ; $5d53: $0b
	adc  b                                           ; $5d54: $88
	nop                                              ; $5d55: $00
	add  b                                           ; $5d56: $80
	jr   nz, @+$06                                   ; $5d57: $20 $04

	ret  nc                                          ; $5d59: $d0

	ldh  a, [rAUD3ENA]                               ; $5d5a: $f0 $1a
	jp   c, $87e0                                    ; $5d5c: $da $e0 $87

	nop                                              ; $5d5f: $00
	add  b                                           ; $5d60: $80
	db   $10                                         ; $5d61: $10
	add  b                                           ; $5d62: $80
	inc  e                                           ; $5d63: $1c
	ld   [bc], a                                     ; $5d64: $02
	ccf                                              ; $5d65: $3f
	inc  sp                                          ; $5d66: $33
	inc  c                                           ; $5d67: $0c
	adc  c                                           ; $5d68: $89
	nop                                              ; $5d69: $00
	add  b                                           ; $5d6a: $80
	add  b                                           ; $5d6b: $80
	sbc  [hl]                                        ; $5d6c: $9e
	nop                                              ; $5d6d: $00
	add  b                                           ; $5d6e: $80
	ld   [bc], a                                     ; $5d6f: $02
	inc  e                                           ; $5d70: $1c
	inc  b                                           ; $5d71: $04
	rlca                                             ; $5d72: $07
	ld   a, [bc]                                     ; $5d73: $0a
	ld   c, $14                                      ; $5d74: $0e $14
	inc  e                                           ; $5d76: $1c
	and  b                                           ; $5d77: $a0
	cp   c                                           ; $5d78: $b9
	ld   e, c                                        ; $5d79: $59
	ld   [hl], l                                     ; $5d7a: $75
	ld   h, h                                        ; $5d7b: $64
	ld   h, e                                        ; $5d7c: $63

Call_089_5d7d:
	and  e                                           ; $5d7d: $a3
	db   $e3                                         ; $5d7e: $e3
	pop  hl                                          ; $5d7f: $e1
	rst  $20                                         ; $5d80: $e7
	sub  h                                           ; $5d81: $94
	cp   a                                           ; $5d82: $bf
	adc  e                                           ; $5d83: $8b
	ld   l, l                                        ; $5d84: $6d
	dec  b                                           ; $5d85: $05
	db   $fd                                         ; $5d86: $fd
	dec  a                                           ; $5d87: $3d
	sbc  a                                           ; $5d88: $9f
	sbc  e                                           ; $5d89: $9b
	sbc  c                                           ; $5d8a: $99
	ld   bc, $b1b9                                   ; $5d8b: $01 $b9 $b1
	add  b                                           ; $5d8e: $80
	ld   a, l                                        ; $5d8f: $7d
	inc  bc                                          ; $5d90: $03
	dec  sp                                          ; $5d91: $3b
	ld   [hl+], a                                    ; $5d92: $22
	ret  z                                           ; $5d93: $c8

	ret                                              ; $5d94: $c9


	add  b                                           ; $5d95: $80
	ld   b, l                                        ; $5d96: $45
	add  b                                           ; $5d97: $80
	ld   [hl-], a                                    ; $5d98: $32
	add  b                                           ; $5d99: $80
	ld   hl, $3180                                   ; $5d9a: $21 $80 $31
	add  b                                           ; $5d9d: $80
	ld   d, d                                        ; $5d9e: $52
	add  b                                           ; $5d9f: $80
	sub  h                                           ; $5da0: $94
	ld   [bc], a                                     ; $5da1: $02
	ld   [$8077], sp                                 ; $5da2: $08 $77 $80
	add  b                                           ; $5da5: $80
	ld   d, b                                        ; $5da6: $50
	add  b                                           ; $5da7: $80
	jr   nz, jr_089_5dab                             ; $5da8: $20 $01

	or   b                                           ; $5daa: $b0

jr_089_5dab:
	jr   nc, jr_089_5d2d                             ; $5dab: $30 $80

	ld   c, b                                        ; $5dad: $48
	ld   bc, $8a4a                                   ; $5dae: $01 $4a $8a
	add  c                                           ; $5db1: $81
	and  h                                           ; $5db2: $a4
	ld   bc, $a044                                   ; $5db3: $01 $44 $a0
	adc  l                                           ; $5db6: $8d
	nop                                              ; $5db7: $00
	add  d                                           ; $5db8: $82
	ld   bc, $0601                                   ; $5db9: $01 $01 $06
	rlca                                             ; $5dbc: $07
	add  b                                           ; $5dbd: $80
	dec  bc                                          ; $5dbe: $0b
	add  b                                           ; $5dbf: $80
	rla                                              ; $5dc0: $17
	ld   bc, $1312                                   ; $5dc1: $01 $12 $13
	add  b                                           ; $5dc4: $80

Call_089_5dc5:
	ld   de, $1080                                   ; $5dc5: $11 $80 $10
	inc  d                                           ; $5dc8: $14
	inc  a                                           ; $5dc9: $3c
	rst  $20                                         ; $5dca: $e7
	and  $d7                                         ; $5dcb: $e6 $d7
	sub  e                                           ; $5dcd: $93
	adc  $cc                                         ; $5dce: $ce $cc
	xor  [hl]                                        ; $5dd0: $ae
	xor  h                                           ; $5dd1: $ac
	sbc  a                                           ; $5dd2: $9f
	rst  JumpTable                                         ; $5dd3: $df
	adc  $4f                                         ; $5dd4: $ce $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dd6: $cf
	rrca                                             ; $5dd7: $0f
	ld   a, a                                        ; $5dd8: $7f
	ldh  [$39], a                                    ; $5dd9: $e0 $39
	ld   sp, $1939                                   ; $5ddb: $31 $39 $19
	add  b                                           ; $5dde: $80
	ld   [hl], e                                     ; $5ddf: $73
	inc  bc                                          ; $5de0: $03
	ld   [hl], c                                     ; $5de1: $71
	ld   h, c                                        ; $5de2: $61
	ld   [hl], c                                     ; $5de3: $71
	ld   h, c                                        ; $5de4: $61
	add  b                                           ; $5de5: $80
	ld   sp, hl                                      ; $5de6: $f9
	add  b                                           ; $5de7: $80
	ld   [hl], l                                     ; $5de8: $75
	ld   bc, $4373                                   ; $5de9: $01 $73 $43
	add  b                                           ; $5dec: $80
	ld   [$4980], sp                                 ; $5ded: $08 $80 $49
	add  b                                           ; $5df0: $80
	inc  b                                           ; $5df1: $04
	add  b                                           ; $5df2: $80
	inc  d                                           ; $5df3: $14
	add  b                                           ; $5df4: $80
	dec  h                                           ; $5df5: $25
	add  b                                           ; $5df6: $80
	ld   b, [hl]                                     ; $5df7: $46
	add  b                                           ; $5df8: $80
	add  h                                           ; $5df9: $84
	ld   [bc], a                                     ; $5dfa: $02
	inc  b                                           ; $5dfb: $04
	ld   de, $804a                                   ; $5dfc: $11 $4a $80
	ld   d, e                                        ; $5dff: $53
	nop                                              ; $5e00: $00
	ld   e, c                                        ; $5e01: $59
	add  b                                           ; $5e02: $80
	add  hl, hl                                      ; $5e03: $29
	inc  b                                           ; $5e04: $04

jr_089_5e05:
	xor  c                                           ; $5e05: $a9
	and  c                                           ; $5e06: $a1
	ld   sp, $2333                                   ; $5e07: $31 $33 $23
	add  b                                           ; $5e0a: $80
	ld   h, $02                                      ; $5e0b: $26 $02
	jr   z, @+$3a                                    ; $5e0d: $28 $38

	ret  nz                                          ; $5e0f: $c0

	add  c                                           ; $5e10: $81
	nop                                              ; $5e11: $00
	add  b                                           ; $5e12: $80
	add  b                                           ; $5e13: $80
	add  b                                           ; $5e14: $80
	ld   b, b                                        ; $5e15: $40
	add  b                                           ; $5e16: $80
	and  b                                           ; $5e17: $a0
	add  d                                           ; $5e18: $82
	jr   nz, @-$7e                                   ; $5e19: $20 $80

	ld   h, b                                        ; $5e1b: $60
	add  h                                           ; $5e1c: $84
	ld   [$0480], sp                                 ; $5e1d: $08 $80 $04
	add  b                                           ; $5e20: $80
	ld   [bc], a                                     ; $5e21: $02
	add  b                                           ; $5e22: $80
	inc  bc                                          ; $5e23: $03
	add  d                                           ; $5e24: $82
	ld   [bc], a                                     ; $5e25: $02
	add  b                                           ; $5e26: $80
	rrca                                             ; $5e27: $0f
	add  [hl]                                        ; $5e28: $86
	nop                                              ; $5e29: $00
	add  b                                           ; $5e2a: $80
	add  b                                           ; $5e2b: $80
	add  b                                           ; $5e2c: $80
	ld   [hl], b                                     ; $5e2d: $70
	add  b                                           ; $5e2e: $80
	rrca                                             ; $5e2f: $0f
	inc  bc                                          ; $5e30: $03
	rst  ToBoot                                         ; $5e31: $c7
	ld   a, c                                        ; $5e32: $79
	ld   b, c                                        ; $5e33: $41
	rst  $38                                         ; $5e34: $ff
	adc  d                                           ; $5e35: $8a
	nop                                              ; $5e36: $00
	inc  bc                                          ; $5e37: $03
	rst  $38                                         ; $5e38: $ff
	dec  b                                           ; $5e39: $05
	inc  b                                           ; $5e3a: $04
	cp   $88                                         ; $5e3b: $fe $88
	nop                                              ; $5e3d: $00
	add  b                                           ; $5e3e: $80
	ld   bc, $e080                                   ; $5e3f: $01 $80 $e0
	add  h                                           ; $5e42: $84
	nop                                              ; $5e43: $00
	add  b                                           ; $5e44: $80

jr_089_5e45:
	ld   bc, $0780                                   ; $5e45: $01 $80 $07
	add  b                                           ; $5e48: $80
	dec  de                                          ; $5e49: $1b
	add  b                                           ; $5e4a: $80
	db   $e3                                         ; $5e4b: $e3
	add  h                                           ; $5e4c: $84
	ld   b, b                                        ; $5e4d: $40
	add  b                                           ; $5e4e: $80
	add  b                                           ; $5e4f: $80
	add  [hl]                                        ; $5e50: $86
	nop                                              ; $5e51: $00
	add  h                                           ; $5e52: $84
	ld   bc, $008e                                   ; $5e53: $01 $8e $00
	add  [hl]                                        ; $5e56: $86
	add  b                                           ; $5e57: $80
	add  b                                           ; $5e58: $80
	ld   b, b                                        ; $5e59: $40
	add  b                                           ; $5e5a: $80
	rst  $38                                         ; $5e5b: $ff
	adc  h                                           ; $5e5c: $8c
	nop                                              ; $5e5d: $00
	add  b                                           ; $5e5e: $80
	cp   $8c                                         ; $5e5f: $fe $8c
	nop                                              ; $5e61: $00
	add  h                                           ; $5e62: $84
	ld   [bc], a                                     ; $5e63: $02
	add  [hl]                                        ; $5e64: $86
	inc  b                                           ; $5e65: $04
	add  b                                           ; $5e66: $80
	ld   [$009e], sp                                 ; $5e67: $08 $9e $00

jr_089_5e6a:
	add  b                                           ; $5e6a: $80
	ld   b, b                                        ; $5e6b: $40
	add  b                                           ; $5e6c: $80
	ld   b, [hl]                                     ; $5e6d: $46
	add  b                                           ; $5e6e: $80
	cpl                                              ; $5e6f: $2f
	add  b                                           ; $5e70: $80
	inc  e                                           ; $5e71: $1c
	adc  h                                           ; $5e72: $8c
	nop                                              ; $5e73: $00
	add  d                                           ; $5e74: $82
	add  b                                           ; $5e75: $80
	add  b                                           ; $5e76: $80
	ld   h, b                                        ; $5e77: $60
	add  b                                           ; $5e78: $80
	rra                                              ; $5e79: $1f
	add  d                                           ; $5e7a: $82
	nop                                              ; $5e7b: $00
	add  b                                           ; $5e7c: $80
	ld   bc, $0380                                   ; $5e7d: $01 $80 $03
	add  d                                           ; $5e80: $82
	inc  b                                           ; $5e81: $04
	add  b                                           ; $5e82: $80
	jr   jr_089_5e05                                 ; $5e83: $18 $80

	ldh  [$80], a                                    ; $5e85: $e0 $80
	nop                                              ; $5e87: $00
	add  b                                           ; $5e88: $80
	ld   [$8880], sp                                 ; $5e89: $08 $80 $88
	add  b                                           ; $5e8c: $80
	ret  nc                                          ; $5e8d: $d0

	add  b                                           ; $5e8e: $80
	ldh  [$d8], a                                    ; $5e8f: $e0 $d8

jr_089_5e91:
	nop                                              ; $5e91: $00
	inc  c                                           ; $5e92: $0c
	inc  b                                           ; $5e93: $04
	rlca                                             ; $5e94: $07
	inc  bc                                          ; $5e95: $03
	rrca                                             ; $5e96: $0f
	dec  c                                           ; $5e97: $0d
	rra                                              ; $5e98: $1f
	db   $10                                         ; $5e99: $10
	rra                                              ; $5e9a: $1f
	rlca                                             ; $5e9b: $07
	rra                                              ; $5e9c: $1f
	dec  c                                           ; $5e9d: $0d
	rrca                                             ; $5e9e: $0f
	ld   [$0580], sp                                 ; $5e9f: $08 $80 $05
	adc  a                                           ; $5ea2: $8f
	nop                                              ; $5ea3: $00
	nop                                              ; $5ea4: $00
	ld   b, b                                        ; $5ea5: $40
	add  b                                           ; $5ea6: $80
	ret  nz                                          ; $5ea7: $c0

	inc  b                                           ; $5ea8: $04
	ldh  [hScriptOpcodeParams], a                                    ; $5ea9: $e0 $a0
	ldh  a, [$60]                                    ; $5eab: $f0 $60
	ldh  a, [$80]                                    ; $5ead: $f0 $80
	ldh  [rTMA], a                                   ; $5eaf: $e0 $06
	and  b                                           ; $5eb1: $a0
	ldh  [hScriptOpcodeParams], a                                    ; $5eb2: $e0 $a0
	ret  nz                                          ; $5eb4: $c0

	ld   b, c                                        ; $5eb5: $41
	nop                                              ; $5eb6: $00
	ld   bc, $009d                                   ; $5eb7: $01 $9d $00
	add  b                                           ; $5eba: $80
	add  b                                           ; $5ebb: $80
	add  b                                           ; $5ebc: $80
	ret  nz                                          ; $5ebd: $c0

	add  b                                           ; $5ebe: $80
	ld   b, b                                        ; $5ebf: $40
	add  d                                           ; $5ec0: $82
	jr   nc, jr_089_5e45                             ; $5ec1: $30 $82

	jr   jr_089_5e6a                                 ; $5ec3: $18 $a5

	nop                                              ; $5ec5: $00
	add  b                                           ; $5ec6: $80
	inc  b                                           ; $5ec7: $04
	rlca                                             ; $5ec8: $07
	ld   [$0c00], sp                                 ; $5ec9: $08 $00 $0c
	ld   [bc], a                                     ; $5ecc: $02
	ld   c, $09                                      ; $5ecd: $0e $09
	rrca                                             ; $5ecf: $0f
	ld   c, $84                                      ; $5ed0: $0e $84
	rlca                                             ; $5ed2: $07
	add  b                                           ; $5ed3: $80
	inc  bc                                          ; $5ed4: $03
	add  b                                           ; $5ed5: $80
	ld   bc, $0002                                   ; $5ed6: $01 $02 $00
	ld   bc, $8100                                   ; $5ed9: $01 $00 $81
	ld   bc, $008b                                   ; $5edc: $01 $8b $00
	add  b                                           ; $5edf: $80
	add  b                                           ; $5ee0: $80
	inc  b                                           ; $5ee1: $04
	ld   [hl], b                                     ; $5ee2: $70
	ldh  a, [$8f]                                    ; $5ee3: $f0 $8f
	rst  $38                                         ; $5ee5: $ff
	ldh  a, [$84]                                    ; $5ee6: $f0 $84
	rst  $38                                         ; $5ee8: $ff
	dec  b                                           ; $5ee9: $05
	ld   a, a                                        ; $5eea: $7f
	rst  $38                                         ; $5eeb: $ff
	rrca                                             ; $5eec: $0f
	rst  $38                                         ; $5eed: $ff
	add  b                                           ; $5eee: $80
	ldh  a, [$91]                                    ; $5eef: $f0 $91
	nop                                              ; $5ef1: $00
	ld   [bc], a                                     ; $5ef2: $02
	push af                                          ; $5ef3: $f5
	rst  $38                                         ; $5ef4: $ff
	ld   a, [bc]                                     ; $5ef5: $0a
	adc  b                                           ; $5ef6: $88
	rst  $38                                         ; $5ef7: $ff
	sub  b                                           ; $5ef8: $90
	nop                                              ; $5ef9: $00
	add  b                                           ; $5efa: $80
	ld   bc, $ff88                                   ; $5efb: $01 $88 $ff
	ld   [bc], a                                     ; $5efe: $02
	cp   $ea                                         ; $5eff: $fe $ea
	inc  d                                           ; $5f01: $14
	add  b                                           ; $5f02: $80
	inc  c                                           ; $5f03: $0c
	add  d                                           ; $5f04: $82
	ld   b, $80                                      ; $5f05: $06 $80
	ld   c, $80                                      ; $5f07: $0e $80
	inc  c                                           ; $5f09: $0c
	inc  b                                           ; $5f0a: $04
	add  hl, bc                                      ; $5f0b: $09
	ld   [$0006], sp                                 ; $5f0c: $08 $06 $00
	jr   jr_089_5e91                                 ; $5f0f: $18 $80

	nop                                              ; $5f11: $00
	nop                                              ; $5f12: $00
	ldh  [$82], a                                    ; $5f13: $e0 $82
	add  b                                           ; $5f15: $80
	ld   [$8081], sp                                 ; $5f16: $08 $81 $80
	ld   b, $00                                      ; $5f19: $06 $00
	inc  e                                           ; $5f1b: $1c
	nop                                              ; $5f1c: $00
	ld   hl, sp+$00                                  ; $5f1d: $f8 $00
	inc  e                                           ; $5f1f: $1c
	add  e                                           ; $5f20: $83
	nop                                              ; $5f21: $00
	inc  b                                           ; $5f22: $04
	add  b                                           ; $5f23: $80
	nop                                              ; $5f24: $00
	ret  nz                                          ; $5f25: $c0

	nop                                              ; $5f26: $00
	add  b                                           ; $5f27: $80
	add  c                                           ; $5f28: $81
	nop                                              ; $5f29: $00
	nop                                              ; $5f2a: $00
	ld   b, b                                        ; $5f2b: $40
	add  l                                           ; $5f2c: $85
	nop                                              ; $5f2d: $00
	nop                                              ; $5f2e: $00
	add  b                                           ; $5f2f: $80
	and  a                                           ; $5f30: $a7
	nop                                              ; $5f31: $00
	ld   bc, $e01f                                   ; $5f32: $01 $1f $e0
	add  b                                           ; $5f35: $80
	ld   hl, sp-$7f                                  ; $5f36: $f8 $81
	rst  $38                                         ; $5f38: $ff
	add  [hl]                                        ; $5f39: $86
	ld   a, a                                        ; $5f3a: $7f
	add  d                                           ; $5f3b: $82
	ccf                                              ; $5f3c: $3f
	add  b                                           ; $5f3d: $80
	add  hl, sp                                      ; $5f3e: $39
	add  b                                           ; $5f3f: $80
	db   $10                                         ; $5f40: $10
	add  b                                           ; $5f41: $80
	ld   bc, $0087                                   ; $5f42: $01 $87 $00
	ld   bc, $00ff                                   ; $5f45: $01 $ff $00
	add  b                                           ; $5f48: $80
	add  b                                           ; $5f49: $80
	add  b                                           ; $5f4a: $80
	cp   $8d                                         ; $5f4b: $fe $8d
	rst  $38                                         ; $5f4d: $ff
	add  d                                           ; $5f4e: $82
	ld   a, a                                        ; $5f4f: $7f
	add  b                                           ; $5f50: $80
	sbc  a                                           ; $5f51: $9f
	add  c                                           ; $5f52: $81
	nop                                              ; $5f53: $00
	ld   [bc], a                                     ; $5f54: $02
	ld   bc, $fe00                                   ; $5f55: $01 $00 $fe
	add  e                                           ; $5f58: $83
	nop                                              ; $5f59: $00
	adc  b                                           ; $5f5a: $88
	ld   hl, sp+$04                                  ; $5f5b: $f8 $04
	pop  af                                          ; $5f5d: $f1
	ldh  a, [$f2]                                    ; $5f5e: $f0 $f2
	ldh  a, [$f4]                                    ; $5f60: $f0 $f4
	add  b                                           ; $5f62: $80
	ldh  a, [c]                                      ; $5f63: $f2
	ld   bc, $f8f0                                   ; $5f64: $01 $f0 $f8
	add  b                                           ; $5f67: $80
	db   $e4                                         ; $5f68: $e4
	add  c                                           ; $5f69: $81
	nop                                              ; $5f6a: $00
	nop                                              ; $5f6b: $00
	db   $fc                                         ; $5f6c: $fc
	add  e                                           ; $5f6d: $83
	nop                                              ; $5f6e: $00
	nop                                              ; $5f6f: $00
	inc  b                                           ; $5f70: $04
	add  l                                           ; $5f71: $85
	nop                                              ; $5f72: $00
	nop                                              ; $5f73: $00
	ld   [$0081], sp                                 ; $5f74: $08 $81 $00
	inc  b                                           ; $5f77: $04
	add  b                                           ; $5f78: $80
	nop                                              ; $5f79: $00
	ld   d, b                                        ; $5f7a: $50
	nop                                              ; $5f7b: $00
	jr   nz, @+$01                                   ; $5f7c: $20 $ff

	nop                                              ; $5f7e: $00
	rst  $38                                         ; $5f7f: $ff
	nop                                              ; $5f80: $00
	rst  $38                                         ; $5f81: $ff
	nop                                              ; $5f82: $00
	rst  $38                                         ; $5f83: $ff
	nop                                              ; $5f84: $00
	rst  $38                                         ; $5f85: $ff
	nop                                              ; $5f86: $00
	and  d                                           ; $5f87: $a2
	nop                                              ; $5f88: $00
	and  b                                           ; $5f89: $a0
	nop                                              ; $5f8a: $00
	sbc  b                                           ; $5f8b: $98
	nop                                              ; $5f8c: $00
	add  b                                           ; $5f8d: $80
	inc  bc                                          ; $5f8e: $03
	inc  b                                           ; $5f8f: $04
	rrca                                             ; $5f90: $0f
	inc  c                                           ; $5f91: $0c
	inc  a                                           ; $5f92: $3c
	jr   nc, jr_089_5fa4                             ; $5f93: $30 $0f

	add  l                                           ; $5f95: $85
	nop                                              ; $5f96: $00
	add  b                                           ; $5f97: $80
	ld   a, a                                        ; $5f98: $7f
	nop                                              ; $5f99: $00
	rst  $38                                         ; $5f9a: $ff
	add  b                                           ; $5f9b: $80
	add  b                                           ; $5f9c: $80
	add  c                                           ; $5f9d: $81
	nop                                              ; $5f9e: $00
	nop                                              ; $5f9f: $00
	rst  $38                                         ; $5fa0: $ff
	add  l                                           ; $5fa1: $85
	nop                                              ; $5fa2: $00
	add  b                                           ; $5fa3: $80

jr_089_5fa4:
	ld   hl, sp+$00                                  ; $5fa4: $f8 $00
	rst  $38                                         ; $5fa6: $ff
	add  b                                           ; $5fa7: $80
	rlca                                             ; $5fa8: $07
	add  c                                           ; $5fa9: $81
	nop                                              ; $5faa: $00
	nop                                              ; $5fab: $00
	rst  $38                                         ; $5fac: $ff
	adc  c                                           ; $5fad: $89
	nop                                              ; $5fae: $00
	add  b                                           ; $5faf: $80
	ret  nz                                          ; $5fb0: $c0

	ld   [bc], a                                     ; $5fb1: $02
	ldh  a, [$30]                                    ; $5fb2: $f0 $30
	ret  nz                                          ; $5fb4: $c0

	sub  c                                           ; $5fb5: $91
	nop                                              ; $5fb6: $00
	add  b                                           ; $5fb7: $80
	ld   bc, $0381                                   ; $5fb8: $01 $81 $03
	nop                                              ; $5fbb: $00
	ld   [bc], a                                     ; $5fbc: $02
	add  c                                           ; $5fbd: $81
	ld   b, $00                                      ; $5fbe: $06 $00
	inc  b                                           ; $5fc0: $04
	add  b                                           ; $5fc1: $80
	inc  c                                           ; $5fc2: $0c
	ld   [bc], a                                     ; $5fc3: $02
	ld   a, h                                        ; $5fc4: $7c
	ld   b, b                                        ; $5fc5: $40
	ret  nz                                          ; $5fc6: $c0

	add  b                                           ; $5fc7: $80
	add  b                                           ; $5fc8: $80
	add  b                                           ; $5fc9: $80
	inc  bc                                          ; $5fca: $03
	ld   de, $041f                                   ; $5fcb: $11 $1f $04
	ccf                                              ; $5fce: $3f
	dec  sp                                          ; $5fcf: $3b
	ccf                                              ; $5fd0: $3f
	rla                                              ; $5fd1: $17
	ld   a, l                                        ; $5fd2: $7d
	scf                                              ; $5fd3: $37
	db   $fc                                         ; $5fd4: $fc
	add  c                                           ; $5fd5: $81
	ld   bc, $fb09                                   ; $5fd6: $01 $09 $fb
	db   $f4                                         ; $5fd9: $f4
	rst  $38                                         ; $5fda: $ff
	rla                                              ; $5fdb: $17
	rst  $38                                         ; $5fdc: $ff
	jp   hl                                          ; $5fdd: $e9


	add  b                                           ; $5fde: $80
	ld   h, a                                        ; $5fdf: $67
	inc  d                                           ; $5fe0: $14
	ld   sp, hl                                      ; $5fe1: $f9
	ld   a, [$5550]                                  ; $5fe2: $fa $50 $55
	rst  $38                                         ; $5fe5: $ff
	nop                                              ; $5fe6: $00
	ret  nz                                          ; $5fe7: $c0

	ld   b, b                                        ; $5fe8: $40
	ldh  a, [rSVBK]                                  ; $5fe9: $f0 $70
	ei                                               ; $5feb: $fb
	inc  hl                                          ; $5fec: $23
	rst  $38                                         ; $5fed: $ff
	push de                                          ; $5fee: $d5
	db   $d3                                         ; $5fef: $d3
	pop  de                                          ; $5ff0: $d1
	ld   h, e                                        ; $5ff1: $63
	ld   l, l                                        ; $5ff2: $6d
	rst  $38                                         ; $5ff3: $ff
	pop  de                                          ; $5ff4: $d1
	rst  JumpTable                                         ; $5ff5: $df
	add  b                                           ; $5ff6: $80
	ld   [$0c04], sp                                 ; $5ff7: $08 $04 $0c
	inc  b                                           ; $5ffa: $04
	ld   b, $02                                      ; $5ffb: $06 $02
	inc  bc                                          ; $5ffd: $03
	add  b                                           ; $5ffe: $80
	pop  bc                                          ; $5fff: $c1
	add  b                                           ; $6000: $80
	ld   l, c                                        ; $6001: $69
	add  b                                           ; $6002: $80
	ld   hl, sp+$03                                  ; $6003: $f8 $03
	db   $f4                                         ; $6005: $f4
	inc  a                                           ; $6006: $3c
	cp   $c9                                         ; $6007: $fe $c9
	add  a                                           ; $6009: $87
	nop                                              ; $600a: $00
	add  d                                           ; $600b: $82
	add  b                                           ; $600c: $80
	ld   [bc], a                                     ; $600d: $02
	ret  nz                                          ; $600e: $c0

	ld   b, b                                        ; $600f: $40
	adc  a                                           ; $6010: $8f
	add  b                                           ; $6011: $80
	inc  c                                           ; $6012: $0c
	add  c                                           ; $6013: $81
	dec  c                                           ; $6014: $0d
	nop                                              ; $6015: $00
	add  hl, bc                                      ; $6016: $09
	add  c                                           ; $6017: $81
	rrca                                             ; $6018: $0f
	nop                                              ; $6019: $00
	dec  c                                           ; $601a: $0d
	add  c                                           ; $601b: $81
	rrca                                             ; $601c: $0f
	ld   [bc], a                                     ; $601d: $02
	ld   c, $0f                                      ; $601e: $0e $0f
	add  h                                           ; $6020: $84
	add  b                                           ; $6021: $80
	ldh  [$3d], a                                    ; $6022: $e0 $3d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6024: $cf
	ld   c, l                                        ; $6025: $4d
	rst  $38                                         ; $6026: $ff
	sub  $c7                                         ; $6027: $d6 $c7
	sub  $c6                                         ; $6029: $d6 $c6
	cp   $fb                                         ; $602b: $fe $fb
	ld   a, c                                        ; $602d: $79
	rst  $20                                         ; $602e: $e7
	db   $e4                                         ; $602f: $e4
	ld   a, [$c74a]                                  ; $6030: $fa $4a $c7
	ld   e, a                                        ; $6033: $5f
	rst  ToBoot                                         ; $6034: $c7
	sub  [hl]                                        ; $6035: $96
	db   $fc                                         ; $6036: $fc
	rlca                                             ; $6037: $07
	db   $fc                                         ; $6038: $fc
	ld   a, [hl]                                     ; $6039: $7e
	ld   a, a                                        ; $603a: $7f
	daa                                              ; $603b: $27
	add  a                                           ; $603c: $87
	ld   e, a                                        ; $603d: $5f
	cp   a                                           ; $603e: $bf
	add  hl, de                                      ; $603f: $19
	ld   c, c                                        ; $6040: $49
	adc  h                                           ; $6041: $8c
	sbc  b                                           ; $6042: $98
	cp   $f8                                         ; $6043: $fe $f8
	ld   a, [hl]                                     ; $6045: $7e
	ld   a, a                                        ; $6046: $7f
	ld   [hl], b                                     ; $6047: $70
	ld   a, e                                        ; $6048: $7b
	db   $fd                                         ; $6049: $fd
	pop  af                                          ; $604a: $f1
	ei                                               ; $604b: $fb
	rst  $38                                         ; $604c: $ff
	adc  $8f                                         ; $604d: $ce $8f
	push hl                                          ; $604f: $e5
	adc  a                                           ; $6050: $8f
	xor  e                                           ; $6051: $ab
	rst  $38                                         ; $6052: $ff
	ld   a, a                                        ; $6053: $7f
	rst  $38                                         ; $6054: $ff
	cp   a                                           ; $6055: $bf
	rst  $38                                         ; $6056: $ff
	dec  e                                           ; $6057: $1d
	cp   a                                           ; $6058: $bf
	db   $dd                                         ; $6059: $dd
	rst  $38                                         ; $605a: $ff
	sub  a                                           ; $605b: $97
	cp   $36                                         ; $605c: $fe $36
	cp   $96                                         ; $605e: $fe $96
	db   $fc                                         ; $6060: $fc
	res  0, b                                        ; $6061: $cb $80
	ld   b, b                                        ; $6063: $40
	add  d                                           ; $6064: $82
	ret  nz                                          ; $6065: $c0

	add  a                                           ; $6066: $87
	ld   b, b                                        ; $6067: $40
	inc  bc                                          ; $6068: $03
	adc  b                                           ; $6069: $88
	rrca                                             ; $606a: $0f
	dec  bc                                          ; $606b: $0b
	rrca                                             ; $606c: $0f
	add  b                                           ; $606d: $80
	rlca                                             ; $606e: $07
	inc  b                                           ; $606f: $04
	ld   bc, $0203                                   ; $6070: $01 $03 $02
	inc  bc                                          ; $6073: $03
	ld   [bc], a                                     ; $6074: $02
	add  c                                           ; $6075: $81
	inc  bc                                          ; $6076: $03
	ld   [$0100], sp                                 ; $6077: $08 $00 $01
	ld   h, c                                        ; $607a: $61
	cp   $87                                         ; $607b: $fe $87
	rst  $38                                         ; $607d: $ff
	ldh  [rIE], a                                    ; $607e: $e0 $ff
	ld   hl, sp-$7f                                  ; $6080: $f8 $81
	rst  $38                                         ; $6082: $ff
	ld   c, $7f                                      ; $6083: $0e $7f
	rst  $38                                         ; $6085: $ff
	rra                                              ; $6086: $1f
	rst  $38                                         ; $6087: $ff
	add  e                                           ; $6088: $83
	ei                                               ; $6089: $fb
	ld   d, d                                        ; $608a: $52
	ld   [$fdbf], sp                                 ; $608b: $08 $bf $fd
	ld   a, a                                        ; $608e: $7f
	rst  $38                                         ; $608f: $ff
	add  b                                           ; $6090: $80
	rst  $38                                         ; $6091: $ff
	nop                                              ; $6092: $00
	add  l                                           ; $6093: $85
	rst  $38                                         ; $6094: $ff
	ld   [$fffc], sp                                 ; $6095: $08 $fc $ff

Jump_089_6098:
	ld   d, e                                        ; $6098: $53
	rst  $38                                         ; $6099: $ff
	ld   c, e                                        ; $609a: $4b
	rst  $38                                         ; $609b: $ff
	ld   a, [de]                                     ; $609c: $1a
	db   $fd                                         ; $609d: $fd

jr_089_609e:
	inc  bc                                          ; $609e: $03
	add  e                                           ; $609f: $83
	rst  $38                                         ; $60a0: $ff
	add  b                                           ; $60a1: $80
	cp   $02                                         ; $60a2: $fe $02
	jr   nz, jr_089_609e                             ; $60a4: $20 $f8

	ret  c                                           ; $60a6: $d8

	add  b                                           ; $60a7: $80
	ldh  [$80], a                                    ; $60a8: $e0 $80
	add  b                                           ; $60aa: $80
	add  b                                           ; $60ab: $80
	ld   bc, $0380                                   ; $60ac: $01 $80 $03
	add  b                                           ; $60af: $80
	rlca                                             ; $60b0: $07
	inc  bc                                          ; $60b1: $03
	add  hl, de                                      ; $60b2: $19
	jr   jr_089_6117                                 ; $60b3: $18 $62

	ld   e, h                                        ; $60b5: $5c
	add  b                                           ; $60b6: $80
	ld   b, b                                        ; $60b7: $40
	nop                                              ; $60b8: $00
	ret  nz                                          ; $60b9: $c0

	add  b                                           ; $60ba: $80
	add  b                                           ; $60bb: $80
	adc  b                                           ; $60bc: $88
	nop                                              ; $60bd: $00
	add  d                                           ; $60be: $82
	ld   bc, $008a                                   ; $60bf: $01 $8a $00
	inc  b                                           ; $60c2: $04
	rlca                                             ; $60c3: $07
	rst  $38                                         ; $60c4: $ff
	ei                                               ; $60c5: $fb
	db   $fc                                         ; $60c6: $fc
	ld   a, a                                        ; $60c7: $7f
	add  c                                           ; $60c8: $81
	rst  $38                                         ; $60c9: $ff
	nop                                              ; $60ca: $00
	ccf                                              ; $60cb: $3f
	add  c                                           ; $60cc: $81
	ld   a, a                                        ; $60cd: $7f
	ld   b, $1b                                      ; $60ce: $06 $1b
	ccf                                              ; $60d0: $3f
	dec  [hl]                                        ; $60d1: $35
	ccf                                              ; $60d2: $3f
	sub  c                                           ; $60d3: $91
	ld   a, a                                        ; $60d4: $7f
	nop                                              ; $60d5: $00
	add  b                                           ; $60d6: $80
	rst  $38                                         ; $60d7: $ff
	nop                                              ; $60d8: $00
	nop                                              ; $60d9: $00
	add  b                                           ; $60da: $80
	ret  nz                                          ; $60db: $c0

	add  [hl]                                        ; $60dc: $86
	rst  $38                                         ; $60dd: $ff
	ld   [bc], a                                     ; $60de: $02
	db   $fc                                         ; $60df: $fc
	rst  $38                                         ; $60e0: $ff
	inc  bc                                          ; $60e1: $03
	add  b                                           ; $60e2: $80
	db   $fc                                         ; $60e3: $fc
	add  c                                           ; $60e4: $81
	nop                                              ; $60e5: $00
	add  h                                           ; $60e6: $84
	ld   hl, sp+$02                                  ; $60e7: $f8 $02
	ldh  a, [$f1]                                    ; $60e9: $f0 $f1
	nop                                              ; $60eb: $00
	add  b                                           ; $60ec: $80
	add  d                                           ; $60ed: $82
	ld   bc, $0002                                   ; $60ee: $01 $02 $00

jr_089_60f1:
	add  c                                           ; $60f1: $81
	inc  b                                           ; $60f2: $04
	nop                                              ; $60f3: $00
	nop                                              ; $60f4: $00
	add  c                                           ; $60f5: $81
	ld   [rRAMG], sp                                 ; $60f6: $08 $00 $00
	add  b                                           ; $60f9: $80
	sub  b                                           ; $60fa: $90
	ld   bc, $20d0                                   ; $60fb: $01 $d0 $20
	sbc  l                                           ; $60fe: $9d
	nop                                              ; $60ff: $00
	add  b                                           ; $6100: $80
	rra                                              ; $6101: $1f
	add  b                                           ; $6102: $80
	inc  bc                                          ; $6103: $03
	adc  e                                           ; $6104: $8b
	nop                                              ; $6105: $00
	ld   bc, $7fff                                   ; $6106: $01 $ff $7f
	add  c                                           ; $6109: $81
	rst  $38                                         ; $610a: $ff
	inc  bc                                          ; $610b: $03
	rra                                              ; $610c: $1f
	ld   a, a                                        ; $610d: $7f
	nop                                              ; $610e: $00
	rra                                              ; $610f: $1f
	add  h                                           ; $6110: $84
	nop                                              ; $6111: $00
	nop                                              ; $6112: $00
	rrca                                             ; $6113: $0f
	add  b                                           ; $6114: $80
	di                                               ; $6115: $f3
	nop                                              ; $6116: $00

jr_089_6117:
	rst  $30                                         ; $6117: $f7
	add  b                                           ; $6118: $80
	db   $f4                                         ; $6119: $f4
	inc  bc                                          ; $611a: $03
	ldh  [$f8], a                                    ; $611b: $e0 $f8
	nop                                              ; $611d: $00
	ldh  [$84], a                                    ; $611e: $e0 $84
	nop                                              ; $6120: $00
	add  b                                           ; $6121: $80
	ldh  [$d5], a                                    ; $6122: $e0 $d5
	nop                                              ; $6124: $00
	add  b                                           ; $6125: $80
	dec  de                                          ; $6126: $1b
	dec  b                                           ; $6127: $05
	rra                                              ; $6128: $1f
	dec  e                                           ; $6129: $1d
	scf                                              ; $612a: $37
	ld   [hl], $7d                                   ; $612b: $36 $7d
	ld   a, [hl]                                     ; $612d: $7e
	sub  b                                           ; $612e: $90
	nop                                              ; $612f: $00
	add  b                                           ; $6130: $80
	ld   [$0780], sp                                 ; $6131: $08 $80 $07
	rlca                                             ; $6134: $07
	rst  $28                                         ; $6135: $ef
	ld   [hl], a                                     ; $6136: $77
	ld   sp, hl                                      ; $6137: $f9
	ld   h, a                                        ; $6138: $67
	ld   sp, hl                                      ; $6139: $f9
	ld   d, b                                        ; $613a: $50
	ld   a, [$8055]                                  ; $613b: $fa $55 $80
	rst  $38                                         ; $613e: $ff
	sub  b                                           ; $613f: $90
	nop                                              ; $6140: $00
	add  b                                           ; $6141: $80
	add  b                                           ; $6142: $80
	add  b                                           ; $6143: $80
	nop                                              ; $6144: $00
	add  hl, bc                                      ; $6145: $09
	ret  c                                           ; $6146: $d8

	db   $f4                                         ; $6147: $f4
	ldh  a, [c]                                      ; $6148: $f2
	ld   b, d                                        ; $6149: $42
	ldh  a, [$6c]                                    ; $614a: $f0 $6c
	cp   $de                                         ; $614c: $fe $de
	ret  nc                                          ; $614e: $d0

	ldh  a, [$9c]                                    ; $614f: $f0 $9c
	nop                                              ; $6151: $00
	add  b                                           ; $6152: $80
	ret  z                                           ; $6153: $c8

	cp   l                                           ; $6154: $bd
	nop                                              ; $6155: $00
	ld   [de], a                                     ; $6156: $12
	rra                                              ; $6157: $1f
	ld   a, h                                        ; $6158: $7c
	ld   d, e                                        ; $6159: $53
	ld   a, h                                        ; $615a: $7c
	ld   c, h                                        ; $615b: $4c
	cp   $c6                                         ; $615c: $fe $c6
	rst  $10                                         ; $615e: $d7
	sub  $c6                                         ; $615f: $d6 $c6
	ei                                               ; $6161: $fb
	cp   $e2                                         ; $6162: $fe $e2
	ld   a, h                                        ; $6164: $7c
	ld   h, c                                        ; $6165: $61
	ld   a, a                                        ; $6166: $7f
	ld   a, e                                        ; $6167: $7b
	ld   e, $1f                                      ; $6168: $1e $1f
	add  b                                           ; $616a: $80
	rlca                                             ; $616b: $07
	adc  c                                           ; $616c: $89
	nop                                              ; $616d: $00
	nop                                              ; $616e: $00
	jr   c, jr_089_60f1                              ; $616f: $38 $80

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6171: $cf
	ld   bc, $6c57                                   ; $6172: $01 $57 $6c
	add  b                                           ; $6175: $80
	ld   b, $0d                                      ; $6176: $06 $0d
	db   $fd                                         ; $6178: $fd
	ld   a, [hl]                                     ; $6179: $7e
	ld   a, a                                        ; $617a: $7f
	add  a                                           ; $617b: $87
	daa                                              ; $617c: $27
	rra                                              ; $617d: $1f
	rst  $38                                         ; $617e: $ff
	add  hl, bc                                      ; $617f: $09
	ld   e, c                                        ; $6180: $59
	jr   jr_089_61cd                                 ; $6181: $18 $4a

	cp   a                                           ; $6183: $bf
	db   $fd                                         ; $6184: $fd
	rst  $38                                         ; $6185: $ff
	add  b                                           ; $6186: $80
	ld   a, a                                        ; $6187: $7f
	add  a                                           ; $6188: $87
	nop                                              ; $6189: $00
	inc  c                                           ; $618a: $0c
	ld   h, a                                        ; $618b: $67
	sbc  h                                           ; $618c: $9c
	db   $fc                                         ; $618d: $fc
	ld   a, [$7c7d]                                  ; $618e: $fa $7d $7c
	ld   a, b                                        ; $6191: $78
	ld   [hl], e                                     ; $6192: $73
	ld   sp, hl                                      ; $6193: $f9
	push af                                          ; $6194: $f5
	ei                                               ; $6195: $fb
	rst  $38                                         ; $6196: $ff
	adc  a                                           ; $6197: $8f
	add  b                                           ; $6198: $80
	adc  $01                                         ; $6199: $ce $01
	and  h                                           ; $619b: $a4
	call nc, $fc80                                   ; $619c: $d4 $80 $fc
	add  b                                           ; $619f: $80
	ld   d, b                                        ; $61a0: $50
	add  b                                           ; $61a1: $80
	db   $e4                                         ; $61a2: $e4
	adc  b                                           ; $61a3: $88
	nop                                              ; $61a4: $00
	add  b                                           ; $61a5: $80
	add  b                                           ; $61a6: $80
	add  b                                           ; $61a7: $80
	nop                                              ; $61a8: $00
	inc  bc                                          ; $61a9: $03
	ld   b, b                                        ; $61aa: $40
	nop                                              ; $61ab: $00
	and  d                                           ; $61ac: $a2
	ldh  [c], a                                      ; $61ad: $e2
	add  b                                           ; $61ae: $80
	ret  nz                                          ; $61af: $c0

	add  b                                           ; $61b0: $80
	xor  b                                           ; $61b1: $a8
	add  b                                           ; $61b2: $80
	ld   h, b                                        ; $61b3: $60
	add  b                                           ; $61b4: $80
	ld   [$2080], sp                                 ; $61b5: $08 $80 $20
	rst  $38                                         ; $61b8: $ff
	nop                                              ; $61b9: $00
	rst  $38                                         ; $61ba: $ff
	nop                                              ; $61bb: $00
	rst  $38                                         ; $61bc: $ff
	nop                                              ; $61bd: $00
	rst  $38                                         ; $61be: $ff
	nop                                              ; $61bf: $00
	rst  $38                                         ; $61c0: $ff
	nop                                              ; $61c1: $00
	rst  $38                                         ; $61c2: $ff
	nop                                              ; $61c3: $00
	push hl                                          ; $61c4: $e5
	nop                                              ; $61c5: $00
	cp   b                                           ; $61c6: $b8
	nop                                              ; $61c7: $00
	sub  h                                           ; $61c8: $94
	nop                                              ; $61c9: $00
	add  b                                           ; $61ca: $80
	inc  bc                                          ; $61cb: $03
	add  b                                           ; $61cc: $80

jr_089_61cd:
	rrca                                             ; $61cd: $0f
	ld   b, $1c                                      ; $61ce: $06 $1c
	rra                                              ; $61d0: $1f
	jr   c, jr_089_6212                              ; $61d1: $38 $3f

	ld   [hl], b                                     ; $61d3: $70
	ld   a, h                                        ; $61d4: $7c

jr_089_61d5:
	ld   [$0083], sp                                 ; $61d5: $08 $83 $00
	add  d                                           ; $61d8: $82
	rst  $38                                         ; $61d9: $ff
	ld   b, $e0                                      ; $61da: $06 $e0
	rst  $38                                         ; $61dc: $ff
	nop                                              ; $61dd: $00
	ld   a, a                                        ; $61de: $7f
	sub  b                                           ; $61df: $90
	pop  af                                          ; $61e0: $f1
	ld   bc, $0083                                   ; $61e1: $01 $83 $00
	add  d                                           ; $61e4: $82
	rst  $38                                         ; $61e5: $ff
	ld   b, $00                                      ; $61e6: $06 $00
	db   $fc                                         ; $61e8: $fc
	inc  de                                          ; $61e9: $13
	rst  $28                                         ; $61ea: $ef
	ld   bc, $feff                                   ; $61eb: $01 $ff $fe
	add  e                                           ; $61ee: $83
	nop                                              ; $61ef: $00
	add  d                                           ; $61f0: $82
	rst  $38                                         ; $61f1: $ff
	ld   b, $e0                                      ; $61f2: $06 $e0
	rst  $38                                         ; $61f4: $ff
	ld   c, $ff                                      ; $61f5: $0e $ff
	daa                                              ; $61f7: $27
	rst  JumpTable                                         ; $61f8: $df
	ld   d, $83                                      ; $61f9: $16 $83
	nop                                              ; $61fb: $00
	add  b                                           ; $61fc: $80
	ret  nz                                          ; $61fd: $c0

	add  d                                           ; $61fe: $82
	and  b                                           ; $61ff: $a0
	add  d                                           ; $6200: $82
	ld   b, b                                        ; $6201: $40
	add  b                                           ; $6202: $80
	nop                                              ; $6203: $00
	add  b                                           ; $6204: $80
	ld   bc, $0380                                   ; $6205: $01 $80 $03
	inc  bc                                          ; $6208: $03
	ld   [bc], a                                     ; $6209: $02
	inc  bc                                          ; $620a: $03
	ld   [bc], a                                     ; $620b: $02
	inc  bc                                          ; $620c: $03
	add  h                                           ; $620d: $84
	ld   bc, $e90b                                   ; $620e: $01 $0b $e9
	ld   sp, hl                                      ; $6211: $f9

jr_089_6212:
	reti                                             ; $6212: $d9


	rst  $38                                         ; $6213: $ff
	cp   d                                           ; $6214: $ba
	rst  $38                                         ; $6215: $ff
	adc  h                                           ; $6216: $8c
	rst  $38                                         ; $6217: $ff
	nop                                              ; $6218: $00
	and  c                                           ; $6219: $a1
	ld   e, [hl]                                     ; $621a: $5e
	rst  $38                                         ; $621b: $ff
	add  b                                           ; $621c: $80
	nop                                              ; $621d: $00
	dec  c                                           ; $621e: $0d

jr_089_621f:
	rst  $38                                         ; $621f: $ff
	nop                                              ; $6220: $00
	ld   a, a                                        ; $6221: $7f
	adc  a                                           ; $6222: $8f
	rrca                                             ; $6223: $0f
	ccf                                              ; $6224: $3f
	rst  JumpTable                                         ; $6225: $df
	rst  $38                                         ; $6226: $ff
	ldh  [rIE], a                                    ; $6227: $e0 $ff
	nop                                              ; $6229: $00
	rst  $38                                         ; $622a: $ff
	nop                                              ; $622b: $00
	rst  $38                                         ; $622c: $ff

jr_089_622d:
	add  b                                           ; $622d: $80
	nop                                              ; $622e: $00
	ld   bc, $00ff                                   ; $622f: $01 $ff $00

jr_089_6232:
	add  e                                           ; $6232: $83
	rst  $38                                         ; $6233: $ff
	ld   b, $e0                                      ; $6234: $06 $e0
	rra                                              ; $6236: $1f
	rst  $38                                         ; $6237: $ff
	nop                                              ; $6238: $00
	rst  $38                                         ; $6239: $ff
	nop                                              ; $623a: $00
	rst  $38                                         ; $623b: $ff
	add  b                                           ; $623c: $80
	nop                                              ; $623d: $00
	dec  c                                           ; $623e: $0d
	rst  $38                                         ; $623f: $ff
	nop                                              ; $6240: $00
	or   l                                           ; $6241: $b5
	sbc  $86                                         ; $6242: $de $86
	ld   [hl], $41                                   ; $6244: $36 $41
	db   $ed                                         ; $6246: $ed
	ld   [hl], c                                     ; $6247: $71
	ld   sp, hl                                      ; $6248: $f9
	ld   [bc], a                                     ; $6249: $02
	cp   $00                                         ; $624a: $fe $00
	db   $fc                                         ; $624c: $fc
	add  b                                           ; $624d: $80
	nop                                              ; $624e: $00
	ld   [bc], a                                     ; $624f: $02
	ld   hl, sp+$00                                  ; $6250: $f8 $00
	jr   c, jr_089_61d5                              ; $6252: $38 $81

	ret  nz                                          ; $6254: $c0

	adc  d                                           ; $6255: $8a
	ld   b, b                                        ; $6256: $40
	adc  [hl]                                        ; $6257: $8e
	ld   bc, $ff01                                   ; $6258: $01 $01 $ff
	nop                                              ; $625b: $00
	add  b                                           ; $625c: $80
	rrca                                             ; $625d: $0f
	inc  bc                                          ; $625e: $03
	jr   c, jr_089_62a0                              ; $625f: $38 $3f

	inc  h                                           ; $6261: $24
	inc  a                                           ; $6262: $3c
	add  [hl]                                        ; $6263: $86
	jr   nc, jr_089_6267                             ; $6264: $30 $01

	rra                                              ; $6266: $1f

jr_089_6267:
	nop                                              ; $6267: $00
	add  b                                           ; $6268: $80
	rst  $38                                         ; $6269: $ff
	inc  b                                           ; $626a: $04
	nop                                              ; $626b: $00
	rst  $38                                         ; $626c: $ff
	ld   bc, $0e0f                                   ; $626d: $01 $0f $0e
	add  b                                           ; $6270: $80
	dec  d                                           ; $6271: $15
	add  b                                           ; $6272: $80
	dec  de                                          ; $6273: $1b
	inc  b                                           ; $6274: $04
	dec  d                                           ; $6275: $15
	inc  d                                           ; $6276: $14
	rrca                                             ; $6277: $0f
	pop  af                                          ; $6278: $f1
	nop                                              ; $6279: $00
	add  b                                           ; $627a: $80
	rst  $38                                         ; $627b: $ff
	inc  bc                                          ; $627c: $03
	ld   bc, $02ff                                   ; $627d: $01 $ff $02
	inc  bc                                          ; $6280: $03
	add  h                                           ; $6281: $84
	add  b                                           ; $6282: $80
	add  b                                           ; $6283: $80
	nop                                              ; $6284: $00
	nop                                              ; $6285: $00
	ld   hl, sp-$7f                                  ; $6286: $f8 $81
	nop                                              ; $6288: $00
	add  b                                           ; $6289: $80
	ret  nz                                          ; $628a: $c0

	nop                                              ; $628b: $00
	ld   b, b                                        ; $628c: $40
	add  a                                           ; $628d: $87
	ret  nz                                          ; $628e: $c0

	nop                                              ; $628f: $00
	jr   c, jr_089_621f                              ; $6290: $38 $8d

	ld   b, b                                        ; $6292: $40
	adc  [hl]                                        ; $6293: $8e
	ld   bc, $d000                                   ; $6294: $01 $00 $d0
	adc  l                                           ; $6297: $8d
	jr   nc, @+$03                                   ; $6298: $30 $01

	xor  $0e                                         ; $629a: $ee $0e
	sbc  h                                           ; $629c: $9c
	nop                                              ; $629d: $00
	nop                                              ; $629e: $00
	cp   b                                           ; $629f: $b8

jr_089_62a0:
	adc  l                                           ; $62a0: $8d
	ret  nz                                          ; $62a1: $c0

	nop                                              ; $62a2: $00
	jr   c, jr_089_6232                              ; $62a3: $38 $8d

	ld   b, b                                        ; $62a5: $40
	adc  [hl]                                        ; $62a6: $8e
	ld   bc, $d000                                   ; $62a7: $01 $00 $d0
	adc  c                                           ; $62aa: $89
	jr   nc, jr_089_622d                             ; $62ab: $30 $80

	inc  a                                           ; $62ad: $3c
	ld   [bc], a                                     ; $62ae: $02
	daa                                              ; $62af: $27
	ccf                                              ; $62b0: $3f
	ld   hl, sp-$75                                  ; $62b1: $f8 $8b
	nop                                              ; $62b3: $00
	add  b                                           ; $62b4: $80
	rst  $38                                         ; $62b5: $ff
	adc  d                                           ; $62b6: $8a
	nop                                              ; $62b7: $00
	add  b                                           ; $62b8: $80
	inc  bc                                          ; $62b9: $03
	ld   [bc], a                                     ; $62ba: $02
	cp   $ff                                         ; $62bb: $fe $ff
	cp   c                                           ; $62bd: $b9
	add  l                                           ; $62be: $85
	ret  nz                                          ; $62bf: $c0

	add  d                                           ; $62c0: $82
	pop  bc                                          ; $62c1: $c1
	add  b                                           ; $62c2: $80
	ret  nz                                          ; $62c3: $c0

	inc  bc                                          ; $62c4: $03
	ld   b, d                                        ; $62c5: $42
	jp   nz, Jump_089_6098                           ; $62c6: $c2 $98 $60

	add  h                                           ; $62c9: $84
	and  b                                           ; $62ca: $a0
	add  d                                           ; $62cb: $82
	ld   b, b                                        ; $62cc: $40
	add  d                                           ; $62cd: $82
	add  b                                           ; $62ce: $80
	add  b                                           ; $62cf: $80
	ld   bc, $0382                                   ; $62d0: $01 $82 $03
	inc  bc                                          ; $62d3: $03
	ld   [bc], a                                     ; $62d4: $02
	inc  bc                                          ; $62d5: $03
	nop                                              ; $62d6: $00
	ld   bc, $0084                                   ; $62d7: $01 $84 $00
	ld   bc, $0ff0                                   ; $62da: $01 $f0 $0f
	add  e                                           ; $62dd: $83
	nop                                              ; $62de: $00
	inc  b                                           ; $62df: $04
	rst  $38                                         ; $62e0: $ff
	nop                                              ; $62e1: $00
	rst  $38                                         ; $62e2: $ff
	nop                                              ; $62e3: $00
	rst  $38                                         ; $62e4: $ff
	add  e                                           ; $62e5: $83
	nop                                              ; $62e6: $00
	nop                                              ; $62e7: $00
	rst  $38                                         ; $62e8: $ff
	add  e                                           ; $62e9: $83
	nop                                              ; $62ea: $00
	inc  b                                           ; $62eb: $04
	rst  $38                                         ; $62ec: $ff
	nop                                              ; $62ed: $00
	rst  $38                                         ; $62ee: $ff
	nop                                              ; $62ef: $00
	rst  $38                                         ; $62f0: $ff
	add  e                                           ; $62f1: $83
	nop                                              ; $62f2: $00
	nop                                              ; $62f3: $00
	rst  $38                                         ; $62f4: $ff
	add  e                                           ; $62f5: $83
	nop                                              ; $62f6: $00
	inc  b                                           ; $62f7: $04
	rst  $38                                         ; $62f8: $ff
	nop                                              ; $62f9: $00
	rst  $38                                         ; $62fa: $ff
	nop                                              ; $62fb: $00
	rst  $38                                         ; $62fc: $ff
	add  d                                           ; $62fd: $82
	nop                                              ; $62fe: $00
	ld   bc, $03fb                                   ; $62ff: $01 $fb $03
	add  d                                           ; $6302: $82
	rlca                                             ; $6303: $07
	dec  b                                           ; $6304: $05
	ld   b, $fe                                      ; $6305: $06 $fe
	ld   [bc], a                                     ; $6307: $02
	cp   $00                                         ; $6308: $fe $00
	db   $fc                                         ; $630a: $fc
	add  d                                           ; $630b: $82
	nop                                              ; $630c: $00
	add  b                                           ; $630d: $80
	add  b                                           ; $630e: $80
	ret  z                                           ; $630f: $c8

	nop                                              ; $6310: $00
	ld   [bc], a                                     ; $6311: $02
	rst  $38                                         ; $6312: $ff
	nop                                              ; $6313: $00
	rst  $38                                         ; $6314: $ff
	adc  l                                           ; $6315: $8d
	nop                                              ; $6316: $00
	add  b                                           ; $6317: $80
	ld   c, $80                                      ; $6318: $0e $80
	ld   [hl], b                                     ; $631a: $70
	add  b                                           ; $631b: $80
	ret  nz                                          ; $631c: $c0

	add  [hl]                                        ; $631d: $86
	nop                                              ; $631e: $00
	ld   [bc], a                                     ; $631f: $02
	rst  $38                                         ; $6320: $ff
	nop                                              ; $6321: $00
	rst  $38                                         ; $6322: $ff
	adc  e                                           ; $6323: $8b
	nop                                              ; $6324: $00
	add  b                                           ; $6325: $80
	db   $10                                         ; $6326: $10
	adc  h                                           ; $6327: $8c
	nop                                              ; $6328: $00
	ld   [bc], a                                     ; $6329: $02
	rst  $38                                         ; $632a: $ff
	nop                                              ; $632b: $00
	rst  $38                                         ; $632c: $ff
	adc  a                                           ; $632d: $8f
	nop                                              ; $632e: $00
	add  b                                           ; $632f: $80
	ld   bc, $0980                                   ; $6330: $01 $80 $09
	add  b                                           ; $6333: $80
	ld   [de], a                                     ; $6334: $12
	add  b                                           ; $6335: $80
	ld   b, $08                                      ; $6336: $06 $08
	ld   bc, $0200                                   ; $6338: $01 $00 $02
	nop                                              ; $633b: $00
	db   $fc                                         ; $633c: $fc
	nop                                              ; $633d: $00
	ld   hl, sp+$00                                  ; $633e: $f8 $00
	rlca                                             ; $6340: $07
	add  l                                           ; $6341: $85
	nop                                              ; $6342: $00
	add  d                                           ; $6343: $82
	ld   b, b                                        ; $6344: $40
	add  d                                           ; $6345: $82
	add  b                                           ; $6346: $80
	add  d                                           ; $6347: $82
	nop                                              ; $6348: $00
	nop                                              ; $6349: $00
	add  b                                           ; $634a: $80
	adc  c                                           ; $634b: $89
	nop                                              ; $634c: $00
	nop                                              ; $634d: $00
	add  b                                           ; $634e: $80
	and  e                                           ; $634f: $a3
	nop                                              ; $6350: $00
	inc  b                                           ; $6351: $04
	inc  bc                                          ; $6352: $03
	nop                                              ; $6353: $00
	inc  c                                           ; $6354: $0c
	nop                                              ; $6355: $00
	inc  bc                                          ; $6356: $03
	sub  e                                           ; $6357: $93
	nop                                              ; $6358: $00
	nop                                              ; $6359: $00
	inc  c                                           ; $635a: $0c
	add  e                                           ; $635b: $83
	nop                                              ; $635c: $00
	inc  b                                           ; $635d: $04
	ldh  a, [rP1]                                    ; $635e: $f0 $00
	db   $10                                         ; $6360: $10
	ld   a, [bc]                                     ; $6361: $0a
	ld   [$0480], a                                  ; $6362: $ea $80 $04
	add  b                                           ; $6365: $80
	ld   a, [bc]                                     ; $6366: $0a
	add  e                                           ; $6367: $83
	nop                                              ; $6368: $00
	inc  c                                           ; $6369: $0c
	ret  z                                           ; $636a: $c8

	nop                                              ; $636b: $00
	ld   l, c                                        ; $636c: $69
	nop                                              ; $636d: $00
	ld   c, h                                        ; $636e: $4c
	nop                                              ; $636f: $00
	ld   e, e                                        ; $6370: $5b
	nop                                              ; $6371: $00
	or   [hl]                                        ; $6372: $b6
	nop                                              ; $6373: $00
	ld   [bc], a                                     ; $6374: $02
	nop                                              ; $6375: $00
	ld   [bc], a                                     ; $6376: $02
	add  e                                           ; $6377: $83
	nop                                              ; $6378: $00
	inc  b                                           ; $6379: $04
	db   $fc                                         ; $637a: $fc
	nop                                              ; $637b: $00
	add  e                                           ; $637c: $83
	nop                                              ; $637d: $00
	ld   a, h                                        ; $637e: $7c
	add  a                                           ; $637f: $87
	nop                                              ; $6380: $00
	nop                                              ; $6381: $00
	ld   [$0081], sp                                 ; $6382: $08 $81 $00
	inc  b                                           ; $6385: $04
	ld   h, b                                        ; $6386: $60
	nop                                              ; $6387: $00
	sub  b                                           ; $6388: $90
	nop                                              ; $6389: $00
	ld   hl, sp-$7f                                  ; $638a: $f8 $81
	nop                                              ; $638c: $00
	nop                                              ; $638d: $00
	inc  b                                           ; $638e: $04
	sbc  l                                           ; $638f: $9d
	nop                                              ; $6390: $00
	nop                                              ; $6391: $00
	add  a                                           ; $6392: $87
	sbc  l                                           ; $6393: $9d
	nop                                              ; $6394: $00
	nop                                              ; $6395: $00
	add  b                                           ; $6396: $80
	sbc  l                                           ; $6397: $9d
	nop                                              ; $6398: $00
	nop                                              ; $6399: $00
	inc  c                                           ; $639a: $0c
	add  a                                           ; $639b: $87
	nop                                              ; $639c: $00
	inc  b                                           ; $639d: $04
	inc  bc                                          ; $639e: $03
	nop                                              ; $639f: $00
	inc  c                                           ; $63a0: $0c
	nop                                              ; $63a1: $00
	inc  bc                                          ; $63a2: $03
	adc  a                                           ; $63a3: $8f
	nop                                              ; $63a4: $00
	ld   b, $2e                                      ; $63a5: $06 $2e
	nop                                              ; $63a7: $00
	ld   l, $00                                      ; $63a8: $2e $00
	ld   a, [hl-]                                    ; $63aa: $3a
	nop                                              ; $63ab: $00
	ld   a, [hl-]                                    ; $63ac: $3a
	add  c                                           ; $63ad: $81
	nop                                              ; $63ae: $00
	nop                                              ; $63af: $00
	rst  $38                                         ; $63b0: $ff
	add  c                                           ; $63b1: $81
	nop                                              ; $63b2: $00
	nop                                              ; $63b3: $00
	rst  $38                                         ; $63b4: $ff
	adc  a                                           ; $63b5: $8f
	nop                                              ; $63b6: $00
	ld   b, $c3                                      ; $63b7: $06 $c3
	nop                                              ; $63b9: $00
	ret  nz                                          ; $63ba: $c0

	nop                                              ; $63bb: $00
	add  b                                           ; $63bc: $80
	nop                                              ; $63bd: $00
	add  b                                           ; $63be: $80
	add  c                                           ; $63bf: $81
	nop                                              ; $63c0: $00
	inc  b                                           ; $63c1: $04
	db   $fc                                         ; $63c2: $fc
	nop                                              ; $63c3: $00
	inc  bc                                          ; $63c4: $03
	nop                                              ; $63c5: $00
	db   $fc                                         ; $63c6: $fc
	adc  a                                           ; $63c7: $8f
	nop                                              ; $63c8: $00
	nop                                              ; $63c9: $00
	rlca                                             ; $63ca: $07
	add  l                                           ; $63cb: $85
	nop                                              ; $63cc: $00
	nop                                              ; $63cd: $00
	ld   bc, $0081                                   ; $63ce: $01 $81 $00
	add  b                                           ; $63d1: $80
	ld   bc, $0301                                   ; $63d2: $01 $01 $03
	ld   bc, $0080                                   ; $63d5: $01 $80 $00

jr_089_63d8:
	nop                                              ; $63d8: $00
	inc  b                                           ; $63d9: $04
	adc  e                                           ; $63da: $8b
	nop                                              ; $63db: $00
	ld   [bc], a                                     ; $63dc: $02
	add  b                                           ; $63dd: $80
	nop                                              ; $63de: $00
	ret  nz                                          ; $63df: $c0

	add  e                                           ; $63e0: $83
	ld   b, b                                        ; $63e1: $40
	add  d                                           ; $63e2: $82
	add  b                                           ; $63e3: $80
	rst  $38                                         ; $63e4: $ff
	nop                                              ; $63e5: $00
	rst  $38                                         ; $63e6: $ff
	nop                                              ; $63e7: $00
	rst  $38                                         ; $63e8: $ff
	nop                                              ; $63e9: $00
	rst  $38                                         ; $63ea: $ff

jr_089_63eb:
	nop                                              ; $63eb: $00
	rst  $38                                         ; $63ec: $ff
	nop                                              ; $63ed: $00
	adc  l                                           ; $63ee: $8d
	nop                                              ; $63ef: $00
	pop  bc                                          ; $63f0: $c1
	nop                                              ; $63f1: $00
	sbc  h                                           ; $63f2: $9c
	nop                                              ; $63f3: $00
	add  b                                           ; $63f4: $80
	add  hl, bc                                      ; $63f5: $09
	add  h                                           ; $63f6: $84
	nop                                              ; $63f7: $00
	add  b                                           ; $63f8: $80
	ld   [$1008], sp                                 ; $63f9: $08 $08 $10
	nop                                              ; $63fc: $00
	inc  l                                           ; $63fd: $2c
	jr   z, jr_089_63eb                              ; $63fe: $28 $eb

	ei                                               ; $6400: $fb
	cp   d                                           ; $6401: $ba
	sbc  $60                                         ; $6402: $de $60
	add  l                                           ; $6404: $85
	nop                                              ; $6405: $00
	ld   [$20f0], sp                                 ; $6406: $08 $f0 $20
	ld   [$9490], sp                                 ; $6409: $08 $90 $94
	sbc  h                                           ; $640c: $9c
	rst  $38                                         ; $640d: $ff
	inc  sp                                          ; $640e: $33
	adc  h                                           ; $640f: $8c
	adc  c                                           ; $6410: $89
	nop                                              ; $6411: $00
	add  b                                           ; $6412: $80
	add  b                                           ; $6413: $80
	sbc  [hl]                                        ; $6414: $9e
	nop                                              ; $6415: $00
	add  b                                           ; $6416: $80
	ld   [bc], a                                     ; $6417: $02
	inc  c                                           ; $6418: $0c
	ld   b, $07                                      ; $6419: $06 $07
	inc  b                                           ; $641b: $04
	ld   b, $08                                      ; $641c: $06 $08
	inc  c                                           ; $641e: $0c
	ld   e, b                                        ; $641f: $58
	ld   e, c                                        ; $6420: $59
	add  hl, hl                                      ; $6421: $29
	dec  [hl]                                        ; $6422: $35
	dec  h                                           ; $6423: $25
	inc  hl                                          ; $6424: $23
	ld   b, d                                        ; $6425: $42
	add  b                                           ; $6426: $80
	ld   h, e                                        ; $6427: $63
	dec  c                                           ; $6428: $0d
	ld   [hl], e                                     ; $6429: $73
	jp   nz, $8bbf                                   ; $642a: $c2 $bf $8b

	ld   l, l                                        ; $642d: $6d
	dec  b                                           ; $642e: $05
	db   $fd                                         ; $642f: $fd
	cp   l                                           ; $6430: $bd
	sbc  a                                           ; $6431: $9f
	dec  de                                          ; $6432: $1b
	sbc  c                                           ; $6433: $99

jr_089_6434:
	ld   bc, $b1b9                                   ; $6434: $01 $b9 $b1
	add  b                                           ; $6437: $80
	ld   a, l                                        ; $6438: $7d
	ld   bc, $233b                                   ; $6439: $01 $3b $23
	add  b                                           ; $643c: $80
	ret                                              ; $643d: $c9


	add  b                                           ; $643e: $80

jr_089_643f:
	ld   b, l                                        ; $643f: $45
	add  b                                           ; $6440: $80
	inc  [hl]                                        ; $6441: $34
	add  b                                           ; $6442: $80
	ld   [hl+], a                                    ; $6443: $22
	add  b                                           ; $6444: $80
	ld   hl, $5380                                   ; $6445: $21 $80 $53
	add  b                                           ; $6448: $80
	sub  h                                           ; $6449: $94
	ld   [bc], a                                     ; $644a: $02
	jr   jr_089_6434                                 ; $644b: $18 $e7

	nop                                              ; $644d: $00
	add  b                                           ; $644e: $80
	sub  b                                           ; $644f: $90
	nop                                              ; $6450: $00
	ldh  [$80], a                                    ; $6451: $e0 $80
	ld   h, b                                        ; $6453: $60
	nop                                              ; $6454: $00
	jr   nz, jr_089_63d8                             ; $6455: $20 $81

	jr   nc, jr_089_645e                             ; $6457: $30 $05

	ld   d, b                                        ; $6459: $50
	ld   e, b                                        ; $645a: $58
	adc  b                                           ; $645b: $88
	adc  d                                           ; $645c: $8a
	xor  d                                           ; $645d: $aa

jr_089_645e:
	ld   d, b                                        ; $645e: $50
	adc  l                                           ; $645f: $8d
	nop                                              ; $6460: $00
	add  d                                           ; $6461: $82
	ld   bc, $0780                                   ; $6462: $01 $80 $07
	inc  c                                           ; $6465: $0c
	rrca                                             ; $6466: $0f
	dec  bc                                          ; $6467: $0b
	dec  de                                          ; $6468: $1b
	rla                                              ; $6469: $17
	rra                                              ; $646a: $1f
	dec  de                                          ; $646b: $1b
	dec  d                                           ; $646c: $15
	ld   de, $1018                                   ; $646d: $11 $18 $10
	cp   h                                           ; $6470: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6471: $cf
	adc  $81                                         ; $6472: $ce $81
	add  $0e                                         ; $6474: $c6 $0e
	inc  b                                           ; $6476: $04
	xor  [hl]                                        ; $6477: $ae
	xor  b                                           ; $6478: $a8
	sbc  a                                           ; $6479: $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $647a: $cf
	adc  $1e                                         ; $647b: $ce $1e
	adc  [hl]                                        ; $647d: $8e
	dec  bc                                          ; $647e: $0b
	ld   a, [hl]                                     ; $647f: $7e

Call_089_6480:
	push hl                                          ; $6480: $e5
	cp   c                                           ; $6481: $b9
	or   c                                           ; $6482: $b1
	ld   a, c                                        ; $6483: $79
	ld   e, c                                        ; $6484: $59
	add  b                                           ; $6485: $80
	ld   [hl], l                                     ; $6486: $75
	inc  bc                                          ; $6487: $03
	ld   [hl], e                                     ; $6488: $73
	ld   h, e                                        ; $6489: $63
	ld   [hl], c                                     ; $648a: $71
	ld   h, c                                        ; $648b: $61
	add  b                                           ; $648c: $80
	ld   sp, hl                                      ; $648d: $f9
	inc  bc                                          ; $648e: $03
	ld   [hl], l                                     ; $648f: $75
	push de                                          ; $6490: $d5
	ld   [hl], e                                     ; $6491: $73
	db   $e3                                         ; $6492: $e3
	add  b                                           ; $6493: $80
	ld   [$4980], sp                                 ; $6494: $08 $80 $49
	add  b                                           ; $6497: $80
	adc  d                                           ; $6498: $8a
	add  b                                           ; $6499: $80
	inc  e                                           ; $649a: $1c
	add  b                                           ; $649b: $80
	add  hl, hl                                      ; $649c: $29
	add  b                                           ; $649d: $80
	ld   c, [hl]                                     ; $649e: $4e
	rlca                                             ; $649f: $07
	add  h                                           ; $64a0: $84
	sbc  l                                           ; $64a1: $9d
	inc  b                                           ; $64a2: $04
	ld   e, $4c                                      ; $64a3: $1e $4c
	ld   c, [hl]                                     ; $64a5: $4e
	ld   b, [hl]                                     ; $64a6: $46
	ld   b, a                                        ; $64a7: $47

jr_089_64a8:
	add  b                                           ; $64a8: $80
	ld   d, e                                        ; $64a9: $53
	add  b                                           ; $64aa: $80
	ld   h, e                                        ; $64ab: $63
	ld   b, $23                                      ; $64ac: $06 $23
	ld   h, e                                        ; $64ae: $63
	inc  hl                                          ; $64af: $23
	ld   [hl+], a                                    ; $64b0: $22
	ld   l, $e8                                      ; $64b1: $2e $e8
	ld   a, b                                        ; $64b3: $78
	add  d                                           ; $64b4: $82
	nop                                              ; $64b5: $00
	add  b                                           ; $64b6: $80
	add  b                                           ; $64b7: $80
	add  b                                           ; $64b8: $80
	ld   b, b                                        ; $64b9: $40
	add  b                                           ; $64ba: $80
	and  b                                           ; $64bb: $a0
	add  d                                           ; $64bc: $82
	jr   nz, jr_089_643f                             ; $64bd: $20 $80

	ld   h, b                                        ; $64bf: $60
	add  h                                           ; $64c0: $84
	ld   [$0480], sp                                 ; $64c1: $08 $80 $04
	add  b                                           ; $64c4: $80
	ld   [bc], a                                     ; $64c5: $02
	add  b                                           ; $64c6: $80
	inc  bc                                          ; $64c7: $03
	add  d                                           ; $64c8: $82
	ld   [bc], a                                     ; $64c9: $02
	add  b                                           ; $64ca: $80
	rrca                                             ; $64cb: $0f

jr_089_64cc:
	add  [hl]                                        ; $64cc: $86
	nop                                              ; $64cd: $00
	add  b                                           ; $64ce: $80
	add  b                                           ; $64cf: $80
	add  b                                           ; $64d0: $80
	ld   [hl], b                                     ; $64d1: $70
	add  b                                           ; $64d2: $80
	rrca                                             ; $64d3: $0f
	inc  bc                                          ; $64d4: $03
	ld   h, l                                        ; $64d5: $65
	ld   a, c                                        ; $64d6: $79
	db   $e3                                         ; $64d7: $e3
	rst  $38                                         ; $64d8: $ff
	adc  d                                           ; $64d9: $8a
	nop                                              ; $64da: $00
	add  b                                           ; $64db: $80
	dec  c                                           ; $64dc: $0d
	add  b                                           ; $64dd: $80
	cp   $88                                         ; $64de: $fe $88
	nop                                              ; $64e0: $00
	add  b                                           ; $64e1: $80
	ld   bc, $e080                                   ; $64e2: $01 $80 $e0
	add  h                                           ; $64e5: $84
	nop                                              ; $64e6: $00
	add  b                                           ; $64e7: $80
	ld   bc, $0780                                   ; $64e8: $01 $80 $07
	add  b                                           ; $64eb: $80
	dec  de                                          ; $64ec: $1b
	add  b                                           ; $64ed: $80
	db   $e3                                         ; $64ee: $e3
	add  h                                           ; $64ef: $84
	ld   b, b                                        ; $64f0: $40
	add  b                                           ; $64f1: $80
	add  b                                           ; $64f2: $80
	add  [hl]                                        ; $64f3: $86
	nop                                              ; $64f4: $00
	add  h                                           ; $64f5: $84
	ld   bc, $008e                                   ; $64f6: $01 $8e $00
	add  [hl]                                        ; $64f9: $86
	add  b                                           ; $64fa: $80
	add  b                                           ; $64fb: $80
	ld   b, b                                        ; $64fc: $40
	add  b                                           ; $64fd: $80
	rst  $38                                         ; $64fe: $ff
	adc  h                                           ; $64ff: $8c
	nop                                              ; $6500: $00
	add  b                                           ; $6501: $80
	cp   $8c                                         ; $6502: $fe $8c
	nop                                              ; $6504: $00
	add  h                                           ; $6505: $84
	ld   [bc], a                                     ; $6506: $02
	add  [hl]                                        ; $6507: $86
	inc  b                                           ; $6508: $04
	add  b                                           ; $6509: $80
	ld   [$009e], sp                                 ; $650a: $08 $9e $00
	add  b                                           ; $650d: $80
	ld   b, b                                        ; $650e: $40
	add  b                                           ; $650f: $80
	ld   b, [hl]                                     ; $6510: $46
	add  b                                           ; $6511: $80
	cpl                                              ; $6512: $2f
	add  b                                           ; $6513: $80
	inc  e                                           ; $6514: $1c
	adc  h                                           ; $6515: $8c
	nop                                              ; $6516: $00
	add  d                                           ; $6517: $82
	add  b                                           ; $6518: $80
	add  b                                           ; $6519: $80
	ld   h, b                                        ; $651a: $60
	add  b                                           ; $651b: $80
	rra                                              ; $651c: $1f
	add  d                                           ; $651d: $82
	nop                                              ; $651e: $00
	add  b                                           ; $651f: $80
	ld   bc, $0380                                   ; $6520: $01 $80 $03
	add  d                                           ; $6523: $82
	inc  b                                           ; $6524: $04
	add  b                                           ; $6525: $80
	jr   jr_089_64a8                                 ; $6526: $18 $80

	ldh  [$80], a                                    ; $6528: $e0 $80
	nop                                              ; $652a: $00
	add  b                                           ; $652b: $80
	ld   [$8880], sp                                 ; $652c: $08 $80 $88
	add  b                                           ; $652f: $80
	ret  nc                                          ; $6530: $d0

	add  b                                           ; $6531: $80
	ldh  [$dd], a                                    ; $6532: $e0 $dd
	nop                                              ; $6534: $00
	inc  bc                                          ; $6535: $03
	dec  b                                           ; $6536: $05
	dec  c                                           ; $6537: $0d
	rrca                                             ; $6538: $0f
	rlca                                             ; $6539: $07
	add  b                                           ; $653a: $80
	inc  bc                                          ; $653b: $03
	add  b                                           ; $653c: $80
	nop                                              ; $653d: $00
	add  b                                           ; $653e: $80
	ld   bc, $0091                                   ; $653f: $01 $91 $00
	add  c                                           ; $6542: $81
	add  b                                           ; $6543: $80
	ld   bc, $40c0                                   ; $6544: $01 $c0 $40
	add  b                                           ; $6547: $80
	nop                                              ; $6548: $00
	add  d                                           ; $6549: $82
	jr   nz, jr_089_64cc                             ; $654a: $20 $80

	ld   b, b                                        ; $654c: $40
	reti                                             ; $654d: $d9


	nop                                              ; $654e: $00
	add  b                                           ; $654f: $80
	ld   b, $02                                      ; $6550: $06 $02
	ld   bc, $0e0f                                   ; $6552: $01 $0f $0e
	add  h                                           ; $6555: $84
	rlca                                             ; $6556: $07
	add  b                                           ; $6557: $80
	inc  bc                                          ; $6558: $03
	add  b                                           ; $6559: $80
	ld   bc, $0002                                   ; $655a: $01 $02 $00
	ld   bc, $8100                                   ; $655d: $01 $00 $81
	ld   bc, $0087                                   ; $6560: $01 $87 $00
	ld   a, [bc]                                     ; $6563: $0a
	stop                                             ; $6564: $10 $00
	stop                                             ; $6566: $10 $00
	add  c                                           ; $6568: $81
	add  b                                           ; $6569: $80
	ld   [hl], c                                     ; $656a: $71
	ldh  a, [$8f]                                    ; $656b: $f0 $8f
	rst  $38                                         ; $656d: $ff
	ldh  a, [$84]                                    ; $656e: $f0 $84
	rst  $38                                         ; $6570: $ff
	dec  b                                           ; $6571: $05
	ld   a, a                                        ; $6572: $7f
	rst  $38                                         ; $6573: $ff
	rrca                                             ; $6574: $0f
	rst  $38                                         ; $6575: $ff
	add  b                                           ; $6576: $80
	ldh  a, [$8b]                                    ; $6577: $f0 $8b
	nop                                              ; $6579: $00
	ld   [$0080], sp                                 ; $657a: $08 $80 $00
	ld   [bc], a                                     ; $657d: $02
	nop                                              ; $657e: $00
	add  d                                           ; $657f: $82
	nop                                              ; $6580: $00
	push af                                          ; $6581: $f5
	rst  $38                                         ; $6582: $ff
	ld   a, [bc]                                     ; $6583: $0a
	adc  b                                           ; $6584: $88
	rst  $38                                         ; $6585: $ff
	adc  e                                           ; $6586: $8b
	nop                                              ; $6587: $00
	inc  b                                           ; $6588: $04
	add  hl, de                                      ; $6589: $19
	nop                                              ; $658a: $00
	db   $eb                                         ; $658b: $eb
	nop                                              ; $658c: $00
	ldh  a, [c]                                      ; $658d: $f2
	add  b                                           ; $658e: $80
	ld   bc, $ff88                                   ; $658f: $01 $88 $ff
	add  b                                           ; $6592: $80
	cp   $87                                         ; $6593: $fe $87
	nop                                              ; $6595: $00
	ld   b, $40                                      ; $6596: $06 $40
	nop                                              ; $6598: $00
	ld   bc, wType0AnimSpriteXPosRelativeTo                                   ; $6599: $01 $00 $c6
	nop                                              ; $659c: $00
	sbc  b                                           ; $659d: $98
	add  b                                           ; $659e: $80
	nop                                              ; $659f: $00
	nop                                              ; $65a0: $00
	ldh  [$82], a                                    ; $65a1: $e0 $82
	add  b                                           ; $65a3: $80
	ld   [$8081], sp                                 ; $65a4: $08 $81 $80
	ld   b, $00                                      ; $65a7: $06 $00
	inc  e                                           ; $65a9: $1c
	nop                                              ; $65aa: $00
	ld   hl, sp+$00                                  ; $65ab: $f8 $00
	inc  e                                           ; $65ad: $1c
	add  e                                           ; $65ae: $83
	nop                                              ; $65af: $00
	inc  b                                           ; $65b0: $04
	add  b                                           ; $65b1: $80
	nop                                              ; $65b2: $00
	ret  nz                                          ; $65b3: $c0

	nop                                              ; $65b4: $00
	add  b                                           ; $65b5: $80
	add  c                                           ; $65b6: $81
	nop                                              ; $65b7: $00
	nop                                              ; $65b8: $00
	ld   b, b                                        ; $65b9: $40
	add  l                                           ; $65ba: $85
	nop                                              ; $65bb: $00
	nop                                              ; $65bc: $00
	add  b                                           ; $65bd: $80
	and  a                                           ; $65be: $a7
	nop                                              ; $65bf: $00
	ld   bc, $e01f                                   ; $65c0: $01 $1f $e0
	add  b                                           ; $65c3: $80
	ld   hl, sp-$7f                                  ; $65c4: $f8 $81
	rst  $38                                         ; $65c6: $ff
	add  [hl]                                        ; $65c7: $86
	ld   a, a                                        ; $65c8: $7f
	add  d                                           ; $65c9: $82
	ccf                                              ; $65ca: $3f
	add  b                                           ; $65cb: $80
	add  hl, sp                                      ; $65cc: $39
	add  b                                           ; $65cd: $80
	db   $10                                         ; $65ce: $10
	add  b                                           ; $65cf: $80
	ld   bc, $0087                                   ; $65d0: $01 $87 $00
	ld   bc, $00ff                                   ; $65d3: $01 $ff $00
	add  b                                           ; $65d6: $80
	add  b                                           ; $65d7: $80
	add  b                                           ; $65d8: $80
	cp   $8d                                         ; $65d9: $fe $8d
	rst  $38                                         ; $65db: $ff
	add  d                                           ; $65dc: $82
	ld   a, a                                        ; $65dd: $7f
	add  b                                           ; $65de: $80
	sbc  a                                           ; $65df: $9f
	add  c                                           ; $65e0: $81
	nop                                              ; $65e1: $00
	ld   [bc], a                                     ; $65e2: $02
	ld   bc, $fe00                                   ; $65e3: $01 $00 $fe
	add  e                                           ; $65e6: $83
	nop                                              ; $65e7: $00
	adc  b                                           ; $65e8: $88
	ld   hl, sp+$04                                  ; $65e9: $f8 $04
	pop  af                                          ; $65eb: $f1
	ldh  a, [$f2]                                    ; $65ec: $f0 $f2
	ldh  a, [$f4]                                    ; $65ee: $f0 $f4
	add  b                                           ; $65f0: $80
	ldh  a, [c]                                      ; $65f1: $f2
	ld   bc, $f8f0                                   ; $65f2: $01 $f0 $f8
	add  b                                           ; $65f5: $80
	db   $e4                                         ; $65f6: $e4
	add  c                                           ; $65f7: $81
	nop                                              ; $65f8: $00
	nop                                              ; $65f9: $00
	db   $fc                                         ; $65fa: $fc
	add  e                                           ; $65fb: $83
	nop                                              ; $65fc: $00
	nop                                              ; $65fd: $00
	inc  b                                           ; $65fe: $04
	add  l                                           ; $65ff: $85
	nop                                              ; $6600: $00
	nop                                              ; $6601: $00
	ld   [$0081], sp                                 ; $6602: $08 $81 $00
	inc  b                                           ; $6605: $04
	add  b                                           ; $6606: $80
	nop                                              ; $6607: $00
	ld   d, b                                        ; $6608: $50
	nop                                              ; $6609: $00
	jr   nz, @+$01                                   ; $660a: $20 $ff

	nop                                              ; $660c: $00
	rst  $38                                         ; $660d: $ff
	nop                                              ; $660e: $00
	rst  $38                                         ; $660f: $ff
	nop                                              ; $6610: $00
	rst  $38                                         ; $6611: $ff
	nop                                              ; $6612: $00
	rst  $38                                         ; $6613: $ff
	nop                                              ; $6614: $00
	and  d                                           ; $6615: $a2
	nop                                              ; $6616: $00
	sbc  e                                           ; $6617: $9b
	nop                                              ; $6618: $00
	and  $00                                         ; $6619: $e6 $00
	add  b                                           ; $661b: $80
	inc  bc                                          ; $661c: $03
	add  b                                           ; $661d: $80
	inc  c                                           ; $661e: $0c
	dec  b                                           ; $661f: $05
	inc  de                                          ; $6620: $13
	db   $10                                         ; $6621: $10
	inc  l                                           ; $6622: $2c
	jr   nz, jr_089_6634                             ; $6623: $20 $0f

	nop                                              ; $6625: $00
	add  b                                           ; $6626: $80
	inc  bc                                          ; $6627: $03
	add  b                                           ; $6628: $80
	inc  e                                           ; $6629: $1c
	dec  bc                                          ; $662a: $0b
	db   $e3                                         ; $662b: $e3
	ldh  [rAUD3LEVEL], a                             ; $662c: $e0 $1c
	rlca                                             ; $662e: $07
	rst  $20                                         ; $662f: $e7
	rra                                              ; $6630: $1f
	ld   a, [de]                                     ; $6631: $1a
	ccf                                              ; $6632: $3f
	inc  a                                           ; $6633: $3c

jr_089_6634:
	rst  $38                                         ; $6634: $ff
	ld   b, $00                                      ; $6635: $06 $00
	add  c                                           ; $6637: $81
	rst  $38                                         ; $6638: $ff
	add  b                                           ; $6639: $80
	nop                                              ; $663a: $00
	dec  b                                           ; $663b: $05
	rst  $38                                         ; $663c: $ff
	add  $cf                                         ; $663d: $c6 $cf
	call Call_089_5d7d                               ; $663f: $cd $7d $5d
	add  b                                           ; $6642: $80
	cp   l                                           ; $6643: $bd
	ld   [bc], a                                     ; $6644: $02
	ccf                                              ; $6645: $3f
	db   $db                                         ; $6646: $db
	nop                                              ; $6647: $00
	add  c                                           ; $6648: $81
	rst  $38                                         ; $6649: $ff
	add  b                                           ; $664a: $80
	nop                                              ; $664b: $00
	ld   a, [bc]                                     ; $664c: $0a
	rst  $38                                         ; $664d: $ff
	adc  c                                           ; $664e: $89
	cp   l                                           ; $664f: $bd
	and  h                                           ; $6650: $a4
	cp   h                                           ; $6651: $bc
	cp   l                                           ; $6652: $bd
	db   $fd                                         ; $6653: $fd
	adc  $fb                                         ; $6654: $ce $fb
	ld   e, c                                        ; $6656: $59
	nop                                              ; $6657: $00

jr_089_6658:
	add  b                                           ; $6658: $80
	ret  nz                                          ; $6659: $c0

	ld   [bc], a                                     ; $665a: $02
	ld   hl, sp+$38                                  ; $665b: $f8 $38
	ccf                                              ; $665d: $3f
	add  b                                           ; $665e: $80
	rlca                                             ; $665f: $07
	rlca                                             ; $6660: $07
	ldh  [$80], a                                    ; $6661: $e0 $80
	ret  c                                           ; $6663: $d8

	ld   c, b                                        ; $6664: $48
	call z, $9fd0                                    ; $6665: $cc $d0 $9f
	adc  h                                           ; $6668: $8c
	add  l                                           ; $6669: $85
	nop                                              ; $666a: $00
	add  b                                           ; $666b: $80
	ret  nz                                          ; $666c: $c0

	ld   [$30f0], sp                                 ; $666d: $08 $f0 $30
	jr   c, jr_089_667a                              ; $6670: $38 $08

	inc  c                                           ; $6672: $0c
	inc  b                                           ; $6673: $04
	and  a                                           ; $6674: $a7
	ld   b, e                                        ; $6675: $43
	ld   h, e                                        ; $6676: $63
	add  b                                           ; $6677: $80
	ld   b, a                                        ; $6678: $47
	add  b                                           ; $6679: $80

jr_089_667a:
	ld   c, a                                        ; $667a: $4f
	add  b                                           ; $667b: $80
	ld   c, [hl]                                     ; $667c: $4e
	add  d                                           ; $667d: $82
	ld   c, h                                        ; $667e: $4c
	add  c                                           ; $667f: $81
	ld   c, b                                        ; $6680: $48
	jr   jr_089_6658                                 ; $6681: $18 $d5

	rst  $30                                         ; $6683: $f7
	ld   b, c                                        ; $6684: $41
	rst  $38                                         ; $6685: $ff
	add  hl, de                                      ; $6686: $19
	rst  $30                                         ; $6687: $f7
	add  hl, bc                                      ; $6688: $09
	cp   $29                                         ; $6689: $fe $29
	rst  $38                                         ; $668b: $ff
	ld   [$2eff], sp                                 ; $668c: $08 $ff $2e
	ld   [hl], a                                     ; $668f: $77
	dec  [hl]                                        ; $6690: $35
	inc  bc                                          ; $6691: $03
	jr   @+$01                                       ; $6692: $18 $ff

	xor  a                                           ; $6694: $af
	rst  $38                                         ; $6695: $ff
	inc  [hl]                                        ; $6696: $34
	rst  $38                                         ; $6697: $ff
	ccf                                              ; $6698: $3f
	ld   sp, hl                                      ; $6699: $f9
	cp   c                                           ; $669a: $b9
	add  b                                           ; $669b: $80
	ld   [$840b], a                                  ; $669c: $ea $0b $84
	add  a                                           ; $669f: $87
	adc  b                                           ; $66a0: $88
	adc  h                                           ; $66a1: $8c
	ld   e, b                                        ; $66a2: $58
	inc  b                                           ; $66a3: $04
	rst  $30                                         ; $66a4: $f7
	ei                                               ; $66a5: $fb

jr_089_66a6:
	cp   $ae                                         ; $66a6: $fe $ae
	db   $fc                                         ; $66a8: $fc
	ei                                               ; $66a9: $fb
	add  b                                           ; $66aa: $80
	ld   c, a                                        ; $66ab: $4f
	add  b                                           ; $66ac: $80
	ld   sp, $510e                                   ; $66ad: $31 $0e $51
	pop  de                                          ; $66b0: $d1
	ld   l, d                                        ; $66b1: $6a
	ld   a, [hl+]                                    ; $66b2: $2a
	ld   h, h                                        ; $66b3: $64
	ld   a, d                                        ; $66b4: $7a
	dec  a                                           ; $66b5: $3d
	ld   e, l                                        ; $66b6: $5d
	ld   a, c                                        ; $66b7: $79
	cp   e                                           ; $66b8: $bb
	ldh  a, [c]                                      ; $66b9: $f2
	halt                                             ; $66ba: $76
	and  $6e                                         ; $66bb: $e6 $6e
	adc  h                                           ; $66bd: $8c
	add  c                                           ; $66be: $81
	db   $fc                                         ; $66bf: $fc
	add  b                                           ; $66c0: $80
	or   b                                           ; $66c1: $b0
	ld   bc, $4140                                   ; $66c2: $01 $40 $41
	add  b                                           ; $66c5: $80
	jp   nz, $e280                                   ; $66c6: $c2 $80 $e2

	add  b                                           ; $66c9: $80
	ld   [hl], d                                     ; $66ca: $72
	add  a                                           ; $66cb: $87
	ld   [de], a                                     ; $66cc: $12
	nop                                              ; $66cd: $00
	sub  e                                           ; $66ce: $93
	add  [hl]                                        ; $66cf: $86
	ld   c, b                                        ; $66d0: $48
	add  b                                           ; $66d1: $80
	ld   b, h                                        ; $66d2: $44
	add  b                                           ; $66d3: $80
	ld   b, e                                        ; $66d4: $43
	add  b                                           ; $66d5: $80
	ld   b, b                                        ; $66d6: $40
	ld   bc, $e060                                   ; $66d7: $01 $60 $e0
	adc  d                                           ; $66da: $8a
	ld   bc, $8180                                   ; $66db: $01 $80 $81
	dec  b                                           ; $66de: $05
	ld   h, b                                        ; $66df: $60
	ld   h, a                                        ; $66e0: $67
	jr   nz, jr_089_6707                             ; $66e1: $20 $24

	rst  $30                                         ; $66e3: $f7
	db   $f4                                         ; $66e4: $f4
	add  b                                           ; $66e5: $80
	ld   c, e                                        ; $66e6: $4b
	add  b                                           ; $66e7: $80
	sub  h                                           ; $66e8: $94
	add  b                                           ; $66e9: $80
	ld   h, d                                        ; $66ea: $62
	add  b                                           ; $66eb: $80
	ld   [hl], c                                     ; $66ec: $71
	add  b                                           ; $66ed: $80
	rra                                              ; $66ee: $1f
	dec  b                                           ; $66ef: $05
	jp   $ea03                                       ; $66f0: $c3 $03 $ea


	xor  d                                           ; $66f3: $aa
	pop  af                                          ; $66f4: $f1
	ld   [hl], c                                     ; $66f5: $71
	add  b                                           ; $66f6: $80
	or   b                                           ; $66f7: $b0
	add  b                                           ; $66f8: $80
	ld   c, b                                        ; $66f9: $48
	add  b                                           ; $66fa: $80
	add  a                                           ; $66fb: $87
	add  b                                           ; $66fc: $80
	rrca                                             ; $66fd: $0f
	add  b                                           ; $66fe: $80
	db   $fc                                         ; $66ff: $fc
	add  b                                           ; $6700: $80
	pop  hl                                          ; $6701: $e1
	add  d                                           ; $6702: $82
	ld   b, b                                        ; $6703: $40
	add  h                                           ; $6704: $84
	ret  nz                                          ; $6705: $c0

	add  b                                           ; $6706: $80

jr_089_6707:
	ld   b, b                                        ; $6707: $40

jr_089_6708:
	add  b                                           ; $6708: $80
	ld   b, c                                        ; $6709: $41

jr_089_670a:
	ld   bc, $8786                                   ; $670a: $01 $86 $87
	add  [hl]                                        ; $670d: $86
	ld   [de], a                                     ; $670e: $12
	add  b                                           ; $670f: $80
	ld   [hl+], a                                    ; $6710: $22
	add  b                                           ; $6711: $80
	jp   nz, $0280                                   ; $6712: $c2 $80 $02

	ld   b, $06                                      ; $6715: $06 $06
	rst  ToBoot                                         ; $6717: $c7
	jr   c, @+$1a                                    ; $6718: $38 $18

	ld   e, $06                                      ; $671a: $1e $06
	rlca                                             ; $671c: $07
	add  b                                           ; $671d: $80
	ld   bc, $0086                                   ; $671e: $01 $86 $00
	nop                                              ; $6721: $00
	rst  $38                                         ; $6722: $ff
	add  b                                           ; $6723: $80
	jr   c, jr_089_66a6                              ; $6724: $38 $80

	rrca                                             ; $6726: $0f
	add  b                                           ; $6727: $80
	add  b                                           ; $6728: $80
	inc  b                                           ; $6729: $04
	ldh  a, [rSVBK]                                  ; $672a: $f0 $70
	ld   a, [hl]                                     ; $672c: $7e
	ld   c, $0f                                      ; $672d: $0e $0f
	add  b                                           ; $672f: $80
	ld   bc, $0080                                   ; $6730: $01 $80 $00
	nop                                              ; $6733: $00
	rst  $38                                         ; $6734: $ff
	add  b                                           ; $6735: $80
	ld   a, b                                        ; $6736: $78
	add  b                                           ; $6737: $80
	rst  $38                                         ; $6738: $ff
	add  b                                           ; $6739: $80
	ld   a, a                                        ; $673a: $7f
	add  d                                           ; $673b: $82
	nop                                              ; $673c: $00
	add  c                                           ; $673d: $81
	rst  $38                                         ; $673e: $ff
	add  b                                           ; $673f: $80
	nop                                              ; $6740: $00
	nop                                              ; $6741: $00
	rst  $38                                         ; $6742: $ff
	add  b                                           ; $6743: $80
	rrca                                             ; $6744: $0f
	add  b                                           ; $6745: $80
	db   $fd                                         ; $6746: $fd
	add  b                                           ; $6747: $80
	cp   $82                                         ; $6748: $fe $82
	nop                                              ; $674a: $00
	add  c                                           ; $674b: $81
	rst  $38                                         ; $674c: $ff
	add  b                                           ; $674d: $80
	nop                                              ; $674e: $00
	nop                                              ; $674f: $00
	rst  $38                                         ; $6750: $ff
	add  b                                           ; $6751: $80
	inc  e                                           ; $6752: $1c
	add  b                                           ; $6753: $80
	ldh  a, [$80]                                    ; $6754: $f0 $80
	nop                                              ; $6756: $00
	add  b                                           ; $6757: $80

jr_089_6758:
	inc  bc                                          ; $6758: $03
	ld   [bc], a                                     ; $6759: $02
	ccf                                              ; $675a: $3f
	jr   c, @-$06                                    ; $675b: $38 $f8

	add  b                                           ; $675d: $80
	ret  nz                                          ; $675e: $c0

	add  b                                           ; $675f: $80
	nop                                              ; $6760: $00
	dec  b                                           ; $6761: $05
	db   $fc                                         ; $6762: $fc
	inc  e                                           ; $6763: $1c
	jr   jr_089_679e                                 ; $6764: $18 $38

	jr   nc, jr_089_6758                             ; $6766: $30 $f0

	add  b                                           ; $6768: $80
	ret  nz                                          ; $6769: $c0

	rst  $38                                         ; $676a: $ff
	nop                                              ; $676b: $00
	cp   [hl]                                        ; $676c: $be
	nop                                              ; $676d: $00
	rlca                                             ; $676e: $07
	add  hl, bc                                      ; $676f: $09
	adc  c                                           ; $6770: $89
	add  hl, sp                                      ; $6771: $39
	ld   sp, hl                                      ; $6772: $f9
	add  hl, de                                      ; $6773: $19
	sbc  c                                           ; $6774: $99
	dec  de                                          ; $6775: $1b
	db   $db                                         ; $6776: $db
	sub  l                                           ; $6777: $95
	nop                                              ; $6778: $00
	ld   [$3202], sp                                 ; $6779: $08 $02 $32
	inc  sp                                          ; $677c: $33
	inc  hl                                          ; $677d: $23
	ld   [hl+], a                                    ; $677e: $22
	ld   h, d                                        ; $677f: $62
	ld   h, h                                        ; $6780: $64
	ld   b, h                                        ; $6781: $44
	ld   b, b                                        ; $6782: $40
	sub  a                                           ; $6783: $97
	nop                                              ; $6784: $00
	add  b                                           ; $6785: $80
	jr   nz, jr_089_6708                             ; $6786: $20 $80

	jr   nc, jr_089_670a                             ; $6788: $30 $80

	ld   h, b                                        ; $678a: $60
	and  h                                           ; $678b: $a4
	nop                                              ; $678c: $00
	ld   [bc], a                                     ; $678d: $02
	ld   bc, $0200                                   ; $678e: $01 $00 $02
	add  c                                           ; $6791: $81
	nop                                              ; $6792: $00
	nop                                              ; $6793: $00
	inc  b                                           ; $6794: $04
	adc  c                                           ; $6795: $89
	nop                                              ; $6796: $00
	ld   [bc], a                                     ; $6797: $02
	inc  b                                           ; $6798: $04
	nop                                              ; $6799: $00
	inc  bc                                          ; $679a: $03
	adc  a                                           ; $679b: $8f
	nop                                              ; $679c: $00
	inc  b                                           ; $679d: $04

jr_089_679e:
	adc  b                                           ; $679e: $88
	nop                                              ; $679f: $00
	ld   [hl], h                                     ; $67a0: $74
	nop                                              ; $67a1: $00
	ld   [bc], a                                     ; $67a2: $02
	add  c                                           ; $67a3: $81
	nop                                              ; $67a4: $00
	inc  c                                           ; $67a5: $0c
	ld   h, $00                                      ; $67a6: $26 $00
	inc  h                                           ; $67a8: $24
	nop                                              ; $67a9: $00
	inc  a                                           ; $67aa: $3c
	nop                                              ; $67ab: $00
	ld   [hl-], a                                    ; $67ac: $32
	nop                                              ; $67ad: $00
	adc  h                                           ; $67ae: $8c
	nop                                              ; $67af: $00
	ld   h, h                                        ; $67b0: $64
	nop                                              ; $67b1: $00
	ld   a, [de]                                     ; $67b2: $1a
	add  b                                           ; $67b3: $80
	dec  de                                          ; $67b4: $1b
	add  b                                           ; $67b5: $80
	dec  bc                                          ; $67b6: $0b
	add  c                                           ; $67b7: $81
	nop                                              ; $67b8: $00
	add  hl, de                                      ; $67b9: $19
	dec  b                                           ; $67ba: $05
	nop                                              ; $67bb: $00
	rlca                                             ; $67bc: $07
	nop                                              ; $67bd: $00
	ld   b, [hl]                                     ; $67be: $46
	nop                                              ; $67bf: $00
	ld   h, h                                        ; $67c0: $64
	nop                                              ; $67c1: $00
	jr   nc, jr_089_67c4                             ; $67c2: $30 $00

jr_089_67c4:
	jr   jr_089_67c6                                 ; $67c4: $18 $00

jr_089_67c6:
	inc  c                                           ; $67c6: $0c
	nop                                              ; $67c7: $00
	ld   b, $00                                      ; $67c8: $06 $00
	add  e                                           ; $67ca: $83
	nop                                              ; $67cb: $00
	ld   bc, $6000                                   ; $67cc: $01 $00 $60
	nop                                              ; $67cf: $00
	call c, $3400                                    ; $67d0: $dc $00 $34
	ld   c, b                                        ; $67d3: $48
	add  b                                           ; $67d4: $80
	ld   b, c                                        ; $67d5: $41
	ld   c, $43                                      ; $67d6: $0e $43
	inc  bc                                          ; $67d8: $03
	and  b                                           ; $67d9: $a0
	nop                                              ; $67da: $00
	and  b                                           ; $67db: $a0
	nop                                              ; $67dc: $00
	ld   [$0d00], sp                                 ; $67dd: $08 $00 $0d
	nop                                              ; $67e0: $00
	rlca                                             ; $67e1: $07
	nop                                              ; $67e2: $00
	rlca                                             ; $67e3: $07
	nop                                              ; $67e4: $00
	dec  c                                           ; $67e5: $0d
	add  c                                           ; $67e6: $81
	nop                                              ; $67e7: $00
	dec  bc                                          ; $67e8: $0b
	inc  l                                           ; $67e9: $2c
	nop                                              ; $67ea: $00
	ld   h, h                                        ; $67eb: $64
	nop                                              ; $67ec: $00
	ret  nz                                          ; $67ed: $c0

	nop                                              ; $67ee: $00
	add  e                                           ; $67ef: $83
	nop                                              ; $67f0: $00
	dec  e                                           ; $67f1: $1d
	nop                                              ; $67f2: $00
	call c, $80c2                                    ; $67f3: $dc $c2 $80
	add  [hl]                                        ; $67f6: $86
	ld   bc, $0c0d                                   ; $67f7: $01 $0d $0c
	add  b                                           ; $67fa: $80
	jr   jr_089_67fe                                 ; $67fb: $18 $01

	ld   [hl], d                                     ; $67fd: $72

jr_089_67fe:
	ld   [hl], b                                     ; $67fe: $70
	add  b                                           ; $67ff: $80
	nop                                              ; $6800: $00
	ld   [bc], a                                     ; $6801: $02
	ld   c, h                                        ; $6802: $4c
	nop                                              ; $6803: $00
	ld   [hl], b                                     ; $6804: $70
	add  a                                           ; $6805: $87
	nop                                              ; $6806: $00
	ld   [$0020], sp                                 ; $6807: $08 $20 $00
	xor  b                                           ; $680a: $a8
	nop                                              ; $680b: $00
	dec  [hl]                                        ; $680c: $35
	nop                                              ; $680d: $00
	jp   c, Jump_089_5800                            ; $680e: $da $00 $58

	add  c                                           ; $6811: $81
	nop                                              ; $6812: $00
	ld   [bc], a                                     ; $6813: $02
	add  b                                           ; $6814: $80
	nop                                              ; $6815: $00
	ld   h, b                                        ; $6816: $60
	adc  a                                           ; $6817: $8f
	nop                                              ; $6818: $00
	ld   [bc], a                                     ; $6819: $02
	jr   nz, jr_089_681c                             ; $681a: $20 $00

jr_089_681c:
	ret  nz                                          ; $681c: $c0

	and  e                                           ; $681d: $a3
	nop                                              ; $681e: $00
	ld   [bc], a                                     ; $681f: $02
	inc  b                                           ; $6820: $04
	nop                                              ; $6821: $00
	inc  b                                           ; $6822: $04
	sbc  e                                           ; $6823: $9b
	nop                                              ; $6824: $00
	ld   [bc], a                                     ; $6825: $02
	rlca                                             ; $6826: $07
	nop                                              ; $6827: $00
	rlca                                             ; $6828: $07
	sbc  e                                           ; $6829: $9b
	nop                                              ; $682a: $00
	inc  b                                           ; $682b: $04
	ldh  a, [rP1]                                    ; $682c: $f0 $00
	ldh  a, [c]                                      ; $682e: $f2
	nop                                              ; $682f: $00
	ld   [bc], a                                     ; $6830: $02
	rst  $38                                         ; $6831: $ff
	nop                                              ; $6832: $00
	rst  $38                                         ; $6833: $ff
	nop                                              ; $6834: $00
	rst  $38                                         ; $6835: $ff
	nop                                              ; $6836: $00
	rst  $38                                         ; $6837: $ff
	nop                                              ; $6838: $00
	rst  $38                                         ; $6839: $ff
	nop                                              ; $683a: $00
	call nc, wType0AnimSpriteXPosRelativeTo                                   ; $683b: $d4 $00 $c6
	nop                                              ; $683e: $00
	add  d                                           ; $683f: $82
	nop                                              ; $6840: $00
	add  b                                           ; $6841: $80
	ld   a, a                                        ; $6842: $7f
	add  b                                           ; $6843: $80
	ld   h, b                                        ; $6844: $60
	add  b                                           ; $6845: $80
	ld   e, a                                        ; $6846: $5f
	ld   b, $5c                                      ; $6847: $06 $5c
	ld   d, a                                        ; $6849: $57
	ld   d, e                                        ; $684a: $53
	ld   e, a                                        ; $684b: $5f
	ld   d, a                                        ; $684c: $57
	ld   e, a                                        ; $684d: $5f
	rrca                                             ; $684e: $0f
	add  c                                           ; $684f: $81
	nop                                              ; $6850: $00
	add  b                                           ; $6851: $80
	rst  $38                                         ; $6852: $ff
	add  b                                           ; $6853: $80
	nop                                              ; $6854: $00
	add  b                                           ; $6855: $80
	rst  $38                                         ; $6856: $ff
	ld   b, $0e                                      ; $6857: $06 $0e
	ld   a, [$fe32]                                  ; $6859: $fa $32 $fe
	ld   e, [hl]                                     ; $685c: $5e
	ld   a, [$819c]                                  ; $685d: $fa $9c $81
	nop                                              ; $6860: $00
	add  b                                           ; $6861: $80
	rst  $38                                         ; $6862: $ff
	add  b                                           ; $6863: $80
	inc  bc                                          ; $6864: $03
	ld   [$fffc], sp                                 ; $6865: $08 $fc $ff
	add  a                                           ; $6868: $87
	rst  $38                                         ; $6869: $ff
	di                                               ; $686a: $f3
	rst  $38                                         ; $686b: $ff
	ld   sp, hl                                      ; $686c: $f9
	rst  $38                                         ; $686d: $ff
	ld   [hl], c                                     ; $686e: $71
	add  c                                           ; $686f: $81
	nop                                              ; $6870: $00
	add  d                                           ; $6871: $82
	ldh  [rTMA], a                                   ; $6872: $e0 $06
	ld   [hl], b                                     ; $6874: $70
	ldh  a, [$8e]                                    ; $6875: $f0 $8e
	cp   $f1                                         ; $6877: $fe $f1
	rst  $38                                         ; $6879: $ff
	cp   $80                                         ; $687a: $fe $80

jr_089_687c:
	rst  $38                                         ; $687c: $ff
	adc  c                                           ; $687d: $89
	nop                                              ; $687e: $00
	add  b                                           ; $687f: $80
	ret  nz                                          ; $6880: $c0

	ld   [bc], a                                     ; $6881: $02
	jr   c, jr_089_687c                              ; $6882: $38 $f8

	ret  nz                                          ; $6884: $c0

	adc  l                                           ; $6885: $8d
	nop                                              ; $6886: $00
	nop                                              ; $6887: $00
	ld   d, b                                        ; $6888: $50
	add  e                                           ; $6889: $83
	ld   e, a                                        ; $688a: $5f
	add  c                                           ; $688b: $81
	ld   d, b                                        ; $688c: $50
	inc  bc                                          ; $688d: $03
	ld   d, a                                        ; $688e: $57
	ld   d, b                                        ; $688f: $50
	ld   e, a                                        ; $6890: $5f
	ld   d, a                                        ; $6891: $57
	add  c                                           ; $6892: $81
	ld   e, a                                        ; $6893: $5f
	dec  b                                           ; $6894: $05
	ld   h, c                                        ; $6895: $61
	ldh  a, [c]                                      ; $6896: $f2
	jp   nz, $c2e2                                   ; $6897: $c2 $e2 $c2

	add  d                                           ; $689a: $82
	add  c                                           ; $689b: $81
	ld   [bc], a                                     ; $689c: $02
	add  hl, bc                                      ; $689d: $09
	ld   a, [$fe02]                                  ; $689e: $fa $02 $fe
	ld   a, $fa                                      ; $68a1: $3e $fa
	ld   b, e                                        ; $68a3: $43
	rst  $38                                         ; $68a4: $ff
	add  hl, bc                                      ; $68a5: $09
	ld   sp, hl                                      ; $68a6: $f9
	ldh  [$83], a                                    ; $68a7: $e0 $83
	ldh  a, [$03]                                    ; $68a9: $f0 $03
	sbc  h                                           ; $68ab: $9c
	db   $fc                                         ; $68ac: $fc
	cp   h                                           ; $68ad: $bc
	db   $fc                                         ; $68ae: $fc
	add  b                                           ; $68af: $80
	db   $e3                                         ; $68b0: $e3
	nop                                              ; $68b1: $00
	add  b                                           ; $68b2: $80
	add  b                                           ; $68b3: $80
	ret  nz                                          ; $68b4: $c0

	inc  b                                           ; $68b5: $04
	rst  $38                                         ; $68b6: $ff

jr_089_68b7:
	rlca                                             ; $68b7: $07

jr_089_68b8:
	ccf                                              ; $68b8: $3f
	nop                                              ; $68b9: $00
	rlca                                             ; $68ba: $07
	add  h                                           ; $68bb: $84
	nop                                              ; $68bc: $00
	add  b                                           ; $68bd: $80
	dec  b                                           ; $68be: $05
	add  c                                           ; $68bf: $81
	rlca                                             ; $68c0: $07
	ld   bc, $f8ff                                   ; $68c1: $01 $ff $f8
	add  c                                           ; $68c4: $81
	rst  $38                                         ; $68c5: $ff
	dec  b                                           ; $68c6: $05
	rra                                              ; $68c7: $1f
	rst  $38                                         ; $68c8: $ff
	inc  bc                                          ; $68c9: $03
	rra                                              ; $68ca: $1f
	nop                                              ; $68cb: $00
	inc  bc                                          ; $68cc: $03
	add  b                                           ; $68cd: $80
	nop                                              ; $68ce: $00
	add  b                                           ; $68cf: $80
	add  b                                           ; $68d0: $80
	add  b                                           ; $68d1: $80
	nop                                              ; $68d2: $00
	add  b                                           ; $68d3: $80
	ldh  [$0c], a                                    ; $68d4: $e0 $0c
	inc  e                                           ; $68d6: $1c
	db   $fc                                         ; $68d7: $fc
	and  $fe                                         ; $68d8: $e6 $fe
	or   $fa                                         ; $68da: $f6 $fa
	ld   a, d                                        ; $68dc: $7a
	ld   a, [$7a0a]                                  ; $68dd: $fa $0a $7a
	jr   jr_089_68f6                                 ; $68e0: $18 $14

	ld   e, b                                        ; $68e2: $58
	add  c                                           ; $68e3: $81

jr_089_68e4:
	ld   e, a                                        ; $68e4: $5f
	add  c                                           ; $68e5: $81
	ld   d, b                                        ; $68e6: $50
	inc  bc                                          ; $68e7: $03
	ld   d, a                                        ; $68e8: $57
	ld   d, b                                        ; $68e9: $50
	ld   e, a                                        ; $68ea: $5f
	ld   d, a                                        ; $68eb: $57

jr_089_68ec:
	add  e                                           ; $68ec: $83
	ld   e, a                                        ; $68ed: $5f

jr_089_68ee:
	nop                                              ; $68ee: $00
	ld   a, a                                        ; $68ef: $7f
	add  b                                           ; $68f0: $80
	ldh  a, [rSB]                                    ; $68f1: $f0 $01
	sub  b                                           ; $68f3: $90
	inc  d                                           ; $68f4: $14
	add  b                                           ; $68f5: $80

jr_089_68f6:
	db   $10                                         ; $68f6: $10
	inc  bc                                          ; $68f7: $03
	ldh  a, [rAUD1HIGH]                              ; $68f8: $f0 $14
	ldh  a, [$15]                                    ; $68fa: $f0 $15
	add  b                                           ; $68fc: $80
	pop  af                                          ; $68fd: $f1

jr_089_68fe:
	add  c                                           ; $68fe: $81
	sub  c                                           ; $68ff: $91
	nop                                              ; $6900: $00
	inc  h                                           ; $6901: $24
	add  c                                           ; $6902: $81
	ld   b, b                                        ; $6903: $40
	add  d                                           ; $6904: $82
	add  b                                           ; $6905: $80
	add  b                                           ; $6906: $80
	add  l                                           ; $6907: $85
	add  b                                           ; $6908: $80
	ld   bc, $0780                                   ; $6909: $01 $80 $07
	add  b                                           ; $690c: $80
	inc  b                                           ; $690d: $04
	add  b                                           ; $690e: $80
	add  hl, bc                                      ; $690f: $09
	add  b                                           ; $6910: $80
	ld   a, [bc]                                     ; $6911: $0a
	add  b                                           ; $6912: $80
	ld   [bc], a                                     ; $6913: $02
	add  b                                           ; $6914: $80
	rlca                                             ; $6915: $07
	add  b                                           ; $6916: $80
	inc  b                                           ; $6917: $04
	add  b                                           ; $6918: $80
	ld   e, $80                                      ; $6919: $1e $80
	ld   b, $80                                      ; $691b: $06 $80
	ld   a, $80                                      ; $691d: $3e $80
	ret  nz                                          ; $691f: $c0

	add  b                                           ; $6920: $80
	ld   b, b                                        ; $6921: $40
	add  b                                           ; $6922: $80
	ret  nz                                          ; $6923: $c0

	add  b                                           ; $6924: $80
	add  b                                           ; $6925: $80
	add  b                                           ; $6926: $80
	ld   c, $80                                      ; $6927: $0e $80
	ld   a, [hl]                                     ; $6929: $7e
	add  b                                           ; $692a: $80
	rra                                              ; $692b: $1f
	add  b                                           ; $692c: $80
	inc  bc                                          ; $692d: $03
	nop                                              ; $692e: $00
	inc  e                                           ; $692f: $1c
	add  c                                           ; $6930: $81
	inc  d                                           ; $6931: $14
	nop                                              ; $6932: $00
	jr   nc, jr_089_68b8                             ; $6933: $30 $83

	jr   z, jr_089_68b7                              ; $6935: $28 $80

	ld   l, b                                        ; $6937: $68
	ld   bc, $5060                                   ; $6938: $01 $60 $50
	add  b                                           ; $693b: $80
	ret  nc                                          ; $693c: $d0

	ld   bc, $5f70                                   ; $693d: $01 $70 $5f
	add  c                                           ; $6940: $81
	ld   d, b                                        ; $6941: $50
	inc  bc                                          ; $6942: $03
	ld   d, a                                        ; $6943: $57
	ld   d, b                                        ; $6944: $50
	ld   e, a                                        ; $6945: $5f
	ld   d, a                                        ; $6946: $57
	add  l                                           ; $6947: $85
	ld   e, a                                        ; $6948: $5f
	nop                                              ; $6949: $00
	db   $fd                                         ; $694a: $fd
	add  b                                           ; $694b: $80
	sub  d                                           ; $694c: $92
	add  c                                           ; $694d: $81
	sub  [hl]                                        ; $694e: $96
	nop                                              ; $694f: $00
	sub  b                                           ; $6950: $90
	add  b                                           ; $6951: $80
	sub  h                                           ; $6952: $94
	ld   [$5cf4], sp                                 ; $6953: $08 $f4 $5c
	db   $fc                                         ; $6956: $fc
	ld   l, b                                        ; $6957: $68
	ld   hl, sp+$2f                                  ; $6958: $f8 $2f
	rst  $28                                         ; $695a: $ef
	db   $f4                                         ; $695b: $f4
	inc  b                                           ; $695c: $04
	add  b                                           ; $695d: $80
	inc  c                                           ; $695e: $0c
	add  d                                           ; $695f: $82
	nop                                              ; $6960: $00
	add  b                                           ; $6961: $80
	jr   nc, jr_089_68e4                             ; $6962: $30 $80

	rrca                                             ; $6964: $0f
	add  b                                           ; $6965: $80
	inc  bc                                          ; $6966: $03
	add  b                                           ; $6967: $80
	nop                                              ; $6968: $00
	add  b                                           ; $6969: $80
	jr   nc, jr_089_68ec                             ; $696a: $30 $80

	jr   jr_089_68ee                                 ; $696c: $18 $80

	db   $10                                         ; $696e: $10
	add  d                                           ; $696f: $82
	jr   nz, @-$7e                                   ; $6970: $20 $80

	ld   b, b                                        ; $6972: $40
	add  b                                           ; $6973: $80
	jr   nz, jr_089_68fe                             ; $6974: $20 $88

	nop                                              ; $6976: $00
	add  b                                           ; $6977: $80
	ld   sp, $0f80                                   ; $6978: $31 $80 $0f
	add  b                                           ; $697b: $80
	ld   bc, $0304                                   ; $697c: $01 $04 $03
	ld   [bc], a                                     ; $697f: $02
	ld   [hl], c                                     ; $6980: $71
	ld   d, b                                        ; $6981: $50
	ret  nz                                          ; $6982: $c0

	add  e                                           ; $6983: $83
	and  b                                           ; $6984: $a0
	nop                                              ; $6985: $00
	add  b                                           ; $6986: $80
	add  e                                           ; $6987: $83
	ld   b, b                                        ; $6988: $40
	inc  bc                                          ; $6989: $03
	nop                                              ; $698a: $00
	add  b                                           ; $698b: $80
	ld   d, b                                        ; $698c: $50
	ld   e, a                                        ; $698d: $5f
	add  c                                           ; $698e: $81
	ld   d, b                                        ; $698f: $50
	nop                                              ; $6990: $00
	ld   e, a                                        ; $6991: $5f
	add  b                                           ; $6992: $80
	ld   h, b                                        ; $6993: $60
	add  c                                           ; $6994: $81
	ld   a, a                                        ; $6995: $7f
	rlca                                             ; $6996: $07
	ld   b, b                                        ; $6997: $40
	nop                                              ; $6998: $00
	jr   nz, jr_089_699b                             ; $6999: $20 $00

jr_089_699b:
	db   $10                                         ; $699b: $10
	ld   [hl], a                                     ; $699c: $77
	adc  a                                           ; $699d: $8f
	rlca                                             ; $699e: $07
	add  b                                           ; $699f: $80
	rra                                              ; $69a0: $1f
	nop                                              ; $69a1: $00
	rst  $38                                         ; $69a2: $ff
	add  b                                           ; $69a3: $80
	rra                                              ; $69a4: $1f
	ld   [bc], a                                     ; $69a5: $02
	pop  af                                          ; $69a6: $f1
	rst  $38                                         ; $69a7: $ff
	cp   $80                                         ; $69a8: $fe $80
	ld   de, $1080                                   ; $69aa: $11 $80 $10
	rlca                                             ; $69ad: $07
	ld   c, $11                                      ; $69ae: $0e $11
	ldh  [rAUD3LEVEL], a                             ; $69b0: $e0 $1c
	db   $fc                                         ; $69b2: $fc
	db   $e3                                         ; $69b3: $e3
	rst  $38                                         ; $69b4: $ff
	db   $fc                                         ; $69b5: $fc
	add  c                                           ; $69b6: $81
	rst  $38                                         ; $69b7: $ff
	ld   b, $3f                                      ; $69b8: $06 $3f

jr_089_69ba:
	rst  $38                                         ; $69ba: $ff
	rst  ToBoot                                         ; $69bb: $c7
	ccf                                              ; $69bc: $3f
	jr   c, jr_089_69c6                              ; $69bd: $38 $07

	ld   hl, sp-$7f                                  ; $69bf: $f8 $81
	nop                                              ; $69c1: $00
	add  b                                           ; $69c2: $80
	add  b                                           ; $69c3: $80
	ld   b, $70                                      ; $69c4: $06 $70

jr_089_69c6:
	ldh  a, [$8e]                                    ; $69c6: $f0 $8e
	cp   $f1                                         ; $69c8: $fe $f1
	rst  $38                                         ; $69ca: $ff
	cp   $81                                         ; $69cb: $fe $81
	rst  $38                                         ; $69cd: $ff
	nop                                              ; $69ce: $00
	db   $fc                                         ; $69cf: $fc
	add  c                                           ; $69d0: $81
	ld   [bc], a                                     ; $69d1: $02
	nop                                              ; $69d2: $00
	ld   b, $83                                      ; $69d3: $06 $83
	dec  b                                           ; $69d5: $05
	ld   b, $cc                                      ; $69d6: $06 $cc
	jp   z, $fa3a                                    ; $69d8: $ca $3a $fa

	jp   z, Jump_089_74fa                            ; $69db: $ca $fa $74

	add  c                                           ; $69de: $81
	add  b                                           ; $69df: $80
	adc  d                                           ; $69e0: $8a
	nop                                              ; $69e1: $00
	add  b                                           ; $69e2: $80
	rrca                                             ; $69e3: $0f
	adc  h                                           ; $69e4: $8c
	nop                                              ; $69e5: $00
	add  b                                           ; $69e6: $80
	rst  $38                                         ; $69e7: $ff
	adc  h                                           ; $69e8: $8c
	nop                                              ; $69e9: $00
	dec  b                                           ; $69ea: $05
	rst  $38                                         ; $69eb: $ff
	ret  nz                                          ; $69ec: $c0

	nop                                              ; $69ed: $00
	jr   c, jr_089_69f0                              ; $69ee: $38 $00

jr_089_69f0:
	rlca                                             ; $69f0: $07
	adc  b                                           ; $69f1: $88
	nop                                              ; $69f2: $00
	inc  b                                           ; $69f3: $04
	ldh  [rIE], a                                    ; $69f4: $e0 $ff
	db   $e3                                         ; $69f6: $e3
	rra                                              ; $69f7: $1f
	inc  e                                           ; $69f8: $1c
	add  b                                           ; $69f9: $80
	inc  bc                                          ; $69fa: $03
	inc  b                                           ; $69fb: $04
	ldh  [rP1], a                                    ; $69fc: $e0 $00
	inc  e                                           ; $69fe: $1c
	nop                                              ; $69ff: $00
	inc  bc                                          ; $6a00: $03
	add  d                                           ; $6a01: $82
	nop                                              ; $6a02: $00
	nop                                              ; $6a03: $00
	inc  e                                           ; $6a04: $1c
	add  c                                           ; $6a05: $81
	db   $f4                                         ; $6a06: $f4
	ld   [bc], a                                     ; $6a07: $02
	ld   [hl], h                                     ; $6a08: $74
	db   $f4                                         ; $6a09: $f4
	sub  b                                           ; $6a0a: $90
	add  b                                           ; $6a0b: $80
	add  sp, -$80                                    ; $6a0c: $e8 $80
	jr   z, @+$04                                    ; $6a0e: $28 $02

	xor  b                                           ; $6a10: $a8
	jr   nz, jr_089_6a83                             ; $6a11: $20 $70

	and  c                                           ; $6a13: $a1
	nop                                              ; $6a14: $00
	add  d                                           ; $6a15: $82
	ld   [bc], a                                     ; $6a16: $02
	adc  b                                           ; $6a17: $88
	nop                                              ; $6a18: $00
	add  b                                           ; $6a19: $80
	ld   [bc], a                                     ; $6a1a: $02
	xor  [hl]                                        ; $6a1b: $ae
	nop                                              ; $6a1c: $00
	add  d                                           ; $6a1d: $82
	ld   b, b                                        ; $6a1e: $40
	add  c                                           ; $6a1f: $81
	nop                                              ; $6a20: $00
	add  d                                           ; $6a21: $82
	inc  e                                           ; $6a22: $1c
	add  b                                           ; $6a23: $80
	inc  bc                                          ; $6a24: $03
	pop  hl                                          ; $6a25: $e1
	nop                                              ; $6a26: $00
	add  b                                           ; $6a27: $80
	ld   [bc], a                                     ; $6a28: $02
	adc  b                                           ; $6a29: $88
	nop                                              ; $6a2a: $00
	add  d                                           ; $6a2b: $82
	ld   [bc], a                                     ; $6a2c: $02
	adc  b                                           ; $6a2d: $88
	nop                                              ; $6a2e: $00
	add  d                                           ; $6a2f: $82
	ld   [bc], a                                     ; $6a30: $02
	sub  d                                           ; $6a31: $92
	nop                                              ; $6a32: $00
	add  d                                           ; $6a33: $82
	inc  b                                           ; $6a34: $04
	sbc  a                                           ; $6a35: $9f
	nop                                              ; $6a36: $00
	add  b                                           ; $6a37: $80
	jr   nc, jr_089_69ba                             ; $6a38: $30 $80

	rrca                                             ; $6a3a: $0f
	add  b                                           ; $6a3b: $80
	inc  bc                                          ; $6a3c: $03
	xor  b                                           ; $6a3d: $a8
	nop                                              ; $6a3e: $00
	add  b                                           ; $6a3f: $80
	ld   c, $80                                      ; $6a40: $0e $80
	ld   a, [hl]                                     ; $6a42: $7e
	add  b                                           ; $6a43: $80
	rra                                              ; $6a44: $1f
	add  b                                           ; $6a45: $80
	inc  bc                                          ; $6a46: $03
	add  [hl]                                        ; $6a47: $86
	nop                                              ; $6a48: $00
	add  b                                           ; $6a49: $80
	jr   nc, @-$7e                                   ; $6a4a: $30 $80

	ld   c, $90                                      ; $6a4c: $0e $90
	nop                                              ; $6a4e: $00
	add  b                                           ; $6a4f: $80
	add  b                                           ; $6a50: $80
	rst  $38                                         ; $6a51: $ff
	nop                                              ; $6a52: $00
	rst  $38                                         ; $6a53: $ff
	nop                                              ; $6a54: $00
	rst  $38                                         ; $6a55: $ff
	nop                                              ; $6a56: $00
	rst  $38                                         ; $6a57: $ff
	nop                                              ; $6a58: $00
	rst  $38                                         ; $6a59: $ff
	nop                                              ; $6a5a: $00
	rst  $38                                         ; $6a5b: $ff
	nop                                              ; $6a5c: $00
	ret  z                                           ; $6a5d: $c8

	nop                                              ; $6a5e: $00
	and  [hl]                                        ; $6a5f: $a6
	nop                                              ; $6a60: $00
	xor  d                                           ; $6a61: $aa
	nop                                              ; $6a62: $00
	add  b                                           ; $6a63: $80
	rlca                                             ; $6a64: $07
	ld   [bc], a                                     ; $6a65: $02
	rrca                                             ; $6a66: $0f
	inc  c                                           ; $6a67: $0c
	inc  bc                                          ; $6a68: $03
	adc  c                                           ; $6a69: $89
	nop                                              ; $6a6a: $00
	add  b                                           ; $6a6b: $80
	ret  nz                                          ; $6a6c: $c0

	ld   [bc], a                                     ; $6a6d: $02
	pop  hl                                          ; $6a6e: $e1
	ld   h, c                                        ; $6a6f: $61
	add  b                                           ; $6a70: $80
	adc  e                                           ; $6a71: $8b
	nop                                              ; $6a72: $00
	add  b                                           ; $6a73: $80
	add  b                                           ; $6a74: $80
	and  b                                           ; $6a75: $a0
	nop                                              ; $6a76: $00
	add  b                                           ; $6a77: $80
	inc  bc                                          ; $6a78: $03
	ld   bc, $1d1f                                   ; $6a79: $01 $1f $1d
	add  d                                           ; $6a7c: $82
	dec  d                                           ; $6a7d: $15
	add  b                                           ; $6a7e: $80
	rra                                              ; $6a7f: $1f
	add  b                                           ; $6a80: $80
	rlca                                             ; $6a81: $07
	dec  b                                           ; $6a82: $05

jr_089_6a83:
	dec  b                                           ; $6a83: $05
	rlca                                             ; $6a84: $07
	jr   jr_089_6a9a                                 ; $6a85: $18 $13

	dec  sp                                          ; $6a87: $3b
	daa                                              ; $6a88: $27
	add  b                                           ; $6a89: $80
	rst  $20                                         ; $6a8a: $e7
	ld   b, $24                                      ; $6a8b: $06 $24
	daa                                              ; $6a8d: $27
	jr   nz, jr_089_6ab7                             ; $6a8e: $20 $27

	db   $eb                                         ; $6a90: $eb
	xor  $2e                                         ; $6a91: $ee $2e
	add  b                                           ; $6a93: $80
	dec  l                                           ; $6a94: $2d
	inc  b                                           ; $6a95: $04
	dec  a                                           ; $6a96: $3d
	ld   [hl], a                                     ; $6a97: $77
	sub  e                                           ; $6a98: $93
	db   $db                                         ; $6a99: $db

jr_089_6a9a:
	res  0, b                                        ; $6a9a: $cb $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a9c: $cf
	ld   b, $0b                                      ; $6a9d: $06 $0b
	db   $eb                                         ; $6a9f: $eb
	dec  bc                                          ; $6aa0: $0b
	ei                                               ; $6aa1: $fb
	adc  a                                           ; $6aa2: $8f
	sbc  a                                           ; $6aa3: $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6aa4: $cf
	add  b                                           ; $6aa5: $80
	rlc  d                                           ; $6aa6: $cb $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6aa8: $cf
	or   c                                           ; $6aa9: $b1
	ret  nz                                          ; $6aaa: $c0

	add  [hl]                                        ; $6aab: $86
	ld   b, b                                        ; $6aac: $40
	add  b                                           ; $6aad: $80
	ld   b, [hl]                                     ; $6aae: $46
	inc  b                                           ; $6aaf: $04
	ld   c, d                                        ; $6ab0: $4a
	ld   c, [hl]                                     ; $6ab1: $4e
	ld   d, [hl]                                     ; $6ab2: $56
	ld   e, [hl]                                     ; $6ab3: $5e
	adc  h                                           ; $6ab4: $8c
	adc  a                                           ; $6ab5: $8f
	nop                                              ; $6ab6: $00

jr_089_6ab7:
	add  b                                           ; $6ab7: $80
	ld   bc, $0280                                   ; $6ab8: $01 $80 $02
	add  b                                           ; $6abb: $80
	ld   b, $09                                      ; $6abc: $06 $09
	add  hl, bc                                      ; $6abe: $09
	rrca                                             ; $6abf: $0f
	rla                                              ; $6ac0: $17
	rra                                              ; $6ac1: $1f

jr_089_6ac2:
	add  hl, hl                                      ; $6ac2: $29
	dec  sp                                          ; $6ac3: $3b
	ld   d, c                                        ; $6ac4: $51
	ld   [hl], l                                     ; $6ac5: $75
	dec  sp                                          ; $6ac6: $3b
	inc  bc                                          ; $6ac7: $03
	add  b                                           ; $6ac8: $80
	db   $fc                                         ; $6ac9: $fc
	ld   bc, $7c44                                   ; $6aca: $01 $44 $7c
	add  b                                           ; $6acd: $80
	ld   b, h                                        ; $6ace: $44
	ld   bc, $ffc7                                   ; $6acf: $01 $c7 $ff
	add  b                                           ; $6ad2: $80
	rlca                                             ; $6ad3: $07
	inc  b                                           ; $6ad4: $04
	db   $fc                                         ; $6ad5: $fc
	db   $fd                                         ; $6ad6: $fd
	ld   d, [hl]                                     ; $6ad7: $56
	rst  $38                                         ; $6ad8: $ff
	ld   b, b                                        ; $6ad9: $40
	add  b                                           ; $6ada: $80
	db   $ed                                         ; $6adb: $ed
	add  e                                           ; $6adc: $83
	xor  l                                           ; $6add: $ad
	ld   [$3dbd], sp                                 ; $6ade: $08 $bd $3d
	jr   nc, jr_089_6ac2                             ; $6ae1: $30 $df

	adc  d                                           ; $6ae3: $8a
	di                                               ; $6ae4: $f3
	db   $ec                                         ; $6ae5: $ec
	rst  $38                                         ; $6ae6: $ff
	ld   a, d                                        ; $6ae7: $7a
	add  c                                           ; $6ae8: $81
	rlc  c                                           ; $6ae9: $cb $01
	jp   z, $80cb                                    ; $6aeb: $ca $cb $80

	jp   z, $cf80                                    ; $6aee: $ca $80 $cf

	ld   a, [bc]                                     ; $6af1: $0a
	xor  a                                           ; $6af2: $af
	db   $f4                                         ; $6af3: $f4
	or   h                                           ; $6af4: $b4
	ldh  [c], a                                      ; $6af5: $e2

jr_089_6af6:
	ld   [bc], a                                     ; $6af6: $02
	cp   $f2                                         ; $6af7: $fe $f2
	ld   a, e                                        ; $6af9: $7b
	ld   e, d                                        ; $6afa: $5a
	ld   [hl], d                                     ; $6afb: $72
	ld   [hl-], a                                    ; $6afc: $32
	add  b                                           ; $6afd: $80
	sub  $0a                                         ; $6afe: $d6 $0a
	sbc  $bf                                         ; $6b00: $de $bf
	sbc  a                                           ; $6b02: $9f
	sbc  [hl]                                        ; $6b03: $9e
	ld   e, [hl]                                     ; $6b04: $5e
	ld   d, a                                        ; $6b05: $57
	or   a                                           ; $6b06: $b7
	or   e                                           ; $6b07: $b3
	or   d                                           ; $6b08: $b2
	call $8080                                       ; $6b09: $cd $80 $80
	ld   b, b                                        ; $6b0c: $40
	add  b                                           ; $6b0d: $80
	jr   nz, @+$21                                   ; $6b0e: $20 $1f

	ld   [hl], b                                     ; $6b10: $70
	ld   d, b                                        ; $6b11: $50
	ret  c                                           ; $6b12: $d8

	adc  b                                           ; $6b13: $88
	inc  c                                           ; $6b14: $0c
	ld   b, h                                        ; $6b15: $44
	add  d                                           ; $6b16: $82
	and  [hl]                                        ; $6b17: $a6
	add  d                                           ; $6b18: $82
	sub  [hl]                                        ; $6b19: $96
	ld   h, l                                        ; $6b1a: $65
	ld   a, l                                        ; $6b1b: $7d
	ld   b, e                                        ; $6b1c: $43
	ld   e, a                                        ; $6b1d: $5f
	dec  a                                           ; $6b1e: $3d
	ccf                                              ; $6b1f: $3f
	jr   jr_089_6b3c                                 ; $6b20: $18 $1a

	ld   hl, $3437                                   ; $6b22: $21 $37 $34
	scf                                              ; $6b25: $37
	ld   d, b                                        ; $6b26: $50
	ld   a, c                                        ; $6b27: $79
	ld   c, b                                        ; $6b28: $48
	ld   a, b                                        ; $6b29: $78
	inc  b                                           ; $6b2a: $04
	dec  b                                           ; $6b2b: $05
	ei                                               ; $6b2c: $fb
	dec  bc                                          ; $6b2d: $0b
	ld   bc, $80f7                                   ; $6b2e: $01 $f7 $80
	xor  [hl]                                        ; $6b31: $ae
	rrca                                             ; $6b32: $0f
	call nz, $f8dd                                   ; $6b33: $c4 $dd $f8
	ld   a, [$9480]                                  ; $6b36: $fa $80 $94
	add  b                                           ; $6b39: $80
	adc  b                                           ; $6b3a: $88
	xor  c                                           ; $6b3b: $a9

jr_089_6b3c:
	ld   sp, hl                                      ; $6b3c: $f9
	rra                                              ; $6b3d: $1f
	rst  $38                                         ; $6b3e: $ff
	ld   c, l                                        ; $6b3f: $4d
	ld   a, l                                        ; $6b40: $7d
	ld   b, e                                        ; $6b41: $43
	jp   $0086                                       ; $6b42: $c3 $86 $00


	ld   bc, $494f                                   ; $6b45: $01 $4f $49
	add  b                                           ; $6b48: $80
	ld   a, c                                        ; $6b49: $79
	rlca                                             ; $6b4a: $07
	reti                                             ; $6b4b: $d9


	sub  $e1                                         ; $6b4c: $d6 $e1
	xor  $00                                         ; $6b4e: $ee $00
	rlca                                             ; $6b50: $07
	nop                                              ; $6b51: $00
	ld   bc, $0082                                   ; $6b52: $01 $82 $00
	ld   [bc], a                                     ; $6b55: $02
	rst  $28                                         ; $6b56: $ef
	xor  d                                           ; $6b57: $aa
	cp   d                                           ; $6b58: $ba
	add  b                                           ; $6b59: $80
	halt                                             ; $6b5a: $76
	dec  bc                                          ; $6b5b: $0b
	jr   jr_089_6af6                                 ; $6b5c: $18 $98

	ld   b, a                                        ; $6b5e: $47
	daa                                              ; $6b5f: $27
	sub  e                                           ; $6b60: $93
	ld   a, [bc]                                     ; $6b61: $0a
	xor  $03                                         ; $6b62: $ee $03
	ld   a, e                                        ; $6b64: $7b
	inc  bc                                          ; $6b65: $03
	ld   [de], a                                     ; $6b66: $12
	res  0, b                                        ; $6b67: $cb $80
	jp   z, $4a0c                                    ; $6b69: $ca $0c $4a

	ld   a, h                                        ; $6b6c: $7c
	or   h                                           ; $6b6d: $b4
	db   $f4                                         ; $6b6e: $f4
	call nc, $a870                                   ; $6b6f: $d4 $70 $a8
	inc  a                                           ; $6b72: $3c
	call c, Call_089_7484                            ; $6b73: $dc $84 $74
	inc  d                                           ; $6b76: $14
	or   h                                           ; $6b77: $b4
	add  b                                           ; $6b78: $80
	ld   c, b                                        ; $6b79: $48
	add  b                                           ; $6b7a: $80
	inc  a                                           ; $6b7b: $3c
	add  hl, bc                                      ; $6b7c: $09
	ld   d, $1a                                      ; $6b7d: $16 $1a
	rlca                                             ; $6b7f: $07
	dec  c                                           ; $6b80: $0d
	inc  bc                                          ; $6b81: $03
	ld   b, $01                                      ; $6b82: $06 $01
	inc  bc                                          ; $6b84: $03
	nop                                              ; $6b85: $00
	ld   bc, $0080                                   ; $6b86: $01 $80 $00
	add  b                                           ; $6b89: $80
	ld   hl, sp+$0d                                  ; $6b8a: $f8 $0d
	ret  c                                           ; $6b8c: $d8

	add  sp, $48                                     ; $6b8d: $e8 $48
	ld   l, b                                        ; $6b8f: $68
	ld   c, b                                        ; $6b90: $48
	ld   l, b                                        ; $6b91: $68
	call z, $c4e4                                    ; $6b92: $cc $e4 $c4
	db   $e4                                         ; $6b95: $e4
	ld   h, c                                        ; $6b96: $61
	ld   l, c                                        ; $6b97: $69
	adc  $fe                                         ; $6b98: $ce $fe
	adc  d                                           ; $6b9a: $8a
	nop                                              ; $6b9b: $00
	add  b                                           ; $6b9c: $80
	add  b                                           ; $6b9d: $80
	add  b                                           ; $6b9e: $80
	ret  nz                                          ; $6b9f: $c0

	adc  [hl]                                        ; $6ba0: $8e
	nop                                              ; $6ba1: $00
	add  b                                           ; $6ba2: $80
	rra                                              ; $6ba3: $1f
	dec  bc                                          ; $6ba4: $0b
	inc  de                                          ; $6ba5: $13
	rla                                              ; $6ba6: $17
	ld   [de], a                                     ; $6ba7: $12
	ld   d, $12                                      ; $6ba8: $16 $12
	ld   d, $12                                      ; $6baa: $16 $12
	ld   d, $12                                      ; $6bac: $16 $12
	ld   d, $69                                      ; $6bae: $16 $69
	ld   l, l                                        ; $6bb0: $6d
	add  b                                           ; $6bb1: $80

jr_089_6bb2:
	sbc  d                                           ; $6bb2: $9a
	rlca                                             ; $6bb3: $07
	ld   e, b                                        ; $6bb4: $58
	ld   l, b                                        ; $6bb5: $68
	add  b                                           ; $6bb6: $80
	ret  nc                                          ; $6bb7: $d0

	add  b                                           ; $6bb8: $80
	and  b                                           ; $6bb9: $a0
	nop                                              ; $6bba: $00
	ld   b, b                                        ; $6bbb: $40
	add  d                                           ; $6bbc: $82
	add  b                                           ; $6bbd: $80
	sub  d                                           ; $6bbe: $92
	nop                                              ; $6bbf: $00

jr_089_6bc0:
	add  b                                           ; $6bc0: $80
	ld   e, a                                        ; $6bc1: $5f
	add  b                                           ; $6bc2: $80
	dec  [hl]                                        ; $6bc3: $35
	add  b                                           ; $6bc4: $80
	inc  de                                          ; $6bc5: $13
	add  b                                           ; $6bc6: $80
	ld   bc, $0086                                   ; $6bc7: $01 $86 $00
	add  h                                           ; $6bca: $84
	ld   b, b                                        ; $6bcb: $40
	add  b                                           ; $6bcc: $80
	add  b                                           ; $6bcd: $80
	sub  [hl]                                        ; $6bce: $96
	nop                                              ; $6bcf: $00
	add  b                                           ; $6bd0: $80
	add  sp, -$80                                    ; $6bd1: $e8 $80
	xor  b                                           ; $6bd3: $a8
	add  b                                           ; $6bd4: $80
	or   b                                           ; $6bd5: $b0
	add  b                                           ; $6bd6: $80
	ld   h, b                                        ; $6bd7: $60
	call z, $8000                                    ; $6bd8: $cc $00 $80
	ld   [rRAMG], sp                                 ; $6bdb: $08 $00 $00
	add  b                                           ; $6bde: $80
	ld   [$0099], sp                                 ; $6bdf: $08 $99 $00
	add  b                                           ; $6be2: $80
	ret  nz                                          ; $6be3: $c0

	nop                                              ; $6be4: $00
	nop                                              ; $6be5: $00
	add  b                                           ; $6be6: $80
	ret  nz                                          ; $6be7: $c0

	sbc  c                                           ; $6be8: $99
	nop                                              ; $6be9: $00
	add  b                                           ; $6bea: $80
	inc  b                                           ; $6beb: $04
	nop                                              ; $6bec: $00
	nop                                              ; $6bed: $00
	add  b                                           ; $6bee: $80
	inc  b                                           ; $6bef: $04
	rst  ToBoot                                         ; $6bf0: $c7
	nop                                              ; $6bf1: $00
	add  b                                           ; $6bf2: $80
	ld   bc, $0000                                   ; $6bf3: $01 $00 $00
	add  b                                           ; $6bf6: $80
	ld   bc, $0083                                   ; $6bf7: $01 $83 $00
	add  b                                           ; $6bfa: $80
	ld   [bc], a                                     ; $6bfb: $02
	inc  bc                                          ; $6bfc: $03
	nop                                              ; $6bfd: $00
	ld   [bc], a                                     ; $6bfe: $02
	ld   [hl+], a                                    ; $6bff: $22
	jr   nz, @-$72                                   ; $6c00: $20 $8c

	nop                                              ; $6c02: $00
	add  b                                           ; $6c03: $80
	inc  bc                                          ; $6c04: $03
	ld   [bc], a                                     ; $6c05: $02
	add  d                                           ; $6c06: $82
	add  e                                           ; $6c07: $83
	ld   bc, $8380                                   ; $6c08: $01 $80 $83
	sub  c                                           ; $6c0b: $91
	nop                                              ; $6c0c: $00
	add  c                                           ; $6c0d: $81
	ld   h, b                                        ; $6c0e: $60
	ld   [bc], a                                     ; $6c0f: $02
	ld   [hl], b                                     ; $6c10: $70
	stop                                             ; $6c11: $10 $00
	add  b                                           ; $6c13: $80
	stop                                             ; $6c14: $10 $00
	nop                                              ; $6c16: $00
	add  d                                           ; $6c17: $82
	db   $10                                         ; $6c18: $10
	add  l                                           ; $6c19: $85
	nop                                              ; $6c1a: $00
	add  b                                           ; $6c1b: $80
	ld   b, $80                                      ; $6c1c: $06 $80
	nop                                              ; $6c1e: $00
	add  b                                           ; $6c1f: $80
	ld   [bc], a                                     ; $6c20: $02
	adc  d                                           ; $6c21: $8a
	nop                                              ; $6c22: $00
	add  b                                           ; $6c23: $80
	inc  b                                           ; $6c24: $04
	ld   bc, $0400                                   ; $6c25: $01 $00 $04
	add  b                                           ; $6c28: $80
	dec  b                                           ; $6c29: $05
	nop                                              ; $6c2a: $00
	inc  b                                           ; $6c2b: $04
	add  [hl]                                        ; $6c2c: $86
	nop                                              ; $6c2d: $00
	ld   [bc], a                                     ; $6c2e: $02
	or   b                                           ; $6c2f: $b0
	jr   nc, jr_089_6bb2                             ; $6c30: $30 $80

	add  b                                           ; $6c32: $80
	jr   nz, jr_089_6bc0                             ; $6c33: $20 $8b

	nop                                              ; $6c35: $00
	add  h                                           ; $6c36: $84
	ld   bc, $0091                                   ; $6c37: $01 $91 $00
	add  c                                           ; $6c3a: $81
	inc  b                                           ; $6c3b: $04
	ld   [bc], a                                     ; $6c3c: $02
	inc  c                                           ; $6c3d: $0c
	ld   [$8000], sp                                 ; $6c3e: $08 $00 $80
	add  b                                           ; $6c41: $80
	add  b                                           ; $6c42: $80
	ret  nz                                          ; $6c43: $c0

	nop                                              ; $6c44: $00
	nop                                              ; $6c45: $00
	add  b                                           ; $6c46: $80
	add  b                                           ; $6c47: $80
	add  l                                           ; $6c48: $85
	nop                                              ; $6c49: $00
	add  d                                           ; $6c4a: $82
	inc  b                                           ; $6c4b: $04
	add  [hl]                                        ; $6c4c: $86
	nop                                              ; $6c4d: $00
	add  d                                           ; $6c4e: $82
	ld   [$2002], sp                                 ; $6c4f: $08 $02 $20
	jr   nc, jr_089_6c64                             ; $6c52: $30 $10

	and  a                                           ; $6c54: $a7
	nop                                              ; $6c55: $00
	add  b                                           ; $6c56: $80
	add  b                                           ; $6c57: $80
	add  b                                           ; $6c58: $80
	ld   bc, $2080                                   ; $6c59: $01 $80 $20
	add  b                                           ; $6c5c: $80
	ld   [bc], a                                     ; $6c5d: $02
	sbc  d                                           ; $6c5e: $9a
	nop                                              ; $6c5f: $00
	add  h                                           ; $6c60: $84
	add  b                                           ; $6c61: $80
	xor  h                                           ; $6c62: $ac
	nop                                              ; $6c63: $00

jr_089_6c64:
	add  [hl]                                        ; $6c64: $86
	ld   bc, $0280                                   ; $6c65: $01 $80 $02

jr_089_6c68:
	inc  bc                                          ; $6c68: $03
	ld   b, b                                        ; $6c69: $40
	ld   h, b                                        ; $6c6a: $60
	jr   nc, jr_089_6c7d                             ; $6c6b: $30 $10

	add  b                                           ; $6c6d: $80
	ld   d, b                                        ; $6c6e: $50
	add  b                                           ; $6c6f: $80
	ld   b, b                                        ; $6c70: $40
	adc  [hl]                                        ; $6c71: $8e
	nop                                              ; $6c72: $00
	add  b                                           ; $6c73: $80
	add  b                                           ; $6c74: $80
	rst  $38                                         ; $6c75: $ff
	nop                                              ; $6c76: $00
	rst  $38                                         ; $6c77: $ff
	nop                                              ; $6c78: $00
	rst  $38                                         ; $6c79: $ff
	nop                                              ; $6c7a: $00
	rst  $38                                         ; $6c7b: $ff
	nop                                              ; $6c7c: $00

jr_089_6c7d:
	rst  $38                                         ; $6c7d: $ff
	nop                                              ; $6c7e: $00
	sub  c                                           ; $6c7f: $91
	nop                                              ; $6c80: $00
	rlc  b                                           ; $6c81: $cb $00
	sbc  b                                           ; $6c83: $98
	nop                                              ; $6c84: $00
	add  b                                           ; $6c85: $80
	ld   bc, $0080                                   ; $6c86: $01 $80 $00
	add  b                                           ; $6c89: $80
	dec  bc                                          ; $6c8a: $0b
	add  [hl]                                        ; $6c8b: $86
	nop                                              ; $6c8c: $00
	add  b                                           ; $6c8d: $80
	inc  de                                          ; $6c8e: $13
	ld   b, $3f                                      ; $6c8f: $06 $3f
	dec  a                                           ; $6c91: $3d
	db   $dd                                         ; $6c92: $dd
	db   $eb                                         ; $6c93: $eb
	add  hl, bc                                      ; $6c94: $09
	rst  $10                                         ; $6c95: $d7
	ld   [$0085], a                                  ; $6c96: $ea $85 $00
	add  b                                           ; $6c99: $80
	ld   c, b                                        ; $6c9a: $48
	add  b                                           ; $6c9b: $80
	ldh  a, [rDIV]                                   ; $6c9c: $f0 $04
	db   $fc                                         ; $6c9e: $fc
	ld   c, h                                        ; $6c9f: $4c
	ld   c, a                                        ; $6ca0: $4f
	and  e                                           ; $6ca1: $a3
	ld   e, h                                        ; $6ca2: $5c
	adc  c                                           ; $6ca3: $89
	nop                                              ; $6ca4: $00
	add  b                                           ; $6ca5: $80
	add  b                                           ; $6ca6: $80
	sbc  [hl]                                        ; $6ca7: $9e
	nop                                              ; $6ca8: $00
	add  b                                           ; $6ca9: $80
	ld   [bc], a                                     ; $6caa: $02
	inc  e                                           ; $6cab: $1c
	inc  b                                           ; $6cac: $04
	rlca                                             ; $6cad: $07
	ld   a, [bc]                                     ; $6cae: $0a
	ld   c, $14                                      ; $6caf: $0e $14
	inc  e                                           ; $6cb1: $1c
	and  b                                           ; $6cb2: $a0
	cp   c                                           ; $6cb3: $b9
	ld   e, c                                        ; $6cb4: $59
	ld   [hl], l                                     ; $6cb5: $75
	ld   h, h                                        ; $6cb6: $64
	ld   h, e                                        ; $6cb7: $63
	and  e                                           ; $6cb8: $a3
	db   $e3                                         ; $6cb9: $e3
	pop  hl                                          ; $6cba: $e1
	rst  $20                                         ; $6cbb: $e7
	sub  d                                           ; $6cbc: $92
	cp   a                                           ; $6cbd: $bf
	adc  l                                           ; $6cbe: $8d
	ld   l, l                                        ; $6cbf: $6d
	dec  b                                           ; $6cc0: $05
	db   $fd                                         ; $6cc1: $fd
	dec  a                                           ; $6cc2: $3d
	sbc  a                                           ; $6cc3: $9f
	sbc  e                                           ; $6cc4: $9b
	sbc  c                                           ; $6cc5: $99
	ld   bc, $b1b9                                   ; $6cc6: $01 $b9 $b1
	add  b                                           ; $6cc9: $80
	ld   a, l                                        ; $6cca: $7d
	inc  bc                                          ; $6ccb: $03
	dec  sp                                          ; $6ccc: $3b
	ld   [hl+], a                                    ; $6ccd: $22
	ld   e, b                                        ; $6cce: $58
	ld   e, c                                        ; $6ccf: $59
	add  b                                           ; $6cd0: $80
	ld   b, l                                        ; $6cd1: $45
	add  b                                           ; $6cd2: $80
	ld   [hl-], a                                    ; $6cd3: $32
	add  b                                           ; $6cd4: $80
	ld   hl, $3180                                   ; $6cd5: $21 $80 $31
	add  b                                           ; $6cd8: $80
	ld   d, d                                        ; $6cd9: $52
	add  b                                           ; $6cda: $80
	sub  h                                           ; $6cdb: $94
	ld   [bc], a                                     ; $6cdc: $02
	ld   [$8077], sp                                 ; $6cdd: $08 $77 $80
	add  b                                           ; $6ce0: $80
	ld   d, b                                        ; $6ce1: $50
	add  b                                           ; $6ce2: $80
	jr   nz, jr_089_6ce6                             ; $6ce3: $20 $01

	or   b                                           ; $6ce5: $b0

jr_089_6ce6:
	jr   nc, jr_089_6c68                             ; $6ce6: $30 $80

	ld   c, b                                        ; $6ce8: $48
	ld   bc, $8a4a                                   ; $6ce9: $01 $4a $8a
	add  c                                           ; $6cec: $81
	and  h                                           ; $6ced: $a4
	ld   bc, $a044                                   ; $6cee: $01 $44 $a0
	adc  l                                           ; $6cf1: $8d
	nop                                              ; $6cf2: $00
	add  d                                           ; $6cf3: $82
	ld   bc, $0601                                   ; $6cf4: $01 $01 $06
	rlca                                             ; $6cf7: $07
	add  b                                           ; $6cf8: $80
	dec  bc                                          ; $6cf9: $0b
	add  b                                           ; $6cfa: $80
	rla                                              ; $6cfb: $17
	ld   bc, $1312                                   ; $6cfc: $01 $12 $13
	add  b                                           ; $6cff: $80
	ld   de, $1080                                   ; $6d00: $11 $80 $10
	inc  d                                           ; $6d03: $14
	inc  a                                           ; $6d04: $3c
	rst  $20                                         ; $6d05: $e7
	and  $d7                                         ; $6d06: $e6 $d7
	sub  e                                           ; $6d08: $93
	adc  $cc                                         ; $6d09: $ce $cc
	xor  [hl]                                        ; $6d0b: $ae
	xor  h                                           ; $6d0c: $ac
	sbc  a                                           ; $6d0d: $9f
	rst  JumpTable                                         ; $6d0e: $df
	adc  $4f                                         ; $6d0f: $ce $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d11: $cf
	rrca                                             ; $6d12: $0f
	ld   a, a                                        ; $6d13: $7f
	ldh  [$39], a                                    ; $6d14: $e0 $39
	ld   sp, $1939                                   ; $6d16: $31 $39 $19
	add  b                                           ; $6d19: $80
	ld   [hl], e                                     ; $6d1a: $73
	inc  bc                                          ; $6d1b: $03
	ld   [hl], c                                     ; $6d1c: $71
	ld   h, c                                        ; $6d1d: $61
	ld   [hl], c                                     ; $6d1e: $71
	ld   h, c                                        ; $6d1f: $61
	add  b                                           ; $6d20: $80
	ld   sp, hl                                      ; $6d21: $f9
	add  b                                           ; $6d22: $80
	ld   [hl], l                                     ; $6d23: $75
	ld   bc, $4373                                   ; $6d24: $01 $73 $43
	add  b                                           ; $6d27: $80
	ld   [$4980], sp                                 ; $6d28: $08 $80 $49
	add  b                                           ; $6d2b: $80
	inc  b                                           ; $6d2c: $04
	add  b                                           ; $6d2d: $80
	inc  d                                           ; $6d2e: $14
	add  b                                           ; $6d2f: $80
	dec  h                                           ; $6d30: $25
	add  b                                           ; $6d31: $80
	ld   b, [hl]                                     ; $6d32: $46
	add  b                                           ; $6d33: $80
	add  h                                           ; $6d34: $84
	ld   [bc], a                                     ; $6d35: $02
	inc  b                                           ; $6d36: $04
	ld   de, $804a                                   ; $6d37: $11 $4a $80
	ld   d, e                                        ; $6d3a: $53
	nop                                              ; $6d3b: $00
	ld   e, c                                        ; $6d3c: $59
	add  b                                           ; $6d3d: $80
	add  hl, hl                                      ; $6d3e: $29
	inc  b                                           ; $6d3f: $04

jr_089_6d40:
	xor  c                                           ; $6d40: $a9
	and  c                                           ; $6d41: $a1
	ld   sp, $2333                                   ; $6d42: $31 $33 $23
	add  b                                           ; $6d45: $80
	ld   h, $02                                      ; $6d46: $26 $02
	jr   z, @+$3a                                    ; $6d48: $28 $38

	ret  nz                                          ; $6d4a: $c0

	add  c                                           ; $6d4b: $81
	nop                                              ; $6d4c: $00
	add  b                                           ; $6d4d: $80
	add  b                                           ; $6d4e: $80
	add  b                                           ; $6d4f: $80
	ld   b, b                                        ; $6d50: $40
	add  b                                           ; $6d51: $80
	and  b                                           ; $6d52: $a0
	add  d                                           ; $6d53: $82
	jr   nz, @-$7e                                   ; $6d54: $20 $80

	ld   h, b                                        ; $6d56: $60
	add  h                                           ; $6d57: $84
	ld   [$0480], sp                                 ; $6d58: $08 $80 $04
	add  b                                           ; $6d5b: $80
	ld   [bc], a                                     ; $6d5c: $02
	add  b                                           ; $6d5d: $80

jr_089_6d5e:
	inc  bc                                          ; $6d5e: $03
	add  d                                           ; $6d5f: $82
	ld   [bc], a                                     ; $6d60: $02
	add  b                                           ; $6d61: $80
	rrca                                             ; $6d62: $0f
	add  [hl]                                        ; $6d63: $86
	nop                                              ; $6d64: $00
	add  b                                           ; $6d65: $80
	add  b                                           ; $6d66: $80
	add  b                                           ; $6d67: $80
	ld   [hl], b                                     ; $6d68: $70
	add  b                                           ; $6d69: $80
	rrca                                             ; $6d6a: $0f
	inc  bc                                          ; $6d6b: $03
	rst  ToBoot                                         ; $6d6c: $c7
	ld   a, c                                        ; $6d6d: $79
	ld   b, c                                        ; $6d6e: $41
	rst  $38                                         ; $6d6f: $ff
	adc  d                                           ; $6d70: $8a
	nop                                              ; $6d71: $00
	inc  bc                                          ; $6d72: $03
	rst  $38                                         ; $6d73: $ff
	dec  b                                           ; $6d74: $05
	inc  b                                           ; $6d75: $04
	cp   $88                                         ; $6d76: $fe $88
	nop                                              ; $6d78: $00
	add  b                                           ; $6d79: $80
	ld   bc, $e080                                   ; $6d7a: $01 $80 $e0
	add  h                                           ; $6d7d: $84
	nop                                              ; $6d7e: $00
	add  b                                           ; $6d7f: $80
	ld   bc, $0780                                   ; $6d80: $01 $80 $07

jr_089_6d83:
	add  b                                           ; $6d83: $80
	dec  de                                          ; $6d84: $1b
	add  b                                           ; $6d85: $80
	db   $e3                                         ; $6d86: $e3
	add  h                                           ; $6d87: $84
	ld   b, b                                        ; $6d88: $40
	add  b                                           ; $6d89: $80
	add  b                                           ; $6d8a: $80
	add  [hl]                                        ; $6d8b: $86
	nop                                              ; $6d8c: $00
	add  h                                           ; $6d8d: $84
	ld   bc, $008e                                   ; $6d8e: $01 $8e $00
	add  [hl]                                        ; $6d91: $86
	add  b                                           ; $6d92: $80
	add  b                                           ; $6d93: $80
	ld   b, b                                        ; $6d94: $40
	add  b                                           ; $6d95: $80
	rst  $38                                         ; $6d96: $ff
	adc  h                                           ; $6d97: $8c
	nop                                              ; $6d98: $00
	add  b                                           ; $6d99: $80
	cp   $8c                                         ; $6d9a: $fe $8c
	nop                                              ; $6d9c: $00
	add  h                                           ; $6d9d: $84
	ld   [bc], a                                     ; $6d9e: $02
	add  [hl]                                        ; $6d9f: $86
	inc  b                                           ; $6da0: $04
	add  b                                           ; $6da1: $80
	ld   [$009e], sp                                 ; $6da2: $08 $9e $00
	add  b                                           ; $6da5: $80
	ld   b, b                                        ; $6da6: $40
	add  b                                           ; $6da7: $80
	ld   b, [hl]                                     ; $6da8: $46
	add  b                                           ; $6da9: $80

jr_089_6daa:
	cpl                                              ; $6daa: $2f
	add  b                                           ; $6dab: $80
	inc  e                                           ; $6dac: $1c
	adc  h                                           ; $6dad: $8c
	nop                                              ; $6dae: $00
	add  d                                           ; $6daf: $82
	add  b                                           ; $6db0: $80
	add  b                                           ; $6db1: $80
	ld   h, b                                        ; $6db2: $60
	add  b                                           ; $6db3: $80
	rra                                              ; $6db4: $1f
	add  d                                           ; $6db5: $82
	nop                                              ; $6db6: $00
	add  b                                           ; $6db7: $80
	ld   bc, $0380                                   ; $6db8: $01 $80 $03
	add  d                                           ; $6dbb: $82
	inc  b                                           ; $6dbc: $04
	add  b                                           ; $6dbd: $80
	jr   jr_089_6d40                                 ; $6dbe: $18 $80

	ldh  [$80], a                                    ; $6dc0: $e0 $80
	nop                                              ; $6dc2: $00
	add  b                                           ; $6dc3: $80
	ld   [$8880], sp                                 ; $6dc4: $08 $80 $88
	add  b                                           ; $6dc7: $80
	ret  nc                                          ; $6dc8: $d0

	add  b                                           ; $6dc9: $80
	ldh  [rIE], a                                    ; $6dca: $e0 $ff
	nop                                              ; $6dcc: $00
	add  l                                           ; $6dcd: $85
	nop                                              ; $6dce: $00
	add  b                                           ; $6dcf: $80
	ld   bc, $009e                                   ; $6dd0: $01 $9e $00
	add  b                                           ; $6dd3: $80
	add  b                                           ; $6dd4: $80
	add  b                                           ; $6dd5: $80
	ret  nz                                          ; $6dd6: $c0

	add  b                                           ; $6dd7: $80
	ld   b, b                                        ; $6dd8: $40
	add  d                                           ; $6dd9: $82
	jr   nc, jr_089_6d5e                             ; $6dda: $30 $82

	jr   jr_089_6d83                                 ; $6ddc: $18 $a5

	nop                                              ; $6dde: $00
	add  b                                           ; $6ddf: $80
	inc  b                                           ; $6de0: $04
	rlca                                             ; $6de1: $07
	ld   [$0c00], sp                                 ; $6de2: $08 $00 $0c
	ld   [bc], a                                     ; $6de5: $02
	ld   c, $09                                      ; $6de6: $0e $09
	rrca                                             ; $6de8: $0f
	ld   c, $84                                      ; $6de9: $0e $84
	rlca                                             ; $6deb: $07
	add  b                                           ; $6dec: $80
	inc  bc                                          ; $6ded: $03
	add  b                                           ; $6dee: $80
	ld   bc, $0002                                   ; $6def: $01 $02 $00
	ld   bc, $8100                                   ; $6df2: $01 $00 $81
	ld   bc, $008b                                   ; $6df5: $01 $8b $00
	add  b                                           ; $6df8: $80
	add  b                                           ; $6df9: $80
	inc  b                                           ; $6dfa: $04
	ld   [hl], b                                     ; $6dfb: $70
	ldh  a, [$8f]                                    ; $6dfc: $f0 $8f
	rst  $38                                         ; $6dfe: $ff
	ldh  a, [$84]                                    ; $6dff: $f0 $84
	rst  $38                                         ; $6e01: $ff
	dec  b                                           ; $6e02: $05
	ld   a, a                                        ; $6e03: $7f
	rst  $38                                         ; $6e04: $ff
	rrca                                             ; $6e05: $0f
	rst  $38                                         ; $6e06: $ff
	add  b                                           ; $6e07: $80
	ldh  a, [$91]                                    ; $6e08: $f0 $91
	nop                                              ; $6e0a: $00
	ld   [bc], a                                     ; $6e0b: $02
	push af                                          ; $6e0c: $f5
	rst  $38                                         ; $6e0d: $ff
	ld   a, [bc]                                     ; $6e0e: $0a
	adc  b                                           ; $6e0f: $88
	rst  $38                                         ; $6e10: $ff
	sub  b                                           ; $6e11: $90
	nop                                              ; $6e12: $00
	add  b                                           ; $6e13: $80
	ld   bc, $ff88                                   ; $6e14: $01 $88 $ff
	ld   [bc], a                                     ; $6e17: $02
	cp   $ea                                         ; $6e18: $fe $ea
	inc  d                                           ; $6e1a: $14
	add  b                                           ; $6e1b: $80
	inc  c                                           ; $6e1c: $0c
	add  d                                           ; $6e1d: $82
	ld   b, $80                                      ; $6e1e: $06 $80
	ld   c, $80                                      ; $6e20: $0e $80
	inc  c                                           ; $6e22: $0c
	inc  b                                           ; $6e23: $04
	add  hl, bc                                      ; $6e24: $09
	ld   [$0006], sp                                 ; $6e25: $08 $06 $00
	jr   jr_089_6daa                                 ; $6e28: $18 $80

	nop                                              ; $6e2a: $00
	nop                                              ; $6e2b: $00
	ldh  [$82], a                                    ; $6e2c: $e0 $82
	add  b                                           ; $6e2e: $80
	ld   [$8081], sp                                 ; $6e2f: $08 $81 $80
	ld   b, $00                                      ; $6e32: $06 $00
	inc  e                                           ; $6e34: $1c
	nop                                              ; $6e35: $00
	ld   hl, sp+$00                                  ; $6e36: $f8 $00
	inc  e                                           ; $6e38: $1c
	add  e                                           ; $6e39: $83
	nop                                              ; $6e3a: $00
	inc  b                                           ; $6e3b: $04
	add  b                                           ; $6e3c: $80
	nop                                              ; $6e3d: $00
	ret  nz                                          ; $6e3e: $c0

	nop                                              ; $6e3f: $00
	add  b                                           ; $6e40: $80
	add  c                                           ; $6e41: $81
	nop                                              ; $6e42: $00
	nop                                              ; $6e43: $00
	ld   b, b                                        ; $6e44: $40
	add  l                                           ; $6e45: $85
	nop                                              ; $6e46: $00
	nop                                              ; $6e47: $00
	add  b                                           ; $6e48: $80
	and  a                                           ; $6e49: $a7
	nop                                              ; $6e4a: $00
	ld   bc, $e01f                                   ; $6e4b: $01 $1f $e0
	add  b                                           ; $6e4e: $80
	ld   hl, sp-$7f                                  ; $6e4f: $f8 $81
	rst  $38                                         ; $6e51: $ff
	add  [hl]                                        ; $6e52: $86
	ld   a, a                                        ; $6e53: $7f
	add  d                                           ; $6e54: $82
	ccf                                              ; $6e55: $3f
	add  b                                           ; $6e56: $80
	add  hl, sp                                      ; $6e57: $39
	add  b                                           ; $6e58: $80
	db   $10                                         ; $6e59: $10
	add  b                                           ; $6e5a: $80
	ld   bc, $0087                                   ; $6e5b: $01 $87 $00
	ld   bc, $00ff                                   ; $6e5e: $01 $ff $00
	add  b                                           ; $6e61: $80
	add  b                                           ; $6e62: $80
	add  b                                           ; $6e63: $80
	cp   $8d                                         ; $6e64: $fe $8d
	rst  $38                                         ; $6e66: $ff
	add  d                                           ; $6e67: $82
	ld   a, a                                        ; $6e68: $7f
	add  b                                           ; $6e69: $80
	sbc  a                                           ; $6e6a: $9f
	add  c                                           ; $6e6b: $81
	nop                                              ; $6e6c: $00
	ld   [bc], a                                     ; $6e6d: $02
	ld   bc, $fe00                                   ; $6e6e: $01 $00 $fe
	add  e                                           ; $6e71: $83
	nop                                              ; $6e72: $00
	adc  b                                           ; $6e73: $88
	ld   hl, sp+$04                                  ; $6e74: $f8 $04
	pop  af                                          ; $6e76: $f1
	ldh  a, [$f2]                                    ; $6e77: $f0 $f2
	ldh  a, [$f4]                                    ; $6e79: $f0 $f4
	add  b                                           ; $6e7b: $80
	ldh  a, [c]                                      ; $6e7c: $f2
	ld   bc, $f8f0                                   ; $6e7d: $01 $f0 $f8
	add  b                                           ; $6e80: $80
	db   $e4                                         ; $6e81: $e4
	add  c                                           ; $6e82: $81
	nop                                              ; $6e83: $00
	nop                                              ; $6e84: $00
	db   $fc                                         ; $6e85: $fc
	add  e                                           ; $6e86: $83
	nop                                              ; $6e87: $00
	nop                                              ; $6e88: $00
	inc  b                                           ; $6e89: $04
	add  l                                           ; $6e8a: $85
	nop                                              ; $6e8b: $00
	nop                                              ; $6e8c: $00
	ld   [$0081], sp                                 ; $6e8d: $08 $81 $00
	inc  b                                           ; $6e90: $04
	add  b                                           ; $6e91: $80
	nop                                              ; $6e92: $00
	ld   d, b                                        ; $6e93: $50
	nop                                              ; $6e94: $00
	jr   nz, @+$01                                   ; $6e95: $20 $ff

	nop                                              ; $6e97: $00
	rst  $38                                         ; $6e98: $ff
	nop                                              ; $6e99: $00
	rst  $38                                         ; $6e9a: $ff
	nop                                              ; $6e9b: $00
	rst  $38                                         ; $6e9c: $ff
	nop                                              ; $6e9d: $00
	rst  $38                                         ; $6e9e: $ff
	nop                                              ; $6e9f: $00
	and  d                                           ; $6ea0: $a2
	nop                                              ; $6ea1: $00
	sbc  [hl]                                        ; $6ea2: $9e
	nop                                              ; $6ea3: $00
	add  b                                           ; $6ea4: $80
	nop                                              ; $6ea5: $00
	add  b                                           ; $6ea6: $80
	ld   a, a                                        ; $6ea7: $7f
	add  c                                           ; $6ea8: $81
	ld   b, b                                        ; $6ea9: $40
	ld   [$404f], sp                                 ; $6eaa: $08 $4f $40
	ld   c, a                                        ; $6ead: $4f
	ld   b, a                                        ; $6eae: $47
	ld   c, a                                        ; $6eaf: $4f
	ld   b, [hl]                                     ; $6eb0: $46
	ld   c, a                                        ; $6eb1: $4f
	ld   c, [hl]                                     ; $6eb2: $4e
	ld   c, a                                        ; $6eb3: $4f
	add  b                                           ; $6eb4: $80
	nop                                              ; $6eb5: $00
	add  b                                           ; $6eb6: $80
	rst  $38                                         ; $6eb7: $ff
	add  c                                           ; $6eb8: $81
	nop                                              ; $6eb9: $00
	ld   a, [bc]                                     ; $6eba: $0a
	rst  $38                                         ; $6ebb: $ff
	db   $10                                         ; $6ebc: $10
	rst  $38                                         ; $6ebd: $ff
	rst  $30                                         ; $6ebe: $f7
	rst  $38                                         ; $6ebf: $ff
	ld   h, a                                        ; $6ec0: $67
	rst  $38                                         ; $6ec1: $ff
	ld   a, b                                        ; $6ec2: $78
	rst  $38                                         ; $6ec3: $ff
	rlca                                             ; $6ec4: $07
	nop                                              ; $6ec5: $00
	add  b                                           ; $6ec6: $80
	rst  $38                                         ; $6ec7: $ff
	add  c                                           ; $6ec8: $81
	nop                                              ; $6ec9: $00
	dec  b                                           ; $6eca: $05
	rst  $38                                         ; $6ecb: $ff
	nop                                              ; $6ecc: $00
	rst  $38                                         ; $6ecd: $ff
	ldh  [rIE], a                                    ; $6ece: $e0 $ff
	rra                                              ; $6ed0: $1f
	add  d                                           ; $6ed1: $82
	rst  $38                                         ; $6ed2: $ff
	nop                                              ; $6ed3: $00
	nop                                              ; $6ed4: $00
	add  b                                           ; $6ed5: $80
	rst  $38                                         ; $6ed6: $ff
	add  c                                           ; $6ed7: $81
	nop                                              ; $6ed8: $00
	rlca                                             ; $6ed9: $07
	rst  $38                                         ; $6eda: $ff
	jr   nz, @+$01                                   ; $6edb: $20 $ff

	cpl                                              ; $6edd: $2f
	rst  $38                                         ; $6ede: $ff
	di                                               ; $6edf: $f3
	rst  $38                                         ; $6ee0: $ff
	db   $fc                                         ; $6ee1: $fc
	add  b                                           ; $6ee2: $80
	rst  $38                                         ; $6ee3: $ff
	nop                                              ; $6ee4: $00
	nop                                              ; $6ee5: $00
	add  b                                           ; $6ee6: $80
	rst  $38                                         ; $6ee7: $ff
	add  c                                           ; $6ee8: $81
	nop                                              ; $6ee9: $00
	ld   a, [bc]                                     ; $6eea: $0a
	rst  $38                                         ; $6eeb: $ff
	nop                                              ; $6eec: $00
	rst  $38                                         ; $6eed: $ff
	rst  ToBoot                                         ; $6eee: $c7
	rst  $38                                         ; $6eef: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ef0: $cf
	rst  $38                                         ; $6ef1: $ff
	ei                                               ; $6ef2: $fb
	rst  $38                                         ; $6ef3: $ff
	inc  c                                           ; $6ef4: $0c
	nop                                              ; $6ef5: $00
	add  b                                           ; $6ef6: $80
	cp   $81                                         ; $6ef7: $fe $81
	ld   [bc], a                                     ; $6ef9: $02
	ld   bc, $02f2                                   ; $6efa: $01 $f2 $02
	add  l                                           ; $6efd: $85
	ldh  a, [c]                                      ; $6efe: $f2
	inc  b                                           ; $6eff: $04
	ld   c, h                                        ; $6f00: $4c
	ld   c, a                                        ; $6f01: $4f
	ld   b, a                                        ; $6f02: $47
	ld   c, a                                        ; $6f03: $4f
	ld   c, e                                        ; $6f04: $4b
	add  c                                           ; $6f05: $81
	ld   c, a                                        ; $6f06: $4f
	ld   [bc], a                                     ; $6f07: $02
	ld   c, d                                        ; $6f08: $4a
	ld   c, a                                        ; $6f09: $4f
	ld   b, l                                        ; $6f0a: $45
	add  e                                           ; $6f0b: $83
	ld   c, a                                        ; $6f0c: $4f
	ld   [bc], a                                     ; $6f0d: $02
	ldh  a, [rIE]                                    ; $6f0e: $f0 $ff
	ld   a, a                                        ; $6f10: $7f
	add  c                                           ; $6f11: $81
	rst  $38                                         ; $6f12: $ff
	nop                                              ; $6f13: $00
	ld   a, a                                        ; $6f14: $7f
	add  c                                           ; $6f15: $81
	rst  $38                                         ; $6f16: $ff
	ld   b, $8f                                      ; $6f17: $06 $8f
	rst  $38                                         ; $6f19: $ff
	ei                                               ; $6f1a: $fb
	rst  $38                                         ; $6f1b: $ff
	ld   e, a                                        ; $6f1c: $5f
	rst  $38                                         ; $6f1d: $ff
	db   $db                                         ; $6f1e: $db
	add  a                                           ; $6f1f: $87
	rst  $38                                         ; $6f20: $ff
	inc  bc                                          ; $6f21: $03
	rst  $28                                         ; $6f22: $ef
	rst  $38                                         ; $6f23: $ff
	rst  $28                                         ; $6f24: $ef
	rst  $38                                         ; $6f25: $ff
	add  b                                           ; $6f26: $80
	ei                                               ; $6f27: $fb
	adc  b                                           ; $6f28: $88
	rst  $38                                         ; $6f29: $ff
	add  b                                           ; $6f2a: $80
	rst  JumpTable                                         ; $6f2b: $df
	ld   [$9f90], sp                                 ; $6f2c: $08 $90 $9f
	ld   a, a                                        ; $6f2f: $7f
	rst  $38                                         ; $6f30: $ff
	ld   h, e                                        ; $6f31: $63
	rst  $38                                         ; $6f32: $ff
	db   $eb                                         ; $6f33: $eb
	rst  $38                                         ; $6f34: $ff
	ei                                               ; $6f35: $fb
	add  c                                           ; $6f36: $81
	rst  $38                                         ; $6f37: $ff
	ld   [bc], a                                     ; $6f38: $02
	jp   $3fff                                       ; $6f39: $c3 $ff $3f


	add  e                                           ; $6f3c: $83
	rst  $38                                         ; $6f3d: $ff
	adc  [hl]                                        ; $6f3e: $8e
	ldh  a, [c]                                      ; $6f3f: $f2
	ld   [$4f4e], sp                                 ; $6f40: $08 $4e $4f
	ld   c, h                                        ; $6f43: $4c
	ld   c, a                                        ; $6f44: $4f
	ld   c, e                                        ; $6f45: $4b
	ld   c, a                                        ; $6f46: $4f
	ld   c, l                                        ; $6f47: $4d
	ld   c, a                                        ; $6f48: $4f
	ld   c, b                                        ; $6f49: $48
	add  c                                           ; $6f4a: $81
	ld   c, a                                        ; $6f4b: $4f
	ld   bc, $4f43                                   ; $6f4c: $01 $43 $4f
	add  b                                           ; $6f4f: $80
	ld   c, e                                        ; $6f50: $4b
	inc  b                                           ; $6f51: $04
	ret                                              ; $6f52: $c9


	rst  $38                                         ; $6f53: $ff
	cp   l                                           ; $6f54: $bd
	rst  $38                                         ; $6f55: $ff
	ld   e, $81                                      ; $6f56: $1e $81
	sbc  [hl]                                        ; $6f58: $9e
	ld   bc, $7c78                                   ; $6f59: $01 $78 $7c
	add  b                                           ; $6f5c: $80
	cp   $80                                         ; $6f5d: $fe $80
	add  $80                                         ; $6f5f: $c6 $80
	inc  bc                                          ; $6f61: $03
	ld   bc, $efee                                   ; $6f62: $01 $ee $ef
	add  b                                           ; $6f65: $80
	rst  $38                                         ; $6f66: $ff
	inc  c                                           ; $6f67: $0c
	cp   $ff                                         ; $6f68: $fe $ff
	ccf                                              ; $6f6a: $3f
	ld   a, a                                        ; $6f6b: $7f
	ld   h, h                                        ; $6f6c: $64
	ccf                                              ; $6f6d: $3f
	db   $eb                                         ; $6f6e: $eb
	rst  $38                                         ; $6f6f: $ff
	ld   [hl], b                                     ; $6f70: $70
	ld   a, a                                        ; $6f71: $7f
	sub  b                                           ; $6f72: $90
	ldh  a, [$60]                                    ; $6f73: $f0 $60
	add  c                                           ; $6f75: $81
	rst  $38                                         ; $6f76: $ff
	inc  c                                           ; $6f77: $0c
	inc  bc                                          ; $6f78: $03
	rst  $38                                         ; $6f79: $ff
	ei                                               ; $6f7a: $fb
	rst  $38                                         ; $6f7b: $ff
	rlca                                             ; $6f7c: $07
	rst  $38                                         ; $6f7d: $ff
	cp   $ff                                         ; $6f7e: $fe $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f80: $cf
	rst  $38                                         ; $6f81: $ff
	dec  c                                           ; $6f82: $0d
	rst  JumpTable                                         ; $6f83: $df
	inc  e                                           ; $6f84: $1c
	add  a                                           ; $6f85: $87
	rst  $38                                         ; $6f86: $ff
	ld   b, $7f                                      ; $6f87: $06 $7f
	rst  $38                                         ; $6f89: $ff
	inc  hl                                          ; $6f8a: $23
	ld   a, a                                        ; $6f8b: $7f
	ld   a, e                                        ; $6f8c: $7b
	ld   a, a                                        ; $6f8d: $7f
	ld   a, [hl+]                                    ; $6f8e: $2a
	adc  l                                           ; $6f8f: $8d
	ldh  a, [c]                                      ; $6f90: $f2
	ld   bc, $4e41                                   ; $6f91: $01 $41 $4e
	add  b                                           ; $6f94: $80
	ld   c, b                                        ; $6f95: $48
	add  d                                           ; $6f96: $82
	ld   c, h                                        ; $6f97: $4c
	add  hl, bc                                      ; $6f98: $09
	ld   b, [hl]                                     ; $6f99: $46
	ld   c, [hl]                                     ; $6f9a: $4e
	ld   b, a                                        ; $6f9b: $47
	ld   c, a                                        ; $6f9c: $4f
	ld   c, [hl]                                     ; $6f9d: $4e
	ld   c, a                                        ; $6f9e: $4f
	ld   c, h                                        ; $6f9f: $4c
	ld   c, a                                        ; $6fa0: $4f
	di                                               ; $6fa1: $f3
	ld   bc, $1e80                                   ; $6fa2: $01 $80 $1e
	inc  bc                                          ; $6fa5: $03
	dec  de                                          ; $6fa6: $1b
	rra                                              ; $6fa7: $1f
	dec  sp                                          ; $6fa8: $3b
	ccf                                              ; $6fa9: $3f
	add  b                                           ; $6faa: $80
	ld   a, a                                        ; $6fab: $7f
	add  b                                           ; $6fac: $80
	ei                                               ; $6fad: $fb
	add  d                                           ; $6fae: $82
	rst  $38                                         ; $6faf: $ff
	inc  bc                                          ; $6fb0: $03
	ret  nc                                          ; $6fb1: $d0

	ldh  a, [rLCDC]                                  ; $6fb2: $f0 $40
	ld   h, b                                        ; $6fb4: $60
	add  b                                           ; $6fb5: $80
	nop                                              ; $6fb6: $00
	add  b                                           ; $6fb7: $80
	ld   [bc], a                                     ; $6fb8: $02
	add  b                                           ; $6fb9: $80
	add  d                                           ; $6fba: $82
	inc  bc                                          ; $6fbb: $03
	nop                                              ; $6fbc: $00
	add  b                                           ; $6fbd: $80
	ld   b, b                                        ; $6fbe: $40
	ret  nz                                          ; $6fbf: $c0

	add  b                                           ; $6fc0: $80
	ldh  [rSC], a                                    ; $6fc1: $e0 $02
	inc  d                                           ; $6fc3: $14
	inc  e                                           ; $6fc4: $1c
	ld   [$0085], sp                                 ; $6fc5: $08 $85 $00
	add  d                                           ; $6fc8: $82
	ld   bc, $0380                                   ; $6fc9: $01 $80 $03
	rlca                                             ; $6fcc: $07
	ld   hl, sp-$01                                  ; $6fcd: $f8 $ff
	or   a                                           ; $6fcf: $b7
	cp   a                                           ; $6fd0: $bf
	rst  $28                                         ; $6fd1: $ef
	rst  $38                                         ; $6fd2: $ff
	ld   e, a                                        ; $6fd3: $5f
	ld   a, a                                        ; $6fd4: $7f
	add  b                                           ; $6fd5: $80
	rst  $38                                         ; $6fd6: $ff
	add  b                                           ; $6fd7: $80
	ld   a, a                                        ; $6fd8: $7f
	dec  b                                           ; $6fd9: $05
	ld   a, c                                        ; $6fda: $79
	ld   a, a                                        ; $6fdb: $7f
	ld   [hl], a                                     ; $6fdc: $77
	ld   a, a                                        ; $6fdd: $7f
	db   $fc                                         ; $6fde: $fc
	ldh  a, [c]                                      ; $6fdf: $f2
	add  b                                           ; $6fe0: $80
	ld   [hl-], a                                    ; $6fe1: $32
	add  b                                           ; $6fe2: $80
	ldh  a, [c]                                      ; $6fe3: $f2
	ld   [bc], a                                     ; $6fe4: $02
	ld   [hl-], a                                    ; $6fe5: $32
	ldh  a, [c]                                      ; $6fe6: $f2
	or   d                                           ; $6fe7: $b2
	add  l                                           ; $6fe8: $85
	ldh  a, [c]                                      ; $6fe9: $f2
	nop                                              ; $6fea: $00
	nop                                              ; $6feb: $00
	add  e                                           ; $6fec: $83
	ld   c, a                                        ; $6fed: $4f
	nop                                              ; $6fee: $00
	ld   c, [hl]                                     ; $6fef: $4e
	add  c                                           ; $6ff0: $81
	ld   c, a                                        ; $6ff1: $4f
	ld   b, $4e                                      ; $6ff2: $06 $4e
	ld   c, a                                        ; $6ff4: $4f
	ld   c, h                                        ; $6ff5: $4c
	ld   c, a                                        ; $6ff6: $4f
	ld   b, e                                        ; $6ff7: $43
	ld   c, a                                        ; $6ff8: $4f
	add  hl, de                                      ; $6ff9: $19
	add  c                                           ; $6ffa: $81
	cp   $06                                         ; $6ffb: $fe $06
	rst  $28                                         ; $6ffd: $ef
	rst  $38                                         ; $6ffe: $ff
	ld   a, [hl]                                     ; $6fff: $7e
	rst  $38                                         ; $7000: $ff
	or   a                                           ; $7001: $b7
	rst  $38                                         ; $7002: $ff
	cp   [hl]                                        ; $7003: $be
	add  c                                           ; $7004: $81
	rst  $38                                         ; $7005: $ff
	ld   c, $7f                                      ; $7006: $0e $7f
	rst  $38                                         ; $7008: $ff
	ldh  [$f0], a                                    ; $7009: $e0 $f0
	db   $f4                                         ; $700b: $f4
	db   $fc                                         ; $700c: $fc
	sbc  d                                           ; $700d: $9a
	cp   $1f                                         ; $700e: $fe $1f
	rst  $38                                         ; $7010: $ff
	ld   a, d                                        ; $7011: $7a
	rst  $38                                         ; $7012: $ff
	db   $eb                                         ; $7013: $eb
	rst  $38                                         ; $7014: $ff
	pop  af                                          ; $7015: $f1
	add  c                                           ; $7016: $81
	rst  $38                                         ; $7017: $ff
	ld   bc, $0704                                   ; $7018: $01 $04 $07
	add  b                                           ; $701b: $80
	rra                                              ; $701c: $1f
	add  b                                           ; $701d: $80
	inc  a                                           ; $701e: $3c
	add  b                                           ; $701f: $80
	ldh  a, [rSB]                                    ; $7020: $f0 $01
	ld   b, c                                        ; $7022: $41
	pop  bc                                          ; $7023: $c1
	add  b                                           ; $7024: $80
	jp   $cb09                                       ; $7025: $c3 $09 $cb


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7028: $cf
	dec  de                                          ; $7029: $1b
	sbc  a                                           ; $702a: $9f
	ld   l, [hl]                                     ; $702b: $6e
	ld   a, a                                        ; $702c: $7f
	ld   e, l                                        ; $702d: $5d
	ld   a, a                                        ; $702e: $7f
	ld   [hl], e                                     ; $702f: $73
	ld   a, a                                        ; $7030: $7f
	add  b                                           ; $7031: $80
	rst  $38                                         ; $7032: $ff
	ld   [$ffbf], sp                                 ; $7033: $08 $bf $ff
	cp   a                                           ; $7036: $bf
	rst  $38                                         ; $7037: $ff
	cp   a                                           ; $7038: $bf
	rst  $38                                         ; $7039: $ff
	cp   $ff                                         ; $703a: $fe $ff
	inc  sp                                          ; $703c: $33
	adc  c                                           ; $703d: $89
	ldh  a, [c]                                      ; $703e: $f2
	nop                                              ; $703f: $00
	ld   [hl-], a                                    ; $7040: $32
	add  c                                           ; $7041: $81
	ldh  a, [c]                                      ; $7042: $f2
	nop                                              ; $7043: $00
	rst  ToBoot                                         ; $7044: $c7
	add  c                                           ; $7045: $81
	ld   c, a                                        ; $7046: $4f
	nop                                              ; $7047: $00
	ld   c, e                                        ; $7048: $4b
	add  c                                           ; $7049: $81
	ld   c, a                                        ; $704a: $4f
	nop                                              ; $704b: $00
	ld   c, h                                        ; $704c: $4c
	add  b                                           ; $704d: $80
	ld   c, a                                        ; $704e: $4f
	nop                                              ; $704f: $00
	ld   b, b                                        ; $7050: $40
	add  b                                           ; $7051: $80
	ld   a, a                                        ; $7052: $7f
	add  b                                           ; $7053: $80
	nop                                              ; $7054: $00
	ld   [$ff08], sp                                 ; $7055: $08 $08 $ff
	ld   [hl], a                                     ; $7058: $77
	rst  $38                                         ; $7059: $ff
	sbc  a                                           ; $705a: $9f
	rst  $38                                         ; $705b: $ff
	rst  JumpTable                                         ; $705c: $df
	rst  $38                                         ; $705d: $ff
	ccf                                              ; $705e: $3f
	add  b                                           ; $705f: $80
	rst  $38                                         ; $7060: $ff
	nop                                              ; $7061: $00
	nop                                              ; $7062: $00
	add  b                                           ; $7063: $80
	rst  $38                                         ; $7064: $ff
	add  b                                           ; $7065: $80
	nop                                              ; $7066: $00
	inc  b                                           ; $7067: $04
	inc  b                                           ; $7068: $04
	rst  $38                                         ; $7069: $ff
	db   $fc                                         ; $706a: $fc
	cp   $f8                                         ; $706b: $fe $f8
	add  c                                           ; $706d: $81
	rst  $38                                         ; $706e: $ff
	nop                                              ; $706f: $00
	cp   $80                                         ; $7070: $fe $80
	rst  $38                                         ; $7072: $ff
	nop                                              ; $7073: $00
	nop                                              ; $7074: $00
	add  b                                           ; $7075: $80
	rst  $38                                         ; $7076: $ff
	add  b                                           ; $7077: $80
	nop                                              ; $7078: $00
	ld   bc, $7f80                                   ; $7079: $01 $80 $7f
	add  b                                           ; $707c: $80
	rst  $38                                         ; $707d: $ff
	inc  b                                           ; $707e: $04
	ret  nz                                          ; $707f: $c0

	rst  $38                                         ; $7080: $ff
	ld   a, $ff                                      ; $7081: $3e $ff
	ld   bc, $ff80                                   ; $7083: $01 $80 $ff
	nop                                              ; $7086: $00
	nop                                              ; $7087: $00
	add  b                                           ; $7088: $80
	rst  $38                                         ; $7089: $ff
	add  b                                           ; $708a: $80
	nop                                              ; $708b: $00
	ld   [$ff7e], sp                                 ; $708c: $08 $7e $ff
	ld   a, c                                        ; $708f: $79
	rst  $38                                         ; $7090: $ff
	adc  a                                           ; $7091: $8f
	rst  $38                                         ; $7092: $ff
	ld   h, a                                        ; $7093: $67
	rst  $38                                         ; $7094: $ff
	rst  $28                                         ; $7095: $ef
	add  b                                           ; $7096: $80
	rst  $38                                         ; $7097: $ff
	nop                                              ; $7098: $00
	nop                                              ; $7099: $00
	add  b                                           ; $709a: $80
	rst  $38                                         ; $709b: $ff
	add  b                                           ; $709c: $80
	nop                                              ; $709d: $00
	ld   [$f232], sp                                 ; $709e: $08 $32 $f2
	jp   nc, $e2f2                                   ; $70a1: $d2 $f2 $e2

	ldh  a, [c]                                      ; $70a4: $f2
	or   d                                           ; $70a5: $b2
	ldh  a, [c]                                      ; $70a6: $f2
	or   d                                           ; $70a7: $b2
	add  b                                           ; $70a8: $80
	ldh  a, [c]                                      ; $70a9: $f2
	nop                                              ; $70aa: $00
	ld   [bc], a                                     ; $70ab: $02
	add  b                                           ; $70ac: $80
	cp   $ff                                         ; $70ad: $fe $ff
	nop                                              ; $70af: $00

Call_089_70b0:
	rst  $38                                         ; $70b0: $ff
	nop                                              ; $70b1: $00
	rst  $38                                         ; $70b2: $ff
	nop                                              ; $70b3: $00
	rst  $38                                         ; $70b4: $ff
	nop                                              ; $70b5: $00
	rst  $38                                         ; $70b6: $ff
	nop                                              ; $70b7: $00
	rst  $38                                         ; $70b8: $ff
	nop                                              ; $70b9: $00
	rst  $38                                         ; $70ba: $ff
	nop                                              ; $70bb: $00
	rst  $38                                         ; $70bc: $ff

jr_089_70bd:
	nop                                              ; $70bd: $00
	rst  $38                                         ; $70be: $ff
	nop                                              ; $70bf: $00
	or   a                                           ; $70c0: $b7
	nop                                              ; $70c1: $00
	cp   [hl]                                        ; $70c2: $be
	nop                                              ; $70c3: $00
	xor  h                                           ; $70c4: $ac
	nop                                              ; $70c5: $00
	add  b                                           ; $70c6: $80
	rra                                              ; $70c7: $1f
	adc  h                                           ; $70c8: $8c
	nop                                              ; $70c9: $00
	add  b                                           ; $70ca: $80
	ld   hl, sp-$58                                  ; $70cb: $f8 $a8
	nop                                              ; $70cd: $00
	add  b                                           ; $70ce: $80
	ld   bc, $0380                                   ; $70cf: $01 $80 $03
	add  b                                           ; $70d2: $80
	rlca                                             ; $70d3: $07
	add  b                                           ; $70d4: $80
	nop                                              ; $70d5: $00
	add  b                                           ; $70d6: $80
	rlca                                             ; $70d7: $07
	add  b                                           ; $70d8: $80
	jr   jr_089_70e1                                 ; $70d9: $18 $06

	daa                                              ; $70db: $27
	jr   nz, jr_089_70bd                             ; $70dc: $20 $df

	ret  nz                                          ; $70de: $c0

	cp   b                                           ; $70df: $b8
	add  c                                           ; $70e0: $81

jr_089_70e1:
	ld   h, c                                        ; $70e1: $61
	add  b                                           ; $70e2: $80
	rlca                                             ; $70e3: $07
	rlca                                             ; $70e4: $07
	rrca                                             ; $70e5: $0f
	xor  a                                           ; $70e6: $af

jr_089_70e7:
	ldh  [$1f], a                                    ; $70e7: $e0 $1f
	nop                                              ; $70e9: $00
	rst  $38                                         ; $70ea: $ff
	nop                                              ; $70eb: $00
	ldh  [$80], a                                    ; $70ec: $e0 $80
	nop                                              ; $70ee: $00
	add  b                                           ; $70ef: $80
	ccf                                              ; $70f0: $3f
	add  b                                           ; $70f1: $80
	rst  $38                                         ; $70f2: $ff
	add  b                                           ; $70f3: $80
	ldh  [rP1], a                                    ; $70f4: $e0 $00
	nop                                              ; $70f6: $00
	add  b                                           ; $70f7: $80
	rlca                                             ; $70f8: $07
	inc  b                                           ; $70f9: $04
	ld   hl, sp+$00                                  ; $70fa: $f8 $00
	rst  $38                                         ; $70fc: $ff
	nop                                              ; $70fd: $00
	rlca                                             ; $70fe: $07
	add  b                                           ; $70ff: $80
	nop                                              ; $7100: $00
	add  b                                           ; $7101: $80
	db   $fc                                         ; $7102: $fc
	add  b                                           ; $7103: $80
	rst  $38                                         ; $7104: $ff
	add  b                                           ; $7105: $80
	inc  bc                                          ; $7106: $03
	add  c                                           ; $7107: $81
	nop                                              ; $7108: $00
	add  b                                           ; $7109: $80
	ldh  [$80], a                                    ; $710a: $e0 $80
	jr   jr_089_7114                                 ; $710c: $18 $06

	db   $e4                                         ; $710e: $e4
	inc  b                                           ; $710f: $04
	ei                                               ; $7110: $fb
	inc  bc                                          ; $7111: $03
	dec  e                                           ; $7112: $1d
	add  c                                           ; $7113: $81

jr_089_7114:
	add  [hl]                                        ; $7114: $86
	add  b                                           ; $7115: $80
	ldh  [rSB], a                                    ; $7116: $e0 $01
	ldh  a, [$f2]                                    ; $7118: $f0 $f2
	add  a                                           ; $711a: $87
	nop                                              ; $711b: $00
	add  b                                           ; $711c: $80
	add  b                                           ; $711d: $80
	add  b                                           ; $711e: $80
	ret  nz                                          ; $711f: $c0

	add  b                                           ; $7120: $80
	ldh  [$80], a                                    ; $7121: $e0 $80
	ld   c, $80                                      ; $7123: $0e $80
	ld   a, [bc]                                     ; $7125: $0a
	add  b                                           ; $7126: $80
	ld   [de], a                                     ; $7127: $12
	ld   [bc], a                                     ; $7128: $02
	dec  d                                           ; $7129: $15
	inc  d                                           ; $712a: $14
	inc  l                                           ; $712b: $2c
	add  l                                           ; $712c: $85
	inc  h                                           ; $712d: $24
	nop                                              ; $712e: $00
	adc  c                                           ; $712f: $89
	add  b                                           ; $7130: $80
	inc  e                                           ; $7131: $1c
	add  b                                           ; $7132: $80
	jr   c, @+$03                                    ; $7133: $38 $01

	jr   nc, jr_089_70e7                             ; $7135: $30 $b0

	add  b                                           ; $7137: $80
	ld   [hl], b                                     ; $7138: $70
	add  [hl]                                        ; $7139: $86
	ld   h, b                                        ; $713a: $60
	sbc  l                                           ; $713b: $9d
	nop                                              ; $713c: $00
	nop                                              ; $713d: $00
	ld   bc, $3880                                   ; $713e: $01 $80 $38
	add  b                                           ; $7141: $80
	inc  e                                           ; $7142: $1c
	ld   bc, $4d4c                                   ; $7143: $01 $4c $4d
	add  b                                           ; $7146: $80
	adc  $80                                         ; $7147: $ce $80
	add  [hl]                                        ; $7149: $86
	add  e                                           ; $714a: $83
	ld   b, $01                                      ; $714b: $06 $01
	halt                                             ; $714d: $76
	ld   [hl], b                                     ; $714e: $70
	add  b                                           ; $714f: $80
	ld   d, b                                        ; $7150: $50
	add  b                                           ; $7151: $80
	ld   c, b                                        ; $7152: $48
	ld   [bc], a                                     ; $7153: $02
	xor  b                                           ; $7154: $a8
	jr   z, jr_089_718b                              ; $7155: $28 $34

	add  l                                           ; $7157: $85
	inc  h                                           ; $7158: $24
	ld   bc, $44c5                                   ; $7159: $01 $c5 $44
	add  d                                           ; $715c: $82
	ld   b, d                                        ; $715d: $42
	ld   a, [bc]                                     ; $715e: $0a
	ld   c, b                                        ; $715f: $48
	ld   b, c                                        ; $7160: $41
	ld   d, b                                        ; $7161: $50
	ld   b, b                                        ; $7162: $40
	ld   b, h                                        ; $7163: $44
	ld   b, b                                        ; $7164: $40
	jr   z, @+$22                                    ; $7165: $28 $20

	ld   [hl+], a                                    ; $7167: $22
	jr   nz, jr_089_7170                             ; $7168: $20 $06

	add  b                                           ; $716a: $80
	ld   h, b                                        ; $716b: $60
	ld   bc, $f070                                   ; $716c: $01 $70 $f0
	add  b                                           ; $716f: $80

jr_089_7170:
	jr   nc, jr_089_717a                             ; $7170: $30 $08

	jr   c, jr_089_71ec                              ; $7172: $38 $78

	sbc  h                                           ; $7174: $9c
	inc  e                                           ; $7175: $1c
	ld   c, [hl]                                     ; $7176: $4e
	ld   a, $33                                      ; $7177: $3e $33
	dec  c                                           ; $7179: $0d

jr_089_717a:
	ld   c, $8b                                      ; $717a: $0e $8b
	nop                                              ; $717c: $00
	add  b                                           ; $717d: $80

jr_089_717e:
	pop  bc                                          ; $717e: $c1
	add  b                                           ; $717f: $80
	ld   a, a                                        ; $7180: $7f
	adc  d                                           ; $7181: $8a
	nop                                              ; $7182: $00
	add  b                                           ; $7183: $80
	db   $e3                                         ; $7184: $e3

jr_089_7185:
	add  b                                           ; $7185: $80
	cp   $81                                         ; $7186: $fe $81
	ld   b, $00                                      ; $7188: $06 $00
	rlca                                             ; $718a: $07

jr_089_718b:
	add  b                                           ; $718b: $80
	inc  c                                           ; $718c: $0c
	ld   a, [bc]                                     ; $718d: $0a
	inc  e                                           ; $718e: $1c
	ld   e, $39                                      ; $718f: $1e $39
	jr   c, jr_089_7185                              ; $7191: $38 $f2

	db   $fc                                         ; $7193: $fc
	call z, Call_089_70b0                            ; $7194: $cc $b0 $70
	xor  d                                           ; $7197: $aa
	ld   [hl+], a                                    ; $7198: $22
	add  d                                           ; $7199: $82
	ld   b, d                                        ; $719a: $42
	rrca                                             ; $719b: $0f
	ld   [de], a                                     ; $719c: $12
	add  d                                           ; $719d: $82
	ld   a, [bc]                                     ; $719e: $0a
	ld   [bc], a                                     ; $719f: $02
	ld   [hl+], a                                    ; $71a0: $22
	ld   [bc], a                                     ; $71a1: $02
	inc  d                                           ; $71a2: $14
	inc  b                                           ; $71a3: $04
	ld   b, h                                        ; $71a4: $44
	inc  b                                           ; $71a5: $04
	ld   [hl], e                                     ; $71a6: $73
	db   $10                                         ; $71a7: $10
	ld   [de], a                                     ; $71a8: $12
	db   $10                                         ; $71a9: $10
	add  hl, bc                                      ; $71aa: $09
	ld   [$0480], sp                                 ; $71ab: $08 $80 $04
	add  b                                           ; $71ae: $80
	ld   [bc], a                                     ; $71af: $02
	add  b                                           ; $71b0: $80
	ld   bc, $0082                                   ; $71b1: $01 $82 $00
	add  b                                           ; $71b4: $80
	inc  bc                                          ; $71b5: $03
	dec  bc                                          ; $71b6: $0b
	add  b                                           ; $71b7: $80
	nop                                              ; $71b8: $00
	ld   h, b                                        ; $71b9: $60
	nop                                              ; $71ba: $00
	ret  c                                           ; $71bb: $d8

	nop                                              ; $71bc: $00
	scf                                              ; $71bd: $37
	nop                                              ; $71be: $00
	adc  [hl]                                        ; $71bf: $8e
	add  b                                           ; $71c0: $80
	ld   h, c                                        ; $71c1: $61
	ld   h, b                                        ; $71c2: $60
	add  b                                           ; $71c3: $80
	inc  e                                           ; $71c4: $1c
	add  b                                           ; $71c5: $80
	ldh  [$80], a                                    ; $71c6: $e0 $80
	rst  $38                                         ; $71c8: $ff
	add  b                                           ; $71c9: $80
	rra                                              ; $71ca: $1f
	add  d                                           ; $71cb: $82
	nop                                              ; $71cc: $00
	dec  b                                           ; $71cd: $05
	ldh  [rP1], a                                    ; $71ce: $e0 $00
	rst  JumpTable                                         ; $71d0: $df
	nop                                              ; $71d1: $00
	ccf                                              ; $71d2: $3f
	nop                                              ; $71d3: $00
	add  b                                           ; $71d4: $80
	inc  bc                                          ; $71d5: $03
	add  b                                           ; $71d6: $80
	rst  $38                                         ; $71d7: $ff
	add  b                                           ; $71d8: $80
	ld   hl, sp-$7e                                  ; $71d9: $f8 $82
	nop                                              ; $71db: $00
	dec  b                                           ; $71dc: $05
	rlca                                             ; $71dd: $07
	nop                                              ; $71de: $00
	ei                                               ; $71df: $fb
	nop                                              ; $71e0: $00
	db   $fc                                         ; $71e1: $fc
	nop                                              ; $71e2: $00
	add  b                                           ; $71e3: $80
	ret  nz                                          ; $71e4: $c0

	dec  bc                                          ; $71e5: $0b
	ld   bc, $0600                                   ; $71e6: $01 $00 $06
	nop                                              ; $71e9: $00
	dec  de                                          ; $71ea: $1b
	nop                                              ; $71eb: $00

jr_089_71ec:
	db   $ec                                         ; $71ec: $ec
	nop                                              ; $71ed: $00
	ld   [hl], c                                     ; $71ee: $71
	ld   bc, $0686                                   ; $71ef: $01 $86 $06
	add  b                                           ; $71f2: $80
	jr   c, jr_089_71fa                              ; $71f3: $38 $05

	ret  z                                           ; $71f5: $c8

	ld   [$0848], sp                                 ; $71f6: $08 $48 $08
	sub  b                                           ; $71f9: $90

jr_089_71fa:
	db   $10                                         ; $71fa: $10
	add  b                                           ; $71fb: $80
	jr   nz, jr_089_717e                             ; $71fc: $20 $80

	ld   b, b                                        ; $71fe: $40
	add  b                                           ; $71ff: $80
	add  b                                           ; $7200: $80
	sub  d                                           ; $7201: $92
	nop                                              ; $7202: $00
	add  b                                           ; $7203: $80
	inc  bc                                          ; $7204: $03
	adc  h                                           ; $7205: $8c
	nop                                              ; $7206: $00
	add  b                                           ; $7207: $80
	ret  nz                                          ; $7208: $c0

	add  b                                           ; $7209: $80
	ccf                                              ; $720a: $3f
	adc  d                                           ; $720b: $8a
	nop                                              ; $720c: $00
	add  b                                           ; $720d: $80
	inc  bc                                          ; $720e: $03
	add  b                                           ; $720f: $80
	db   $fc                                         ; $7210: $fc
	adc  d                                           ; $7211: $8a
	nop                                              ; $7212: $00
	add  b                                           ; $7213: $80
	ret  nz                                          ; $7214: $c0

	ld   hl, sp+$00                                  ; $7215: $f8 $00
	inc  b                                           ; $7217: $04

jr_089_7218:
	ld   bc, $1d1f                                   ; $7218: $01 $1f $1d
	rst  $38                                         ; $721b: $ff
	db   $fc                                         ; $721c: $fc
	sbc  c                                           ; $721d: $99
	nop                                              ; $721e: $00
	nop                                              ; $721f: $00
	ld   hl, sp-$80                                  ; $7220: $f8 $80
	db   $e4                                         ; $7222: $e4
	ld   bc, $0ff7                                   ; $7223: $01 $f7 $0f
	sbc  $00                                         ; $7226: $de $00
	ld   bc, $0203                                   ; $7228: $01 $03 $02
	add  b                                           ; $722b: $80
	ld   b, $81                                      ; $722c: $06 $81
	ld   c, $00                                      ; $722e: $0e $00
	rrca                                             ; $7230: $0f
	add  d                                           ; $7231: $82
	rra                                              ; $7232: $1f

jr_089_7233:
	add  b                                           ; $7233: $80
	inc  e                                           ; $7234: $1c
	add  d                                           ; $7235: $82
	rra                                              ; $7236: $1f
	add  d                                           ; $7237: $82
	rrca                                             ; $7238: $0f
	add  b                                           ; $7239: $80
	rlca                                             ; $723a: $07
	add  b                                           ; $723b: $80
	inc  bc                                          ; $723c: $03
	ld   [bc], a                                     ; $723d: $02
	ld   bc, $4041                                   ; $723e: $01 $41 $40
	add  b                                           ; $7241: $80
	jr   nc, @+$06                                   ; $7242: $30 $04

	di                                               ; $7244: $f3
	rst  $38                                         ; $7245: $ff
	db   $fd                                         ; $7246: $fd
	and  $e7                                         ; $7247: $e6 $e7
	add  b                                           ; $7249: $80
	add  [hl]                                        ; $724a: $86
	inc  bc                                          ; $724b: $03
	nop                                              ; $724c: $00
	ldh  a, [rP1]                                    ; $724d: $f0 $00
	rlca                                             ; $724f: $07
	add  b                                           ; $7250: $80
	add  a                                           ; $7251: $87
	rrca                                             ; $7252: $0f
	ld   h, a                                        ; $7253: $67
	ld   l, a                                        ; $7254: $6f
	cp   $9e                                         ; $7255: $fe $9e
	xor  $76                                         ; $7257: $ee $76
	ret  nz                                          ; $7259: $c0

	rst  ToBoot                                         ; $725a: $c7
	nop                                              ; $725b: $00
	ldh  a, [$c7]                                    ; $725c: $f0 $c7
	add  $ff                                         ; $725e: $c6 $ff
	db   $fd                                         ; $7260: $fd
	rst  $38                                         ; $7261: $ff
	db   $fc                                         ; $7262: $fc
	add  b                                           ; $7263: $80
	ld   a, $01                                      ; $7264: $3e $01
	nop                                              ; $7266: $00
	rst  $38                                         ; $7267: $ff
	add  b                                           ; $7268: $80
	rst  $20                                         ; $7269: $e7
	ld   bc, $ff0f                                   ; $726a: $01 $0f $ff
	add  b                                           ; $726d: $80
	rrca                                             ; $726e: $0f
	add  b                                           ; $726f: $80
	ld   b, $03                                      ; $7270: $06 $03
	db   $10                                         ; $7272: $10
	rra                                              ; $7273: $1f
	inc  c                                           ; $7274: $0c
	adc  h                                           ; $7275: $8c
	add  d                                           ; $7276: $82
	nop                                              ; $7277: $00
	nop                                              ; $7278: $00
	inc  bc                                          ; $7279: $03
	add  b                                           ; $727a: $80
	dec  e                                           ; $727b: $1d
	inc  b                                           ; $727c: $04
	adc  l                                           ; $727d: $8d
	ld   l, l                                        ; $727e: $6d
	ld   h, e                                        ; $727f: $63
	rst  $38                                         ; $7280: $ff
	rra                                              ; $7281: $1f
	add  b                                           ; $7282: $80
	sbc  a                                           ; $7283: $9f
	ld   bc, $ff1f                                   ; $7284: $01 $1f $ff
	add  b                                           ; $7287: $80
	inc  e                                           ; $7288: $1c
	add  b                                           ; $7289: $80
	nop                                              ; $728a: $00
	ld   bc, $40c0                                   ; $728b: $01 $c0 $40
	add  b                                           ; $728e: $80
	ld   h, b                                        ; $728f: $60
	ld   bc, $b030                                   ; $7290: $01 $30 $b0
	add  b                                           ; $7293: $80
	jr   nc, @-$7e                                   ; $7294: $30 $80

	jr   c, jr_089_7218                              ; $7296: $38 $80

	ld   a, b                                        ; $7298: $78
	add  b                                           ; $7299: $80
	ld   hl, sp+$01                                  ; $729a: $f8 $01
	ld   a, b                                        ; $729c: $78
	sbc  b                                           ; $729d: $98
	add  c                                           ; $729e: $81
	jr   jr_089_72a3                                 ; $729f: $18 $02

jr_089_72a1:
	jr   c, jr_089_72d3                              ; $72a1: $38 $30

jr_089_72a3:
	ldh  a, [$80]                                    ; $72a3: $f0 $80
	ldh  [rSC], a                                    ; $72a5: $e0 $02
	ret  nz                                          ; $72a7: $c0

	pop  bc                                          ; $72a8: $c1
	ld   bc, $0380                                   ; $72a9: $01 $80 $03
	add  b                                           ; $72ac: $80
	ld   c, $90                                      ; $72ad: $0e $90
	nop                                              ; $72af: $00
	add  d                                           ; $72b0: $82
	jr   nz, jr_089_7233                             ; $72b1: $20 $80

	ld   h, b                                        ; $72b3: $60
	add  b                                           ; $72b4: $80
	ret  nz                                          ; $72b5: $c0

	add  b                                           ; $72b6: $80

jr_089_72b7:
	add  b                                           ; $72b7: $80
	and  d                                           ; $72b8: $a2
	nop                                              ; $72b9: $00
	add  b                                           ; $72ba: $80
	inc  e                                           ; $72bb: $1c
	add  b                                           ; $72bc: $80
	rlca                                             ; $72bd: $07
	add  b                                           ; $72be: $80
	ld   bc, $009c                                   ; $72bf: $01 $9c $00
	add  b                                           ; $72c2: $80
	ldh  [$80], a                                    ; $72c3: $e0 $80
	rra                                              ; $72c5: $1f
	sbc  d                                           ; $72c6: $9a
	nop                                              ; $72c7: $00
	add  b                                           ; $72c8: $80
	rlca                                             ; $72c9: $07
	add  b                                           ; $72ca: $80
	rst  $38                                         ; $72cb: $ff
	sub  [hl]                                        ; $72cc: $96
	nop                                              ; $72cd: $00
	add  b                                           ; $72ce: $80
	inc  a                                           ; $72cf: $3c
	add  b                                           ; $72d0: $80
	ld   hl, sp-$80                                  ; $72d1: $f8 $80

jr_089_72d3:
	ldh  [rIE], a                                    ; $72d3: $e0 $ff
	nop                                              ; $72d5: $00
	rst  $38                                         ; $72d6: $ff
	nop                                              ; $72d7: $00
	rst  $38                                         ; $72d8: $ff
	nop                                              ; $72d9: $00
	rst  $38                                         ; $72da: $ff
	nop                                              ; $72db: $00
	rst  $38                                         ; $72dc: $ff
	nop                                              ; $72dd: $00
	or   e                                           ; $72de: $b3
	nop                                              ; $72df: $00
	xor  d                                           ; $72e0: $aa
	nop                                              ; $72e1: $00
	xor  h                                           ; $72e2: $ac
	nop                                              ; $72e3: $00
	add  b                                           ; $72e4: $80
	ld   bc, $008a                                   ; $72e5: $01 $8a $00
	add  b                                           ; $72e8: $80
	ld   a, b                                        ; $72e9: $78
	add  b                                           ; $72ea: $80
	add  [hl]                                        ; $72eb: $86
	or   d                                           ; $72ec: $b2
	nop                                              ; $72ed: $00
	add  b                                           ; $72ee: $80
	ld   bc, $0280                                   ; $72ef: $01 $80 $02
	add  d                                           ; $72f2: $82
	inc  b                                           ; $72f3: $04
	add  b                                           ; $72f4: $80
	inc  e                                           ; $72f5: $1c
	inc  bc                                          ; $72f6: $03
	ccf                                              ; $72f7: $3f
	daa                                              ; $72f8: $27
	ld   a, [de]                                     ; $72f9: $1a
	ld   [bc], a                                     ; $72fa: $02
	add  b                                           ; $72fb: $80
	ld   h, d                                        ; $72fc: $62
	add  b                                           ; $72fd: $80
	adc  h                                           ; $72fe: $8c
	add  d                                           ; $72ff: $82
	inc  b                                           ; $7300: $04
	add  b                                           ; $7301: $80
	ld   a, $80                                      ; $7302: $3e $80
	jp   nz, $8180                                   ; $7304: $c2 $80 $81

	add  b                                           ; $7307: $80
	rrca                                             ; $7308: $0f
	add  b                                           ; $7309: $80
	ld   [$1080], sp                                 ; $730a: $08 $80 $10
	add  b                                           ; $730d: $80
	inc  e                                           ; $730e: $1c
	inc  bc                                          ; $730f: $03
	ccf                                              ; $7310: $3f
	inc  hl                                          ; $7311: $23
	ld   h, h                                        ; $7312: $64
	ld   a, b                                        ; $7313: $78
	add  b                                           ; $7314: $80
	call nz, $0280                                   ; $7315: $c4 $80 $02
	add  [hl]                                        ; $7318: $86
	nop                                              ; $7319: $00
	add  b                                           ; $731a: $80
	add  b                                           ; $731b: $80
	add  b                                           ; $731c: $80
	ldh  [$80], a                                    ; $731d: $e0 $80
	jr   nc, jr_089_72a1                             ; $731f: $30 $80

	jr   jr_089_72b7                                 ; $7321: $18 $94

	nop                                              ; $7323: $00
	add  d                                           ; $7324: $82
	ld   bc, $0384                                   ; $7325: $01 $84 $03
	ld   de, $457f                                   ; $7328: $11 $7f $45
	push bc                                          ; $732b: $c5
	rst  ToBoot                                         ; $732c: $c7
	jp   $87bb                                       ; $732d: $c3 $bb $87


	rst  ToBoot                                         ; $7330: $c7
	add  a                                           ; $7331: $87
	add  c                                           ; $7332: $81
	ld   a, c                                        ; $7333: $79
	ld   a, l                                        ; $7334: $7d
	push bc                                          ; $7335: $c5
	rst  ToBoot                                         ; $7336: $c7
	jp   $0143                               ; $7337: $c3 $43 $01


	add  c                                           ; $733a: $81
	add  b                                           ; $733b: $80
	ld   bc, $0280                                   ; $733c: $01 $80 $02
	add  b                                           ; $733f: $80
	inc  b                                           ; $7340: $04
	add  b                                           ; $7341: $80
	jr   @-$7e                                       ; $7342: $18 $80

	ret  z                                           ; $7344: $c8

	add  b                                           ; $7345: $80
	ld   c, b                                        ; $7346: $48
	add  b                                           ; $7347: $80
	reti                                             ; $7348: $d9


	add  d                                           ; $7349: $82
	ld   bc, $8180                                   ; $734a: $01 $80 $81
	add  b                                           ; $734d: $80
	ld   b, c                                        ; $734e: $41
	add  b                                           ; $734f: $80
	db   $fc                                         ; $7350: $fc
	add  b                                           ; $7351: $80
	sbc  e                                           ; $7352: $9b
	add  b                                           ; $7353: $80
	cp   b                                           ; $7354: $b8
	add  b                                           ; $7355: $80
	ld   b, l                                        ; $7356: $45
	ld   bc, ClearKanjiIdxInConvoAndTextBox                                   ; $7357: $01 $1c $14
	add  b                                           ; $735a: $80
	sub  h                                           ; $735b: $94
	nop                                              ; $735c: $00
	or   $80                                         ; $735d: $f6 $80
	ld   [hl], d                                     ; $735f: $72
	ld   bc, $5352                                   ; $7360: $01 $52 $53
	add  b                                           ; $7363: $80
	pop  hl                                          ; $7364: $e1
	ld   [bc], a                                     ; $7365: $02
	ld   sp, hl                                      ; $7366: $f9
	ld   a, c                                        ; $7367: $79
	ld   a, a                                        ; $7368: $7f
	add  b                                           ; $7369: $80
	sbc  a                                           ; $736a: $9f
	adc  [hl]                                        ; $736b: $8e
	nop                                              ; $736c: $00
	nop                                              ; $736d: $00
	ld   [bc], a                                     ; $736e: $02
	adc  c                                           ; $736f: $89
	inc  bc                                          ; $7370: $03
	ld   bc, $0302                                   ; $7371: $01 $02 $03
	add  b                                           ; $7374: $80
	ld   bc, $8280                                   ; $7375: $01 $80 $82
	add  b                                           ; $7378: $80
	add  [hl]                                        ; $7379: $86
	add  b                                           ; $737a: $80
	adc  d                                           ; $737b: $8a
	add  b                                           ; $737c: $80
	sub  d                                           ; $737d: $92
	add  b                                           ; $737e: $80
	or   e                                           ; $737f: $b3
	rlca                                             ; $7380: $07
	ld   [hl], h                                     ; $7381: $74
	call nc, $d8c8                                   ; $7382: $d4 $c8 $d8
	rst  $38                                         ; $7385: $ff
	cp   a                                           ; $7386: $bf
	jp   z, $803a                                    ; $7387: $ca $3a $80

	inc  e                                           ; $738a: $1c
	add  b                                           ; $738b: $80
	dec  c                                           ; $738c: $0d
	add  d                                           ; $738d: $82
	add  hl, bc                                      ; $738e: $09
	add  b                                           ; $738f: $80
	adc  c                                           ; $7390: $89
	add  b                                           ; $7391: $80
	ld   c, c                                        ; $7392: $49
	add  b                                           ; $7393: $80
	ret  nc                                          ; $7394: $d0

	add  d                                           ; $7395: $82
	add  d                                           ; $7396: $82
	add  b                                           ; $7397: $80
	ld   b, $80                                      ; $7398: $06 $80
	dec  de                                          ; $739a: $1b
	add  b                                           ; $739b: $80
	inc  hl                                          ; $739c: $23
	add  b                                           ; $739d: $80
	db   $e3                                         ; $739e: $e3
	add  b                                           ; $739f: $80
	daa                                              ; $73a0: $27
	add  c                                           ; $73a1: $81
	cpl                                              ; $73a2: $2f
	nop                                              ; $73a3: $00
	dec  l                                           ; $73a4: $2d
	add  d                                           ; $73a5: $82
	dec  b                                           ; $73a6: $05
	add  b                                           ; $73a7: $80
	dec  e                                           ; $73a8: $1d
	ld   [$e9ed], sp                                 ; $73a9: $08 $ed $e9
	cp   c                                           ; $73ac: $b9
	or   c                                           ; $73ad: $b1
	pop  af                                          ; $73ae: $f1
	jp   $02c2                                       ; $73af: $c3 $c2 $02


	db   $fc                                         ; $73b2: $fc
	sbc  l                                           ; $73b3: $9d
	nop                                              ; $73b4: $00
	inc  c                                           ; $73b5: $0c
	adc  h                                           ; $73b6: $8c
	ei                                               ; $73b7: $fb
	cp   a                                           ; $73b8: $bf
	rst  $30                                         ; $73b9: $f7
	adc  a                                           ; $73ba: $8f
	rst  $38                                         ; $73bb: $ff
	inc  bc                                          ; $73bc: $03
	ld   a, a                                        ; $73bd: $7f
	ld   [hl], b                                     ; $73be: $70
	ld   a, a                                        ; $73bf: $7f
	ld   a, l                                        ; $73c0: $7d
	ld   a, [hl]                                     ; $73c1: $7e
	rra                                              ; $73c2: $1f
	add  c                                           ; $73c3: $81
	ccf                                              ; $73c4: $3f
	dec  b                                           ; $73c5: $05
	ld   h, b                                        ; $73c6: $60
	rst  $38                                         ; $73c7: $ff
	or   b                                           ; $73c8: $b0
	rst  $28                                         ; $73c9: $ef
	rst  $38                                         ; $73ca: $ff
	rst  JumpTable                                         ; $73cb: $df
	add  b                                           ; $73cc: $80
	rst  $38                                         ; $73cd: $ff
	ld   [bc], a                                     ; $73ce: $02
	ld   a, a                                        ; $73cf: $7f
	rst  $38                                         ; $73d0: $ff
	nop                                              ; $73d1: $00
	add  b                                           ; $73d2: $80
	rst  $38                                         ; $73d3: $ff
	nop                                              ; $73d4: $00
	add  b                                           ; $73d5: $80
	add  b                                           ; $73d6: $80
	ldh  [rSC], a                                    ; $73d7: $e0 $02
	ld   b, $f6                                      ; $73d9: $06 $f6
	ld   d, $80                                      ; $73db: $16 $80
	or   $00                                         ; $73dd: $f6 $00
	and  $80                                         ; $73df: $e6 $80
	db   $fc                                         ; $73e1: $fc
	ld   [bc], a                                     ; $73e2: $02
	ld   hl, sp-$01                                  ; $73e3: $f8 $ff
	rlca                                             ; $73e5: $07
	add  b                                           ; $73e6: $80
	ld   hl, sp-$7f                                  ; $73e7: $f8 $81
	nop                                              ; $73e9: $00
	nop                                              ; $73ea: $00
	inc  bc                                          ; $73eb: $03
	add  b                                           ; $73ec: $80
	inc  b                                           ; $73ed: $04
	add  b                                           ; $73ee: $80
	inc  c                                           ; $73ef: $0c
	ld   bc, $3034                                   ; $73f0: $01 $34 $30
	add  b                                           ; $73f3: $80
	ret  z                                           ; $73f4: $c8

	add  c                                           ; $73f5: $81
	ld   [rRAMG], sp                                 ; $73f6: $08 $00 $00
	add  c                                           ; $73f9: $81
	stop                                             ; $73fa: $10 $00
	ldh  [$9d], a                                    ; $73fc: $e0 $9d
	nop                                              ; $73fe: $00
	dec  b                                           ; $73ff: $05
	ld   [de], a                                     ; $7400: $12
	rra                                              ; $7401: $1f
	ld   a, [de]                                     ; $7402: $1a
	rra                                              ; $7403: $1f
	rlca                                             ; $7404: $07
	rrca                                             ; $7405: $0f
	add  b                                           ; $7406: $80
	inc  bc                                          ; $7407: $03
	add  a                                           ; $7408: $87
	nop                                              ; $7409: $00
	add  e                                           ; $740a: $83
	rst  $38                                         ; $740b: $ff
	rlca                                             ; $740c: $07
	ld   a, a                                        ; $740d: $7f
	rst  $38                                         ; $740e: $ff
	cp   a                                           ; $740f: $bf
	rst  $38                                         ; $7410: $ff
	rrca                                             ; $7411: $0f
	ccf                                              ; $7412: $3f
	nop                                              ; $7413: $00
	rrca                                             ; $7414: $0f
	add  b                                           ; $7415: $80
	nop                                              ; $7416: $00
	nop                                              ; $7417: $00
	rlca                                             ; $7418: $07
	add  b                                           ; $7419: $80
	ld   sp, hl                                      ; $741a: $f9
	nop                                              ; $741b: $00
	ei                                               ; $741c: $fb
	add  c                                           ; $741d: $81
	di                                               ; $741e: $f3
	ld   b, $f7                                      ; $741f: $06 $f7
	db   $f4                                         ; $7421: $f4
	db   $fc                                         ; $7422: $fc
	ret  nz                                          ; $7423: $c0

	ldh  a, [rP1]                                    ; $7424: $f0 $00
	ret  nz                                          ; $7426: $c0

	add  b                                           ; $7427: $80
	nop                                              ; $7428: $00
	nop                                              ; $7429: $00
	ldh  [$80], a                                    ; $742a: $e0 $80
	jr   nz, jr_089_7430                             ; $742c: $20 $02

	and  b                                           ; $742e: $a0
	add  b                                           ; $742f: $80

jr_089_7430:
	ret  nz                                          ; $7430: $c0

	adc  $00                                         ; $7431: $ce $00
	ld   [bc], a                                     ; $7433: $02
	ld   bc, $0200                                   ; $7434: $01 $00 $02
	add  b                                           ; $7437: $80
	ld   bc, $0280                                   ; $7438: $01 $80 $02
	ld   bc, $0300                                   ; $743b: $01 $00 $03
	adc  a                                           ; $743e: $8f
	nop                                              ; $743f: $00
	nop                                              ; $7440: $00
	ld   bc, $0081                                   ; $7441: $01 $81 $00
	ld   [bc], a                                     ; $7444: $02
	ld   [hl], d                                     ; $7445: $72
	ld   [de], a                                     ; $7446: $12
	sbc  d                                           ; $7447: $9a
	add  b                                           ; $7448: $80
	ld   a, e                                        ; $7449: $7b
	rlca                                             ; $744a: $07
	xor  e                                           ; $744b: $ab
	sub  c                                           ; $744c: $91
	add  c                                           ; $744d: $81
	ld   a, l                                        ; $744e: $7d
	dec  b                                           ; $744f: $05
	ld   b, [hl]                                     ; $7450: $46
	ld   l, [hl]                                     ; $7451: $6e
	db   $10                                         ; $7452: $10
	adc  e                                           ; $7453: $8b
	nop                                              ; $7454: $00
	ld   [bc], a                                     ; $7455: $02
	ld   a, b                                        ; $7456: $78

jr_089_7457:
	ld   h, b                                        ; $7457: $60
	add  sp, -$80                                    ; $7458: $e8 $80
	sub  b                                           ; $745a: $90
	ld   bc, $f0e0                                   ; $745b: $01 $e0 $f0
	add  b                                           ; $745e: $80
	add  b                                           ; $745f: $80

jr_089_7460:
	add  hl, bc                                      ; $7460: $09
	and  b                                           ; $7461: $a0
	add  b                                           ; $7462: $80
	ld   b, b                                        ; $7463: $40
	rlca                                             ; $7464: $07

jr_089_7465:
	add  h                                           ; $7465: $84
	jr   c, jr_089_746b                              ; $7466: $38 $03

	push bc                                          ; $7468: $c5
	db   $ed                                         ; $7469: $ed
	db   $10                                         ; $746a: $10

jr_089_746b:
	sbc  c                                           ; $746b: $99
	nop                                              ; $746c: $00
	inc  b                                           ; $746d: $04
	ret  nz                                          ; $746e: $c0

	add  b                                           ; $746f: $80
	and  b                                           ; $7470: $a0
	ld   b, b                                        ; $7471: $40
	and  b                                           ; $7472: $a0
	jp   nz, $1700                                   ; $7473: $c2 $00 $17

	inc  b                                           ; $7476: $04
	inc  a                                           ; $7477: $3c
	nop                                              ; $7478: $00
	ld   b, b                                        ; $7479: $40
	ld   [$00f0], sp                                 ; $747a: $08 $f0 $00
	cp   b                                           ; $747d: $b8
	jr   z, jr_089_74ac                              ; $747e: $28 $2c

	jr   jr_089_74db                                 ; $7480: $18 $59

	add  hl, hl                                      ; $7482: $29
	dec  l                                           ; $7483: $2d

Call_089_7484:
	jr   nz, jr_089_74b2                             ; $7484: $20 $2c

	ld   d, h                                        ; $7486: $54
	ld   c, h                                        ; $7487: $4c
	ld   c, c                                        ; $7488: $49
	ld   l, b                                        ; $7489: $68
	ld   b, b                                        ; $748a: $40
	inc  b                                           ; $748b: $04
	inc  bc                                          ; $748c: $03
	dec  bc                                          ; $748d: $0b
	add  b                                           ; $748e: $80
	rlca                                             ; $748f: $07
	dec  bc                                          ; $7490: $0b
	nop                                              ; $7491: $00
	ld   a, [hl]                                     ; $7492: $7e
	jr   @-$66                                       ; $7493: $18 $98

	db   $f4                                         ; $7495: $f4
	rst  $30                                         ; $7496: $f7
	dec  [hl]                                        ; $7497: $35
	inc  sp                                          ; $7498: $33
	db   $d3                                         ; $7499: $d3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $749a: $cf
	ld   h, [hl]                                     ; $749b: $66
	or   [hl]                                        ; $749c: $b6
	add  b                                           ; $749d: $80
	ld   [hl-], a                                    ; $749e: $32
	rlca                                             ; $749f: $07
	and  d                                           ; $74a0: $a2
	or   e                                           ; $74a1: $b3
	nop                                              ; $74a2: $00
	ldh  [c], a                                      ; $74a3: $e2
	add  c                                           ; $74a4: $81
	and  l                                           ; $74a5: $a5
	jp   $80d3                                       ; $74a6: $c3 $d3 $80


	ld   b, d                                        ; $74a9: $42
	add  b                                           ; $74aa: $80
	and  [hl]                                        ; $74ab: $a6

jr_089_74ac:
	rlca                                             ; $74ac: $07
	ld   [hl], $b6                                   ; $74ad: $36 $b6
	ld   h, [hl]                                     ; $74af: $66
	ld   h, $a6                                      ; $74b0: $26 $a6

jr_089_74b2:
	or   [hl]                                        ; $74b2: $b6
	rrca                                             ; $74b3: $0f
	pop  de                                          ; $74b4: $d1
	add  b                                           ; $74b5: $80
	jr   nc, jr_089_74c5                             ; $74b6: $30 $0d

	ld   e, [hl]                                     ; $74b8: $5e
	sbc  $54                                         ; $74b9: $de $54
	sub  h                                           ; $74bb: $94
	sub  [hl]                                        ; $74bc: $96
	dec  hl                                          ; $74bd: $2b
	nop                                              ; $74be: $00
	rlca                                             ; $74bf: $07
	ld   h, h                                        ; $74c0: $64
	ld   h, a                                        ; $74c1: $67
	ld   b, a                                        ; $74c2: $47
	ld   a, d                                        ; $74c3: $7a
	adc  d                                           ; $74c4: $8a

jr_089_74c5:
	call $3181                                       ; $74c5: $cd $81 $31
	db   $10                                         ; $74c8: $10
	or   l                                           ; $74c9: $b5
	ld   d, b                                        ; $74ca: $50
	ld   c, l                                        ; $74cb: $4d
	ld   b, b                                        ; $74cc: $40
	ld   a, b                                        ; $74cd: $78
	ld   d, b                                        ; $74ce: $50
	sub  b                                           ; $74cf: $90
	db   $10                                         ; $74d0: $10
	inc  d                                           ; $74d1: $14
	ret  nz                                          ; $74d2: $c0

	ret  z                                           ; $74d3: $c8

	ret  nz                                          ; $74d4: $c0

	jr   nc, jr_089_7457                             ; $74d5: $30 $80

	nop                                              ; $74d7: $00
	ld   b, b                                        ; $74d8: $40
	jr   nz, jr_089_7460                             ; $74d9: $20 $85

jr_089_74db:
	nop                                              ; $74db: $00
	add  b                                           ; $74dc: $80
	add  b                                           ; $74dd: $80
	inc  b                                           ; $74de: $04
	ld   h, b                                        ; $74df: $60
	nop                                              ; $74e0: $00
	or   b                                           ; $74e1: $b0
	nop                                              ; $74e2: $00
	jr   z, jr_089_7465                              ; $74e3: $28 $80

	ldh  [$03], a                                    ; $74e5: $e0 $03
	ld   d, b                                        ; $74e7: $50
	ld   c, b                                        ; $74e8: $48
	ld   b, b                                        ; $74e9: $40
	and  b                                           ; $74ea: $a0
	add  b                                           ; $74eb: $80
	db   $10                                         ; $74ec: $10
	add  b                                           ; $74ed: $80
	ld   b, b                                        ; $74ee: $40
	rst  $38                                         ; $74ef: $ff
	nop                                              ; $74f0: $00
	rst  $38                                         ; $74f1: $ff
	nop                                              ; $74f2: $00
	rst  $38                                         ; $74f3: $ff
	nop                                              ; $74f4: $00
	rst  $38                                         ; $74f5: $ff
	nop                                              ; $74f6: $00
	rst  $38                                         ; $74f7: $ff
	nop                                              ; $74f8: $00
	rst  $38                                         ; $74f9: $ff

Jump_089_74fa:
	nop                                              ; $74fa: $00
	db   $db                                         ; $74fb: $db
	nop                                              ; $74fc: $00
	or   d                                           ; $74fd: $b2
	nop                                              ; $74fe: $00
	sub  d                                           ; $74ff: $92
	nop                                              ; $7500: $00
	add  b                                           ; $7501: $80
	rlca                                             ; $7502: $07
	rlca                                             ; $7503: $07
	ld   [$170f], sp                                 ; $7504: $08 $0f $17
	rra                                              ; $7507: $1f
	dec  de                                          ; $7508: $1b
	rra                                              ; $7509: $1f
	jr   @+$21                                       ; $750a: $18 $1f

	add  b                                           ; $750c: $80
	inc  e                                           ; $750d: $1c
	ld   bc, $000c                                   ; $750e: $01 $0c $00
	add  b                                           ; $7511: $80
	rst  $38                                         ; $7512: $ff
	nop                                              ; $7513: $00
	nop                                              ; $7514: $00
	add  b                                           ; $7515: $80
	di                                               ; $7516: $f3
	add  b                                           ; $7517: $80
	rst  $20                                         ; $7518: $e7
	add  b                                           ; $7519: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $751a: $cf
	add  b                                           ; $751b: $80
	sbc  a                                           ; $751c: $9f
	ld   [bc], a                                     ; $751d: $02
	ccf                                              ; $751e: $3f
	ld   b, b                                        ; $751f: $40
	ld   a, a                                        ; $7520: $7f
	add  b                                           ; $7521: $80
	nop                                              ; $7522: $00
	add  b                                           ; $7523: $80
	rst  $38                                         ; $7524: $ff
	nop                                              ; $7525: $00
	nop                                              ; $7526: $00
	add  a                                           ; $7527: $87
	rst  $38                                         ; $7528: $ff
	ld   bc, $ff00                                   ; $7529: $01 $00 $ff
	add  d                                           ; $752c: $82
	nop                                              ; $752d: $00
	add  b                                           ; $752e: $80
	ldh  [rTMA], a                                   ; $752f: $e0 $06
	db   $10                                         ; $7531: $10
	ldh  a, [$f8]                                    ; $7532: $f0 $f8
	add  sp, -$38                                    ; $7534: $e8 $c8
	add  sp, $28                                     ; $7536: $e8 $28
	add  b                                           ; $7538: $80
	ret  z                                           ; $7539: $c8

	ld   bc, $f008                                   ; $753a: $01 $08 $f0
	sbc  l                                           ; $753d: $9d
	nop                                              ; $753e: $00
	inc  b                                           ; $753f: $04
	db   $10                                         ; $7540: $10
	ld   e, $06                                      ; $7541: $1e $06
	rrca                                             ; $7543: $0f
	jr   @-$7e                                       ; $7544: $18 $80

	rla                                              ; $7546: $17
	inc  b                                           ; $7547: $04
	db   $10                                         ; $7548: $10
	jr   jr_089_755b                                 ; $7549: $18 $10

	rrca                                             ; $754b: $0f
	ld   [$0e80], sp                                 ; $754c: $08 $80 $0e
	ld   [bc], a                                     ; $754f: $02
	rra                                              ; $7550: $1f
	db   $10                                         ; $7551: $10
	rrca                                             ; $7552: $0f
	add  b                                           ; $7553: $80
	inc  bc                                          ; $7554: $03
	add  c                                           ; $7555: $81
	ld   a, a                                        ; $7556: $7f
	nop                                              ; $7557: $00
	add  b                                           ; $7558: $80
	add  b                                           ; $7559: $80
	rst  $38                                         ; $755a: $ff

jr_089_755b:
	add  c                                           ; $755b: $81
	nop                                              ; $755c: $00
	dec  b                                           ; $755d: $05
	ld   hl, sp+$00                                  ; $755e: $f8 $00
	ld   hl, sp-$01                                  ; $7560: $f8 $ff
	rlca                                             ; $7562: $07
	ld   hl, sp-$7e                                  ; $7563: $f8 $82
	cp   $04                                         ; $7565: $fe $04
	nop                                              ; $7567: $00
	rst  $38                                         ; $7568: $ff
	add  b                                           ; $7569: $80
	nop                                              ; $756a: $00
	ld   a, a                                        ; $756b: $7f
	add  d                                           ; $756c: $82
	nop                                              ; $756d: $00
	nop                                              ; $756e: $00
	rrca                                             ; $756f: $0f
	add  b                                           ; $7570: $80
	ld   [$0003], sp                                 ; $7571: $08 $03 $00
	db   $10                                         ; $7574: $10
	ld   [$80e8], sp                                 ; $7575: $08 $e8 $80
	ld   [$8801], sp                                 ; $7578: $08 $01 $88
	ld   [$1080], sp                                 ; $757b: $08 $80 $10
	add  b                                           ; $757e: $80
	jr   nc, jr_089_7582                             ; $757f: $30 $01

	ld   c, b                                        ; $7581: $48

jr_089_7582:
	ret  z                                           ; $7582: $c8

	sbc  [hl]                                        ; $7583: $9e
	nop                                              ; $7584: $00
	db   $10                                         ; $7585: $10
	ccf                                              ; $7586: $3f
	inc  l                                           ; $7587: $2c
	ld   l, h                                        ; $7588: $6c
	ld   b, e                                        ; $7589: $43
	and  e                                           ; $758a: $a3
	add  b                                           ; $758b: $80
	ld   hl, sp-$80                                  ; $758c: $f8 $80
	sbc  [hl]                                        ; $758e: $9e
	add  b                                           ; $758f: $80
	add  a                                           ; $7590: $87
	ldh  [$80], a                                    ; $7591: $e0 $80
	sbc  b                                           ; $7593: $98
	add  b                                           ; $7594: $80
	add  [hl]                                        ; $7595: $86
	rst  $38                                         ; $7596: $ff
	add  b                                           ; $7597: $80
	nop                                              ; $7598: $00
	add  b                                           ; $7599: $80
	ld   a, a                                        ; $759a: $7f
	add  e                                           ; $759b: $83
	nop                                              ; $759c: $00
	ld   [bc], a                                     ; $759d: $02
	rst  $38                                         ; $759e: $ff
	nop                                              ; $759f: $00
	rst  $38                                         ; $75a0: $ff
	add  c                                           ; $75a1: $81
	nop                                              ; $75a2: $00
	inc  b                                           ; $75a3: $04
	rlca                                             ; $75a4: $07
	nop                                              ; $75a5: $00
	ld   b, $e0                                      ; $75a6: $06 $e0
	pop  hl                                          ; $75a8: $e1
	add  e                                           ; $75a9: $83
	nop                                              ; $75aa: $00
	ld   [bc], a                                     ; $75ab: $02
	rst  $38                                         ; $75ac: $ff
	nop                                              ; $75ad: $00
	cp   $81                                         ; $75ae: $fe $81
	nop                                              ; $75b0: $00
	ld   bc, $34ca                                   ; $75b1: $01 $ca $34
	add  b                                           ; $75b4: $80
	jp   nz, $8d07                                   ; $75b5: $c2 $07 $8d

	ld   bc, $015d                                   ; $75b8: $01 $5d $01
	pop  af                                          ; $75bb: $f1
	ld   bc, $07c7                                   ; $75bc: $01 $c7 $07
	add  b                                           ; $75bf: $80
	add  hl, de                                      ; $75c0: $19
	ld   bc, $e101                                   ; $75c1: $01 $01 $e1
	sbc  [hl]                                        ; $75c4: $9e
	nop                                              ; $75c5: $00
	adc  [hl]                                        ; $75c6: $8e
	add  c                                           ; $75c7: $81
	add  b                                           ; $75c8: $80
	rst  $38                                         ; $75c9: $ff
	add  b                                           ; $75ca: $80
	nop                                              ; $75cb: $00
	add  b                                           ; $75cc: $80
	ld   a, a                                        ; $75cd: $7f
	add  d                                           ; $75ce: $82
	ld   b, b                                        ; $75cf: $40
	add  d                                           ; $75d0: $82
	ld   d, b                                        ; $75d1: $50
	add  b                                           ; $75d2: $80
	ld   e, l                                        ; $75d3: $5d
	add  b                                           ; $75d4: $80
	rst  $38                                         ; $75d5: $ff
	add  b                                           ; $75d6: $80
	nop                                              ; $75d7: $00
	add  b                                           ; $75d8: $80
	cp   $84                                         ; $75d9: $fe $84
	ld   [bc], a                                     ; $75db: $02
	add  b                                           ; $75dc: $80
	ld   d, d                                        ; $75dd: $52
	add  b                                           ; $75de: $80
	ldh  a, [c]                                      ; $75df: $f2
	adc  [hl]                                        ; $75e0: $8e
	add  c                                           ; $75e1: $81
	sbc  [hl]                                        ; $75e2: $9e
	nop                                              ; $75e3: $00
	adc  h                                           ; $75e4: $8c
	add  c                                           ; $75e5: $81
	add  b                                           ; $75e6: $80
	pop  hl                                          ; $75e7: $e1
	add  b                                           ; $75e8: $80
	ld   d, h                                        ; $75e9: $54
	add  d                                           ; $75ea: $82
	ld   b, b                                        ; $75eb: $40
	add  b                                           ; $75ec: $80
	ld   c, [hl]                                     ; $75ed: $4e
	add  b                                           ; $75ee: $80
	ld   b, b                                        ; $75ef: $40
	add  b                                           ; $75f0: $80
	ld   c, d                                        ; $75f1: $4a
	add  d                                           ; $75f2: $82
	ld   b, b                                        ; $75f3: $40
	add  b                                           ; $75f4: $80
	sub  d                                           ; $75f5: $92
	add  b                                           ; $75f6: $80
	ld   [hl-], a                                    ; $75f7: $32
	add  b                                           ; $75f8: $80
	ld   [bc], a                                     ; $75f9: $02
	add  b                                           ; $75fa: $80
	jp   nc, $0280                                   ; $75fb: $d2 $80 $02

	add  b                                           ; $75fe: $80
	or   d                                           ; $75ff: $b2
	add  d                                           ; $7600: $82
	ld   [bc], a                                     ; $7601: $02
	adc  h                                           ; $7602: $8c
	add  c                                           ; $7603: $81
	add  b                                           ; $7604: $80
	add  a                                           ; $7605: $87
	sbc  [hl]                                        ; $7606: $9e
	nop                                              ; $7607: $00
	ld   [bc], a                                     ; $7608: $02
	ld   sp, hl                                      ; $7609: $f9
	sbc  c                                           ; $760a: $99
	sbc  a                                           ; $760b: $9f
	add  b                                           ; $760c: $80
	add  a                                           ; $760d: $87
	ld   b, $81                                      ; $760e: $06 $81
	nop                                              ; $7610: $00
	ld   h, b                                        ; $7611: $60
	nop                                              ; $7612: $00
	jr   jr_089_7615                                 ; $7613: $18 $00

jr_089_7615:
	ld   b, $80                                      ; $7615: $06 $80
	ld   bc, $0080                                   ; $7617: $01 $80 $00
	add  b                                           ; $761a: $80
	ld   a, a                                        ; $761b: $7f
	add  b                                           ; $761c: $80
	nop                                              ; $761d: $00
	add  c                                           ; $761e: $81
	rst  $38                                         ; $761f: $ff
	add  h                                           ; $7620: $84

jr_089_7621:
	nop                                              ; $7621: $00
	nop                                              ; $7622: $00
	rst  $38                                         ; $7623: $ff
	add  b                                           ; $7624: $80
	nop                                              ; $7625: $00
	add  b                                           ; $7626: $80
	cp   $80                                         ; $7627: $fe $80
	nop                                              ; $7629: $00
	add  c                                           ; $762a: $81
	rst  $38                                         ; $762b: $ff
	add  h                                           ; $762c: $84
	nop                                              ; $762d: $00
	nop                                              ; $762e: $00
	rst  $38                                         ; $762f: $ff
	add  b                                           ; $7630: $80
	nop                                              ; $7631: $00
	add  b                                           ; $7632: $80
	sbc  c                                           ; $7633: $99
	add  c                                           ; $7634: $81
	pop  hl                                          ; $7635: $e1
	nop                                              ; $7636: $00
	add  c                                           ; $7637: $81
	add  b                                           ; $7638: $80
	ld   b, $80                                      ; $7639: $06 $80
	jr   jr_089_763e                                 ; $763b: $18 $01

	nop                                              ; $763d: $00

jr_089_763e:
	ld   h, b                                        ; $763e: $60
	add  b                                           ; $763f: $80
	add  b                                           ; $7640: $80
	rst  $38                                         ; $7641: $ff
	nop                                              ; $7642: $00
	add  a                                           ; $7643: $87
	nop                                              ; $7644: $00
	add  b                                           ; $7645: $80
	ld   a, a                                        ; $7646: $7f
	sbc  b                                           ; $7647: $98
	nop                                              ; $7648: $00
	add  b                                           ; $7649: $80
	db   $10                                         ; $764a: $10
	add  b                                           ; $764b: $80
	ldh  a, [$80]                                    ; $764c: $f0 $80
	ld   [hl], b                                     ; $764e: $70
	add  b                                           ; $764f: $80
	ld   h, b                                        ; $7650: $60
	add  b                                           ; $7651: $80
	ld   b, b                                        ; $7652: $40
	add  b                                           ; $7653: $80
	jr   nc, jr_089_7621                             ; $7654: $30 $cb

	nop                                              ; $7656: $00
	inc  de                                          ; $7657: $13
	ld   b, b                                        ; $7658: $40
	ld   c, b                                        ; $7659: $48
	ld   b, b                                        ; $765a: $40
	jr   nz, jr_089_7661                             ; $765b: $20 $04

	ld   [hl], h                                     ; $765d: $74
	ld   h, h                                        ; $765e: $64
	ld   [hl], d                                     ; $765f: $72
	ld   d, b                                        ; $7660: $50

jr_089_7661:
	ld   d, [hl]                                     ; $7661: $56
	ld   b, [hl]                                     ; $7662: $46
	ld   h, $04                                      ; $7663: $26 $04
	ld   [hl], h                                     ; $7665: $74
	ld   h, h                                        ; $7666: $64
	ld   [hl], d                                     ; $7667: $72
	ld   d, b                                        ; $7668: $50
	ld   d, [hl]                                     ; $7669: $56
	ld   b, [hl]                                     ; $766a: $46
	ld   c, [hl]                                     ; $766b: $4e
	adc  a                                           ; $766c: $8f
	nop                                              ; $766d: $00
	ld   [bc], a                                     ; $766e: $02
	adc  b                                           ; $766f: $88
	ld   b, h                                        ; $7670: $44
	ld   c, h                                        ; $7671: $4c
	add  b                                           ; $7672: $80
	nop                                              ; $7673: $00
	add  d                                           ; $7674: $82
	ccf                                              ; $7675: $3f
	add  d                                           ; $7676: $82
	cpl                                              ; $7677: $2f
	ld   [bc], a                                     ; $7678: $02
	ld   [hl+], a                                    ; $7679: $22
	and  l                                           ; $767a: $a5
	rlca                                             ; $767b: $07
	add  b                                           ; $767c: $80
	ld   bc, $008c                                   ; $767d: $01 $8c $00
	dec  b                                           ; $7680: $05
	adc  b                                           ; $7681: $88
	ld   b, h                                        ; $7682: $44
	call z, Boot                                     ; $7683: $cc $00 $01
	db   $fc                                         ; $7686: $fc
	add  c                                           ; $7687: $81
	db   $fd                                         ; $7688: $fd
	add  b                                           ; $7689: $80
	db   $fc                                         ; $768a: $fc
	inc  b                                           ; $768b: $04
	xor  h                                           ; $768c: $ac
	xor  l                                           ; $768d: $ad
	inc  c                                           ; $768e: $0c
	push bc                                          ; $768f: $c5
	ret  z                                           ; $7690: $c8

	add  b                                           ; $7691: $80
	inc  a                                           ; $7692: $3c
	add  b                                           ; $7693: $80
	ld   [hl], d                                     ; $7694: $72
	add  b                                           ; $7695: $80
	ld   c, $80                                      ; $7696: $0e $80
	ld   e, $80                                      ; $7698: $1e $80
	jr   @+$16                                       ; $769a: $18 $14

	ld   [bc], a                                     ; $769c: $02
	ld   b, $0e                                      ; $769d: $06 $0e
	ld   b, $42                                      ; $769f: $06 $42
	nop                                              ; $76a1: $00
	ld   d, $06                                      ; $76a2: $16 $06
	inc  [hl]                                        ; $76a4: $34
	ld   d, $36                                      ; $76a5: $16 $36
	ld   h, $22                                      ; $76a7: $26 $22
	nop                                              ; $76a9: $00
	ld   d, $06                                      ; $76aa: $16 $06
	inc  [hl]                                        ; $76ac: $34
	ld   d, $36                                      ; $76ad: $16 $36

jr_089_76af:
	ld   h, $6c                                      ; $76af: $26 $6c
	cp   l                                           ; $76b1: $bd
	nop                                              ; $76b2: $00
	db   $10                                         ; $76b3: $10
	ld   l, b                                        ; $76b4: $68
	inc  b                                           ; $76b5: $04
	ld   [hl], h                                     ; $76b6: $74
	ld   h, h                                        ; $76b7: $64
	ld   [hl], d                                     ; $76b8: $72

jr_089_76b9:
	ld   d, b                                        ; $76b9: $50
	ld   d, [hl]                                     ; $76ba: $56
	ld   b, [hl]                                     ; $76bb: $46
	ld   h, $04                                      ; $76bc: $26 $04
	ld   [hl], h                                     ; $76be: $74
	ld   h, h                                        ; $76bf: $64
	ld   [hl], d                                     ; $76c0: $72
	ld   d, b                                        ; $76c1: $50
	ld   d, [hl]                                     ; $76c2: $56
	ld   b, $0e                                      ; $76c3: $06 $0e
	add  b                                           ; $76c5: $80
	inc  b                                           ; $76c6: $04
	adc  e                                           ; $76c7: $8b
	nop                                              ; $76c8: $00
	nop                                              ; $76c9: $00
	add  b                                           ; $76ca: $80
	add  b                                           ; $76cb: $80
	dec  hl                                          ; $76cc: $2b
	add  d                                           ; $76cd: $82
	ccf                                              ; $76ce: $3f
	add  b                                           ; $76cf: $80
	ld   sp, $3f80                                   ; $76d0: $31 $80 $3f
	add  b                                           ; $76d3: $80
	dec  [hl]                                        ; $76d4: $35
	add  d                                           ; $76d5: $82
	ccf                                              ; $76d6: $3f
	inc  bc                                          ; $76d7: $03
	nop                                              ; $76d8: $00
	ld   [$cc44], sp                                 ; $76d9: $08 $44 $cc
	adc  d                                           ; $76dc: $8a
	nop                                              ; $76dd: $00
	add  b                                           ; $76de: $80
	ld   l, l                                        ; $76df: $6d
	add  b                                           ; $76e0: $80
	call z, $fc03                                    ; $76e1: $cc $03 $fc
	db   $fd                                         ; $76e4: $fd
	inc  l                                           ; $76e5: $2c
	dec  l                                           ; $76e6: $2d
	add  b                                           ; $76e7: $80
	db   $fd                                         ; $76e8: $fd
	add  b                                           ; $76e9: $80
	ld   c, h                                        ; $76ea: $4c
	rlca                                             ; $76eb: $07
	db   $fc                                         ; $76ec: $fc
	db   $fd                                         ; $76ed: $fd
	db   $fc                                         ; $76ee: $fc
	db   $fd                                         ; $76ef: $fd
	ld   bc, $4489                                   ; $76f0: $01 $89 $44
	call z, $0089                                    ; $76f3: $cc $89 $00
	ld   [de], a                                     ; $76f6: $12
	ld   c, [hl]                                     ; $76f7: $4e
	nop                                              ; $76f8: $00
	ld   d, $06                                      ; $76f9: $16 $06
	inc  [hl]                                        ; $76fb: $34
	ld   d, $36                                      ; $76fc: $16 $36
	ld   h, $22                                      ; $76fe: $26 $22
	nop                                              ; $7700: $00
	ld   d, $06                                      ; $7701: $16 $06
	inc  [hl]                                        ; $7703: $34
	ld   d, $34                                      ; $7704: $16 $34
	jr   nz, jr_089_7736                             ; $7706: $20 $2e

	ld   b, $5e                                      ; $7708: $06 $5e
	add  c                                           ; $770a: $81
	ld   e, $80                                      ; $770b: $1e $80
	jr   @+$01                                       ; $770d: $18 $ff

	nop                                              ; $770f: $00
	rst  $38                                         ; $7710: $ff
	nop                                              ; $7711: $00
	rst  $38                                         ; $7712: $ff
	nop                                              ; $7713: $00
	rst  $38                                         ; $7714: $ff
	nop                                              ; $7715: $00
	rst  $38                                         ; $7716: $ff
	nop                                              ; $7717: $00
	and  c                                           ; $7718: $a1
	nop                                              ; $7719: $00
	or   a                                           ; $771a: $b7
	nop                                              ; $771b: $00
	sbc  h                                           ; $771c: $9c
	nop                                              ; $771d: $00
	add  b                                           ; $771e: $80
	rra                                              ; $771f: $1f
	adc  h                                           ; $7720: $8c
	nop                                              ; $7721: $00
	add  b                                           ; $7722: $80
	ldh  a, [$bc]                                    ; $7723: $f0 $bc
	nop                                              ; $7725: $00
	add  b                                           ; $7726: $80
	ld   bc, $1080                                   ; $7727: $01 $80 $10
	add  b                                           ; $772a: $80
	daa                                              ; $772b: $27
	add  b                                           ; $772c: $80
	jr   z, jr_089_76af                              ; $772d: $28 $80

	ld   c, b                                        ; $772f: $48
	add  b                                           ; $7730: $80
	ld   d, b                                        ; $7731: $50
	add  b                                           ; $7732: $80
	sub  b                                           ; $7733: $90
	add  b                                           ; $7734: $80
	and  b                                           ; $7735: $a0

jr_089_7736:
	add  b                                           ; $7736: $80
	jr   nz, jr_089_76b9                             ; $7737: $20 $80

	ld   c, $80                                      ; $7739: $0e $80
	pop  bc                                          ; $773b: $c1
	add  b                                           ; $773c: $80
	jr   c, @+$0d                                    ; $773d: $38 $0b

	ld   h, [hl]                                     ; $773f: $66
	ld   b, $6f                                      ; $7740: $06 $6f
	ld   bc, $00c0                                   ; $7742: $01 $c0 $00
	ret  nz                                          ; $7745: $c0

jr_089_7746:
	nop                                              ; $7746: $00
	ld   l, a                                        ; $7747: $6f
	ld   bc, $0060                                   ; $7748: $01 $60 $00
	add  b                                           ; $774b: $80
	add  b                                           ; $774c: $80
	add  b                                           ; $774d: $80
	ld   b, b                                        ; $774e: $40
	inc  bc                                          ; $774f: $03
	jr   nz, @+$62                                   ; $7750: $20 $60

	ld   e, a                                        ; $7752: $5f
	ld   a, a                                        ; $7753: $7f
	add  b                                           ; $7754: $80
	ld   hl, sp+$04                                  ; $7755: $f8 $04
	rst  ToBoot                                         ; $7757: $c7
	rst  $38                                         ; $7758: $ff
	ld   [hl], b                                     ; $7759: $70
	ld   hl, sp-$30                                  ; $775a: $f8 $d0
	add  l                                           ; $775c: $85
	nop                                              ; $775d: $00
	add  b                                           ; $775e: $80
	ret  nz                                          ; $775f: $c0

jr_089_7760:
	add  b                                           ; $7760: $80
	inc  a                                           ; $7761: $3c
	add  b                                           ; $7762: $80
	add  e                                           ; $7763: $83
	add  b                                           ; $7764: $80
	ld   a, b                                        ; $7765: $78
	adc  d                                           ; $7766: $8a
	nop                                              ; $7767: $00
	add  b                                           ; $7768: $80
	add  b                                           ; $7769: $80
	add  b                                           ; $776a: $80
	ld   h, b                                        ; $776b: $60
	add  b                                           ; $776c: $80
	ld   bc, $0282                                   ; $776d: $01 $82 $02
	add  d                                           ; $7770: $82
	inc  b                                           ; $7771: $04
	add  d                                           ; $7772: $82
	ld   [$1080], sp                                 ; $7773: $08 $80 $10
	add  d                                           ; $7776: $82
	ld   b, b                                        ; $7777: $40
	add  b                                           ; $7778: $80
	ldh  [$80], a                                    ; $7779: $e0 $80
	inc  e                                           ; $777b: $1c
	add  b                                           ; $777c: $80
	inc  bc                                          ; $777d: $03
	add  h                                           ; $777e: $84
	nop                                              ; $777f: $00
	dec  de                                          ; $7780: $1b
	dec  bc                                          ; $7781: $0b
	ld   bc, $0300                                   ; $7782: $01 $00 $03
	dec  bc                                          ; $7785: $0b
	inc  bc                                          ; $7786: $03
	dec  b                                           ; $7787: $05
	rlca                                             ; $7788: $07
	add  $c7                                         ; $7789: $c6 $c7
	dec  sp                                          ; $778b: $3b
	ccf                                              ; $778c: $3f
	inc  d                                           ; $778d: $14
	rla                                              ; $778e: $17
	rlca                                             ; $778f: $07
	rrca                                             ; $7790: $0f
	ld   b, l                                        ; $7791: $45
	ld   hl, sp-$20                                  ; $7792: $f8 $e0
	ldh  a, [$30]                                    ; $7794: $f0 $30
	ldh  a, [$c0]                                    ; $7796: $f0 $c0
	ldh  [$61], a                                    ; $7798: $e0 $61
	and  $86                                         ; $779a: $e6 $86
	add  $80                                         ; $779c: $c6 $80
	ret  nz                                          ; $779e: $c0

	ld   [$f87f], sp                                 ; $779f: $08 $7f $f8
	cp   a                                           ; $77a2: $bf
	rlca                                             ; $77a3: $07
	add  d                                           ; $77a4: $82
	nop                                              ; $77a5: $00
	ld   [hl], d                                     ; $77a6: $72
	nop                                              ; $77a7: $00
	ld   c, b                                        ; $77a8: $48
	add  c                                           ; $77a9: $81
	nop                                              ; $77aa: $00
	nop                                              ; $77ab: $00
	db   $10                                         ; $77ac: $10
	add  c                                           ; $77ad: $81
	ld   h, b                                        ; $77ae: $60
	add  b                                           ; $77af: $80
	ld   bc, $6001                                   ; $77b0: $01 $01 $60
	db   $10                                         ; $77b3: $10
	add  b                                           ; $77b4: $80
	ret  z                                           ; $77b5: $c8

	add  b                                           ; $77b6: $80
	inc  h                                           ; $77b7: $24
	add  d                                           ; $77b8: $82
	ld   c, h                                        ; $77b9: $4c
	nop                                              ; $77ba: $00
	sub  [hl]                                        ; $77bb: $96
	add  c                                           ; $77bc: $81
	sbc  [hl]                                        ; $77bd: $9e
	inc  bc                                          ; $77be: $03
	ld   h, $3a                                      ; $77bf: $26 $3a
	inc  b                                           ; $77c1: $04
	db   $10                                         ; $77c2: $10
	add  d                                           ; $77c3: $82
	jr   nz, jr_089_7746                             ; $77c4: $20 $80

	ld   a, h                                        ; $77c6: $7c
	inc  b                                           ; $77c7: $04
	inc  hl                                          ; $77c8: $23
	ccf                                              ; $77c9: $3f
	ld   h, h                                        ; $77ca: $64
	ld   a, a                                        ; $77cb: $7f
	ld   a, b                                        ; $77cc: $78
	add  b                                           ; $77cd: $80
	ld   b, a                                        ; $77ce: $47
	ld   bc, $0778                                   ; $77cf: $01 $78 $07
	add  h                                           ; $77d2: $84
	nop                                              ; $77d3: $00
	add  hl, bc                                      ; $77d4: $09
	inc  bc                                          ; $77d5: $03
	jp   $08f8                                       ; $77d6: $c3 $f8 $08


	cp   $42                                         ; $77d9: $fe $42
	rst  $38                                         ; $77db: $ff
	sub  b                                           ; $77dc: $90
	rst  $38                                         ; $77dd: $ff
	jr   jr_089_7760                                 ; $77de: $18 $80

	rra                                              ; $77e0: $1f
	ld   bc, $333f                                   ; $77e1: $01 $3f $33
	add  b                                           ; $77e4: $80
	ld   a, a                                        ; $77e5: $7f
	ld   bc, $a6be                                   ; $77e6: $01 $be $a6
	add  b                                           ; $77e9: $80
	cp   $01                                         ; $77ea: $fe $01
	db   $fc                                         ; $77ec: $fc
	call z, $fc80                                    ; $77ed: $cc $80 $fc
	inc  bc                                          ; $77f0: $03
	ld   hl, sp-$21                                  ; $77f1: $f8 $df
	add  a                                           ; $77f3: $87
	add  b                                           ; $77f4: $80
	adc  e                                           ; $77f5: $8b
	nop                                              ; $77f6: $00
	add  b                                           ; $77f7: $80
	ld   bc, $e280                                   ; $77f8: $01 $80 $e2
	add  b                                           ; $77fb: $80
	ld   a, [de]                                     ; $77fc: $1a
	add  b                                           ; $77fd: $80
	inc  b                                           ; $77fe: $04
	add  b                                           ; $77ff: $80
	nop                                              ; $7800: $00
	add  d                                           ; $7801: $82
	ld   bc, $0204                                   ; $7802: $01 $04 $02
	inc  bc                                          ; $7805: $03
	cpl                                              ; $7806: $2f
	ld   a, [hl-]                                    ; $7807: $3a
	ld   c, b                                        ; $7808: $48
	add  c                                           ; $7809: $81
	ld   [hl], h                                     ; $780a: $74
	nop                                              ; $780b: $00
	sub  b                                           ; $780c: $90
	add  c                                           ; $780d: $81
	add  sp, $00                                     ; $780e: $e8 $00
	jr   nz, @-$7d                                   ; $7810: $20 $81

	ret  nc                                          ; $7812: $d0

	inc  bc                                          ; $7813: $03
	ld   b, b                                        ; $7814: $40
	and  b                                           ; $7815: $a0
	ld   b, a                                        ; $7816: $47
	rlca                                             ; $7817: $07
	adc  h                                           ; $7818: $8c
	nop                                              ; $7819: $00
	dec  b                                           ; $781a: $05
	db   $fc                                         ; $781b: $fc
	sbc  a                                           ; $781c: $9f
	inc  e                                           ; $781d: $1c
	ld   [hl], e                                     ; $781e: $73
	inc  bc                                          ; $781f: $03
	rrca                                             ; $7820: $0f
	add  b                                           ; $7821: $80
	ld   bc, $0086                                   ; $7822: $01 $86 $00
	dec  bc                                          ; $7825: $0b
	sbc  $fe                                         ; $7826: $de $fe
	ld   d, c                                        ; $7828: $51
	rst  $38                                         ; $7829: $ff
	ldh  a, [rIE]                                    ; $782a: $f0 $ff

jr_089_782c:
	ld   a, [hl]                                     ; $782c: $7e
	pop  af                                          ; $782d: $f1
	ld   de, $001e                                   ; $782e: $11 $1e $00
	ld   bc, $0084                                   ; $7831: $01 $84 $00
	add  b                                           ; $7834: $80
	ldh  [$0e], a                                    ; $7835: $e0 $0e
	ld   e, $fe                                      ; $7837: $1e $fe
	ld   hl, $c2ff                                   ; $7839: $21 $ff $c2
	ccf                                              ; $783c: $3f
	inc  a                                           ; $783d: $3c
	db   $e3                                         ; $783e: $e3
	inc  bc                                          ; $783f: $03
	inc  e                                           ; $7840: $1c
	nop                                              ; $7841: $00
	inc  bc                                          ; $7842: $03
	ld   [bc], a                                     ; $7843: $02
	inc  bc                                          ; $7844: $03
	inc  b                                           ; $7845: $04
	add  c                                           ; $7846: $81
	rlca                                             ; $7847: $07
	inc  c                                           ; $7848: $0c
	ret                                              ; $7849: $c9


	adc  $2e                                         ; $784a: $ce $2e

jr_089_784c:
	xor  $52                                         ; $784c: $ee $52
	db   $fd                                         ; $784e: $fd
	sbc  l                                           ; $784f: $9d
	ld   a, l                                        ; $7850: $7d
	ld   [hl], h                                     ; $7851: $74
	adc  d                                           ; $7852: $8a
	sub  h                                           ; $7853: $94
	and  b                                           ; $7854: $a0
	add  b                                           ; $7855: $80
	add  c                                           ; $7856: $81
	ld   b, b                                        ; $7857: $40
	nop                                              ; $7858: $00
	nop                                              ; $7859: $00
	add  c                                           ; $785a: $81
	add  b                                           ; $785b: $80
	call nz, $0300                                   ; $785c: $c4 $00 $03
	ld   a, [hl]                                     ; $785f: $7e
	ld   [hl], d                                     ; $7860: $72
	nop                                              ; $7861: $00
	inc  c                                           ; $7862: $0c
	adc  $00                                         ; $7863: $ce $00
	nop                                              ; $7865: $00
	rlca                                             ; $7866: $07
	add  c                                           ; $7867: $81

jr_089_7868:
	nop                                              ; $7868: $00
	nop                                              ; $7869: $00
	ld   [$0081], sp                                 ; $786a: $08 $81 $00
	nop                                              ; $786d: $00
	db   $10                                         ; $786e: $10
	add  b                                           ; $786f: $80
	inc  e                                           ; $7870: $1c
	nop                                              ; $7871: $00
	rra                                              ; $7872: $1f
	sub  d                                           ; $7873: $92
	nop                                              ; $7874: $00
	inc  c                                           ; $7875: $0c
	ret  nz                                          ; $7876: $c0

	nop                                              ; $7877: $00
	ld   e, b                                        ; $7878: $58
	nop                                              ; $7879: $00
	ld   l, b                                        ; $787a: $68
	nop                                              ; $787b: $00
	pop  bc                                          ; $787c: $c1
	nop                                              ; $787d: $00
	ret  nz                                          ; $787e: $c0

	nop                                              ; $787f: $00
	ld   l, a                                        ; $7880: $6f
	nop                                              ; $7881: $00
	sbc  [hl]                                        ; $7882: $9e
	sbc  e                                           ; $7883: $9b
	nop                                              ; $7884: $00
	ld   [bc], a                                     ; $7885: $02
	rlca                                             ; $7886: $07
	nop                                              ; $7887: $00
	rlca                                             ; $7888: $07
	sbc  e                                           ; $7889: $9b
	nop                                              ; $788a: $00
	ld   [bc], a                                     ; $788b: $02
	add  b                                           ; $788c: $80
	nop                                              ; $788d: $00
	add  b                                           ; $788e: $80
	xor  b                                           ; $788f: $a8
	nop                                              ; $7890: $00
	add  b                                           ; $7891: $80
	ld   bc, $0080                                   ; $7892: $01 $80 $00
	add  b                                           ; $7895: $80
	inc  bc                                          ; $7896: $03
	add  b                                           ; $7897: $80
	nop                                              ; $7898: $00
	add  b                                           ; $7899: $80
	rlca                                             ; $789a: $07
	add  b                                           ; $789b: $80
	ld   bc, $0087                                   ; $789c: $01 $87 $00
	add  d                                           ; $789f: $82
	ccf                                              ; $78a0: $3f
	add  b                                           ; $78a1: $80
	rra                                              ; $78a2: $1f
	add  b                                           ; $78a3: $80
	inc  bc                                          ; $78a4: $03
	add  c                                           ; $78a5: $81
	nop                                              ; $78a6: $00
	add  b                                           ; $78a7: $80
	ret  nz                                          ; $78a8: $c0

	add  b                                           ; $78a9: $80
	jr   nc, jr_089_782c                             ; $78aa: $30 $80

	rlca                                             ; $78ac: $07
	add  b                                           ; $78ad: $80
	ldh  a, [$80]                                    ; $78ae: $f0 $80
	inc  c                                           ; $78b0: $0c
	add  b                                           ; $78b1: $80
	ldh  [c], a                                      ; $78b2: $e2
	add  b                                           ; $78b3: $80
	jr   c, @-$7e                                    ; $78b4: $38 $80

	rlca                                             ; $78b6: $07
	add  b                                           ; $78b7: $80
	ld   bc, $0081                                   ; $78b8: $01 $81 $00
	nop                                              ; $78bb: $00
	db   $f4                                         ; $78bc: $f4
	add  b                                           ; $78bd: $80
	nop                                              ; $78be: $00
	inc  b                                           ; $78bf: $04
	add  b                                           ; $78c0: $80
	adc  b                                           ; $78c1: $88
	ret  nz                                          ; $78c2: $c0

	call nz, $80c0                                   ; $78c3: $c4 $c0 $80
	nop                                              ; $78c6: $00
	nop                                              ; $78c7: $00
	jr   c, jr_089_784c                              ; $78c8: $38 $82

	nop                                              ; $78ca: $00
	add  b                                           ; $78cb: $80
	add  b                                           ; $78cc: $80
	add  b                                           ; $78cd: $80
	ldh  [$80], a                                    ; $78ce: $e0 $80
	nop                                              ; $78d0: $00
	add  b                                           ; $78d1: $80
	add  b                                           ; $78d2: $80
	add  b                                           ; $78d3: $80
	ld   b, b                                        ; $78d4: $40
	add  l                                           ; $78d5: $85
	nop                                              ; $78d6: $00
	ld   [bc], a                                     ; $78d7: $02
	rlca                                             ; $78d8: $07
	nop                                              ; $78d9: $00
	ld   [$0081], sp                                 ; $78da: $08 $81 $00
	inc  b                                           ; $78dd: $04
	stop                                             ; $78de: $10 $00
	rlca                                             ; $78e0: $07
	nop                                              ; $78e1: $00
	jr   nz, @-$7e                                   ; $78e2: $20 $80

	jr   jr_089_78e6                                 ; $78e4: $18 $00

jr_089_78e6:
	jr   c, jr_089_7868                              ; $78e6: $38 $80

	rlca                                             ; $78e8: $07
	add  e                                           ; $78e9: $83
	nop                                              ; $78ea: $00
	add  b                                           ; $78eb: $80
	ld   a, b                                        ; $78ec: $78
	add  b                                           ; $78ed: $80
	rrca                                             ; $78ee: $0f
	add  b                                           ; $78ef: $80
	ld   h, b                                        ; $78f0: $60
	add  b                                           ; $78f1: $80
	dec  a                                           ; $78f2: $3d
	add  b                                           ; $78f3: $80
	rlca                                             ; $78f4: $07
	rlca                                             ; $78f5: $07
	ldh  a, [$b0]                                    ; $78f6: $f0 $b0
	nop                                              ; $78f8: $00
	add  l                                           ; $78f9: $85
	nop                                              ; $78fa: $00
	ld   [hl], d                                     ; $78fb: $72
	nop                                              ; $78fc: $00
	ld   c, b                                        ; $78fd: $48
	add  c                                           ; $78fe: $81
	nop                                              ; $78ff: $00
	nop                                              ; $7900: $00
	ld   [hl], b                                     ; $7901: $70
	add  c                                           ; $7902: $81
	nop                                              ; $7903: $00
	rlca                                             ; $7904: $07
	ld   bc, $f080                                   ; $7905: $01 $80 $f0
	ld   hl, sp+$1a                                  ; $7908: $f8 $1a
	jr   jr_089_790c                                 ; $790a: $18 $00

jr_089_790c:
	inc  b                                           ; $790c: $04
	add  c                                           ; $790d: $81
	nop                                              ; $790e: $00
	add  b                                           ; $790f: $80
	ld   [hl], b                                     ; $7910: $70
	add  b                                           ; $7911: $80
	ld   [$8080], sp                                 ; $7912: $08 $80 $80
	add  b                                           ; $7915: $80
	ld   [hl], b                                     ; $7916: $70
	add  c                                           ; $7917: $81
	nop                                              ; $7918: $00
	ld   [bc], a                                     ; $7919: $02
	ret  nz                                          ; $791a: $c0

	nop                                              ; $791b: $00
	ld   b, b                                        ; $791c: $40
	add  c                                           ; $791d: $81
	nop                                              ; $791e: $00
	nop                                              ; $791f: $00
	add  b                                           ; $7920: $80
	db   $f4                                         ; $7921: $f4
	nop                                              ; $7922: $00
	add  b                                           ; $7923: $80
	ld   d, $9e                                      ; $7924: $16 $9e
	nop                                              ; $7926: $00
	add  b                                           ; $7927: $80
	ldh  [rIE], a                                    ; $7928: $e0 $ff
	nop                                              ; $792a: $00
	rst  $38                                         ; $792b: $ff
	nop                                              ; $792c: $00
	rst  $38                                         ; $792d: $ff
	nop                                              ; $792e: $00
	rst  $38                                         ; $792f: $ff
	nop                                              ; $7930: $00
	rst  $38                                         ; $7931: $ff
	nop                                              ; $7932: $00
	or   h                                           ; $7933: $b4
	nop                                              ; $7934: $00
	db   $fd                                         ; $7935: $fd
	nop                                              ; $7936: $00
	add  d                                           ; $7937: $82
	nop                                              ; $7938: $00
	add  b                                           ; $7939: $80
	ccf                                              ; $793a: $3f
	ld   bc, $3f20                                   ; $793b: $01 $20 $3f
	add  c                                           ; $793e: $81
	jr   nc, jr_089_7942                             ; $793f: $30 $01

	scf                                              ; $7941: $37

jr_089_7942:
	inc  [hl]                                        ; $7942: $34
	add  b                                           ; $7943: $80
	scf                                              ; $7944: $37
	ld   bc, $1a36                                   ; $7945: $01 $36 $1a
	add  c                                           ; $7948: $81
	nop                                              ; $7949: $00
	add  b                                           ; $794a: $80
	rst  $38                                         ; $794b: $ff
	ld   bc, $ff00                                   ; $794c: $01 $00 $ff
	add  c                                           ; $794f: $81

jr_089_7950:
	nop                                              ; $7950: $00
	ld   bc, $00ff                                   ; $7951: $01 $ff $00

jr_089_7954:
	add  b                                           ; $7954: $80
	rst  $38                                         ; $7955: $ff
	add  e                                           ; $7956: $83
	nop                                              ; $7957: $00
	add  b                                           ; $7958: $80
	rst  $38                                         ; $7959: $ff
	ld   bc, $ff00                                   ; $795a: $01 $00 $ff
	add  c                                           ; $795d: $81
	nop                                              ; $795e: $00
	ld   bc, $00ff                                   ; $795f: $01 $ff $00
	add  b                                           ; $7962: $80
	rst  $38                                         ; $7963: $ff
	add  e                                           ; $7964: $83
	nop                                              ; $7965: $00
	add  b                                           ; $7966: $80
	rst  $38                                         ; $7967: $ff
	ld   bc, $ff00                                   ; $7968: $01 $00 $ff
	add  c                                           ; $796b: $81
	nop                                              ; $796c: $00
	ld   bc, $00ff                                   ; $796d: $01 $ff $00
	add  b                                           ; $7970: $80

jr_089_7971:
	rst  $38                                         ; $7971: $ff
	add  e                                           ; $7972: $83

jr_089_7973:
	nop                                              ; $7973: $00
	add  b                                           ; $7974: $80
	rst  $38                                         ; $7975: $ff
	ld   bc, $ff00                                   ; $7976: $01 $00 $ff
	add  c                                           ; $7979: $81
	nop                                              ; $797a: $00
	ld   bc, $00ff                                   ; $797b: $01 $ff $00
	add  b                                           ; $797e: $80
	rst  $38                                         ; $797f: $ff
	add  e                                           ; $7980: $83
	nop                                              ; $7981: $00
	add  b                                           ; $7982: $80
	ld   hl, sp+$01                                  ; $7983: $f8 $01
	ld   [$81f8], sp                                 ; $7985: $08 $f8 $81
	jr   z, @+$03                                    ; $7988: $28 $01

	add  sp, $68                                     ; $798a: $e8 $68
	add  b                                           ; $798c: $80
	add  sp, $01                                     ; $798d: $e8 $01
	ld   l, b                                        ; $798f: $68
	inc  e                                           ; $7990: $1c
	adc  l                                           ; $7991: $8d
	ld   [hl], $00                                   ; $7992: $36 $00
	ld   a, [de]                                     ; $7994: $1a
	sub  l                                           ; $7995: $95
	nop                                              ; $7996: $00
	add  b                                           ; $7997: $80
	inc  e                                           ; $7998: $1c
	add  b                                           ; $7999: $80
	ld   [hl], a                                     ; $799a: $77
	add  b                                           ; $799b: $80
	ld   b, c                                        ; $799c: $41
	add  b                                           ; $799d: $80
	ld   c, a                                        ; $799e: $4f

jr_089_799f:
	adc  h                                           ; $799f: $8c
	nop                                              ; $79a0: $00
	add  b                                           ; $79a1: $80
	ldh  [$8e], a                                    ; $79a2: $e0 $8e
	nop                                              ; $79a4: $00
	nop                                              ; $79a5: $00
	ld   e, b                                        ; $79a6: $58
	adc  l                                           ; $79a7: $8d
	ld   l, b                                        ; $79a8: $68
	nop                                              ; $79a9: $00
	inc  e                                           ; $79aa: $1c
	adc  l                                           ; $79ab: $8d
	ld   [hl], $00                                   ; $79ac: $36 $00
	ld   a, [de]                                     ; $79ae: $1a
	add  c                                           ; $79af: $81
	nop                                              ; $79b0: $00
	add  b                                           ; $79b1: $80
	inc  bc                                          ; $79b2: $03
	add  b                                           ; $79b3: $80
	ld   c, $80                                      ; $79b4: $0e $80
	ld   [$1d80], sp                                 ; $79b6: $08 $80 $1d
	add  b                                           ; $79b9: $80
	rla                                              ; $79ba: $17
	add  b                                           ; $79bb: $80
	db   $10                                         ; $79bc: $10
	add  b                                           ; $79bd: $80
	ld   l, b                                        ; $79be: $68
	add  b                                           ; $79bf: $80
	jr   z, jr_089_7942                              ; $79c0: $28 $80

	add  sp, -$80                                    ; $79c2: $e8 $80
	ret  z                                           ; $79c4: $c8

	add  b                                           ; $79c5: $80
	ld   e, l                                        ; $79c6: $5d
	add  b                                           ; $79c7: $80
	rst  $30                                         ; $79c8: $f7
	add  d                                           ; $79c9: $82
	ld   b, b                                        ; $79ca: $40
	add  b                                           ; $79cb: $80
	jr   nz, @-$7e                                   ; $79cc: $20 $80

	jr   nc, jr_089_7950                             ; $79ce: $30 $80

	db   $10                                         ; $79d0: $10
	add  b                                           ; $79d1: $80
	jr   nc, jr_089_7954                             ; $79d2: $30 $80

	ldh  [$80], a                                    ; $79d4: $e0 $80
	ld   h, a                                        ; $79d6: $67
	add  b                                           ; $79d7: $80
	push bc                                          ; $79d8: $c5
	add  b                                           ; $79d9: $80
	add  h                                           ; $79da: $84
	adc  b                                           ; $79db: $88
	nop                                              ; $79dc: $00
	add  b                                           ; $79dd: $80
	ld   [hl], b                                     ; $79de: $70
	add  b                                           ; $79df: $80
	ret  nc                                          ; $79e0: $d0

	add  b                                           ; $79e1: $80
	stop                                             ; $79e2: $10 $00
	ld   e, b                                        ; $79e4: $58
	adc  l                                           ; $79e5: $8d
	ld   l, b                                        ; $79e6: $68
	nop                                              ; $79e7: $00
	inc  e                                           ; $79e8: $1c
	adc  l                                           ; $79e9: $8d
	ld   [hl], $01                                   ; $79ea: $36 $01
	ld   a, [hl+]                                    ; $79ec: $2a
	jr   nc, @-$7e                                   ; $79ed: $30 $80

	jr   nz, jr_089_7971                             ; $79ef: $20 $80

	jr   nc, jr_089_7973                             ; $79f1: $30 $80

	db   $10                                         ; $79f3: $10
	add  b                                           ; $79f4: $80
	rla                                              ; $79f5: $17
	add  b                                           ; $79f6: $80
	dec  e                                           ; $79f7: $1d
	add  b                                           ; $79f8: $80
	nop                                              ; $79f9: $00
	add  b                                           ; $79fa: $80
	rlca                                             ; $79fb: $07
	add  b                                           ; $79fc: $80
	ld   b, b                                        ; $79fd: $40
	add  b                                           ; $79fe: $80
	ld   c, [hl]                                     ; $79ff: $4e
	add  b                                           ; $7a00: $80
	ld   a, e                                        ; $7a01: $7b
	add  b                                           ; $7a02: $80
	ld   b, b                                        ; $7a03: $40
	add  b                                           ; $7a04: $80
	ld   [hl], a                                     ; $7a05: $77
	add  b                                           ; $7a06: $80

jr_089_7a07:
	db   $dd                                         ; $7a07: $dd
	add  b                                           ; $7a08: $80
	ld   b, c                                        ; $7a09: $41
	add  b                                           ; $7a0a: $80
	pop  bc                                          ; $7a0b: $c1
	add  b                                           ; $7a0c: $80
	add  $80                                         ; $7a0d: $c6 $80
	ld   b, d                                        ; $7a0f: $42
	add  b                                           ; $7a10: $80
	add  $80                                         ; $7a11: $c6 $80
	inc  b                                           ; $7a13: $04
	add  b                                           ; $7a14: $80
	dec  b                                           ; $7a15: $05
	add  b                                           ; $7a16: $80
	rst  JumpTable                                         ; $7a17: $df
	add  b                                           ; $7a18: $80
	ld   [hl], h                                     ; $7a19: $74
	add  b                                           ; $7a1a: $80
	inc  b                                           ; $7a1b: $04
	add  b                                           ; $7a1c: $80
	jr   jr_089_799f                                 ; $7a1d: $18 $80

	ld   [$1880], sp                                 ; $7a1f: $08 $80 $18
	add  b                                           ; $7a22: $80
	db   $10                                         ; $7a23: $10
	add  b                                           ; $7a24: $80
	ret  nc                                          ; $7a25: $d0

	add  b                                           ; $7a26: $80
	ld   [hl], b                                     ; $7a27: $70
	add  d                                           ; $7a28: $82
	nop                                              ; $7a29: $00
	nop                                              ; $7a2a: $00
	ld   e, b                                        ; $7a2b: $58
	adc  l                                           ; $7a2c: $8d
	ld   l, b                                        ; $7a2d: $68
	nop                                              ; $7a2e: $00
	inc  e                                           ; $7a2f: $1c
	add  a                                           ; $7a30: $87
	ld   [hl], $03                                   ; $7a31: $36 $03
	dec  [hl]                                        ; $7a33: $35
	scf                                              ; $7a34: $37
	jr   c, @+$41                                    ; $7a35: $38 $3f

	add  b                                           ; $7a37: $80
	jr   nc, jr_089_7a3a                             ; $7a38: $30 $00

jr_089_7a3a:
	dec  de                                          ; $7a3a: $1b
	add  c                                           ; $7a3b: $81
	inc  b                                           ; $7a3c: $04
	add  d                                           ; $7a3d: $82
	dec  b                                           ; $7a3e: $05
	add  b                                           ; $7a3f: $80
	rlca                                             ; $7a40: $07
	add  b                                           ; $7a41: $80
	cp   $05                                         ; $7a42: $fe $05
	ld   [bc], a                                     ; $7a44: $02
	cp   $03                                         ; $7a45: $fe $03
	rra                                              ; $7a47: $1f
	and  c                                           ; $7a48: $a1
	ld   b, c                                        ; $7a49: $41
	add  b                                           ; $7a4a: $80
	ret  nz                                          ; $7a4b: $c0

	add  b                                           ; $7a4c: $80
	db   $fd                                         ; $7a4d: $fd
	add  b                                           ; $7a4e: $80
	rla                                              ; $7a4f: $17
	add  h                                           ; $7a50: $84
	db   $10                                         ; $7a51: $10
	add  b                                           ; $7a52: $80
	ret  nc                                          ; $7a53: $d0

	add  b                                           ; $7a54: $80
	adc  h                                           ; $7a55: $8c
	add  b                                           ; $7a56: $80
	adc  b                                           ; $7a57: $88
	add  b                                           ; $7a58: $80
	call z, Call_089_4480                            ; $7a59: $cc $80 $44
	add  b                                           ; $7a5c: $80
	ld   e, h                                        ; $7a5d: $5c
	add  b                                           ; $7a5e: $80
	rst  $38                                         ; $7a5f: $ff
	ld   bc, $ff80                                   ; $7a60: $01 $80 $ff
	add  b                                           ; $7a63: $80
	add  b                                           ; $7a64: $80
	nop                                              ; $7a65: $00
	ld   a, a                                        ; $7a66: $7f
	add  a                                           ; $7a67: $87
	nop                                              ; $7a68: $00
	add  b                                           ; $7a69: $80
	rst  $38                                         ; $7a6a: $ff
	ld   bc, $ff00                                   ; $7a6b: $01 $00 $ff
	add  b                                           ; $7a6e: $80
	nop                                              ; $7a6f: $00
	nop                                              ; $7a70: $00
	and  a                                           ; $7a71: $a7
	add  a                                           ; $7a72: $87
	ld   l, b                                        ; $7a73: $68
	add  b                                           ; $7a74: $80
	add  sp, $01                                     ; $7a75: $e8 $01
	jr   z, @-$16                                    ; $7a77: $28 $e8

	add  b                                           ; $7a79: $80
	ld   [$cf01], sp                                 ; $7a7a: $08 $01 $cf
	ccf                                              ; $7a7d: $3f
	adc  h                                           ; $7a7e: $8c
	nop                                              ; $7a7f: $00
	add  b                                           ; $7a80: $80
	rst  $30                                         ; $7a81: $f7
	add  b                                           ; $7a82: $80

jr_089_7a83:
	db   $10                                         ; $7a83: $10
	add  b                                           ; $7a84: $80
	jr   jr_089_7a07                                 ; $7a85: $18 $80

	ld   [$1880], sp                                 ; $7a87: $08 $80 $18
	add  b                                           ; $7a8a: $80
	db   $10                                         ; $7a8b: $10
	add  b                                           ; $7a8c: $80
	rra                                              ; $7a8d: $1f
	add  b                                           ; $7a8e: $80
	nop                                              ; $7a8f: $00
	add  b                                           ; $7a90: $80
	ld   [hl], b                                     ; $7a91: $70
	add  b                                           ; $7a92: $80
	ld   d, a                                        ; $7a93: $57
	add  b                                           ; $7a94: $80
	db   $dd                                         ; $7a95: $dd
	add  b                                           ; $7a96: $80
	add  b                                           ; $7a97: $80
	add  b                                           ; $7a98: $80
	ret  nz                                          ; $7a99: $c0

	add  b                                           ; $7a9a: $80
	ld   b, b                                        ; $7a9b: $40
	add  b                                           ; $7a9c: $80
	ret  nz                                          ; $7a9d: $c0

	add  b                                           ; $7a9e: $80
	nop                                              ; $7a9f: $00
	add  b                                           ; $7aa0: $80
	ld   a, a                                        ; $7aa1: $7f
	add  b                                           ; $7aa2: $80
	ld   b, b                                        ; $7aa3: $40
	add  b                                           ; $7aa4: $80
	ret  nz                                          ; $7aa5: $c0

	adc  b                                           ; $7aa6: $88
	nop                                              ; $7aa7: $00
	add  b                                           ; $7aa8: $80
	rst  $38                                         ; $7aa9: $ff
	adc  h                                           ; $7aaa: $8c
	nop                                              ; $7aab: $00
	add  b                                           ; $7aac: $80
	ld   hl, sp-$1a                                  ; $7aad: $f8 $e6
	nop                                              ; $7aaf: $00
	add  b                                           ; $7ab0: $80
	ld   [$3e80], sp                                 ; $7ab1: $08 $80 $3e
	add  b                                           ; $7ab4: $80
	jr   nc, @+$01                                   ; $7ab5: $30 $ff

	nop                                              ; $7ab7: $00
	add  e                                           ; $7ab8: $83

jr_089_7ab9:
	nop                                              ; $7ab9: $00
	add  b                                           ; $7aba: $80
	ld   bc, $0780                                   ; $7abb: $01 $80 $07
	add  b                                           ; $7abe: $80
	ld   [bc], a                                     ; $7abf: $02
	add  b                                           ; $7ac0: $80
	ld   [$0f82], sp                                 ; $7ac1: $08 $82 $0f
	add  b                                           ; $7ac4: $80
	rra                                              ; $7ac5: $1f
	add  d                                           ; $7ac6: $82
	rrca                                             ; $7ac7: $0f
	add  b                                           ; $7ac8: $80
	ld   [$0084], sp                                 ; $7ac9: $08 $84 $00
	add  h                                           ; $7acc: $84

jr_089_7acd:
	rla                                              ; $7acd: $17
	add  b                                           ; $7ace: $80
	scf                                              ; $7acf: $37
	add  b                                           ; $7ad0: $80
	and  d                                           ; $7ad1: $a2
	add  b                                           ; $7ad2: $80
	ld   [$bf84], sp                                 ; $7ad3: $08 $84 $bf
	add  b                                           ; $7ad6: $80
	or   c                                           ; $7ad7: $b1
	add  h                                           ; $7ad8: $84
	add  b                                           ; $7ad9: $80
	add  b                                           ; $7ada: $80
	ld   [hl+], a                                    ; $7adb: $22
	add  d                                           ; $7adc: $82
	ld   a, $82                                      ; $7add: $3e $82
	ret  nz                                          ; $7adf: $c0

	add  b                                           ; $7ae0: $80
	ldh  [$80], a                                    ; $7ae1: $e0 $80
	ret  nz                                          ; $7ae3: $c0

	add  b                                           ; $7ae4: $80
	nop                                              ; $7ae5: $00
	add  b                                           ; $7ae6: $80
	add  b                                           ; $7ae7: $80
	add  b                                           ; $7ae8: $80
	ld   [bc], a                                     ; $7ae9: $02
	add  b                                           ; $7aea: $80
	inc  bc                                          ; $7aeb: $03
	add  b                                           ; $7aec: $80
	ld   bc, $8180                                   ; $7aed: $01 $80 $81
	add  b                                           ; $7af0: $80
	ld   bc, $0380                                   ; $7af1: $01 $80 $03
	add  b                                           ; $7af4: $80
	ld   [bc], a                                     ; $7af5: $02
	add  b                                           ; $7af6: $80
	nop                                              ; $7af7: $00
	add  b                                           ; $7af8: $80
	adc  b                                           ; $7af9: $88
	add  b                                           ; $7afa: $80
	ld   hl, sp-$76                                  ; $7afb: $f8 $8a
	nop                                              ; $7afd: $00
	add  b                                           ; $7afe: $80
	jr   nz, jr_089_7a83                             ; $7aff: $20 $82

	ldh  [$80], a                                    ; $7b01: $e0 $80
	ldh  a, [$82]                                    ; $7b03: $f0 $82
	ldh  [$80], a                                    ; $7b05: $e0 $80
	jr   nz, jr_089_7acd                             ; $7b07: $20 $c4

	nop                                              ; $7b09: $00
	add  d                                           ; $7b0a: $82
	inc  bc                                          ; $7b0b: $03
	add  d                                           ; $7b0c: $82

jr_089_7b0d:
	ld   [bc], a                                     ; $7b0d: $02
	add  b                                           ; $7b0e: $80
	nop                                              ; $7b0f: $00
	add  d                                           ; $7b10: $82
	ld   bc, $0080                                   ; $7b11: $01 $80 $00
	add  b                                           ; $7b14: $80
	ld   [$0f80], sp                                 ; $7b15: $08 $80 $0f
	add  h                                           ; $7b18: $84
	rlca                                             ; $7b19: $07
	add  b                                           ; $7b1a: $80
	rrca                                             ; $7b1b: $0f
	add  d                                           ; $7b1c: $82

jr_089_7b1d:
	nop                                              ; $7b1d: $00
	add  b                                           ; $7b1e: $80
	cp   [hl]                                        ; $7b1f: $be
	add  b                                           ; $7b20: $80
	ccf                                              ; $7b21: $3f
	add  b                                           ; $7b22: $80
	ld   [bc], a                                     ; $7b23: $02
	add  b                                           ; $7b24: $80
	add  sp, -$7c                                    ; $7b25: $e8 $84
	rst  $28                                         ; $7b27: $ef
	add  b                                           ; $7b28: $80
	cpl                                              ; $7b29: $2f
	add  b                                           ; $7b2a: $80
	adc  a                                           ; $7b2b: $8f
	add  b                                           ; $7b2c: $80
	adc  b                                           ; $7b2d: $88
	add  h                                           ; $7b2e: $84
	nop                                              ; $7b2f: $00
	add  b                                           ; $7b30: $80
	add  b                                           ; $7b31: $80
	add  d                                           ; $7b32: $82
	nop                                              ; $7b33: $00
	add  d                                           ; $7b34: $82

jr_089_7b35:
	ld   [hl], b                                     ; $7b35: $70
	add  b                                           ; $7b36: $80
	jr   nc, jr_089_7ab9                             ; $7b37: $30 $80

	cp   b                                           ; $7b39: $b8
	add  b                                           ; $7b3a: $80
	and  b                                           ; $7b3b: $a0
	add  h                                           ; $7b3c: $84

jr_089_7b3d:
	nop                                              ; $7b3d: $00
	add  d                                           ; $7b3e: $82
	add  b                                           ; $7b3f: $80
	rst  $38                                         ; $7b40: $ff
	nop                                              ; $7b41: $00
	rst  $38                                         ; $7b42: $ff
	nop                                              ; $7b43: $00
	rst  $38                                         ; $7b44: $ff
	nop                                              ; $7b45: $00
	rst  $38                                         ; $7b46: $ff
	nop                                              ; $7b47: $00
	rst  $38                                         ; $7b48: $ff
	nop                                              ; $7b49: $00
	push bc                                          ; $7b4a: $c5
	nop                                              ; $7b4b: $00
	push de                                          ; $7b4c: $d5
	nop                                              ; $7b4d: $00
	sbc  h                                           ; $7b4e: $9c
	nop                                              ; $7b4f: $00
	add  b                                           ; $7b50: $80
	rlca                                             ; $7b51: $07
	adc  b                                           ; $7b52: $88
	nop                                              ; $7b53: $00
	add  b                                           ; $7b54: $80
	rrca                                             ; $7b55: $0f
	add  b                                           ; $7b56: $80
	ldh  a, [$8a]                                    ; $7b57: $f0 $8a
	nop                                              ; $7b59: $00
	add  b                                           ; $7b5a: $80
	ldh  a, [$80]                                    ; $7b5b: $f0 $80
	rrca                                             ; $7b5d: $0f
	adc  [hl]                                        ; $7b5e: $8e
	nop                                              ; $7b5f: $00
	add  b                                           ; $7b60: $80
	ldh  [$94], a                                    ; $7b61: $e0 $94
	nop                                              ; $7b63: $00
	add  b                                           ; $7b64: $80
	ld   bc, $0280                                   ; $7b65: $01 $80 $02
	add  d                                           ; $7b68: $82
	inc  b                                           ; $7b69: $04
	add  b                                           ; $7b6a: $80
	ld   [$1880], sp                                 ; $7b6b: $08 $80 $18
	add  b                                           ; $7b6e: $80
	ld   h, b                                        ; $7b6f: $60
	add  b                                           ; $7b70: $80
	add  b                                           ; $7b71: $80
	add  b                                           ; $7b72: $80
	nop                                              ; $7b73: $00
	add  b                                           ; $7b74: $80
	ld   bc, $0480                                   ; $7b75: $01 $80 $04
	add  b                                           ; $7b78: $80
	ld   [$1080], sp                                 ; $7b79: $08 $80 $10
	add  d                                           ; $7b7c: $82
	nop                                              ; $7b7d: $00
	add  b                                           ; $7b7e: $80
	rlca                                             ; $7b7f: $07
	add  b                                           ; $7b80: $80
	jr   @-$7d                                       ; $7b81: $18 $81

	ldh  [rTIMA], a                                  ; $7b83: $e0 $05
	ld   b, b                                        ; $7b85: $40
	ret  nz                                          ; $7b86: $c0

	nop                                              ; $7b87: $00
	ld   d, b                                        ; $7b88: $50
	nop                                              ; $7b89: $00
	jr   nc, jr_089_7b0d                             ; $7b8a: $30 $81

	nop                                              ; $7b8c: $00
	add  b                                           ; $7b8d: $80
	inc  a                                           ; $7b8e: $3c
	add  b                                           ; $7b8f: $80
	dec  bc                                          ; $7b90: $0b
	add  hl, bc                                      ; $7b91: $09
	ld   bc, $3100                                   ; $7b92: $01 $00 $31
	nop                                              ; $7b95: $00
	jr   z, jr_089_7b98                              ; $7b96: $28 $00

jr_089_7b98:
	inc  d                                           ; $7b98: $14
	nop                                              ; $7b99: $00
	inc  d                                           ; $7b9a: $14
	jr   jr_089_7b1d                                 ; $7b9b: $18 $80

	ld   b, $80                                      ; $7b9d: $06 $80
	ld   bc, $0080                                   ; $7b9f: $01 $80 $00
	add  b                                           ; $7ba2: $80
	ret  nz                                          ; $7ba3: $c0

	ld   b, $f0                                      ; $7ba4: $06 $f0
	jr   nc, @-$06                                   ; $7ba6: $30 $f8

	ld   [$7c34], sp                                 ; $7ba8: $08 $34 $7c
	ld   a, b                                        ; $7bab: $78
	add  e                                           ; $7bac: $83
	nop                                              ; $7bad: $00
	add  b                                           ; $7bae: $80
	add  b                                           ; $7baf: $80
	add  b                                           ; $7bb0: $80
	ld   b, b                                        ; $7bb1: $40
	add  d                                           ; $7bb2: $82
	jr   nz, jr_089_7b35                             ; $7bb3: $20 $80

	db   $10                                         ; $7bb5: $10
	add  b                                           ; $7bb6: $80
	ld   [$1084], sp                                 ; $7bb7: $08 $84 $10
	add  h                                           ; $7bba: $84
	jr   nz, jr_089_7b3d                             ; $7bbb: $20 $80

	ld   hl, $2080                                   ; $7bbd: $21 $80 $20
	ld   d, $2c                                      ; $7bc0: $16 $2c
	jr   nz, jr_089_7c37                             ; $7bc2: $20 $73

	ld   b, b                                        ; $7bc4: $40
	sbc  l                                           ; $7bc5: $9d
	add  b                                           ; $7bc6: $80
	and  c                                           ; $7bc7: $a1
	add  b                                           ; $7bc8: $80
	pop  bc                                          ; $7bc9: $c1
	add  b                                           ; $7bca: $80
	and  d                                           ; $7bcb: $a2
	ret  nz                                          ; $7bcc: $c0

	ldh  [$03], a                                    ; $7bcd: $e0 $03
	di                                               ; $7bcf: $f3
	nop                                              ; $7bd0: $00
	inc  d                                           ; $7bd1: $14
	nop                                              ; $7bd2: $00
	ld   [hl+], a                                    ; $7bd3: $22
	nop                                              ; $7bd4: $00
	ld   [bc], a                                     ; $7bd5: $02
	inc  bc                                          ; $7bd6: $03
	rlca                                             ; $7bd7: $07
	add  b                                           ; $7bd8: $80
	rrca                                             ; $7bd9: $0f
	add  b                                           ; $7bda: $80
	rra                                              ; $7bdb: $1f
	add  c                                           ; $7bdc: $81
	rst  $38                                         ; $7bdd: $ff
	ld   b, $f1                                      ; $7bde: $06 $f1
	ld   bc, $0313                                   ; $7be0: $01 $13 $03
	rrca                                             ; $7be3: $0f
	add  hl, bc                                      ; $7be4: $09
	add  hl, de                                      ; $7be5: $19
	add  b                                           ; $7be6: $80
	ldh  a, [$80]                                    ; $7be7: $f0 $80
	db   $fc                                         ; $7be9: $fc
	add  b                                           ; $7bea: $80
	cp   $80                                         ; $7beb: $fe $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bed: $cf
	ld   bc, $c5c7                                   ; $7bee: $01 $c7 $c5
	add  c                                           ; $7bf1: $81
	cp   $00                                         ; $7bf2: $fe $00
	db   $fd                                         ; $7bf4: $fd
	add  d                                           ; $7bf5: $82
	rst  $38                                         ; $7bf6: $ff
	ld   bc, $7e7f                                   ; $7bf7: $01 $7f $7e
	add  b                                           ; $7bfa: $80
	ld   h, [hl]                                     ; $7bfb: $66
	add  b                                           ; $7bfc: $80
	ldh  [c], a                                      ; $7bfd: $e2
	ld   [bc], a                                     ; $7bfe: $02
	ldh  a, [$e0]                                    ; $7bff: $f0 $e0
	db   $10                                         ; $7c01: $10
	add  h                                           ; $7c02: $84
	ld   [$0480], sp                                 ; $7c03: $08 $80 $04
	add  h                                           ; $7c06: $84
	add  h                                           ; $7c07: $84
	add  h                                           ; $7c08: $84
	ld   hl, $1084                                   ; $7c09: $21 $84 $10
	add  d                                           ; $7c0c: $82
	ld   [$f801], sp                                 ; $7c0d: $08 $01 $f8
	rlca                                             ; $7c10: $07
	add  b                                           ; $7c11: $80

jr_089_7c12:
	rra                                              ; $7c12: $1f
	ld   bc, $bf3f                                   ; $7c13: $01 $3f $bf
	add  d                                           ; $7c16: $82
	rst  $38                                         ; $7c17: $ff
	nop                                              ; $7c18: $00
	ccf                                              ; $7c19: $3f
	add  b                                           ; $7c1a: $80
	ld   a, a                                        ; $7c1b: $7f
	inc  bc                                          ; $7c1c: $03
	ld   a, h                                        ; $7c1d: $7c
	inc  e                                           ; $7c1e: $1c
	ccf                                              ; $7c1f: $3f
	rra                                              ; $7c20: $1f
	add  b                                           ; $7c21: $80
	sbc  a                                           ; $7c22: $9f
	add  b                                           ; $7c23: $80
	adc  a                                           ; $7c24: $8f
	add  b                                           ; $7c25: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c26: $cf
	add  d                                           ; $7c27: $82
	cp   $80                                         ; $7c28: $fe $80
	ld   a, a                                        ; $7c2a: $7f
	add  b                                           ; $7c2b: $80
	ccf                                              ; $7c2c: $3f
	add  b                                           ; $7c2d: $80
	nop                                              ; $7c2e: $00
	add  b                                           ; $7c2f: $80
	rst  $20                                         ; $7c30: $e7
	add  b                                           ; $7c31: $80
	rst  $38                                         ; $7c32: $ff
	add  b                                           ; $7c33: $80
	db   $fc                                         ; $7c34: $fc
	add  b                                           ; $7c35: $80
	ld   a, h                                        ; $7c36: $7c

jr_089_7c37:
	add  b                                           ; $7c37: $80
	ld   h, $80                                      ; $7c38: $26 $80
	ld   [bc], a                                     ; $7c3a: $02
	add  d                                           ; $7c3b: $82
	nop                                              ; $7c3c: $00
	add  b                                           ; $7c3d: $80
	db   $fc                                         ; $7c3e: $fc
	ld   bc, $e1e0                                   ; $7c3f: $01 $e0 $e1
	add  b                                           ; $7c42: $80
	pop  bc                                          ; $7c43: $c1
	add  b                                           ; $7c44: $80
	ld   b, c                                        ; $7c45: $41
	nop                                              ; $7c46: $00
	ld   bc, $0282                                   ; $7c47: $01 $82 $02
	add  b                                           ; $7c4a: $80
	inc  b                                           ; $7c4b: $04
	add  d                                           ; $7c4c: $82
	add  h                                           ; $7c4d: $84
	add  b                                           ; $7c4e: $80
	inc  b                                           ; $7c4f: $04
	add  h                                           ; $7c50: $84
	ld   [$1082], sp                                 ; $7c51: $08 $82 $10
	add  d                                           ; $7c54: $82
	inc  b                                           ; $7c55: $04
	add  b                                           ; $7c56: $80
	ld   [bc], a                                     ; $7c57: $02
	add  b                                           ; $7c58: $80
	ld   bc, $0086                                   ; $7c59: $01 $86 $00
	inc  bc                                          ; $7c5c: $03
	db   $10                                         ; $7c5d: $10
	rra                                              ; $7c5e: $1f
	inc  bc                                          ; $7c5f: $03
	inc  c                                           ; $7c60: $0c
	add  b                                           ; $7c61: $80
	inc  bc                                          ; $7c62: $03
	add  b                                           ; $7c63: $80
	nop                                              ; $7c64: $00
	add  b                                           ; $7c65: $80
	add  b                                           ; $7c66: $80
	add  b                                           ; $7c67: $80
	ld   h, b                                        ; $7c68: $60
	add  b                                           ; $7c69: $80
	jr   c, @-$7e                                    ; $7c6a: $38 $80

	ld   e, $00                                      ; $7c6c: $1e $00
	nop                                              ; $7c6e: $00
	add  b                                           ; $7c6f: $80
	add  b                                           ; $7c70: $80
	add  c                                           ; $7c71: $81
	nop                                              ; $7c72: $00
	add  b                                           ; $7c73: $80
	ldh  a, [$80]                                    ; $7c74: $f0 $80
	rra                                              ; $7c76: $1f
	adc  d                                           ; $7c77: $8a
	nop                                              ; $7c78: $00
	add  b                                           ; $7c79: $80
	rlca                                             ; $7c7a: $07
	add  b                                           ; $7c7b: $80
	ld   hl, sp-$7c                                  ; $7c7c: $f8 $84
	nop                                              ; $7c7e: $00
	add  b                                           ; $7c7f: $80
	ld   [$3080], sp                                 ; $7c80: $08 $80 $30
	add  b                                           ; $7c83: $80
	ret  nz                                          ; $7c84: $c0

	add  b                                           ; $7c85: $80
	nop                                              ; $7c86: $00
	add  b                                           ; $7c87: $80
	ld   bc, $0680                                   ; $7c88: $01 $80 $06
	add  b                                           ; $7c8b: $80
	inc  e                                           ; $7c8c: $1c
	add  b                                           ; $7c8d: $80
	ld   a, b                                        ; $7c8e: $78
	add  d                                           ; $7c8f: $82
	jr   nz, jr_089_7c12                             ; $7c90: $20 $80

	ld   b, b                                        ; $7c92: $40
	add  b                                           ; $7c93: $80
	add  b                                           ; $7c94: $80
	sub  [hl]                                        ; $7c95: $96
	nop                                              ; $7c96: $00
	add  b                                           ; $7c97: $80
	rlca                                             ; $7c98: $07
	add  b                                           ; $7c99: $80
	ld   bc, $008a                                   ; $7c9a: $01 $8a $00
	add  b                                           ; $7c9d: $80
	ret  nz                                          ; $7c9e: $c0

	add  b                                           ; $7c9f: $80
	rst  $38                                         ; $7ca0: $ff
	add  b                                           ; $7ca1: $80
	ccf                                              ; $7ca2: $3f
	adc  b                                           ; $7ca3: $88
	nop                                              ; $7ca4: $00
	add  b                                           ; $7ca5: $80
	inc  bc                                          ; $7ca6: $03
	add  b                                           ; $7ca7: $80
	rst  $38                                         ; $7ca8: $ff
	add  b                                           ; $7ca9: $80
	db   $fc                                         ; $7caa: $fc
	adc  b                                           ; $7cab: $88
	nop                                              ; $7cac: $00
	add  b                                           ; $7cad: $80
	ldh  [$80], a                                    ; $7cae: $e0 $80
	add  b                                           ; $7cb0: $80
	rst  $38                                         ; $7cb1: $ff
	nop                                              ; $7cb2: $00
	rst  $38                                         ; $7cb3: $ff
	nop                                              ; $7cb4: $00
	sub  l                                           ; $7cb5: $95
	nop                                              ; $7cb6: $00
	add  b                                           ; $7cb7: $80
	inc  bc                                          ; $7cb8: $03
	adc  a                                           ; $7cb9: $8f
	nop                                              ; $7cba: $00
	nop                                              ; $7cbb: $00
	ld   h, b                                        ; $7cbc: $60
	add  b                                           ; $7cbd: $80
	nop                                              ; $7cbe: $00
	inc  bc                                          ; $7cbf: $03
	db   $10                                         ; $7cc0: $10
	ld   [hl], b                                     ; $7cc1: $70
	jr   nc, jr_089_7cf5                             ; $7cc2: $30 $31

	add  c                                           ; $7cc4: $81
	nop                                              ; $7cc5: $00
	ld   [bc], a                                     ; $7cc6: $02
	ld   bc, $4080                                   ; $7cc7: $01 $80 $40
	add  b                                           ; $7cca: $80
	nop                                              ; $7ccb: $00
	ld   bc, $ff3f                                   ; $7ccc: $01 $3f $ff
	add  d                                           ; $7ccf: $82
	nop                                              ; $7cd0: $00
	ld   bc, $0506                                   ; $7cd1: $01 $06 $05
	add  b                                           ; $7cd4: $80
	inc  c                                           ; $7cd5: $0c
	inc  bc                                          ; $7cd6: $03
	nop                                              ; $7cd7: $00
	inc  bc                                          ; $7cd8: $03
	ld   bc, $8031                                   ; $7cd9: $01 $31 $80
	nop                                              ; $7cdc: $00
	ld   bc, $3808                                   ; $7cdd: $01 $08 $38
	add  b                                           ; $7ce0: $80
	jr   jr_089_7cea                                 ; $7ce1: $18 $07

	nop                                              ; $7ce3: $00
	inc  bc                                          ; $7ce4: $03
	nop                                              ; $7ce5: $00
	add  b                                           ; $7ce6: $80
	nop                                              ; $7ce7: $00
	inc  bc                                          ; $7ce8: $03
	ld   e, c                                        ; $7ce9: $59

jr_089_7cea:
	reti                                             ; $7cea: $d9


	add  b                                           ; $7ceb: $80
	db   $fd                                         ; $7cec: $fd
	add  d                                           ; $7ced: $82
	rst  $38                                         ; $7cee: $ff
	add  [hl]                                        ; $7cef: $86
	nop                                              ; $7cf0: $00
	ld   bc, $9880                                   ; $7cf1: $01 $80 $98

jr_089_7cf4:
	add  b                                           ; $7cf4: $80

jr_089_7cf5:
	add  c                                           ; $7cf5: $81
	ld   bc, $1d05                                   ; $7cf6: $01 $05 $1d
	add  b                                           ; $7cf9: $80
	rrca                                             ; $7cfa: $0f
	add  b                                           ; $7cfb: $80

Call_089_7cfc:
	inc  bc                                          ; $7cfc: $03
	add  b                                           ; $7cfd: $80
	rra                                              ; $7cfe: $1f
	add  b                                           ; $7cff: $80
	ld   a, $80                                      ; $7d00: $3e $80

jr_089_7d02:
	cp   [hl]                                        ; $7d02: $be
	ld   bc, $fffe                                   ; $7d03: $01 $fe $ff
	add  c                                           ; $7d06: $81
	db   $fd                                         ; $7d07: $fd
	ld   [bc], a                                     ; $7d08: $02
	rst  $38                                         ; $7d09: $ff
	ei                                               ; $7d0a: $fb
	ld   hl, sp-$77                                  ; $7d0b: $f8 $89
	nop                                              ; $7d0d: $00
	add  [hl]                                        ; $7d0e: $86
	ld   b, b                                        ; $7d0f: $40
	adc  b                                           ; $7d10: $88
	ret  nz                                          ; $7d11: $c0

	add  b                                           ; $7d12: $80
	add  b                                           ; $7d13: $80
	and  c                                           ; $7d14: $a1
	nop                                              ; $7d15: $00
	ld   [bc], a                                     ; $7d16: $02
	inc  bc                                          ; $7d17: $03
	rlca                                             ; $7d18: $07
	inc  b                                           ; $7d19: $04
	add  d                                           ; $7d1a: $82
	inc  bc                                          ; $7d1b: $03
	add  b                                           ; $7d1c: $80

jr_089_7d1d:
	ld   bc, $0093                                   ; $7d1d: $01 $93 $00
	add  b                                           ; $7d20: $80
	ld   a, a                                        ; $7d21: $7f
	add  d                                           ; $7d22: $82
	rst  $38                                         ; $7d23: $ff
	ld   [bc], a                                     ; $7d24: $02
	rrca                                             ; $7d25: $0f
	rst  $28                                         ; $7d26: $ef
	ldh  [$80], a                                    ; $7d27: $e0 $80
	rst  $38                                         ; $7d29: $ff
	add  b                                           ; $7d2a: $80
	ld   a, a                                        ; $7d2b: $7f
	add  b                                           ; $7d2c: $80
	rra                                              ; $7d2d: $1f
	adc  a                                           ; $7d2e: $8f
	nop                                              ; $7d2f: $00
	add  h                                           ; $7d30: $84
	rst  $38                                         ; $7d31: $ff
	ld   [bc], a                                     ; $7d32: $02
	ld   hl, sp-$01                                  ; $7d33: $f8 $ff
	rlca                                             ; $7d35: $07
	add  b                                           ; $7d36: $80
	rst  $38                                         ; $7d37: $ff
	add  b                                           ; $7d38: $80
	cp   $80                                         ; $7d39: $fe $80
	ldh  [$8e], a                                    ; $7d3b: $e0 $8e
	nop                                              ; $7d3d: $00
	dec  b                                           ; $7d3e: $05
	rlca                                             ; $7d3f: $07
	rst  $30                                         ; $7d40: $f7
	rst  $38                                         ; $7d41: $ff

jr_089_7d42:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d42: $cf
	cp   $3e                                         ; $7d43: $fe $3e
	add  b                                           ; $7d45: $80
	db   $fc                                         ; $7d46: $fc
	add  b                                           ; $7d47: $80
	ldh  a, [$80]                                    ; $7d48: $f0 $80
	ret  nz                                          ; $7d4a: $c0

	rst  $38                                         ; $7d4b: $ff
	nop                                              ; $7d4c: $00
	rst  $38                                         ; $7d4d: $ff
	nop                                              ; $7d4e: $00
	rst  $38                                         ; $7d4f: $ff
	nop                                              ; $7d50: $00
	rst  $38                                         ; $7d51: $ff
	nop                                              ; $7d52: $00
	rst  $38                                         ; $7d53: $ff
	nop                                              ; $7d54: $00
	xor  l                                           ; $7d55: $ad
	nop                                              ; $7d56: $00
	or   h                                           ; $7d57: $b4
	nop                                              ; $7d58: $00
	ld   hl, sp+$00                                  ; $7d59: $f8 $00
	add  b                                           ; $7d5b: $80
	inc  bc                                          ; $7d5c: $03
	ld   a, [bc]                                     ; $7d5d: $0a
	rrca                                             ; $7d5e: $0f
	inc  c                                           ; $7d5f: $0c
	inc  e                                           ; $7d60: $1c
	db   $10                                         ; $7d61: $10
	ld   [$1f07], sp                                 ; $7d62: $08 $07 $1f
	jr   jr_089_7d9f                                 ; $7d65: $18 $38

	jr   nz, @+$62                                   ; $7d67: $20 $60

	add  c                                           ; $7d69: $81
	ld   b, b                                        ; $7d6a: $40
	dec  bc                                          ; $7d6b: $0b
	pop  hl                                          ; $7d6c: $e1
	ret  nz                                          ; $7d6d: $c0

	cp   $20                                         ; $7d6e: $fe $20
	jr   c, jr_089_7dca                              ; $7d70: $38 $58

	jr   nz, jr_089_7cf4                             ; $7d72: $20 $80

	ldh  [$60], a                                    ; $7d74: $e0 $60
	ld   d, b                                        ; $7d76: $50
	db   $10                                         ; $7d77: $10
	add  b                                           ; $7d78: $80
	ld   [$4805], sp                                 ; $7d79: $08 $05 $48
	ld   [$0f8f], sp                                 ; $7d7c: $08 $8f $0f
	rra                                              ; $7d7f: $1f
	jr   jr_089_7d02                                 ; $7d80: $18 $80

	jr   nc, jr_089_7d84                             ; $7d82: $30 $00

jr_089_7d84:
	rlca                                             ; $7d84: $07
	add  a                                           ; $7d85: $87
	nop                                              ; $7d86: $00
	add  b                                           ; $7d87: $80
	add  b                                           ; $7d88: $80
	inc  b                                           ; $7d89: $04
	ldh  [$60], a                                    ; $7d8a: $e0 $60
	ld   d, b                                        ; $7d8c: $50
	db   $10                                         ; $7d8d: $10
	ret  nz                                          ; $7d8e: $c0

	sbc  e                                           ; $7d8f: $9b
	nop                                              ; $7d90: $00
	add  b                                           ; $7d91: $80
	ld   bc, $3f00                                   ; $7d92: $01 $00 $3f
	add  c                                           ; $7d95: $81
	jr   nz, jr_089_7d9b                             ; $7d96: $20 $03

	ld   sp, $2e20                                   ; $7d98: $31 $20 $2e

jr_089_7d9b:
	jr   nz, jr_089_7d1d                             ; $7d9b: $20 $80

	db   $10                                         ; $7d9d: $10
	inc  b                                           ; $7d9e: $04

jr_089_7d9f:
	ccf                                              ; $7d9f: $3f
	scf                                              ; $7da0: $37
	rst  $30                                         ; $7da1: $f7
	ldh  [$60], a                                    ; $7da2: $e0 $60
	add  b                                           ; $7da4: $80
	ret  nz                                          ; $7da5: $c0

	ld   bc, $c747                                   ; $7da6: $01 $47 $c7
	add  c                                           ; $7da9: $81
	add  b                                           ; $7daa: $80
	inc  bc                                          ; $7dab: $03
	add  e                                           ; $7dac: $83
	add  b                                           ; $7dad: $80
	inc  a                                           ; $7dae: $3c
	ld   b, b                                        ; $7daf: $40
	add  b                                           ; $7db0: $80
	and  c                                           ; $7db1: $a1
	nop                                              ; $7db2: $00
	rra                                              ; $7db3: $1f
	add  b                                           ; $7db4: $80
	ld   e, $00                                      ; $7db5: $1e $00
	db   $10                                         ; $7db7: $10
	add  b                                           ; $7db8: $80
	ret  nz                                          ; $7db9: $c0

	dec  b                                           ; $7dba: $05
	jr   nc, @+$22                                   ; $7dbb: $30 $20

	ld   sp, $3e20                                   ; $7dbd: $31 $20 $3e
	jr   nc, jr_089_7d42                             ; $7dc0: $30 $80

	ld   l, h                                        ; $7dc2: $6c
	nop                                              ; $7dc3: $00
	rst  $38                                         ; $7dc4: $ff
	add  b                                           ; $7dc5: $80
	ret  nz                                          ; $7dc6: $c0

	ld   [$2030], sp                                 ; $7dc7: $08 $30 $20

jr_089_7dca:
	ld   [$082f], sp                                 ; $7dca: $08 $2f $08
	ld   c, b                                        ; $7dcd: $48
	ld   [$0888], sp                                 ; $7dce: $08 $88 $08
	add  b                                           ; $7dd1: $80
	db   $10                                         ; $7dd2: $10
	add  b                                           ; $7dd3: $80
	ld   [hl], b                                     ; $7dd4: $70
	ld   bc, $1cdc                                   ; $7dd5: $01 $dc $1c
	add  b                                           ; $7dd8: $80
	dec  bc                                          ; $7dd9: $0b
	ld   [bc], a                                     ; $7dda: $02
	ld   c, b                                        ; $7ddb: $48
	ld   [$8b80], sp                                 ; $7ddc: $08 $80 $8b
	nop                                              ; $7ddf: $00
	add  b                                           ; $7de0: $80
	add  b                                           ; $7de1: $80
	inc  bc                                          ; $7de2: $03
	ld   [bc], a                                     ; $7de3: $02
	inc  bc                                          ; $7de4: $03
	dec  b                                           ; $7de5: $05
	rlca                                             ; $7de6: $07
	add  b                                           ; $7de7: $80
	dec  bc                                          ; $7de8: $0b
	ld   [bc], a                                     ; $7de9: $02
	ld   a, [bc]                                     ; $7dea: $0a
	dec  bc                                          ; $7deb: $0b
	ld   de, $1685                                   ; $7dec: $11 $85 $16
	db   $10                                         ; $7def: $10
	ld   a, d                                        ; $7df0: $7a
	ret  nz                                          ; $7df1: $c0

	db   $e3                                         ; $7df2: $e3
	ret  nz                                          ; $7df3: $c0

	ld   a, h                                        ; $7df4: $7c
	and  b                                           ; $7df5: $a0
	cp   b                                           ; $7df6: $b8
	jr   @+$19                                       ; $7df7: $18 $17

	rlca                                             ; $7df9: $07
	dec  bc                                          ; $7dfa: $0b
	ld   [bc], a                                     ; $7dfb: $02
	ld   b, $04                                      ; $7dfc: $06 $04
	inc  e                                           ; $7dfe: $1c
	inc  b                                           ; $7dff: $04
	call c, $2083                                    ; $7e00: $dc $83 $20
	dec  b                                           ; $7e03: $05
	rst  $28                                         ; $7e04: $ef
	ldh  a, [$fc]                                    ; $7e05: $f0 $fc
	inc  c                                           ; $7e07: $0c
	rrca                                             ; $7e08: $0f
	inc  bc                                          ; $7e09: $03
	add  b                                           ; $7e0a: $80
	nop                                              ; $7e0b: $00
	rlca                                             ; $7e0c: $07
	inc  b                                           ; $7e0d: $04
	nop                                              ; $7e0e: $00
	ld   e, $04                                      ; $7e0f: $1e $04
	ld   h, $04                                      ; $7e11: $26 $04
	call nz, $8004                                   ; $7e13: $c4 $04 $80
	rlca                                             ; $7e16: $07
	inc  b                                           ; $7e17: $04
	add  hl, de                                      ; $7e18: $19
	jr   @-$18                                       ; $7e19: $18 $e6

	ldh  [$f8], a                                    ; $7e1b: $e0 $f8
	add  c                                           ; $7e1d: $81
	add  b                                           ; $7e1e: $80
	rrca                                             ; $7e1f: $0f
	ld   [hl], c                                     ; $7e20: $71
	ld   c, $17                                      ; $7e21: $0e $17
	ld   de, $6069                                   ; $7e23: $11 $69 $60
	ret  nc                                          ; $7e26: $d0

	ret  nz                                          ; $7e27: $c0

	ldh  [rAUD4LEN], a                               ; $7e28: $e0 $20
	ld   h, c                                        ; $7e2a: $61
	jr   nz, jr_089_7e2f                             ; $7e2b: $20 $02

	db   $10                                         ; $7e2d: $10
	sbc  h                                           ; $7e2e: $9c

jr_089_7e2f:
	db   $10                                         ; $7e2f: $10
	add  b                                           ; $7e30: $80
	ld   b, b                                        ; $7e31: $40
	ld   b, $20                                      ; $7e32: $06 $20
	and  b                                           ; $7e34: $a0
	db   $10                                         ; $7e35: $10
	ret  nc                                          ; $7e36: $d0

jr_089_7e37:
	db   $10                                         ; $7e37: $10
	ld   d, b                                        ; $7e38: $50

jr_089_7e39:
	ld   c, b                                        ; $7e39: $48
	add  d                                           ; $7e3a: $82
	ld   l, b                                        ; $7e3b: $68
	ld   a, [bc]                                     ; $7e3c: $0a
	ld   a, b                                        ; $7e3d: $78
	cp   b                                           ; $7e3e: $b8
	ld   hl, sp+$79                                  ; $7e3f: $f8 $79
	dec  bc                                          ; $7e41: $0b
	ld   a, [bc]                                     ; $7e42: $0a
	dec  bc                                          ; $7e43: $0b
	rlca                                             ; $7e44: $07
	dec  b                                           ; $7e45: $05
	inc  bc                                          ; $7e46: $03
	ld   [bc], a                                     ; $7e47: $02
	add  b                                           ; $7e48: $80
	ld   bc, $0084                                   ; $7e49: $01 $84 $00
	dec  bc                                          ; $7e4c: $0b
	rlca                                             ; $7e4d: $07
	inc  b                                           ; $7e4e: $04
	pop  bc                                          ; $7e4f: $c1
	jp   nz, $ff3f                                   ; $7e50: $c2 $3f $ff

	ret  nz                                          ; $7e53: $c0

	ld   a, a                                        ; $7e54: $7f
	rst  $38                                         ; $7e55: $ff
	adc  a                                           ; $7e56: $8f
	rst  $28                                         ; $7e57: $ef
	ldh  [$80], a                                    ; $7e58: $e0 $80
	ccf                                              ; $7e5a: $3f
	add  b                                           ; $7e5b: $80
	rrca                                             ; $7e5c: $0f

jr_089_7e5d:
	inc  bc                                          ; $7e5d: $03
	ldh  [rP1], a                                    ; $7e5e: $e0 $00
	pop  hl                                          ; $7e60: $e1
	ld   bc, $0780                                   ; $7e61: $01 $80 $07
	ld   [bc], a                                     ; $7e64: $02
	cp   $ff                                         ; $7e65: $fe $ff
	ld   bc, $ff80                                   ; $7e67: $01 $80 $ff
	add  b                                           ; $7e6a: $80
	ccf                                              ; $7e6b: $3f
	nop                                              ; $7e6c: $00
	nop                                              ; $7e6d: $00
	add  b                                           ; $7e6e: $80
	rst  $38                                         ; $7e6f: $ff
	inc  bc                                          ; $7e70: $03
	db   $fc                                         ; $7e71: $fc
	add  b                                           ; $7e72: $80
	cp   h                                           ; $7e73: $bc
	ret  nz                                          ; $7e74: $c0

	add  b                                           ; $7e75: $80
	ldh  a, [rSC]                                    ; $7e76: $f0 $02
	rrca                                             ; $7e78: $0f
	rst  $38                                         ; $7e79: $ff
	ldh  a, [$80]                                    ; $7e7a: $f0 $80
	rst  $38                                         ; $7e7c: $ff
	add  b                                           ; $7e7d: $80
	db   $fc                                         ; $7e7e: $fc
	nop                                              ; $7e7f: $00
	nop                                              ; $7e80: $00
	add  b                                           ; $7e81: $80
	rst  $38                                         ; $7e82: $ff
	add  b                                           ; $7e83: $80
	inc  de                                          ; $7e84: $13
	inc  b                                           ; $7e85: $04
	inc  a                                           ; $7e86: $3c

jr_089_7e87:
	ccf                                              ; $7e87: $3f
	db   $e3                                         ; $7e88: $e3
	rst  $38                                         ; $7e89: $ff
	rra                                              ; $7e8a: $1f
	add  b                                           ; $7e8b: $80
	cp   $02                                         ; $7e8c: $fe $02
	ldh  [$e7], a                                    ; $7e8e: $e0 $e7
	rlca                                             ; $7e90: $07

jr_089_7e91:
	add  b                                           ; $7e91: $80
	db   $fc                                         ; $7e92: $fc

jr_089_7e93:
	add  b                                           ; $7e93: $80
	ldh  a, [rP1]                                    ; $7e94: $f0 $00
	db   $10                                         ; $7e96: $10
	add  c                                           ; $7e97: $81
	ldh  a, [$03]                                    ; $7e98: $f0 $03
	ret  nz                                          ; $7e9a: $c0

	and  b                                           ; $7e9b: $a0
	ret  nz                                          ; $7e9c: $c0

jr_089_7e9d:
	ld   b, b                                        ; $7e9d: $40
	add  b                                           ; $7e9e: $80

jr_089_7e9f:
	add  b                                           ; $7e9f: $80
	and  h                                           ; $7ea0: $a4
	nop                                              ; $7ea1: $00
	add  b                                           ; $7ea2: $80
	rst  $38                                         ; $7ea3: $ff
	adc  h                                           ; $7ea4: $8c
	nop                                              ; $7ea5: $00
	add  b                                           ; $7ea6: $80
	rst  $38                                         ; $7ea7: $ff
	rst  $38                                         ; $7ea8: $ff

jr_089_7ea9:
	nop                                              ; $7ea9: $00
	add  l                                           ; $7eaa: $85
	nop                                              ; $7eab: $00
	add  b                                           ; $7eac: $80
	ld   hl, $1f80                                   ; $7ead: $21 $80 $1f
	add  b                                           ; $7eb0: $80
	rlca                                             ; $7eb1: $07
	sub  d                                           ; $7eb2: $92
	nop                                              ; $7eb3: $00
	add  b                                           ; $7eb4: $80
	jr   nz, jr_089_7e37                             ; $7eb5: $20 $80

	jr   nc, jr_089_7e39                             ; $7eb7: $30 $80

	ld   [hl], b                                     ; $7eb9: $70
	add  b                                           ; $7eba: $80
	ldh  a, [$80]                                    ; $7ebb: $f0 $80
	ldh  [$80], a                                    ; $7ebd: $e0 $80
	ret  z                                           ; $7ebf: $c8

	sbc  h                                           ; $7ec0: $9c
	nop                                              ; $7ec1: $00
	add  b                                           ; $7ec2: $80
	jr   nz, jr_089_7e87                             ; $7ec3: $20 $c2

	nop                                              ; $7ec5: $00
	add  b                                           ; $7ec6: $80
	ld   de, $1f80                                   ; $7ec7: $11 $80 $1f
	add  b                                           ; $7eca: $80
	rrca                                             ; $7ecb: $0f
	add  [hl]                                        ; $7ecc: $86
	nop                                              ; $7ecd: $00
	add  b                                           ; $7ece: $80
	inc  hl                                          ; $7ecf: $23
	add  b                                           ; $7ed0: $80
	rra                                              ; $7ed1: $1f
	add  b                                           ; $7ed2: $80
	rlca                                             ; $7ed3: $07
	add  b                                           ; $7ed4: $80
	ld   [$0480], sp                                 ; $7ed5: $08 $80 $04
	add  b                                           ; $7ed8: $80
	nop                                              ; $7ed9: $00
	add  b                                           ; $7eda: $80
	jr   jr_089_7e5d                                 ; $7edb: $18 $80

	add  b                                           ; $7edd: $80
	add  d                                           ; $7ede: $82
	nop                                              ; $7edf: $00
	add  b                                           ; $7ee0: $80
	inc  bc                                          ; $7ee1: $03
	add  b                                           ; $7ee2: $80
	cp   a                                           ; $7ee3: $bf
	add  b                                           ; $7ee4: $80
	ld   e, [hl]                                     ; $7ee5: $5e
	add  d                                           ; $7ee6: $82
	ldh  [$84], a                                    ; $7ee7: $e0 $84
	ret  nz                                          ; $7ee9: $c0

	add  b                                           ; $7eea: $80
	rrca                                             ; $7eeb: $0f
	add  b                                           ; $7eec: $80
	inc  bc                                          ; $7eed: $03
	add  b                                           ; $7eee: $80
	nop                                              ; $7eef: $00
	add  b                                           ; $7ef0: $80
	inc  bc                                          ; $7ef1: $03
	add  b                                           ; $7ef2: $80
	rlca                                             ; $7ef3: $07
	add  b                                           ; $7ef4: $80
	jr   nc, @-$7e                                   ; $7ef5: $30 $80

	ret  nz                                          ; $7ef7: $c0

	add  b                                           ; $7ef8: $80
	pop  de                                          ; $7ef9: $d1
	add  b                                           ; $7efa: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7efb: $cf
	add  b                                           ; $7efc: $80
	sub  e                                           ; $7efd: $93
	add  d                                           ; $7efe: $82
	nop                                              ; $7eff: $00
	add  b                                           ; $7f00: $80
	db   $10                                         ; $7f01: $10
	add  b                                           ; $7f02: $80
	add  hl, de                                      ; $7f03: $19
	add  b                                           ; $7f04: $80
	dec  sp                                          ; $7f05: $3b
	add  b                                           ; $7f06: $80
	ei                                               ; $7f07: $fb
	add  b                                           ; $7f08: $80
	ld   hl, sp-$80                                  ; $7f09: $f8 $80
	and  $80                                         ; $7f0b: $e6 $80
	jr   jr_089_7e91                                 ; $7f0d: $18 $82

	nop                                              ; $7f0f: $00
	add  b                                           ; $7f10: $80
	jr   nc, jr_089_7e93                             ; $7f11: $30 $80

	ld   [hl], b                                     ; $7f13: $70
	add  b                                           ; $7f14: $80
	ldh  a, [$80]                                    ; $7f15: $f0 $80
	ldh  [$80], a                                    ; $7f17: $e0 $80
	add  b                                           ; $7f19: $80
	add  b                                           ; $7f1a: $80
	jr   nz, jr_089_7e9d                             ; $7f1b: $20 $80

	jr   nc, jr_089_7e9f                             ; $7f1d: $30 $80

	ld   [hl], b                                     ; $7f1f: $70
	add  b                                           ; $7f20: $80
	ldh  a, [$80]                                    ; $7f21: $f0 $80
	add  sp, -$80                                    ; $7f23: $e8 $80
	sub  b                                           ; $7f25: $90
	add  b                                           ; $7f26: $80
	jr   nz, jr_089_7ea9                             ; $7f27: $20 $80

	nop                                              ; $7f29: $00
	add  b                                           ; $7f2a: $80
	ld   b, c                                        ; $7f2b: $41
	add  b                                           ; $7f2c: $80
	ld   h, e                                        ; $7f2d: $63
	add  b                                           ; $7f2e: $80
	rst  $28                                         ; $7f2f: $ef
	sub  h                                           ; $7f30: $94
	nop                                              ; $7f31: $00
	add  [hl]                                        ; $7f32: $86
	add  b                                           ; $7f33: $80
	and  b                                           ; $7f34: $a0
	nop                                              ; $7f35: $00
	add  b                                           ; $7f36: $80
	ld   hl, sp-$80                                  ; $7f37: $f8 $80
	dec  a                                           ; $7f39: $3d
	sbc  d                                           ; $7f3a: $9a
	nop                                              ; $7f3b: $00
	add  b                                           ; $7f3c: $80
	rra                                              ; $7f3d: $1f
	add  b                                           ; $7f3e: $80
	cp   $80                                         ; $7f3f: $fe $80
	ld   hl, sp-$68                                  ; $7f41: $f8 $98
	nop                                              ; $7f43: $00
	add  b                                           ; $7f44: $80
	inc  bc                                          ; $7f45: $03
	add  b                                           ; $7f46: $80
	ccf                                              ; $7f47: $3f
	add  b                                           ; $7f48: $80
	rrca                                             ; $7f49: $0f
	sbc  b                                           ; $7f4a: $98
	nop                                              ; $7f4b: $00
	add  b                                           ; $7f4c: $80
	db   $ec                                         ; $7f4d: $ec
	add  b                                           ; $7f4e: $80
	ret  nz                                          ; $7f4f: $c0

	rst  $38                                         ; $7f50: $ff
	nop                                              ; $7f51: $00
	rst  $38                                         ; $7f52: $ff
	nop                                              ; $7f53: $00
	rst  $38                                         ; $7f54: $ff
	nop                                              ; $7f55: $00
	rst  $38                                         ; $7f56: $ff
	nop                                              ; $7f57: $00
	rst  $38                                         ; $7f58: $ff
	nop                                              ; $7f59: $00
	or   l                                           ; $7f5a: $b5
	nop                                              ; $7f5b: $00
	ld   [hl-], a                                    ; $7f5c: $32
	nop                                              ; $7f5d: $00
	rst  $38                                         ; $7f5e: $ff
	nop                                              ; $7f5f: $00
	ret                                              ; $7f60: $c9


	nop                                              ; $7f61: $00
	add  b                                           ; $7f62: $80
	ld   a, a                                        ; $7f63: $7f
	ld   [bc], a                                     ; $7f64: $02
	ld   e, $1f                                      ; $7f65: $1e $1f
	ld   bc, $008b                                   ; $7f67: $01 $8b $00
	add  b                                           ; $7f6a: $80
	cp   $90                                         ; $7f6b: $fe $90
	nop                                              ; $7f6d: $00
	add  b                                           ; $7f6e: $80
	ld   b, $80                                      ; $7f6f: $06 $80
	dec  b                                           ; $7f71: $05
	adc  b                                           ; $7f72: $88
	inc  b                                           ; $7f73: $04
	add  d                                           ; $7f74: $82
	nop                                              ; $7f75: $00
	add  b                                           ; $7f76: $80
	add  b                                           ; $7f77: $80
	add  b                                           ; $7f78: $80
	ret  nz                                          ; $7f79: $c0

	add  b                                           ; $7f7a: $80
	ldh  a, [$80]                                    ; $7f7b: $f0 $80
	ret  z                                           ; $7f7d: $c8

	inc  b                                           ; $7f7e: $04
	db   $e4                                         ; $7f7f: $e4
	inc  b                                           ; $7f80: $04
	ld   b, h                                        ; $7f81: $44
	inc  b                                           ; $7f82: $04
	and  b                                           ; $7f83: $a0
	adc  l                                           ; $7f84: $8d
	nop                                              ; $7f85: $00
	add  b                                           ; $7f86: $80
	ld   bc, $008c                                   ; $7f87: $01 $8c $00
	inc  bc                                          ; $7f8a: $03
	db   $e3                                         ; $7f8b: $e3
	rst  $38                                         ; $7f8c: $ff
	inc  bc                                          ; $7f8d: $03
	rra                                              ; $7f8e: $1f
	adc  d                                           ; $7f8f: $8a
	nop                                              ; $7f90: $00
	add  b                                           ; $7f91: $80
	ld   hl, sp+$05                                  ; $7f92: $f8 $05
	rrca                                             ; $7f94: $0f
	rst  $38                                         ; $7f95: $ff
	ld   [$00ff], sp                                 ; $7f96: $08 $ff $00
	rlca                                             ; $7f99: $07
	add  [hl]                                        ; $7f9a: $86
	nop                                              ; $7f9b: $00
	ld   bc, $0406                                   ; $7f9c: $01 $06 $04
	add  b                                           ; $7f9f: $80
	push bc                                          ; $7fa0: $c5
	dec  b                                           ; $7fa1: $05
	ld   a, a                                        ; $7fa2: $7f
	db   $fd                                         ; $7fa3: $fd
	ld   c, a                                        ; $7fa4: $4f
	rst  $38                                         ; $7fa5: $ff
	dec  bc                                          ; $7fa6: $0b
	dec  sp                                          ; $7fa7: $3b
	add  b                                           ; $7fa8: $80
	ld   c, $80                                      ; $7fa9: $0e $80
	ld   bc, $0080                                   ; $7fab: $01 $80 $00
	dec  bc                                          ; $7fae: $0b
	db   $ec                                         ; $7faf: $ec
	inc  c                                           ; $7fb0: $0c
	ld   a, [$3a1a]                                  ; $7fb1: $fa $1a $3a
	ld   [bc], a                                     ; $7fb4: $02
	sub  d                                           ; $7fb5: $92
	add  d                                           ; $7fb6: $82
	inc  de                                          ; $7fb7: $13
	inc  bc                                          ; $7fb8: $03
	dec  sp                                          ; $7fb9: $3b
	inc  bc                                          ; $7fba: $03
	add  b                                           ; $7fbb: $80
	jp   $3a80                                       ; $7fbc: $c3 $80 $3a


	add  [hl]                                        ; $7fbf: $86
	nop                                              ; $7fc0: $00
	add  b                                           ; $7fc1: $80
	ld   a, b                                        ; $7fc2: $78
	inc  bc                                          ; $7fc3: $03
	db   $e4                                         ; $7fc4: $e4
	db   $fc                                         ; $7fc5: $fc
	db   $e4                                         ; $7fc6: $e4
	db   $fc                                         ; $7fc7: $fc
	add  b                                           ; $7fc8: $80
	jr   c, @-$40                                    ; $7fc9: $38 $be

	nop                                              ; $7fcb: $00
	add  b                                           ; $7fcc: $80
	ld   b, $ff                                      ; $7fcd: $06 $ff
	nop                                              ; $7fcf: $00
	rst  $38                                         ; $7fd0: $ff
	nop                                              ; $7fd1: $00
	rst  $38                                         ; $7fd2: $ff
	nop                                              ; $7fd3: $00
	rst  $38                                         ; $7fd4: $ff
	nop                                              ; $7fd5: $00
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
	or   d                                           ; $7fe2: $b2
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
